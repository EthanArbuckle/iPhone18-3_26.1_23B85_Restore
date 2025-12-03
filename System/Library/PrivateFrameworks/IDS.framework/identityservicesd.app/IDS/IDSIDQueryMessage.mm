@interface IDSIDQueryMessage
- (BOOL)hasRequiredKeys:(id *)keys;
- (IDSIDQueryMessage)init;
- (id)additionalMessageHeaders;
- (id)additionalQueryStringParameters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataUsageBundleIdentifier;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = IDSIDQueryMessage;
  v4 = [(IDSIDQueryMessage *)&v10 copyWithZone:zone];
  uris = [(IDSIDQueryMessage *)self uris];
  [v4 setURIs:uris];

  weight = [(IDSIDQueryMessage *)self weight];
  [v4 setWeight:weight];

  responseIdentities = [(IDSIDQueryMessage *)self responseIdentities];
  [v4 setResponseIdentities:responseIdentities];

  [(IDSIDQueryMessage *)self timeout];
  [v4 setTimeout:?];
  requiredForMessaging = [(IDSIDQueryMessage *)self requiredForMessaging];
  [v4 setRequiredForMessaging:requiredForMessaging];

  [v4 setResultExpected:{-[IDSIDQueryMessage resultExpected](self, "resultExpected")}];
  [v4 setIsForced:{-[IDSIDQueryMessage isForced](self, "isForced")}];
  [v4 setIsClientRequestedForceQuery:{-[IDSIDQueryMessage isClientRequestedForceQuery](self, "isClientRequestedForceQuery")}];
  return v4;
}

- (id)additionalQueryStringParameters
{
  v7.receiver = self;
  v7.super_class = IDSIDQueryMessage;
  additionalQueryStringParameters = [(IDSIDQueryMessage *)&v7 additionalQueryStringParameters];
  Mutable = [additionalQueryStringParameters mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  weight = [(IDSIDQueryMessage *)self weight];
  if (weight)
  {
    CFDictionarySetValue(Mutable, @"weight", weight);
  }

  return Mutable;
}

- (id)additionalMessageHeaders
{
  v9.receiver = self;
  v9.super_class = IDSIDQueryMessage;
  additionalMessageHeaders = [(IDSIDQueryMessage *)&v9 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  service = [(IDSIDQueryMessage *)self service];
  if (service)
  {
    CFDictionarySetValue(Mutable, @"x-id-service", service);
  }

  subService = [(IDSIDQueryMessage *)self subService];
  if (subService)
  {
    CFDictionarySetValue(Mutable, @"x-id-sub-service", subService);
  }

  requiredForMessaging = [(IDSIDQueryMessage *)self requiredForMessaging];
  if (requiredForMessaging)
  {
    CFDictionarySetValue(Mutable, @"x-required-for-message", requiredForMessaging);
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
  service = [(IDSIDQueryMessage *)self service];
  v3 = [service isEqualToString:@"com.apple.madrid"];

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
  uris = [(IDSIDQueryMessage *)self uris];
  if (uris)
  {
    CFDictionarySetValue(v3, @"uris", uris);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100928E4C();
  }

  return v3;
}

- (BOOL)hasRequiredKeys:(id *)keys
{
  v5 = objc_alloc_init(NSMutableArray);
  selfURI = [(IDSIDQueryMessage *)self selfURI];

  if (!selfURI)
  {
    [v5 addObject:@"self URI"];
  }

  uris = [(IDSIDQueryMessage *)self uris];
  v8 = [uris count];

  if (!v8)
  {
    [v5 addObject:@"uris"];
  }

  if (*keys && [v5 count])
  {
    v9 = v5;
    *keys = v5;
  }

  if ([v5 count])
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = IDSIDQueryMessage;
    v10 = [(IDSIDQueryMessage *)&v12 hasRequiredKeys:keys];
  }

  return v10;
}

- (void)handleResponseDictionary:(id)dictionary
{
  v4 = [dictionary _dictionaryForKey:@"results"];
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