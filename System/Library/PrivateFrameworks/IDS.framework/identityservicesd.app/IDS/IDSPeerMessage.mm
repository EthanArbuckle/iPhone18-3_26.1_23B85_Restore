@interface IDSPeerMessage
- (IDSPeerMessage)init;
- (IDSPeerMessage)initWithHighPriority:(BOOL)priority;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
@end

@implementation IDSPeerMessage

- (IDSPeerMessage)init
{
  v5.receiver = self;
  v5.super_class = IDSPeerMessage;
  v2 = [(IDSPeerMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSPeerMessage *)v2 setWantsResponse:1];
  }

  return v3;
}

- (IDSPeerMessage)initWithHighPriority:(BOOL)priority
{
  priorityCopy = priority;
  v4 = [(IDSPeerMessage *)self init];
  v5 = v4;
  if (v4)
  {
    [(IDSPeerMessage *)v4 setHighPriority:priorityCopy];
    if (!priorityCopy)
    {
      [(IDSPeerMessage *)v5 setTimeout:1200.0];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24.receiver = self;
  v24.super_class = IDSPeerMessage;
  v4 = [(IDSPeerMessage *)&v24 copyWithZone:zone];
  priority = [(IDSPeerMessage *)self priority];
  [v4 setPriority:priority];

  encryptionType = [(IDSPeerMessage *)self encryptionType];
  [v4 setEncryptionType:encryptionType];

  encryptedData = [(IDSPeerMessage *)self encryptedData];
  [v4 setEncryptedData:encryptedData];

  targetPeerID = [(IDSPeerMessage *)self targetPeerID];
  [v4 setTargetPeerID:targetPeerID];

  targetShortHandle = [(IDSPeerMessage *)self targetShortHandle];
  [v4 setTargetShortHandle:targetShortHandle];

  sourcePeerID = [(IDSPeerMessage *)self sourcePeerID];
  [v4 setSourcePeerID:sourcePeerID];

  sourceShortHandle = [(IDSPeerMessage *)self sourceShortHandle];
  [v4 setSourceShortHandle:sourceShortHandle];

  targetToken = [(IDSPeerMessage *)self targetToken];
  [v4 setTargetToken:targetToken];

  targetSessionToken = [(IDSPeerMessage *)self targetSessionToken];
  [v4 setTargetSessionToken:targetSessionToken];

  expirationDate = [(IDSPeerMessage *)self expirationDate];
  [v4 setExpirationDate:expirationDate];

  [v4 setFireAndForget:{-[IDSPeerMessage fireAndForget](self, "fireAndForget")}];
  additionalDictionary = [(IDSPeerMessage *)self additionalDictionary];
  [v4 setAdditionalDictionary:additionalDictionary];

  messageID = [(IDSPeerMessage *)self messageID];
  [v4 setMessageID:messageID];

  deliveryMinimumTimeDelay = [(IDSPeerMessage *)self deliveryMinimumTimeDelay];
  [v4 setDeliveryMinimumTimeDelay:deliveryMinimumTimeDelay];

  deliveryMinimumTime = [(IDSPeerMessage *)self deliveryMinimumTime];
  [v4 setDeliveryMinimumTime:deliveryMinimumTime];

  sendMode = [(IDSPeerMessage *)self sendMode];
  [v4 setSendMode:sendMode];

  sendReasonContainer = [(IDSPeerMessage *)self sendReasonContainer];
  [v4 setSendReasonContainer:sendReasonContainer];

  [v4 setLastBeforeRateLimit:{-[IDSPeerMessage lastBeforeRateLimit](self, "lastBeforeRateLimit")}];
  sendMetric = [(IDSPeerMessage *)self sendMetric];
  v22 = [sendMetric copy];
  [v4 setSendMetric:v22];

  return v4;
}

- (id)requiredKeys
{
  v5.receiver = self;
  v5.super_class = IDSPeerMessage;
  requiredKeys = [(IDSPeerMessage *)&v5 requiredKeys];
  v3 = [requiredKeys mutableCopy];

  if (!v3)
  {
    v3 = objc_alloc_init(NSMutableArray);
  }

  [v3 addObject:@"sP"];
  [v3 addObject:@"t"];
  [v3 addObject:@"sT"];

  return v3;
}

- (id)messageBody
{
  v43.receiver = self;
  v43.super_class = IDSPeerMessage;
  messageBody = [(IDSPeerMessage *)&v43 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  messageID = [(IDSPeerMessage *)self messageID];
  v6 = messageID;
  if (messageID)
  {
    uTF8String = [messageID UTF8String];
    if (uTF8String)
    {
      memset(uu, 170, sizeof(uu));
      uuid_parse(uTF8String, uu);
      v42 = 0;
      jw_uuid_to_data();
      v8 = 0;
      if (v8)
      {
        CFDictionarySetValue(Mutable, @"U", v8);
      }
    }
  }

  additionalDictionary = self->_additionalDictionary;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100414634;
  v40[3] = &unk_100BD95F8;
  v10 = Mutable;
  v41 = v10;
  [(NSDictionary *)additionalDictionary enumerateKeysAndObjectsUsingBlock:v40];
  sourcePeerID = [(IDSPeerMessage *)self sourcePeerID];
  if (sourcePeerID)
  {
    CFDictionarySetValue(v10, @"sP", sourcePeerID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009184F8();
  }

  sourceShortHandle = [(IDSPeerMessage *)self sourceShortHandle];
  if (sourceShortHandle)
  {
    CFDictionarySetValue(v10, @"sPs", sourceShortHandle);
  }

  targetPeerID = [(IDSPeerMessage *)self targetPeerID];
  if (targetPeerID)
  {
    CFDictionarySetValue(v10, @"tP", targetPeerID);
  }

  targetShortHandle = [(IDSPeerMessage *)self targetShortHandle];
  if (targetShortHandle)
  {
    CFDictionarySetValue(v10, @"tPs", targetShortHandle);
  }

  targetSessionToken = [(IDSPeerMessage *)self targetSessionToken];
  if (targetSessionToken)
  {
    CFDictionarySetValue(v10, @"sT", targetSessionToken);
  }

  targetToken = [(IDSPeerMessage *)self targetToken];
  if (targetToken)
  {
    CFDictionarySetValue(v10, @"t", targetToken);
  }

  encryptedData = [(IDSPeerMessage *)self encryptedData];
  if (encryptedData)
  {
    CFDictionarySetValue(v10, @"P", encryptedData);
  }

  if ([(IDSPeerMessage *)self fireAndForget])
  {
    CFDictionarySetValue(v10, IDSExpirationDateKey, &off_100C3BFE0);
  }

  else
  {
    expirationDate = [(IDSPeerMessage *)self expirationDate];

    if (expirationDate)
    {
      expirationDate2 = [(IDSPeerMessage *)self expirationDate];
      [expirationDate2 timeIntervalSince1970];
      v21 = [NSNumber numberWithUnsignedLong:v20];

      if (v21)
      {
        CFDictionarySetValue(v10, IDSExpirationDateKey, v21);
      }
    }
  }

  encryptionType = [(IDSPeerMessage *)self encryptionType];
  if (encryptionType)
  {
    v23 = encryptionType;
    encryptionType2 = [(IDSPeerMessage *)self encryptionType];
    v25 = IDSEncryptionTypeStringFromEncryptionType();
    v26 = [encryptionType2 isEqualToIgnoringCase:v25];

    if ((v26 & 1) == 0)
    {
      encryptionType3 = [(IDSPeerMessage *)self encryptionType];
      if (encryptionType3)
      {
        CFDictionarySetValue(v10, @"E", encryptionType3);
      }
    }
  }

  priority = [(IDSPeerMessage *)self priority];
  if (priority)
  {
    v29 = priority;
    priority2 = [(IDSPeerMessage *)self priority];
    intValue = [priority2 intValue];

    if (intValue != 10)
    {
      priority3 = [(IDSPeerMessage *)self priority];
      if (priority3)
      {
        CFDictionarySetValue(v10, @"pri", priority3);
      }
    }
  }

  deliveryMinimumTimeDelay = [(IDSPeerMessage *)self deliveryMinimumTimeDelay];

  if (deliveryMinimumTimeDelay)
  {
    deliveryMinimumTimeDelay2 = [(IDSPeerMessage *)self deliveryMinimumTimeDelay];
    if (deliveryMinimumTimeDelay2)
    {
      CFDictionarySetValue(v10, IDSDeliveryMinimumTimeDelayKey, deliveryMinimumTimeDelay2);
    }
  }

  deliveryMinimumTime = [(IDSPeerMessage *)self deliveryMinimumTime];

  if (deliveryMinimumTime)
  {
    deliveryMinimumTime2 = [(IDSPeerMessage *)self deliveryMinimumTime];
    if (deliveryMinimumTime2)
    {
      CFDictionarySetValue(v10, IDSDeliveryMinimumTimeKey, deliveryMinimumTime2);
    }
  }

  sendMode = [(IDSPeerMessage *)self sendMode];

  if (sendMode)
  {
    sendMode2 = [(IDSPeerMessage *)self sendMode];
    if (sendMode2)
    {
      CFDictionarySetValue(v10, IDSDeliverySendModeKey, sendMode2);
    }
  }

  if ([(IDSPeerMessage *)self lastBeforeRateLimit])
  {
    CFDictionarySetValue(v10, IDSLastBeforeRateLimitKey, &off_100C3BFF8);
  }

  return v10;
}

@end