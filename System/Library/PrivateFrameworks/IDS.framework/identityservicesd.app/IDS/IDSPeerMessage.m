@interface IDSPeerMessage
- (IDSPeerMessage)init;
- (IDSPeerMessage)initWithHighPriority:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (IDSPeerMessage)initWithHighPriority:(BOOL)a3
{
  v3 = a3;
  v4 = [(IDSPeerMessage *)self init];
  v5 = v4;
  if (v4)
  {
    [(IDSPeerMessage *)v4 setHighPriority:v3];
    if (!v3)
    {
      [(IDSPeerMessage *)v5 setTimeout:1200.0];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24.receiver = self;
  v24.super_class = IDSPeerMessage;
  v4 = [(IDSPeerMessage *)&v24 copyWithZone:a3];
  v5 = [(IDSPeerMessage *)self priority];
  [v4 setPriority:v5];

  v6 = [(IDSPeerMessage *)self encryptionType];
  [v4 setEncryptionType:v6];

  v7 = [(IDSPeerMessage *)self encryptedData];
  [v4 setEncryptedData:v7];

  v8 = [(IDSPeerMessage *)self targetPeerID];
  [v4 setTargetPeerID:v8];

  v9 = [(IDSPeerMessage *)self targetShortHandle];
  [v4 setTargetShortHandle:v9];

  v10 = [(IDSPeerMessage *)self sourcePeerID];
  [v4 setSourcePeerID:v10];

  v11 = [(IDSPeerMessage *)self sourceShortHandle];
  [v4 setSourceShortHandle:v11];

  v12 = [(IDSPeerMessage *)self targetToken];
  [v4 setTargetToken:v12];

  v13 = [(IDSPeerMessage *)self targetSessionToken];
  [v4 setTargetSessionToken:v13];

  v14 = [(IDSPeerMessage *)self expirationDate];
  [v4 setExpirationDate:v14];

  [v4 setFireAndForget:{-[IDSPeerMessage fireAndForget](self, "fireAndForget")}];
  v15 = [(IDSPeerMessage *)self additionalDictionary];
  [v4 setAdditionalDictionary:v15];

  v16 = [(IDSPeerMessage *)self messageID];
  [v4 setMessageID:v16];

  v17 = [(IDSPeerMessage *)self deliveryMinimumTimeDelay];
  [v4 setDeliveryMinimumTimeDelay:v17];

  v18 = [(IDSPeerMessage *)self deliveryMinimumTime];
  [v4 setDeliveryMinimumTime:v18];

  v19 = [(IDSPeerMessage *)self sendMode];
  [v4 setSendMode:v19];

  v20 = [(IDSPeerMessage *)self sendReasonContainer];
  [v4 setSendReasonContainer:v20];

  [v4 setLastBeforeRateLimit:{-[IDSPeerMessage lastBeforeRateLimit](self, "lastBeforeRateLimit")}];
  v21 = [(IDSPeerMessage *)self sendMetric];
  v22 = [v21 copy];
  [v4 setSendMetric:v22];

  return v4;
}

- (id)requiredKeys
{
  v5.receiver = self;
  v5.super_class = IDSPeerMessage;
  v2 = [(IDSPeerMessage *)&v5 requiredKeys];
  v3 = [v2 mutableCopy];

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
  v3 = [(IDSPeerMessage *)&v43 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSPeerMessage *)self messageID];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 UTF8String];
    if (v7)
    {
      memset(uu, 170, sizeof(uu));
      uuid_parse(v7, uu);
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
  v11 = [(IDSPeerMessage *)self sourcePeerID];
  if (v11)
  {
    CFDictionarySetValue(v10, @"sP", v11);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009184F8();
  }

  v12 = [(IDSPeerMessage *)self sourceShortHandle];
  if (v12)
  {
    CFDictionarySetValue(v10, @"sPs", v12);
  }

  v13 = [(IDSPeerMessage *)self targetPeerID];
  if (v13)
  {
    CFDictionarySetValue(v10, @"tP", v13);
  }

  v14 = [(IDSPeerMessage *)self targetShortHandle];
  if (v14)
  {
    CFDictionarySetValue(v10, @"tPs", v14);
  }

  v15 = [(IDSPeerMessage *)self targetSessionToken];
  if (v15)
  {
    CFDictionarySetValue(v10, @"sT", v15);
  }

  v16 = [(IDSPeerMessage *)self targetToken];
  if (v16)
  {
    CFDictionarySetValue(v10, @"t", v16);
  }

  v17 = [(IDSPeerMessage *)self encryptedData];
  if (v17)
  {
    CFDictionarySetValue(v10, @"P", v17);
  }

  if ([(IDSPeerMessage *)self fireAndForget])
  {
    CFDictionarySetValue(v10, IDSExpirationDateKey, &off_100C3BFE0);
  }

  else
  {
    v18 = [(IDSPeerMessage *)self expirationDate];

    if (v18)
    {
      v19 = [(IDSPeerMessage *)self expirationDate];
      [v19 timeIntervalSince1970];
      v21 = [NSNumber numberWithUnsignedLong:v20];

      if (v21)
      {
        CFDictionarySetValue(v10, IDSExpirationDateKey, v21);
      }
    }
  }

  v22 = [(IDSPeerMessage *)self encryptionType];
  if (v22)
  {
    v23 = v22;
    v24 = [(IDSPeerMessage *)self encryptionType];
    v25 = IDSEncryptionTypeStringFromEncryptionType();
    v26 = [v24 isEqualToIgnoringCase:v25];

    if ((v26 & 1) == 0)
    {
      v27 = [(IDSPeerMessage *)self encryptionType];
      if (v27)
      {
        CFDictionarySetValue(v10, @"E", v27);
      }
    }
  }

  v28 = [(IDSPeerMessage *)self priority];
  if (v28)
  {
    v29 = v28;
    v30 = [(IDSPeerMessage *)self priority];
    v31 = [v30 intValue];

    if (v31 != 10)
    {
      v32 = [(IDSPeerMessage *)self priority];
      if (v32)
      {
        CFDictionarySetValue(v10, @"pri", v32);
      }
    }
  }

  v33 = [(IDSPeerMessage *)self deliveryMinimumTimeDelay];

  if (v33)
  {
    v34 = [(IDSPeerMessage *)self deliveryMinimumTimeDelay];
    if (v34)
    {
      CFDictionarySetValue(v10, IDSDeliveryMinimumTimeDelayKey, v34);
    }
  }

  v35 = [(IDSPeerMessage *)self deliveryMinimumTime];

  if (v35)
  {
    v36 = [(IDSPeerMessage *)self deliveryMinimumTime];
    if (v36)
    {
      CFDictionarySetValue(v10, IDSDeliveryMinimumTimeKey, v36);
    }
  }

  v37 = [(IDSPeerMessage *)self sendMode];

  if (v37)
  {
    v38 = [(IDSPeerMessage *)self sendMode];
    if (v38)
    {
      CFDictionarySetValue(v10, IDSDeliverySendModeKey, v38);
    }
  }

  if ([(IDSPeerMessage *)self lastBeforeRateLimit])
  {
    CFDictionarySetValue(v10, IDSLastBeforeRateLimitKey, &off_100C3BFF8);
  }

  return v10;
}

@end