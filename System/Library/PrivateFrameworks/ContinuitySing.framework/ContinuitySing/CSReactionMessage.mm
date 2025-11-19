@interface CSReactionMessage
+ (id)requiredParameters;
- (CSReactionMessage)initWithMessage:(id)a3;
- (CSReactionMessage)initWithReaction:(id)a3 senderIDSIdentifier:(id)a4;
- (id)dictionaryRepresentation;
@end

@implementation CSReactionMessage

- (CSReactionMessage)initWithReaction:(id)a3 senderIDSIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CSReactionMessage;
  v8 = [(CSReactionMessage *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    reaction = v8->_reaction;
    v8->_reaction = v9;

    v11 = [v7 copy];
    senderIDSIdentifier = v8->_senderIDSIdentifier;
    v8->_senderIDSIdentifier = v11;
  }

  return v8;
}

- (CSReactionMessage)initWithMessage:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CSReactionMessage;
  v5 = [(CSMessage *)&v11 initWithMessage:v4];
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
  v5.receiver = a1;
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
  v3 = [(CSMessage *)&v8 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(NSString *)self->_reaction copy];
  [v4 setObject:v5 forKeyedSubscript:@"reaction"];

  v6 = [(NSString *)self->_senderIDSIdentifier copy];
  [v4 setObject:v6 forKeyedSubscript:@"sender-ids-identifier"];

  return v4;
}

@end