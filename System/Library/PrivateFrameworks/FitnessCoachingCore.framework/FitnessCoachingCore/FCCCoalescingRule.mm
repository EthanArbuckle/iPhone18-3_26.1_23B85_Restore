@interface FCCCoalescingRule
- (FCCCoalescingRule)initWithEventIdentifier:(id)identifier interval:(double)interval;
- (FCCCoalescingRule)initWithProtobuf:(id)protobuf;
- (FCCCoalescingRule)initWithTransportData:(id)data;
- (id)protobuf;
- (id)transportData;
@end

@implementation FCCCoalescingRule

- (FCCCoalescingRule)initWithEventIdentifier:(id)identifier interval:(double)interval
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = FCCCoalescingRule;
  v8 = [(FCCCoalescingRule *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_eventIdentifier, identifier);
    v9->_interval = interval;
  }

  return v9;
}

- (FCCCoalescingRule)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  eventIdentifier = [protobufCopy eventIdentifier];
  [protobufCopy interval];
  v7 = v6;

  v8 = [(FCCCoalescingRule *)self initWithEventIdentifier:eventIdentifier interval:v7];
  return v8;
}

- (id)protobuf
{
  v3 = objc_alloc_init(FCCCoalescingRuleProtobuf);
  [(FCCCoalescingRuleProtobuf *)v3 setEventIdentifier:self->_eventIdentifier];
  [(FCCCoalescingRuleProtobuf *)v3 setInterval:self->_interval];

  return v3;
}

- (FCCCoalescingRule)initWithTransportData:(id)data
{
  dataCopy = data;
  v5 = [[FCCCoalescingRuleProtobuf alloc] initWithData:dataCopy];

  v6 = [(FCCCoalescingRule *)self initWithProtobuf:v5];
  return v6;
}

- (id)transportData
{
  protobuf = [(FCCCoalescingRule *)self protobuf];
  data = [protobuf data];

  return data;
}

@end