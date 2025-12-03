@interface IDSCoalesceMessageQueueManager
- (BOOL)_isTopicBeingRateLimited:(id)limited;
- (BOOL)coalesceQueueExistsForTopic:(id)topic;
- (IDSCoalesceMessageQueueManager)initWithBag:(id)bag;
- (IDSCoalesceMessageQueueManagerDelegate)delegate;
- (double)coalesceDelayForTopic:(id)topic sendMode:(id)mode;
- (double)defaultDelayForSendMode:(id)mode;
- (id)formattedKeyForTopic:(id)topic sendMode:(id)mode;
- (id)loggableOverviewForTopic:(id)topic;
- (void)_clearQueueForTopic:(id)topic;
- (void)_clearTimerForTopic:(id)topic;
- (void)_createTimerForTopic:(id)topic withDelay:(double)delay;
- (void)_resetTimerForTopic:(id)topic withDelay:(double)delay;
- (void)_timerFired:(id)fired;
- (void)_updateTimerForTopic:(id)topic sendMode:(id)mode;
- (void)enqueueMessage:(id)message forTopic:(id)topic sendMode:(id)mode;
- (void)flushCoalesceQueueForTopic:(id)topic;
- (void)handleMessageToCoalesce:(id)coalesce forTopic:(id)topic sendMode:(id)mode;
- (void)handleRateLimitingResponseForTopic:(id)topic ttr:(id)ttr;
@end

@implementation IDSCoalesceMessageQueueManager

- (IDSCoalesceMessageQueueManager)initWithBag:(id)bag
{
  bagCopy = bag;
  v15.receiver = self;
  v15.super_class = IDSCoalesceMessageQueueManager;
  v6 = [(IDSCoalesceMessageQueueManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, bag);
    v8 = objc_alloc_init(NSMutableDictionary);
    queueMap = v7->_queueMap;
    v7->_queueMap = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    timerMap = v7->_timerMap;
    v7->_timerMap = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    rateLimitMap = v7->_rateLimitMap;
    v7->_rateLimitMap = v12;

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)handleMessageToCoalesce:(id)coalesce forTopic:(id)topic sendMode:(id)mode
{
  modeCopy = mode;
  topicCopy = topic;
  [(IDSCoalesceMessageQueueManager *)self enqueueMessage:coalesce forTopic:topicCopy sendMode:modeCopy];
  [(IDSCoalesceMessageQueueManager *)self _updateTimerForTopic:topicCopy sendMode:modeCopy];
}

- (void)enqueueMessage:(id)message forTopic:(id)topic sendMode:(id)mode
{
  messageCopy = message;
  topicCopy = topic;
  modeCopy = mode;
  v11 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [messageCopy objectForKeyedSubscript:IDSDeliveryMessageKey];
    messageID = [v12 messageID];
    v18 = 138412802;
    v19 = messageID;
    v20 = 2112;
    v21 = topicCopy;
    v22 = 2112;
    v23 = modeCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Coalesce queue manager enqueing message { guid : %@ topic : %@ sendMode : %@ }", &v18, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  v14 = [(NSMutableDictionary *)self->_queueMap objectForKey:topicCopy];
  if (!v14)
  {
    v14 = [[IDSCoalesceMessageQueue alloc] initWithTopic:topicCopy sendMode:modeCopy];
    [(NSMutableDictionary *)self->_queueMap setObject:v14 forKey:topicCopy];
  }

  infos = [(IDSCoalesceMessageQueue *)v14 infos];

  if (!infos)
  {
    v16 = objc_alloc_init(NSMutableArray);
    [(IDSCoalesceMessageQueue *)v14 setInfos:v16];
  }

  [messageCopy setObject:&__kCFBooleanTrue forKey:IDSDeliveryFromCoalesceQueueKey];
  infos2 = [(IDSCoalesceMessageQueue *)v14 infos];
  [infos2 addObject:messageCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_clearQueueForTopic:(id)topic
{
  topicCopy = topic;
  v5 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = topicCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing coalesce queue for topic : %@", &v7, 0xCu);
  }

  v6 = [(NSMutableDictionary *)self->_queueMap objectForKey:topicCopy];

  if (v6)
  {
    [(NSMutableDictionary *)self->_queueMap removeObjectForKey:topicCopy];
  }
}

- (void)flushCoalesceQueueForTopic:(id)topic
{
  topicCopy = topic;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_queueMap objectForKey:topicCopy];
  if ([v5 isEmpty])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = topicCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Flushing coalesce queue for topic : %@", buf, 0xCu);
    }

    v20 = topicCopy;

    v7 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v5;
    infos = [v5 infos];
    v9 = [infos countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      v12 = IDSDeliveryMessageKey;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(infos);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:v12];
          sendMode = [v15 sendMode];
          if ([sendMode integerValue] != 3)
          {
            [v7 addObject:v14];
          }
        }

        v10 = [infos countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    topicCopy = v20;
    [(IDSCoalesceMessageQueueManager *)self _clearTimerForTopic:v20];
    [(IDSCoalesceMessageQueueManager *)self _clearQueueForTopic:v20];
    os_unfair_lock_unlock(&self->_lock);
    delegate = [(IDSCoalesceMessageQueueManager *)self delegate];
    v5 = v19;
    sendMode2 = [v19 sendMode];
    [delegate queueManager:self receivedMessagesToSend:v7 forTopic:v20 sendMode:sendMode2];
  }
}

