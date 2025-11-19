@interface IDSMessage
- (BOOL)_shouldUseJSONForEncoding;
- (IDSMessage)init;
- (id)_objectForKeyFromMadridBag:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = IDSMessage;
  v4 = [(IDSBaseMessage *)&v9 copyWithZone:a3];
  v5 = [(IDSMessage *)self wantsDeliveryStatus];
  [v4 setWantsDeliveryStatus:v5];

  v6 = [(IDSMessage *)self deliveryStatusContext];
  [v4 setDeliveryStatusContext:v6];

  [v4 setWantsCertifiedDelivery:{-[IDSMessage wantsCertifiedDelivery](self, "wantsCertifiedDelivery")}];
  v7 = [(IDSMessage *)self version];
  [v4 setVersion:v7];

  return v4;
}

- (id)messageBody
{
  v17.receiver = self;
  v17.super_class = IDSMessage;
  v3 = [(IDSBaseMessage *)&v17 messageBody];
  v4 = [v3 mutableCopy];

  v5 = [(IDSMessage *)self wantsDeliveryStatus];
  v6 = [v5 intValue];

  if (v6 >= 1)
  {
    v7 = [(IDSMessage *)self wantsDeliveryStatus];
    if (v7)
    {
      CFDictionarySetValue(v4, @"D", v7);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E121CC();
    }

    v8 = [(IDSMessage *)self deliveryStatusContext];
    if (v8)
    {
      CFDictionarySetValue(v4, @"Dc", v8);
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

- (id)_objectForKeyFromMadridBag:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IDSMessage *)self _madridServerBag];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end