@interface IDSLocalDeliveryQueue
- (IDSLocalDeliveryQueue)initWithIdentifier:(id)a3;
- (NSDictionary)statistics;
- (id)nextSocketPairMessageNotOnServices:(id)a3;
- (id)statisticsForDataProtectionClass:(unsigned int)a3;
- (unint64_t)countForDataMessageType:(int64_t)a3;
- (unint64_t)countForDataProtectionClass:(unsigned int)a3;
- (void)_addMessageToStatistics:(id)a3;
- (void)_addStatsFromDict:(id)a3 toAggregate:(id)a4;
- (void)_removeMessageFromStatistics:(id)a3;
- (void)clearStats;
- (void)dealloc;
- (void)dequeueMessage:(id)a3;
- (void)enqueueMessage:(id)a3;
- (void)pushMessage:(id)a3;
- (void)removeMessages:(id)a3;
@end

@implementation IDSLocalDeliveryQueue

- (IDSLocalDeliveryQueue)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IDSLocalDeliveryQueue;
  v5 = [(IDSLocalDeliveryQueue *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_statisticsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_messages enumerateObjectsUsingBlock:&stru_100BE22E8];
  v3.receiver = self;
  v3.super_class = IDSLocalDeliveryQueue;
  [(IDSLocalDeliveryQueue *)&v3 dealloc];
}

- (unint64_t)countForDataProtectionClass:(unsigned int)a3
{
  messages = self->_messages;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10060AB9C;
  v7[3] = &unk_100BE01F0;
  v8 = a3;
  v4 = [(NSMutableArray *)messages indexesOfObjectsPassingTest:v7];
  v5 = [v4 count];

  return v5;
}

- (unint64_t)countForDataMessageType:(int64_t)a3
{
  messages = self->_messages;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10060AC60;
  v7[3] = &unk_100BE0210;
  v7[4] = a3;
  v4 = [(NSMutableArray *)messages indexesOfObjectsPassingTest:v7];
  v5 = [v4 count];

  return v5;
}

- (void)removeMessages:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_messages removeObjectsInArray:?];
  }
}

- (void)pushMessage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (!self->_messages)
    {
      v5 = objc_alloc_init(NSMutableArray);
      messages = self->_messages;
      self->_messages = v5;
    }

    if ([v4 manualQueueRemoval])
    {
      [(NSMutableArray *)self->_messages removeObject:v4];
    }

    if ([(NSMutableArray *)self->_messages count]>> 4 > 0x270)
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "We have exceeded the maximum queue size, dropping message %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }

    else
    {
      [(NSMutableArray *)self->_messages insertObject:v4 atIndex:0];
      [(IDSLocalDeliveryQueue *)self _addMessageToStatistics:v4];
    }
  }
}

- (void)enqueueMessage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    messages = self->_messages;
    if (!messages)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = self->_messages;
      self->_messages = v6;

      messages = self->_messages;
    }

    if ([(NSMutableArray *)messages count]>> 4 > 0x270)
    {
      v16 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v4;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "We have exceeded the maximum queue size, dropping message %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }

    else
    {
      v8 = [v4 resourcePath];

      if (v8)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = self->_messages;
        v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = *v20;
          while (2)
          {
            v12 = 0;
            do
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = [*(*(&v19 + 1) + 8 * v12) messageUUID];
              v14 = [v4 messageUUID];
              v15 = [v13 isEqualToString:v14];

              if (v15)
              {

                v17 = +[IDSFoundationLog localDeliveryQueue];
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  v18 = [v4 resourcePath];
                  *buf = 138412546;
                  v24 = v4;
                  v25 = 2112;
                  v26 = v18;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "File transfer for message %@ [%@] is already in local delivery queue. Dropping duplicate.", buf, 0x16u);
                }

                goto LABEL_23;
              }

              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      [(NSMutableArray *)self->_messages addObject:v4];
      [(IDSLocalDeliveryQueue *)self _addMessageToStatistics:v4];
    }
  }

LABEL_23:
}

- (void)dequeueMessage:(id)a3
{
  v4 = a3;
  if (v4 && [(NSMutableArray *)self->_messages containsObject:v4])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 manualQueueRemoval];
      v7 = @"NO";
      if (v6)
      {
        v7 = @"YES";
      }

      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Force dequeuing message %@ (should be manual: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v8 = [v4 manualQueueRemoval];
      v9 = @"NO";
      if (v8)
      {
        v9 = @"YES";
      }

      v10 = v4;
      v11 = v9;
      _IDSLogV();
    }

    [(IDSLocalDeliveryQueue *)self _removeMessageFromStatistics:v4, v10, v11];
    [(NSMutableArray *)self->_messages removeObject:v4];
  }
}

