@interface CSAttributionRequestMessage
+ (id)requiredParameters;
+ (id)responseMessageFromDictionary:(id)a3;
- (CSAttributionRequestMessage)initWithMessage:(id)a3;
- (CSAttributionRequestMessage)initWithQueueIdentifiers:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation CSAttributionRequestMessage

+ (id)responseMessageFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [[CSAttributionResponseMessage alloc] initWithMessage:v3];

  return v4;
}

+ (id)requiredParameters
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CSAttributionRequestMessage;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"QueueIdentifiers"];

  return v3;
}

- (CSAttributionRequestMessage)initWithQueueIdentifiers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CSAttributionRequestMessage;
  v5 = [(CSAttributionRequestMessage *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    queueIdentifiersToAttribute = v5->_queueIdentifiersToAttribute;
    v5->_queueIdentifiersToAttribute = v6;
  }

  return v5;
}

- (CSAttributionRequestMessage)initWithMessage:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CSAttributionRequestMessage;
  v5 = [(CSMessage *)&v9 initWithMessage:v4];
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
  v3 = [(CSMessage *)&v6 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  [v4 setObject:self->_queueIdentifiersToAttribute forKeyedSubscript:@"QueueIdentifiers"];

  return v4;
}

@end