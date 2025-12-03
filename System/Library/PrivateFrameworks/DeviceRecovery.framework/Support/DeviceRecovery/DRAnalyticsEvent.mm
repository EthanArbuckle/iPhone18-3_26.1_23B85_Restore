@interface DRAnalyticsEvent
- (DRAnalyticsEvent)initWithEventName:(id)name;
- (NSDictionary)eventPayload;
- (id)description;
- (void)_queue_removeEventPayloadEntry:(id)entry;
- (void)_queue_setEventPayloadEntry:(id)entry value:(id)value;
- (void)_queue_setEventPayloadEntryToNull:(id)null;
- (void)removeEventPayloadEntry:(id)entry;
- (void)setEventPayloadEntry:(id)entry value:(id)value;
- (void)setEventPayloadEntryToNull:(id)null;
@end

@implementation DRAnalyticsEvent

- (DRAnalyticsEvent)initWithEventName:(id)name
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = DRAnalyticsEvent;
  v6 = [(DRAnalyticsEvent *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventName, name);
    v8 = objc_alloc_init(NSMutableDictionary);
    mutableEventPayload = v7->_mutableEventPayload;
    v7->_mutableEventPayload = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.DeviceRecovery.CoreAnalyticsEventQueue", v10);
    stateQueue = v7->_stateQueue;
    v7->_stateQueue = v11;

    v13 = +[NSUUID UUID];
    uUIDString = [v13 UUIDString];
    eventUUID = v7->_eventUUID;
    v7->_eventUUID = uUIDString;
  }

  return v7;
}

- (NSDictionary)eventPayload
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000F1E4;
  v11 = sub_10000F1F4;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F1FC;
  v6[3] = &unk_100034FC8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)description
{
  eventName = [(DRAnalyticsEvent *)self eventName];
  eventUUID = [(DRAnalyticsEvent *)self eventUUID];
  eventPayload = [(DRAnalyticsEvent *)self eventPayload];
  v6 = [NSString stringWithFormat:@"EventName: %@ EventUUID: %@ EventPayload: %@", eventName, eventUUID, eventPayload];

  return v6;
}

- (void)setEventPayloadEntry:(id)entry value:(id)value
{
  entryCopy = entry;
  valueCopy = value;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      userInfo = [valueCopy userInfo];
      v9 = [userInfo objectForKey:@"StaticString"];

      if (!v9)
      {
        v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [valueCopy code]);
      }

      valueCopy = v9;
    }

    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F508;
    block[3] = &unk_100034FF0;
    block[4] = self;
    v13 = entryCopy;
    valueCopy = valueCopy;
    v14 = valueCopy;
    dispatch_sync(stateQueue, block);
  }

  else
  {
    v11 = sub_1000118BC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001F5D4(entryCopy, valueCopy, v11);
    }
  }
}

- (void)setEventPayloadEntryToNull:(id)null
{
  nullCopy = null;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F5C4;
  v7[3] = &unk_100034AC0;
  v7[4] = self;
  v8 = nullCopy;
  v6 = nullCopy;
  dispatch_sync(stateQueue, v7);
}

- (void)removeEventPayloadEntry:(id)entry
{
  entryCopy = entry;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F67C;
  v7[3] = &unk_100034AC0;
  v7[4] = self;
  v8 = entryCopy;
  v6 = entryCopy;
  dispatch_sync(stateQueue, v7);
}

- (void)_queue_setEventPayloadEntry:(id)entry value:(id)value
{
  entryCopy = entry;
  valueCopy = value;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (entryCopy && valueCopy)
  {
    [(NSMutableDictionary *)self->_mutableEventPayload setObject:valueCopy forKey:entryCopy];
  }

  else
  {
    v8 = sub_1000118BC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001F69C(v8);
    }
  }
}

- (void)_queue_setEventPayloadEntryToNull:(id)null
{
  nullCopy = null;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (nullCopy)
  {
    mutableEventPayload = self->_mutableEventPayload;
    v6 = +[NSNull null];
    [(NSMutableDictionary *)mutableEventPayload setObject:v6 forKey:nullCopy];
  }

  else
  {
    v7 = sub_1000118BC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001F720(v7);
    }
  }
}

- (void)_queue_removeEventPayloadEntry:(id)entry
{
  stateQueue = self->_stateQueue;
  entryCopy = entry;
  dispatch_assert_queue_V2(stateQueue);
  [(NSMutableDictionary *)self->_mutableEventPayload setObject:0 forKeyedSubscript:entryCopy];
}

@end