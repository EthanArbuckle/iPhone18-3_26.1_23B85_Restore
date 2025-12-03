@interface IDSValidationCertificateMessage
- (IDSValidationCertificateMessage)init;
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSValidationCertificateMessage

- (IDSValidationCertificateMessage)init
{
  v6.receiver = self;
  v6.super_class = IDSValidationCertificateMessage;
  v2 = [(IDSValidationCertificateMessage *)&v6 init];
  if (v2)
  {
    IMGetConferenceSettings();
    v3 = 0;
    lastObject = [v3 lastObject];
    [(IDSValidationCertificateMessage *)v2 setTopic:lastObject];

    [(IDSValidationCertificateMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = IDSValidationCertificateMessage;
  v4 = [(IDSValidationCertificateMessage *)&v8 copyWithZone:zone];
  responseCertificateData = [(IDSValidationCertificateMessage *)self responseCertificateData];
  [v4 setResponseCertificateData:responseCertificateData];

  pushToken = [(IDSValidationCertificateMessage *)self pushToken];
  [v4 setPushToken:pushToken];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);

  return v2;
}

- (id)messageBody
{
  v2 = objc_alloc_init(NSMutableDictionary);

  return v2;
}

- (id)additionalMessageHeaders
{
  v5.receiver = self;
  v5.super_class = IDSValidationCertificateMessage;
  additionalMessageHeaders = [(IDSValidationCertificateMessage *)&v5 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  return Mutable;
}

- (void)handleResponseDictionary:(id)dictionary
{
  v4 = [dictionary objectForKey:@"cert"];
  [(IDSValidationCertificateMessage *)self setResponseCertificateData:v4];
}

@end