@interface CSAvatarRequestMessage
+ (id)requiredParameters;
+ (id)responseMessageFromDictionary:(id)dictionary;
- (CSAvatarRequestMessage)initWithMessage:(id)message;
- (CSAvatarRequestMessage)initWithSocialProfileIdentifier:(id)identifier;
- (id)dictionaryRepresentation;
@end

@implementation CSAvatarRequestMessage

+ (id)responseMessageFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[CSAvatarResponseMessage alloc] initWithMessage:dictionaryCopy];

  return v4;
}

+ (id)requiredParameters
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CSAvatarRequestMessage;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"SocialProfileIdentifier"];

  return v3;
}

- (CSAvatarRequestMessage)initWithSocialProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CSAvatarRequestMessage;
  v5 = [(CSAvatarRequestMessage *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    socialProfileIdentifier = v5->_socialProfileIdentifier;
    v5->_socialProfileIdentifier = v6;
  }

  return v5;
}

- (CSAvatarRequestMessage)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = CSAvatarRequestMessage;
  v5 = [(CSMessage *)&v9 initWithMessage:messageCopy];
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
  dictionaryRepresentation = [(CSMessage *)&v6 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  [v4 setObject:self->_socialProfileIdentifier forKeyedSubscript:@"SocialProfileIdentifier"];

  return v4;
}

@end