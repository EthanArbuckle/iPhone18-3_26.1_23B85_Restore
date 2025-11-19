@interface FCCCoalescingRule
- (FCCCoalescingRule)initWithEventIdentifier:(id)a3 interval:(double)a4;
- (FCCCoalescingRule)initWithProtobuf:(id)a3;
- (FCCCoalescingRule)initWithTransportData:(id)a3;
- (id)protobuf;
- (id)transportData;
@end

@implementation FCCCoalescingRule

- (FCCCoalescingRule)initWithEventIdentifier:(id)a3 interval:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FCCCoalescingRule;
  v8 = [(FCCCoalescingRule *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_eventIdentifier, a3);
    v9->_interval = a4;
  }

  return v9;
}

- (FCCCoalescingRule)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [v4 eventIdentifier];
  [v4 interval];
  v7 = v6;

  v8 = [(FCCCoalescingRule *)self initWithEventIdentifier:v5 interval:v7];
  return v8;
}

- (id)protobuf
{
  v3 = objc_alloc_init(FCCCoalescingRuleProtobuf);
  [(FCCCoalescingRuleProtobuf *)v3 setEventIdentifier:self->_eventIdentifier];
  [(FCCCoalescingRuleProtobuf *)v3 setInterval:self->_interval];

  return v3;
}

- (FCCCoalescingRule)initWithTransportData:(id)a3
{
  v4 = a3;
  v5 = [[FCCCoalescingRuleProtobuf alloc] initWithData:v4];

  v6 = [(FCCCoalescingRule *)self initWithProtobuf:v5];
  return v6;
}

- (id)transportData
{
  v2 = [(FCCCoalescingRule *)self protobuf];
  v3 = [v2 data];

  return v3;
}

@end