- (id)nextSocketPairMessageNotOnServices:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_messages count])
  {
    while (1)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0x7FFFFFFFFFFFFFFFLL;
      messages = self->_messages;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10060B6CC;
      v22[3] = &unk_100BE0300;
      v23 = v4;
      v24 = &v25;
      [(NSMutableArray *)messages enumerateObjectsUsingBlock:v22];
      v6 = v26[3];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = +[IDSFoundationLog localDeliveryQueue];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v30 = v4;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "* No pending messages not on %@", buf, 0xCu);
        }

        v8 = 0;
      }

      else
      {
        v7 = [(NSMutableArray *)self->_messages objectAtIndex:v26[3]];
        v8 = [v7 socketPairMessage];
        if (!v8)
        {
          v9 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = [v7 topic];
            v11 = [v7 command];
            *buf = 138412802;
            v30 = v7;
            v31 = 2112;
            v32 = v10;
            v33 = 2112;
            v34 = v11;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Couldn't construct a socketPairMessage for message %@ topic %@ command %@ - discarding", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            v12 = [v7 topic];
            v20 = [v7 command];
            _IDSWarnV();

            v13 = [v7 topic:v7];
            v21 = [v7 command];
            _IDSLogV();

            v14 = [v7 topic:v7];
            [v7 command];
            v19 = v18 = v14;
            v17 = v7;
            _IDSLogTransport();
          }

          [(NSMutableArray *)self->_messages removeObjectAtIndex:v26[3], v17, v18, v19];
        }
      }

      _Block_object_dispose(&v25, 8);
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v8)
      {
        v15 = v8;
        goto LABEL_17;
      }
    }

    v15 = 0;
LABEL_17:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_addMessageToStatistics:(id)a3
{
  v27 = a3;
  v4 = [v27 topic];
  v5 = [v27 dataProtectionClass];
  os_unfair_lock_lock(&self->_statisticsLock);
  statistics = self->_statistics;
  v7 = [NSNumber numberWithUnsignedInt:v5];
  v8 = [(NSMutableDictionary *)statistics objectForKey:v7];

  if (self->_statistics)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v17 = self->_statistics;
    self->_statistics = Mutable;

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  v18 = self->_statistics;
  v19 = [NSNumber numberWithUnsignedInt:v5];
  [(NSMutableDictionary *)v18 setObject:v8 forKey:v19];

LABEL_3:
  v9 = [v8 objectForKey:v4];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 objectForKey:@"localDeliveryQueueStatMessageCount"];
    v12 = [v10 objectForKey:@"localDeliveryQueueStatBytes"];
    v13 = [v11 unsignedLongLongValue];
    v14 = [v12 unsignedLongLongValue];

    v15 = v13 + 1;
  }

  else
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v14 = 0;
    v15 = 1;
  }

  v20 = [v27 payload];
  v21 = [v20 length];

  v22 = [v27 protobuf];
  v23 = [v22 data];
  v24 = [v23 length] + v21;

  v25 = [NSNumber numberWithUnsignedLongLong:v15];
  [v10 setObject:v25 forKey:@"localDeliveryQueueStatMessageCount"];

  v26 = [NSNumber numberWithUnsignedLongLong:&v14[v24]];
  [v10 setObject:v26 forKey:@"localDeliveryQueueStatBytes"];

  [v8 setObject:v10 forKey:v4];
  os_unfair_lock_unlock(&self->_statisticsLock);
}

- (void)_removeMessageFromStatistics:(id)a3
{
  v34 = a3;
  v4 = [v34 topic];
  v5 = [v34 dataProtectionClass];
  os_unfair_lock_lock(&self->_statisticsLock);
  statistics = self->_statistics;
  v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v34 dataProtectionClass]);
  v8 = [(NSMutableDictionary *)statistics objectForKey:v7];

  if (self->_statistics)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v24 = self->_statistics;
    self->_statistics = Mutable;

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  v25 = self->_statistics;
  v26 = [NSNumber numberWithUnsignedInt:v5];
  [(NSMutableDictionary *)v25 setObject:v8 forKey:v26];

