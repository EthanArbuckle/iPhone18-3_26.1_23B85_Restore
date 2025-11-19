@interface IDSIDQueryMessage
- (BOOL)hasRequiredKeys:(id *)a3;
- (IDSIDQueryMessage)init;
- (id)additionalMessageHeaders;
- (id)additionalQueryStringParameters;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataUsageBundleIdentifier;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSIDQueryMessage

- (IDSIDQueryMessage)init
{
  v5.receiver = self;
  v5.super_class = IDSIDQueryMessage;
  v2 = [(IDSIDQueryMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSIDQueryMessage *)v2 setTimeout:20.0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = IDSIDQueryMessage;
  v4 = [(IDSIDQueryMessage *)&v10 copyWithZone:a3];
  v5 = [(IDSIDQueryMessage *)self uris];
  [v4 setURIs:v5];

  v6 = [(IDSIDQueryMessage *)self weight];
  [v4 setWeight:v6];

  v7 = [(IDSIDQueryMessage *)self responseIdentities];
  [v4 setResponseIdentities:v7];

  [(IDSIDQueryMessage *)self timeout];
  [v4 setTimeout:?];
  v8 = [(IDSIDQueryMessage *)self requiredForMessaging];
  [v4 setRequiredForMessaging:v8];

  [v4 setResultExpected:{-[IDSIDQueryMessage resultExpected](self, "resultExpected")}];
  [v4 setIsForced:{-[IDSIDQueryMessage isForced](self, "isForced")}];
  [v4 setIsClientRequestedForceQuery:{-[IDSIDQueryMessage isClientRequestedForceQuery](self, "isClientRequestedForceQuery")}];
  return v4;
}

- (id)additionalQueryStringParameters
{
  v7.receiver = self;
  v7.super_class = IDSIDQueryMessage;
  v3 = [(IDSIDQueryMessage *)&v7 additionalQueryStringParameters];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSIDQueryMessage *)self weight];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"weight", v5);
  }

  return Mutable;
}

- (id)additionalMessageHeaders
{
  v9.receiver = self;
  v9.super_class = IDSIDQueryMessage;
  v3 = [(IDSIDQueryMessage *)&v9 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSIDQueryMessage *)self service];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"x-id-service", v5);
  }

  v6 = [(IDSIDQueryMessage *)self subService];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"x-id-sub-service", v6);
  }

  v7 = [(IDSIDQueryMessage *)self requiredForMessaging];
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"x-required-for-message", v7);
  }

  if (self->_resultExpected)
  {
    CFDictionarySetValue(Mutable, @"x-result-expected", @"true");
  }

  if (self->_isForced)
  {
    CFDictionarySetValue(Mutable, @"x-is-forced-query", @"true");
  }

  if (self->_isClientRequestedForceQuery)
  {
    CFDictionarySetValue(Mutable, @"x-is-client-requested-force", @"true");
  }

  return Mutable;
}

- (id)dataUsageBundleIdentifier
{
  v2 = [(IDSIDQueryMessage *)self service];
  v3 = [v2 isEqualToString:@"com.apple.madrid"];

  if (v3)
  {
    v4 = kFZTextAppBundleIdentifier;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);

  return v2;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(IDSIDQueryMessage *)self uris];
  if (v4)
  {
    CFDictionarySetValue(v3, @"uris", v4);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100928E4C();
  }

  return v3;
}

- (BOOL)hasRequiredKeys:(id *)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(IDSIDQueryMessage *)self selfURI];

  if (!v6)
  {
    [v5 addObject:@"self URI"];
  }

  v7 = [(IDSIDQueryMessage *)self uris];
  v8 = [v7 count];

  if (!v8)
  {
    [v5 addObject:@"uris"];
  }

  if (*a3 && [v5 count])
  {
    v9 = v5;
    *a3 = v5;
  }

  if ([v5 count])
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = IDSIDQueryMessage;
    v10 = [(IDSIDQueryMessage *)&v12 hasRequiredKeys:a3];
  }

  return v10;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = [a3 _dictionaryForKey:@"results"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(IDSIDQueryMessage *)self setResponseIdentities:v4];
    v5 = v6;
  }

  _objc_release_x1(v4, v5);
}

@end