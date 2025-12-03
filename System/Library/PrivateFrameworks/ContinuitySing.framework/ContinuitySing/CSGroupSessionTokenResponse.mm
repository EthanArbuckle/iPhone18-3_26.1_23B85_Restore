@interface CSGroupSessionTokenResponse
+ (id)requiredParameters;
- (CSGroupSessionTokenResponse)initWithMessage:(id)message;
- (CSGroupSessionTokenResponse)initWithURLString:(id)string;
- (id)dictionaryRepresentation;
@end

@implementation CSGroupSessionTokenResponse

- (CSGroupSessionTokenResponse)initWithURLString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = CSGroupSessionTokenResponse;
  v6 = [(CSGroupSessionTokenResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_urlString, string);
  }

  return v7;
}

- (CSGroupSessionTokenResponse)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = CSGroupSessionTokenResponse;
  v5 = [(CSMessage *)&v9 initWithMessage:messageCopy];
  if (v5)
  {
    CFStringGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    urlString = v5->_urlString;
    v5->_urlString = v6;
  }

  return v5;
}

+ (id)requiredParameters
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CSGroupSessionTokenResponse;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"CSGroupSessionURLStringKey"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = CSGroupSessionTokenResponse;
  dictionaryRepresentation = [(CSMessage *)&v7 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  urlString = [(CSGroupSessionTokenResponse *)self urlString];
  [v4 setObject:urlString forKey:@"CSGroupSessionURLStringKey"];

  return v4;
}

@end