- (BOOL)coalesceQueueExistsForTopic:(id)topic
{
  topicCopy = topic;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_queueMap objectForKey:topicCopy];

  if (v5)
  {
    v6 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = topicCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Coalesce queue exists for topic : %@", &v8, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5 != 0;
}

- (void)_updateTimerForTopic:(id)topic sendMode:(id)mode
{
  topicCopy = topic;
  modeCopy = mode;
  os_unfair_lock_lock(&self->_lock);
  if ([(IDSCoalesceMessageQueueManager *)self _isTopicBeingRateLimited:topicCopy])
  {
    v7 = [(NSMutableDictionary *)self->_rateLimitMap objectForKey:topicCopy];
    integerValue = [v7 integerValue];

    v9 = [(NSMutableDictionary *)self->_timerMap objectForKey:topicCopy];

    if (!v9)
    {
      [(IDSCoalesceMessageQueueManager *)self _createTimerForTopic:topicCopy withDelay:integerValue];
    }
  }

  else
  {
    [(IDSCoalesceMessageQueueManager *)self coalesceDelayForTopic:topicCopy sendMode:modeCopy];
    v11 = v10;
    v12 = [(NSMutableDictionary *)self->_timerMap objectForKey:topicCopy];

    if (!v12)
    {
      [(IDSCoalesceMessageQueueManager *)self _createTimerForTopic:topicCopy withDelay:v11];
    }

    v13 = [(NSMutableDictionary *)self->_queueMap objectForKey:topicCopy];
    v14 = [(NSMutableDictionary *)self->_timerMap objectForKey:topicCopy];
    intValue = [modeCopy intValue];
    sendMode = [v13 sendMode];
    if (intValue >= [sendMode intValue])
    {
    }

    else
    {
      fireDate = [v14 fireDate];
      [fireDate timeIntervalSinceNow];
      v19 = v18;

      if (v19 > v11)
      {
        [v13 setSendMode:modeCopy];
        [(IDSCoalesceMessageQueueManager *)self _resetTimerForTopic:topicCopy withDelay:v11];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_createTimerForTopic:(id)topic withDelay:(double)delay
{
  topicCopy = topic;
  v7 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = topicCopy;
    v14 = 2048;
    delayCopy = delay;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating coalesce queue timer for topic : %@ with delay : %f", buf, 0x16u);
  }

  v8 = [IMDispatchTimer alloc];
  v9 = im_primary_queue();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1004A0224;
  v11[3] = &unk_100BD9268;
  v11[4] = self;
  v10 = [v8 initWithQueue:v9 interval:delay repeats:0 userInfo:topicCopy handlerBlock:v11];

  [(NSMutableDictionary *)self->_timerMap setObject:v10 forKey:topicCopy];
}

- (void)_clearTimerForTopic:(id)topic
{
  topicCopy = topic;
  v5 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = topicCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing coalesce queue timer for topic : %@", &v8, 0xCu);
  }

  v6 = [(NSMutableDictionary *)self->_timerMap objectForKey:topicCopy];
  if (v6)
  {
    v7 = v6;
    [v6 invalidate];

    [(NSMutableDictionary *)self->_timerMap removeObjectForKey:topicCopy];
  }

  if ([(IDSCoalesceMessageQueueManager *)self _isTopicBeingRateLimited:topicCopy])
  {
    [(NSMutableDictionary *)self->_rateLimitMap removeObjectForKey:topicCopy];
  }
}

- (void)_resetTimerForTopic:(id)topic withDelay:(double)delay
{
  topicCopy = topic;
  v7 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = topicCopy;
    v10 = 2048;
    delayCopy = delay;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resetting coalesce queue timer for topic : %@ with delay : %f", &v8, 0x16u);
  }

  [(IDSCoalesceMessageQueueManager *)self _clearTimerForTopic:topicCopy];
  [(IDSCoalesceMessageQueueManager *)self _createTimerForTopic:topicCopy withDelay:delay];
}

- (void)_timerFired:(id)fired
{
  userInfo = [fired userInfo];
  v5 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = userInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Coalesce queue timer fired for topic : %@", &v6, 0xCu);
  }

  [(IDSCoalesceMessageQueueManager *)self flushCoalesceQueueForTopic:userInfo];
}

