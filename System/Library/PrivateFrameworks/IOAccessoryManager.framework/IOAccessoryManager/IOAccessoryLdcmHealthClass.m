@interface IOAccessoryLdcmHealthClass
- (IOAccessoryLdcmHealthClass)init;
- (IOAccessoryLdcmHealthClass)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IOAccessoryLdcmHealthClass

- (IOAccessoryLdcmHealthClass)init
{
  v3.receiver = self;
  v3.super_class = IOAccessoryLdcmHealthClass;
  result = [(IOAccessoryLdcmHealthClass *)&v3 init];
  if (result)
  {
    result->_version = 1;
    result->_isHealthy = 0;
    *&result->_leakagePassedCount = 0u;
    *&result->_wetCount = 0u;
    *&result->_outOfProfileCount = 0u;
    *&result->_rsvd0 = 0u;
    *&result->_rsvd2 = 0u;
    result->_overVoltageTimestamp = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt32:-[IOAccessoryLdcmHealthClass version](self forKey:{"version"), @"version"}];
  [a3 encodeBool:-[IOAccessoryLdcmHealthClass isHealthy](self forKey:{"isHealthy"), @"isHealthy"}];
  [a3 encodeInt64:-[IOAccessoryLdcmHealthClass leakagePassedCount](self forKey:{"leakagePassedCount"), @"leakagePassedCount"}];
  [a3 encodeInt64:-[IOAccessoryLdcmHealthClass dryCount](self forKey:{"dryCount"), @"dryCount"}];
  [a3 encodeInt64:-[IOAccessoryLdcmHealthClass wetCount](self forKey:{"wetCount"), @"wetCount"}];
  [a3 encodeInt64:-[IOAccessoryLdcmHealthClass overVoltageCount](self forKey:{"overVoltageCount"), @"overVoltageCount"}];
  [a3 encodeInt64:-[IOAccessoryLdcmHealthClass outOfProfileCount](self forKey:{"outOfProfileCount"), @"outOfProfileCount"}];
  [a3 encodeInt64:-[IOAccessoryLdcmHealthClass lastSeenTimestamp](self forKey:{"lastSeenTimestamp"), @"lastSeenTimestamp"}];
  [a3 encodeInt64:-[IOAccessoryLdcmHealthClass rsvd0](self forKey:{"rsvd0"), @"rsvd0"}];
  [a3 encodeInt64:-[IOAccessoryLdcmHealthClass rsvd1](self forKey:{"rsvd1"), @"rsvd1"}];
  [a3 encodeInt64:-[IOAccessoryLdcmHealthClass rsvd2](self forKey:{"rsvd2"), @"rsvd2"}];
  v5 = [(IOAccessoryLdcmHealthClass *)self rsvd3];

  [a3 encodeInt64:v5 forKey:@"rsvd3"];
}

- (IOAccessoryLdcmHealthClass)initWithCoder:(id)a3
{
  -[IOAccessoryLdcmHealthClass setVersion:](self, "setVersion:", [a3 decodeInt32ForKey:@"version"]);
  -[IOAccessoryLdcmHealthClass setIsHealthy:](self, "setIsHealthy:", [a3 decodeBoolForKey:@"isHealthy"]);
  -[IOAccessoryLdcmHealthClass setLeakagePassedCount:](self, "setLeakagePassedCount:", [a3 decodeInt64ForKey:@"leakagePassedCount"]);
  -[IOAccessoryLdcmHealthClass setDryCount:](self, "setDryCount:", [a3 decodeInt64ForKey:@"dryCount"]);
  -[IOAccessoryLdcmHealthClass setWetCount:](self, "setWetCount:", [a3 decodeInt64ForKey:@"wetCount"]);
  -[IOAccessoryLdcmHealthClass setOverVoltageCount:](self, "setOverVoltageCount:", [a3 decodeInt64ForKey:@"overVoltageCount"]);
  -[IOAccessoryLdcmHealthClass setOutOfProfileCount:](self, "setOutOfProfileCount:", [a3 decodeInt64ForKey:@"outOfProfileCount"]);
  -[IOAccessoryLdcmHealthClass setLastSeenTimestamp:](self, "setLastSeenTimestamp:", [a3 decodeInt64ForKey:@"lastSeenTimestamp"]);
  -[IOAccessoryLdcmHealthClass setRsvd0:](self, "setRsvd0:", [a3 decodeInt64ForKey:@"rsvd0"]);
  -[IOAccessoryLdcmHealthClass setRsvd1:](self, "setRsvd1:", [a3 decodeInt64ForKey:@"rsvd1"]);
  -[IOAccessoryLdcmHealthClass setRsvd2:](self, "setRsvd2:", [a3 decodeInt64ForKey:@"rsvd2"]);
  -[IOAccessoryLdcmHealthClass setRsvd3:](self, "setRsvd3:", [a3 decodeInt64ForKey:@"rsvd3"]);
  return self;
}

@end