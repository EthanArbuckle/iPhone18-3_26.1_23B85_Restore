@interface HMDAddActionSetLogEvent
- (HMDAddActionSetLogEvent)initWithActionSetType:(id)type homeUUID:(id)d;
@end

@implementation HMDAddActionSetLogEvent

- (HMDAddActionSetLogEvent)initWithActionSetType:(id)type homeUUID:(id)d
{
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = HMDAddActionSetLogEvent;
  v8 = [(HMMHomeLogEvent *)&v11 initWithHomeUUID:d];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_actionSetType, type);
  }

  return v9;
}

@end