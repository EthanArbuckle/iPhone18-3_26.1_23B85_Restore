@interface IDSValidationCertificateMessage
- (IDSValidationCertificateMessage)init;
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
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
    v4 = [v3 lastObject];
    [(IDSValidationCertificateMessage *)v2 setTopic:v4];

    [(IDSValidationCertificateMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = IDSValidationCertificateMessage;
  v4 = [(IDSValidationCertificateMessage *)&v8 copyWithZone:a3];
  v5 = [(IDSValidationCertificateMessage *)self responseCertificateData];
  [v4 setResponseCertificateData:v5];

  v6 = [(IDSValidationCertificateMessage *)self pushToken];
  [v4 setPushToken:v6];

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
  v2 = [(IDSValidationCertificateMessage *)&v5 additionalMessageHeaders];
  Mutable = [v2 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  return Mutable;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = [a3 objectForKey:@"cert"];
  [(IDSValidationCertificateMessage *)self setResponseCertificateData:v4];
}

@end