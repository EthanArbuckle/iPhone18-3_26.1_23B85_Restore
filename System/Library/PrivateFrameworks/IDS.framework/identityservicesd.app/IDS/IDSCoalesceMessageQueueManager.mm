@interface IDSCoalesceMessageQueueManager
- (BOOL)_isTopicBeingRateLimited:(id)a3;
- (BOOL)coalesceQueueExistsForTopic:(id)a3;
- (IDSCoalesceMessageQueueManager)initWithBag:(id)a3;
- (IDSCoalesceMessageQueueManagerDelegate)delegate;
- (double)coalesceDelayForTopic:(id)a3 sendMode:(id)a4;
- (double)defaultDelayForSendMode:(id)a3;
- (id)formattedKeyForTopic:(id)a3 sendMode:(id)a4;
- (id)loggableOverviewForTopic:(id)a3;
- (void)_clearQueueForTopic:(id)a3;
- (void)_clearTimerForTopic:(id)a3;
- (void)_createTimerForTopic:(id)a3 withDelay:(double)a4;
- (void)_resetTimerForTopic:(id)a3 withDelay:(double)a4;
- (void)_timerFired:(id)a3;
- (void)_updateTimerForTopic:(id)a3 sendMode:(id)a4;
- (void)enqueueMessage:(id)a3 forTopic:(id)a4 sendMode:(id)a5;
- (void)flushCoalesceQueueForTopic:(id)a3;
- (void)handleMessageToCoalesce:(id)a3 forTopic:(id)a4 sendMode:(id)a5;
- (void)handleRateLimitingResponseForTopic:(id)a3 ttr:(id)a4;
@end

@implementation IDSCoalesceMessageQueueManager

- (IDSCoalesceMessageQueueManager)initWithBag:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = IDSCoalesceMessageQueueManager;
  v6 = [(IDSCoalesceMessageQueueManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, a3);
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

- (void)handleMessageToCoalesce:(id)a3 forTopic:(id)a4 sendMode:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(IDSCoalesceMessageQueueManager *)self enqueueMessage:a3 forTopic:v9 sendMode:v8];
  [(IDSCoalesceMessageQueueManager *)self _updateTimerForTopic:v9 sendMode:v8];
}

- (void)enqueueMessage:(id)a3 forTopic:(id)a4 sendMode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 objectForKeyedSubscript:IDSDeliveryMessageKey];
    v13 = [v12 messageID];
    v18 = 138412802;
    v19 = v13;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Coalesce queue manager enqueing message { guid : %@ topic : %@ sendMode : %@ }", &v18, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  v14 = [(NSMutableDictionary *)self->_queueMap objectForKey:v9];
  if (!v14)
  {
    v14 = [[IDSCoalesceMessageQueue alloc] initWithTopic:v9 sendMode:v10];
    [(NSMutableDictionary *)self->_queueMap setObject:v14 forKey:v9];
  }

  v15 = [(IDSCoalesceMessageQueue *)v14 infos];

  if (!v15)
  {
    v16 = objc_alloc_init(NSMutableArray);
    [(IDSCoalesceMessageQueue *)v14 setInfos:v16];
  }

  [v8 setObject:&__kCFBooleanTrue forKey:IDSDeliveryFromCoalesceQueueKey];
  v17 = [(IDSCoalesceMessageQueue *)v14 infos];
  [v17 addObject:v8];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_clearQueueForTopic:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing coalesce queue for topic : %@", &v7, 0xCu);
  }

  v6 = [(NSMutableDictionary *)self->_queueMap objectForKey:v4];

  if (v6)
  {
    [(NSMutableDictionary *)self->_queueMap removeObjectForKey:v4];
  }
}

- (void)flushCoalesceQueueForTopic:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_queueMap objectForKey:v4];
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
      v27 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Flushing coalesce queue for topic : %@", buf, 0xCu);
    }

    v20 = v4;

    v7 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v5;
    v8 = [v5 infos];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:v12];
          v16 = [v15 sendMode];
          if ([v16 integerValue] != 3)
          {
            [v7 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v4 = v20;
    [(IDSCoalesceMessageQueueManager *)self _clearTimerForTopic:v20];
    [(IDSCoalesceMessageQueueManager *)self _clearQueueForTopic:v20];
    os_unfair_lock_unlock(&self->_lock);
    v17 = [(IDSCoalesceMessageQueueManager *)self delegate];
    v5 = v19;
    v18 = [v19 sendMode];
    [v17 queueManager:self receivedMessagesToSend:v7 forTopic:v20 sendMode:v18];
  }
}

- (BOOL)coalesceQueueExistsForTopic:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_queueMap objectForKey:v4];

  if (v5)
  {
    v6 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Coalesce queue exists for topic : %@", &v8, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5 != 0;
}

