@interface CSAttributionRequestMessage
+ (id)requiredParameters;
+ (id)responseMessageFromDictionary:(id)dictionary;
- (CSAttributionRequestMessage)initWithMessage:(id)message;
- (CSAttributionRequestMessage)initWithQueueIdentifiers:(id)identifiers;
- (id)dictionaryRepresentation;
@end

@implementation CSAttributionRequestMessage

+ (id)responseMessageFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[CSAttributionResponseMessage alloc] initWithMessage:dictionaryCopy];

  return v4;
}

+ (id)requiredParameters
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CSAttributionRequestMessage;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"QueueIdentifiers"];

  return v3;
}

- (CSAttributionRequestMessage)initWithQueueIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = CSAttributionRequestMessage;
  v5 = [(CSAttributionRequestMessage *)&v9 init];
  if (v5)
  {
    v6 = [identifiersCopy copy];
    queueIdentifiersToAttribute = v5->_queueIdentifiersToAttribute;
    v5->_queueIdentifiersToAttribute = v6;
  }

  return v5;
}

- (CSAttributionRequestMessage)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = CSAttributionRequestMessage;
  v5 = [(CSMessage *)&v9 initWithMessage:messageCopy];
  if (v5)
  {
    objc_opt_class();
    v6 = NSDictionaryGetNSArrayOfClass();
    queueIdentifiersToAttribute = v5->_queueIdentifiersToAttribute;
    v5->_queueIdentifiersToAttribute = v6;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v6.receiver = self;
  v6.super_class = CSAttributionRequestMessage;
  dictionaryRepresentation = [(CSMessage *)&v6 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  [v4 setObject:self->_queueIdentifiersToAttribute forKeyedSubscript:@"QueueIdentifiers"];

  return v4;
}

@end