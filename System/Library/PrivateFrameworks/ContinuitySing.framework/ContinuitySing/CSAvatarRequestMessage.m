@interface CSAvatarRequestMessage
+ (id)requiredParameters;
+ (id)responseMessageFromDictionary:(id)a3;
- (CSAvatarRequestMessage)initWithMessage:(id)a3;
- (CSAvatarRequestMessage)initWithSocialProfileIdentifier:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation CSAvatarRequestMessage

+ (id)responseMessageFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [[CSAvatarResponseMessage alloc] initWithMessage:v3];

  return v4;
}

+ (id)requiredParameters
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CSAvatarRequestMessage;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"SocialProfileIdentifier"];

  return v3;
}

- (CSAvatarRequestMessage)initWithSocialProfileIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CSAvatarRequestMessage;
  v5 = [(CSAvatarRequestMessage *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    socialProfileIdentifier = v5->_socialProfileIdentifier;
    v5->_socialProfileIdentifier = v6;
  }

  return v5;
}

- (CSAvatarRequestMessage)initWithMessage:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CSAvatarRequestMessage;
  v5 = [(CSMessage *)&v9 initWithMessage:v4];
  if (v5)
  {
    CFStringGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    socialProfileIdentifier = v5->_socialProfileIdentifier;
    v5->_socialProfileIdentifier = v6;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v6.receiver = self;
  v6.super_class = CSAvatarRequestMessage;
  v3 = [(CSMessage *)&v6 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  [v4 setObject:self->_socialProfileIdentifier forKeyedSubscript:@"SocialProfileIdentifier"];

  return v4;
}

@end