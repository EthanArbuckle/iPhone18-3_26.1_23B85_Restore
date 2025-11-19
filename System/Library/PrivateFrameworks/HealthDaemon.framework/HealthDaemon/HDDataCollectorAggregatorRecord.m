@interface HDDataCollectorAggregatorRecord
- (id)description;
@end

@implementation HDDataCollectorAggregatorRecord

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HDDataCollectorAggregatorRecord;
  v4 = [(HDDataCollectorAggregatorRecord *)&v9 description];
  v5 = v4;
  if (self->_hasSetLastSensorDatum)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v3 stringWithFormat:@"<%@: aggregator: %@, identifier: %@, configuration: %@, hasSetLastSensorDatum: %@, lastSensorDatum: %@>", v4, *&self->_aggregator, self->_configuration, v6, self->_lastSensorDatum];

  return v7;
}

@end