LABEL_3:
  v9 = [v8 objectForKey:v4];
  v10 = v9;
  if (v9)
  {
    v32 = [v9 objectForKey:@"localDeliveryQueueStatMessageCount"];
    v31 = [v10 objectForKey:@"localDeliveryQueueStatBytes"];
    v30 = [v10 objectForKey:@"localDeliveryQueueStatDeliveredMessageCount"];
    v29 = [v10 objectForKey:@"localDeliveryQueueStatDeliveredBytes"];
    v11 = [v32 unsignedLongLongValue];
    v12 = [v31 unsignedLongLongValue];
    v27 = [v30 unsignedLongLongValue];
    v28 = [v29 unsignedLongLongValue];
    v13 = [v34 payload];
    v14 = [v13 length];
    v15 = [v34 protobuf];
    [v15 data];
    v16 = v33 = v4;
    v17 = &v14[[v16 length]];

    v18 = [NSNumber numberWithUnsignedLongLong:v11 - 1];
    [v10 setObject:v18 forKey:@"localDeliveryQueueStatMessageCount"];

    v19 = [NSNumber numberWithUnsignedLongLong:v12 - v17];
    [v10 setObject:v19 forKey:@"localDeliveryQueueStatBytes"];

    v20 = [NSNumber numberWithUnsignedLongLong:v27 + 1];
    [v10 setObject:v20 forKey:@"localDeliveryQueueStatDeliveredMessageCount"];

    v21 = [NSNumber numberWithUnsignedLongLong:&v28[v17]];
    [v10 setObject:v21 forKey:@"localDeliveryQueueStatDeliveredBytes"];

    ids_monotonic_time();
    v22 = [NSNumber numberWithDouble:?];
    [v10 setObject:v22 forKey:@"localDeliveryQueueStatsLastDeliveredTime"];

    v4 = v33;
    [v8 setObject:v10 forKey:v33];
  }

  os_unfair_lock_unlock(&self->_statisticsLock);
}

- (void)_addStatsFromDict:(id)a3 toAggregate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [&off_100C3DD60 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(&off_100C3DD60);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v5 objectForKey:v11];
        v13 = [v12 unsignedLongLongValue];

        v14 = [v6 objectForKey:v11];
        v15 = [v14 unsignedLongLongValue];

        v16 = [NSNumber numberWithUnsignedLongLong:&v13[v15]];
        [v6 setObject:v16 forKey:v11];
      }

      v8 = [&off_100C3DD60 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v17 = [v5 objectForKey:@"localDeliveryQueueStatsLastDeliveredTime"];
  [v17 doubleValue];
  v19 = v18;

  v20 = [v6 objectForKey:@"localDeliveryQueueStatsLastDeliveredTime"];
  [v20 doubleValue];
  v22 = v21;

  if (v19 > v22)
  {
    v23 = [NSNumber numberWithDouble:v19];
    [v6 setObject:v23 forKey:@"localDeliveryQueueStatsLastDeliveredTime"];
  }
}

- (NSDictionary)statistics
{
  v25 = objc_alloc_init(NSMutableDictionary);
  os_unfair_lock_lock(&self->_statisticsLock);
  v3 = [(NSMutableDictionary *)self->_statistics allValues];
  v4 = objc_alloc_init(NSMutableSet);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v35 + 1) + 8 * i) allKeys];
        v10 = [NSSet setWithArray:v9];
        [v4 unionSet:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v6);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = v4;
  v11 = [v23 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v24 = *v32;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v23);
        }

        v14 = *(*(&v31 + 1) + 8 * j);
        v15 = objc_alloc_init(NSMutableDictionary);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v16 = obj;
        v17 = [v16 countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v28;
          do
          {
            for (k = 0; k != v18; k = k + 1)
            {
              if (*v28 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v27 + 1) + 8 * k) objectForKey:v14];
              [(IDSLocalDeliveryQueue *)self _addStatsFromDict:v21 toAggregate:v15];
            }

            v18 = [v16 countByEnumeratingWithState:&v27 objects:v39 count:16];
          }

          while (v18);
        }

        [v25 setObject:v15 forKey:v14];
      }

      v12 = [v23 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock(&self->_statisticsLock);

  return v25;
}

- (id)statisticsForDataProtectionClass:(unsigned int)a3
{
  v3 = *&a3;
  os_unfair_lock_lock(&self->_statisticsLock);
  statistics = self->_statistics;
  v6 = [NSNumber numberWithUnsignedInt:v3];
  v7 = [(NSMutableDictionary *)statistics objectForKey:v6];
  v8 = [v7 copy];

  os_unfair_lock_unlock(&self->_statisticsLock);

  return v8;
}

- (void)clearStats
{
  os_unfair_lock_lock(&self->_statisticsLock);
  ids_monotonic_time();
  v4 = v3;
  v13 = self;
  [(NSMutableDictionary *)self->_statistics allValues];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v15 = *v23;
    do
    {
      v5 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v5;
        v6 = [*(*(&v22 + 1) + 8 * v5) allValues];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v19;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v19 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v18 + 1) + 8 * i);
              [v11 setObject:&off_100C3CDA8 forKey:@"localDeliveryQueueStatDeliveredMessageCount"];
              [v11 setObject:&off_100C3CDA8 forKey:@"localDeliveryQueueStatDeliveredBytes"];
              v12 = [NSNumber numberWithDouble:v4];
              [v11 setObject:v12 forKey:@"localDeliveryQueueStatsLastDeliveredTime"];
            }

            v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v8);
        }

        v5 = v17 + 1;
      }

      while ((v17 + 1) != v16);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v16);
  }

  os_unfair_lock_unlock(&v13->_statisticsLock);
}

@end