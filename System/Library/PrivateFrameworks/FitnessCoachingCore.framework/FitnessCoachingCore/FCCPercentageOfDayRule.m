@interface FCCPercentageOfDayRule
- (FCCPercentageOfDayRule)initWithMinimumDayDuration:(double)a3 percentOfDay:(double)a4;
- (FCCPercentageOfDayRule)initWithProtobuf:(id)a3;
- (FCCPercentageOfDayRule)initWithTransportData:(id)a3;
- (id)protobuf;
- (id)transportData;
@end

@implementation FCCPercentageOfDayRule

- (FCCPercentageOfDayRule)initWithMinimumDayDuration:(double)a3 percentOfDay:(double)a4
{
  v7.receiver = self;
  v7.super_class = FCCPercentageOfDayRule;
  result = [(FCCPercentageOfDayRule *)&v7 init];
  if (result)
  {
    result->_minimumDayDuration = a3;
    result->_percentOfDay = a4;
  }

  return result;
}

- (FCCPercentageOfDayRule)initWithProtobuf:(id)a3
{
  v4 = a3;
  [v4 minimumDayDuration];
  v6 = v5;
  [v4 percentOfDay];
  v8 = v7;

  return [(FCCPercentageOfDayRule *)self initWithMinimumDayDuration:v6 percentOfDay:v8];
}

- (id)protobuf
{
  v3 = objc_alloc_init(FCCPercentageOfDayRuleProtobuf);
  [(FCCPercentageOfDayRuleProtobuf *)v3 setMinimumDayDuration:self->_minimumDayDuration];
  [(FCCPercentageOfDayRuleProtobuf *)v3 setPercentOfDay:self->_percentOfDay];

  return v3;
}

- (FCCPercentageOfDayRule)initWithTransportData:(id)a3
{
  v4 = a3;
  v5 = [[FCCPercentageOfDayRuleProtobuf alloc] initWithData:v4];

  v6 = [(FCCPercentageOfDayRule *)self initWithProtobuf:v5];
  return v6;
}

- (id)transportData
{
  v2 = [(FCCPercentageOfDayRule *)self protobuf];
  v3 = [v2 data];

  return v3;
}

@end