- (void)_updateTimerForTopic:(id)a3 sendMode:(id)a4
{
  v20 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  if ([(IDSCoalesceMessageQueueManager *)self _isTopicBeingRateLimited:v20])
  {
    v7 = [(NSMutableDictionary *)self->_rateLimitMap objectForKey:v20];
    v8 = [v7 integerValue];

    v9 = [(NSMutableDictionary *)self->_timerMap objectForKey:v20];

    if (!v9)
    {
      [(IDSCoalesceMessageQueueManager *)self _createTimerForTopic:v20 withDelay:v8];
    }
  }

  else
  {
    [(IDSCoalesceMessageQueueManager *)self coalesceDelayForTopic:v20 sendMode:v6];
    v11 = v10;
    v12 = [(NSMutableDictionary *)self->_timerMap objectForKey:v20];

    if (!v12)
    {
      [(IDSCoalesceMessageQueueManager *)self _createTimerForTopic:v20 withDelay:v11];
    }

    v13 = [(NSMutableDictionary *)self->_queueMap objectForKey:v20];
    v14 = [(NSMutableDictionary *)self->_timerMap objectForKey:v20];
    v15 = [v6 intValue];
    v16 = [v13 sendMode];
    if (v15 >= [v16 intValue])
    {
    }

    else
    {
      v17 = [v14 fireDate];
      [v17 timeIntervalSinceNow];
      v19 = v18;

      if (v19 > v11)
      {
        [v13 setSendMode:v6];
        [(IDSCoalesceMessageQueueManager *)self _resetTimerForTopic:v20 withDelay:v11];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_createTimerForTopic:(id)a3 withDelay:(double)a4
{
  v6 = a3;
  v7 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v6;
    v14 = 2048;
    v15 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating coalesce queue timer for topic : %@ with delay : %f", buf, 0x16u);
  }

  v8 = [IMDispatchTimer alloc];
  v9 = im_primary_queue();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1004A0224;
  v11[3] = &unk_100BD9268;
  v11[4] = self;
  v10 = [v8 initWithQueue:v9 interval:a4 repeats:0 userInfo:v6 handlerBlock:v11];

  [(NSMutableDictionary *)self->_timerMap setObject:v10 forKey:v6];
}

- (void)_clearTimerForTopic:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing coalesce queue timer for topic : %@", &v8, 0xCu);
  }

  v6 = [(NSMutableDictionary *)self->_timerMap objectForKey:v4];
  if (v6)
  {
    v7 = v6;
    [v6 invalidate];

    [(NSMutableDictionary *)self->_timerMap removeObjectForKey:v4];
  }

  if ([(IDSCoalesceMessageQueueManager *)self _isTopicBeingRateLimited:v4])
  {
    [(NSMutableDictionary *)self->_rateLimitMap removeObjectForKey:v4];
  }
}

- (void)_resetTimerForTopic:(id)a3 withDelay:(double)a4
{
  v6 = a3;
  v7 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resetting coalesce queue timer for topic : %@ with delay : %f", &v8, 0x16u);
  }

  [(IDSCoalesceMessageQueueManager *)self _clearTimerForTopic:v6];
  [(IDSCoalesceMessageQueueManager *)self _createTimerForTopic:v6 withDelay:a4];
}

- (void)_timerFired:(id)a3
{
  v4 = [a3 userInfo];
  v5 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Coalesce queue timer fired for topic : %@", &v6, 0xCu);
  }

  [(IDSCoalesceMessageQueueManager *)self flushCoalesceQueueForTopic:v4];
}

- (double)coalesceDelayForTopic:(id)a3 sendMode:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(IDSCoalesceMessageQueueManager *)self defaultDelayForSendMode:v6];
  v9 = v8;
  v10 = [(IDSCoalesceMessageQueueManager *)self formattedKeyForTopic:v7 sendMode:v6];

  v11 = [(IDSCoalesceMessageQueueManager *)self bag];
  v12 = [v11 objectForKey:v10];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v12 integerValue];
  }

  if (+[IMUserDefaults coalesceDelayOverride]>= 1)
  {
    v9 = +[IMUserDefaults coalesceDelayOverride];
  }

  return v9;
}

- (double)defaultDelayForSendMode:(id)a3
{
  v3 = [a3 integerValue];
  result = 0.0;
  if (v3 <= 3)
  {
    return dbl_1009ABA00[v3];
  }

  return result;
}

- (id)formattedKeyForTopic:(id)a3 sendMode:(id)a4
{
  v5 = a3;
  v6 = [a4 integerValue];
  if (v6 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_100BDD880[v6];
  }

  v8 = [NSString stringWithFormat:@"%@-%@-%@", @"coalesce-send-delay", v7, v5];

  return v8;
}

- (id)loggableOverviewForTopic:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_queueMap objectForKey:v4];
  v6 = [(NSMutableDictionary *)self->_timerMap objectForKey:v4];
  v7 = [NSString alloc];
  v8 = [v5 count];
  v9 = [v6 fireDate];
  [v9 timeIntervalSinceNow];
  v11 = [v7 initWithFormat:@"<%@  ->  count: %ld  time until firing: %f>", v4, v8, v10];

  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (BOOL)_isTopicBeingRateLimited:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_rateLimitMap objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)handleRateLimitingResponseForTopic:(id)a3 ttr:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_rateLimitMap objectForKey:v6];

  if (!v8)
  {
    v9 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v6;
      v12 = 2048;
      v13 = [v7 integerValue];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Handling server rate limiting response for topic %@ - messages will be held for %ld seconds", &v10, 0x16u);
    }

    [(NSMutableDictionary *)self->_rateLimitMap setObject:v7 forKey:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (IDSCoalesceMessageQueueManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end