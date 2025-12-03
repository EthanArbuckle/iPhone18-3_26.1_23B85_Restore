@interface FCCPercentageOfDayRule
- (FCCPercentageOfDayRule)initWithMinimumDayDuration:(double)duration percentOfDay:(double)day;
- (FCCPercentageOfDayRule)initWithProtobuf:(id)protobuf;
- (FCCPercentageOfDayRule)initWithTransportData:(id)data;
- (id)protobuf;
- (id)transportData;
@end

@implementation FCCPercentageOfDayRule

- (FCCPercentageOfDayRule)initWithMinimumDayDuration:(double)duration percentOfDay:(double)day
{
  v7.receiver = self;
  v7.super_class = FCCPercentageOfDayRule;
  result = [(FCCPercentageOfDayRule *)&v7 init];
  if (result)
  {
    result->_minimumDayDuration = duration;
    result->_percentOfDay = day;
  }

  return result;
}

- (FCCPercentageOfDayRule)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  [protobufCopy minimumDayDuration];
  v6 = v5;
  [protobufCopy percentOfDay];
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

- (FCCPercentageOfDayRule)initWithTransportData:(id)data
{
  dataCopy = data;
  v5 = [[FCCPercentageOfDayRuleProtobuf alloc] initWithData:dataCopy];

  v6 = [(FCCPercentageOfDayRule *)self initWithProtobuf:v5];
  return v6;
}

- (id)transportData
{
  protobuf = [(FCCPercentageOfDayRule *)self protobuf];
  data = [protobuf data];

  return data;
}

@end