- (double)coalesceDelayForTopic:(id)topic sendMode:(id)mode
{
  modeCopy = mode;
  topicCopy = topic;
  [(IDSCoalesceMessageQueueManager *)self defaultDelayForSendMode:modeCopy];
  integerValue = v8;
  v10 = [(IDSCoalesceMessageQueueManager *)self formattedKeyForTopic:topicCopy sendMode:modeCopy];

  v11 = [(IDSCoalesceMessageQueueManager *)self bag];
  v12 = [v11 objectForKey:v10];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v12 integerValue];
  }

  if (+[IMUserDefaults coalesceDelayOverride]>= 1)
  {
    integerValue = +[IMUserDefaults coalesceDelayOverride];
  }

  return integerValue;
}

- (double)defaultDelayForSendMode:(id)mode
{
  integerValue = [mode integerValue];
  result = 0.0;
  if (integerValue <= 3)
  {
    return dbl_1009ABA00[integerValue];
  }

  return result;
}

- (id)formattedKeyForTopic:(id)topic sendMode:(id)mode
{
  topicCopy = topic;
  integerValue = [mode integerValue];
  if (integerValue > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_100BDD880[integerValue];
  }

  topicCopy = [NSString stringWithFormat:@"%@-%@-%@", @"coalesce-send-delay", v7, topicCopy];

  return topicCopy;
}

- (id)loggableOverviewForTopic:(id)topic
{
  topicCopy = topic;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_queueMap objectForKey:topicCopy];
  v6 = [(NSMutableDictionary *)self->_timerMap objectForKey:topicCopy];
  v7 = [NSString alloc];
  v8 = [v5 count];
  fireDate = [v6 fireDate];
  [fireDate timeIntervalSinceNow];
  v11 = [v7 initWithFormat:@"<%@  ->  count: %ld  time until firing: %f>", topicCopy, v8, v10];

  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (BOOL)_isTopicBeingRateLimited:(id)limited
{
  v3 = [(NSMutableDictionary *)self->_rateLimitMap objectForKey:limited];
  v4 = v3 != 0;

  return v4;
}

- (void)handleRateLimitingResponseForTopic:(id)topic ttr:(id)ttr
{
  topicCopy = topic;
  ttrCopy = ttr;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_rateLimitMap objectForKey:topicCopy];

  if (!v8)
  {
    v9 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = topicCopy;
      v12 = 2048;
      integerValue = [ttrCopy integerValue];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Handling server rate limiting response for topic %@ - messages will be held for %ld seconds", &v10, 0x16u);
    }

    [(NSMutableDictionary *)self->_rateLimitMap setObject:ttrCopy forKey:topicCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (IDSCoalesceMessageQueueManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end