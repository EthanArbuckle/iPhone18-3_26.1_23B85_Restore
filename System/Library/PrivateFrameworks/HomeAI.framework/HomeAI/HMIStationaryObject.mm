@interface HMIStationaryObject
- (HMIStationaryObject)initWithEvent:(id)event time:(id *)time;
@end

@implementation HMIStationaryObject

- (HMIStationaryObject)initWithEvent:(id)event time:(id *)time
{
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = HMIStationaryObject;
  v8 = [(HMIStationaryObject *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_event, event);
    var3 = time->var3;
    *&v9->_time.value = *&time->var0;
    v9->_time.epoch = var3;
  }

  return v9;
}

@end