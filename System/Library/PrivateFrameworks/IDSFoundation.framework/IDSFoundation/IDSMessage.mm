@interface IDSMessage
- (BOOL)_shouldUseJSONForEncoding;
- (IDSMessage)init;
- (id)_objectForKeyFromMadridBag:(id)bag;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
@end

@implementation IDSMessage

- (IDSMessage)init
{
  v5.receiver = self;
  v5.super_class = IDSMessage;
  v2 = [(IDSBaseMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSBaseMessage *)v2 setTimeout:120.0];
    [(IDSBaseMessage *)v3 setWantsIntegerUniqueIDs:1];
    [(IDSBaseMessage *)v3 setWantsBinaryPush:[(IDSMessage *)v3 _shouldUseJSONForEncoding]^ 1];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = IDSMessage;
  v4 = [(IDSBaseMessage *)&v9 copyWithZone:zone];
  wantsDeliveryStatus = [(IDSMessage *)self wantsDeliveryStatus];
  [v4 setWantsDeliveryStatus:wantsDeliveryStatus];

  deliveryStatusContext = [(IDSMessage *)self deliveryStatusContext];
  [v4 setDeliveryStatusContext:deliveryStatusContext];

  [v4 setWantsCertifiedDelivery:{-[IDSMessage wantsCertifiedDelivery](self, "wantsCertifiedDelivery")}];
  version = [(IDSMessage *)self version];
  [v4 setVersion:version];

  return v4;
}

- (id)messageBody
{
  v17.receiver = self;
  v17.super_class = IDSMessage;
  messageBody = [(IDSBaseMessage *)&v17 messageBody];
  v4 = [messageBody mutableCopy];

  wantsDeliveryStatus = [(IDSMessage *)self wantsDeliveryStatus];
  intValue = [wantsDeliveryStatus intValue];

  if (intValue >= 1)
  {
    wantsDeliveryStatus2 = [(IDSMessage *)self wantsDeliveryStatus];
    if (wantsDeliveryStatus2)
    {
      CFDictionarySetValue(v4, @"D", wantsDeliveryStatus2);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E121CC();
    }

    deliveryStatusContext = [(IDSMessage *)self deliveryStatusContext];
    if (deliveryStatusContext)
    {
      CFDictionarySetValue(v4, @"Dc", deliveryStatusContext);
    }
  }

  if ([(IDSMessage *)self wantsCertifiedDelivery])
  {
    v9 = +[IDSServerBag sharedInstance];
    v10 = [v9 objectForKey:@"certified-delivery-probability"];

    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = v10;
    }

    else
    {
      v11 = &unk_1F1B22940;
    }

    v12 = arc4random_uniform(0x64u);
    [v11 floatValue];
    if ((v13 * 100.0) > v12)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:_IDSCertifiedDeliveryVersion()];
      if (v14)
      {
        CFDictionarySetValue(v4, @"cdv", v14);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A7E12254();
      }
    }
  }

  v15 = _IDSTransportVersionNumber();
  if (v15)
  {
    CFDictionarySetValue(v4, @"v", v15);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E122E0();
  }

  return v4;
}

- (BOOL)_shouldUseJSONForEncoding
{
  v2 = [(IDSMessage *)self _objectForKeyFromMadridBag:@"md-use-json"];
  if ([v2 intValue])
  {
    v3 = 1;
  }

  else
  {
    v3 = IMGetCachedDomainBoolForKey();
  }

  return v3;
}

- (id)_objectForKeyFromMadridBag:(id)bag
{
  bagCopy = bag;
  if ([bagCopy length])
  {
    _madridServerBag = [(IDSMessage *)self _madridServerBag];
    v6 = [_madridServerBag objectForKey:bagCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end