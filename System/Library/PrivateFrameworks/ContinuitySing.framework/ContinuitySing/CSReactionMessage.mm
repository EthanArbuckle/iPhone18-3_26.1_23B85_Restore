@interface CSReactionMessage
+ (id)requiredParameters;
- (CSReactionMessage)initWithMessage:(id)message;
- (CSReactionMessage)initWithReaction:(id)reaction senderIDSIdentifier:(id)identifier;
- (id)dictionaryRepresentation;
@end

@implementation CSReactionMessage

- (CSReactionMessage)initWithReaction:(id)reaction senderIDSIdentifier:(id)identifier
{
  reactionCopy = reaction;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = CSReactionMessage;
  v8 = [(CSReactionMessage *)&v14 init];
  if (v8)
  {
    v9 = [reactionCopy copy];
    reaction = v8->_reaction;
    v8->_reaction = v9;

    v11 = [identifierCopy copy];
    senderIDSIdentifier = v8->_senderIDSIdentifier;
    v8->_senderIDSIdentifier = v11;
  }

  return v8;
}

- (CSReactionMessage)initWithMessage:(id)message
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = CSReactionMessage;
  v5 = [(CSMessage *)&v11 initWithMessage:messageCopy];
  if (v5)
  {
    CFStringGetTypeID();
    v6 = [CFDictionaryGetTypedValue() copy];
    reaction = v5->_reaction;
    v5->_reaction = v6;

    CFStringGetTypeID();
    v8 = [CFDictionaryGetTypedValue() copy];
    senderIDSIdentifier = v5->_senderIDSIdentifier;
    v5->_senderIDSIdentifier = v8;
  }

  return v5;
}

+ (id)requiredParameters
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CSReactionMessage;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"reaction"];
  [v3 addObject:@"sender-ids-identifier"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v8.receiver = self;
  v8.super_class = CSReactionMessage;
  dictionaryRepresentation = [(CSMessage *)&v8 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v5 = [(NSString *)self->_reaction copy];
  [v4 setObject:v5 forKeyedSubscript:@"reaction"];

  v6 = [(NSString *)self->_senderIDSIdentifier copy];
  [v4 setObject:v6 forKeyedSubscript:@"sender-ids-identifier"];

  return v4;
}

@end