@interface IDSSIMDeactivationInfoMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
@end

@implementation IDSSIMDeactivationInfoMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = IDSSIMDeactivationInfoMessage;
  v4 = [(IDSSIMDeactivationInfoMessage *)&v8 copyWithZone:zone];
  [v4 setDeviceTime:{-[IDSSIMDeactivationInfoMessage deviceTime](self, "deviceTime")}];
  homePlmn = [(IDSSIMDeactivationInfoMessage *)self homePlmn];
  [v4 setHomePlmn:homePlmn];

  events = [(IDSSIMDeactivationInfoMessage *)self events];
  [v4 setEvents:events];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"device-time"];

  return v2;
}

- (id)messageBody
{
  v28.receiver = self;
  v28.super_class = IDSSIMDeactivationInfoMessage;
  messageBody = [(IDSSIMDeactivationInfoMessage *)&v28 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [NSNumber numberWithLong:[(IDSSIMDeactivationInfoMessage *)self deviceTime]];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"device-time", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100914F5C();
  }

  homePlmn = [(IDSSIMDeactivationInfoMessage *)self homePlmn];
  if (homePlmn)
  {
    CFDictionarySetValue(Mutable, @"home-plmn", homePlmn);
  }

  theDict = Mutable;

  v7 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  events = [(IDSSIMDeactivationInfoMessage *)self events];
  v9 = [events countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(events);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        v14 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 sourceType]);
        if (v15)
        {
          CFDictionarySetValue(v14, @"source", v15);
        }

        reasonCode = [v13 reasonCode];
        if (reasonCode)
        {
          CFDictionarySetValue(v14, @"code", reasonCode);
        }

        v17 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v13 timeOfEvent]);
        if (v17)
        {
          CFDictionarySetValue(v14, @"event-time", v17);
        }

        v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 isNetworkInitiated]);
        if (v18)
        {
          CFDictionarySetValue(v14, @"network-initiated", v18);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v30 = @"network-initiated";
          v31 = 2080;
          v32 = "dict";
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
        }

        networkPlmn = [v13 networkPlmn];
        if (networkPlmn)
        {
          CFDictionarySetValue(v14, @"network-plmn", networkPlmn);
        }

        v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 isRoaming]);
        if (v20)
        {
          CFDictionarySetValue(v14, @"roaming", v20);
        }

        v21 = [v13 rat];
        if (v21)
        {
          CFDictionarySetValue(v14, @"rat", v21);
        }

        [v7 addObject:v14];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [events countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v10);
  }

  if (v7)
  {
    CFDictionarySetValue(theDict, @"events", v7);
  }

  return theDict;
}

@end