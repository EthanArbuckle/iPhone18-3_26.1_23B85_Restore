@interface FCCTimeOfDayRule
- (FCCTimeOfDayRule)initWithMinimumDayDuration:(double)duration secondsBeforeEndOfDay:(double)day;
- (FCCTimeOfDayRule)initWithProtobuf:(id)protobuf;
- (FCCTimeOfDayRule)initWithTransportData:(id)data;
- (id)protobuf;
- (id)transportData;
@end

@implementation FCCTimeOfDayRule

- (FCCTimeOfDayRule)initWithMinimumDayDuration:(double)duration secondsBeforeEndOfDay:(double)day
{
  v7.receiver = self;
  v7.super_class = FCCTimeOfDayRule;
  result = [(FCCTimeOfDayRule *)&v7 init];
  if (result)
  {
    result->_minimumDayDuration = duration;
    result->_secondsBeforeEndOfDay = day;
  }

  return result;
}

- (FCCTimeOfDayRule)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  [protobufCopy minimumDayDuration];
  v6 = v5;
  [protobufCopy secondsBeforeEndOfDay];
  v8 = v7;

  return [(FCCTimeOfDayRule *)self initWithMinimumDayDuration:v6 secondsBeforeEndOfDay:v8];
}

- (id)protobuf
{
  v3 = objc_alloc_init(FCCTimeOfDayRuleProtobuf);
  [(FCCTimeOfDayRuleProtobuf *)v3 setMinimumDayDuration:self->_minimumDayDuration];
  [(FCCTimeOfDayRuleProtobuf *)v3 setSecondsBeforeEndOfDay:self->_secondsBeforeEndOfDay];

  return v3;
}

- (FCCTimeOfDayRule)initWithTransportData:(id)data
{
  dataCopy = data;
  v5 = [[FCCTimeOfDayRuleProtobuf alloc] initWithData:dataCopy];

  v6 = [(FCCTimeOfDayRule *)self initWithProtobuf:v5];
  return v6;
}

- (id)transportData
{
  protobuf = [(FCCTimeOfDayRule *)self protobuf];
  data = [protobuf data];

  return data;
}

@end