@interface CSGroupSessionTokenResponse
+ (id)requiredParameters;
- (CSGroupSessionTokenResponse)initWithMessage:(id)a3;
- (CSGroupSessionTokenResponse)initWithURLString:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation CSGroupSessionTokenResponse

- (CSGroupSessionTokenResponse)initWithURLString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSGroupSessionTokenResponse;
  v6 = [(CSGroupSessionTokenResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_urlString, a3);
  }

  return v7;
}

- (CSGroupSessionTokenResponse)initWithMessage:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CSGroupSessionTokenResponse;
  v5 = [(CSMessage *)&v9 initWithMessage:v4];
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
  v5.receiver = a1;
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
  v3 = [(CSMessage *)&v7 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(CSGroupSessionTokenResponse *)self urlString];
  [v4 setObject:v5 forKey:@"CSGroupSessionURLStringKey"];

  return v4;
}

@end