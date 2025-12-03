@interface IOAccessoryLdcmHealthClass
- (IOAccessoryLdcmHealthClass)init;
- (IOAccessoryLdcmHealthClass)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt32:-[IOAccessoryLdcmHealthClass version](self forKey:{"version"), @"version"}];
  [coder encodeBool:-[IOAccessoryLdcmHealthClass isHealthy](self forKey:{"isHealthy"), @"isHealthy"}];
  [coder encodeInt64:-[IOAccessoryLdcmHealthClass leakagePassedCount](self forKey:{"leakagePassedCount"), @"leakagePassedCount"}];
  [coder encodeInt64:-[IOAccessoryLdcmHealthClass dryCount](self forKey:{"dryCount"), @"dryCount"}];
  [coder encodeInt64:-[IOAccessoryLdcmHealthClass wetCount](self forKey:{"wetCount"), @"wetCount"}];
  [coder encodeInt64:-[IOAccessoryLdcmHealthClass overVoltageCount](self forKey:{"overVoltageCount"), @"overVoltageCount"}];
  [coder encodeInt64:-[IOAccessoryLdcmHealthClass outOfProfileCount](self forKey:{"outOfProfileCount"), @"outOfProfileCount"}];
  [coder encodeInt64:-[IOAccessoryLdcmHealthClass lastSeenTimestamp](self forKey:{"lastSeenTimestamp"), @"lastSeenTimestamp"}];
  [coder encodeInt64:-[IOAccessoryLdcmHealthClass rsvd0](self forKey:{"rsvd0"), @"rsvd0"}];
  [coder encodeInt64:-[IOAccessoryLdcmHealthClass rsvd1](self forKey:{"rsvd1"), @"rsvd1"}];
  [coder encodeInt64:-[IOAccessoryLdcmHealthClass rsvd2](self forKey:{"rsvd2"), @"rsvd2"}];
  rsvd3 = [(IOAccessoryLdcmHealthClass *)self rsvd3];

  [coder encodeInt64:rsvd3 forKey:@"rsvd3"];
}

- (IOAccessoryLdcmHealthClass)initWithCoder:(id)coder
{
  -[IOAccessoryLdcmHealthClass setVersion:](self, "setVersion:", [coder decodeInt32ForKey:@"version"]);
  -[IOAccessoryLdcmHealthClass setIsHealthy:](self, "setIsHealthy:", [coder decodeBoolForKey:@"isHealthy"]);
  -[IOAccessoryLdcmHealthClass setLeakagePassedCount:](self, "setLeakagePassedCount:", [coder decodeInt64ForKey:@"leakagePassedCount"]);
  -[IOAccessoryLdcmHealthClass setDryCount:](self, "setDryCount:", [coder decodeInt64ForKey:@"dryCount"]);
  -[IOAccessoryLdcmHealthClass setWetCount:](self, "setWetCount:", [coder decodeInt64ForKey:@"wetCount"]);
  -[IOAccessoryLdcmHealthClass setOverVoltageCount:](self, "setOverVoltageCount:", [coder decodeInt64ForKey:@"overVoltageCount"]);
  -[IOAccessoryLdcmHealthClass setOutOfProfileCount:](self, "setOutOfProfileCount:", [coder decodeInt64ForKey:@"outOfProfileCount"]);
  -[IOAccessoryLdcmHealthClass setLastSeenTimestamp:](self, "setLastSeenTimestamp:", [coder decodeInt64ForKey:@"lastSeenTimestamp"]);
  -[IOAccessoryLdcmHealthClass setRsvd0:](self, "setRsvd0:", [coder decodeInt64ForKey:@"rsvd0"]);
  -[IOAccessoryLdcmHealthClass setRsvd1:](self, "setRsvd1:", [coder decodeInt64ForKey:@"rsvd1"]);
  -[IOAccessoryLdcmHealthClass setRsvd2:](self, "setRsvd2:", [coder decodeInt64ForKey:@"rsvd2"]);
  -[IOAccessoryLdcmHealthClass setRsvd3:](self, "setRsvd3:", [coder decodeInt64ForKey:@"rsvd3"]);
  return self;
}

@end