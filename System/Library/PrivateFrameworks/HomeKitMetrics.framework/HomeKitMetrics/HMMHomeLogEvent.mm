@interface HMMHomeLogEvent
- (HMMHomeLogEvent)initWithHomeUUID:(id)d;
- (HMMHomeLogEvent)initWithStartTime:(double)time homeUUID:(id)d;
- (NSString)homeUUIDString;
@end

@implementation HMMHomeLogEvent

- (NSString)homeUUIDString
{
  homeUUID = [(HMMHomeLogEvent *)self homeUUID];
  uUIDString = [homeUUID UUIDString];

  return uUIDString;
}

- (HMMHomeLogEvent)initWithStartTime:(double)time homeUUID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = HMMHomeLogEvent;
  v8 = [(HMMLogEvent *)&v11 initWithStartTime:time];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_homeUUID, d);
  }

  return v9;
}

- (HMMHomeLogEvent)initWithHomeUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HMMHomeLogEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeUUID, d);
  }

  return v7;
}

@end