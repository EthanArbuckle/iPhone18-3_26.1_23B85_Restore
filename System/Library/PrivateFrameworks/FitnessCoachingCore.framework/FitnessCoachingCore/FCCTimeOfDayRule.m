@interface FCCTimeOfDayRule
- (FCCTimeOfDayRule)initWithMinimumDayDuration:(double)a3 secondsBeforeEndOfDay:(double)a4;
- (FCCTimeOfDayRule)initWithProtobuf:(id)a3;
- (FCCTimeOfDayRule)initWithTransportData:(id)a3;
- (id)protobuf;
- (id)transportData;
@end

@implementation FCCTimeOfDayRule

- (FCCTimeOfDayRule)initWithMinimumDayDuration:(double)a3 secondsBeforeEndOfDay:(double)a4
{
  v7.receiver = self;
  v7.super_class = FCCTimeOfDayRule;
  result = [(FCCTimeOfDayRule *)&v7 init];
  if (result)
  {
    result->_minimumDayDuration = a3;
    result->_secondsBeforeEndOfDay = a4;
  }

  return result;
}

- (FCCTimeOfDayRule)initWithProtobuf:(id)a3
{
  v4 = a3;
  [v4 minimumDayDuration];
  v6 = v5;
  [v4 secondsBeforeEndOfDay];
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

- (FCCTimeOfDayRule)initWithTransportData:(id)a3
{
  v4 = a3;
  v5 = [[FCCTimeOfDayRuleProtobuf alloc] initWithData:v4];

  v6 = [(FCCTimeOfDayRule *)self initWithProtobuf:v5];
  return v6;
}

- (id)transportData
{
  v2 = [(FCCTimeOfDayRule *)self protobuf];
  v3 = [v2 data];

  return v3;
}

@end