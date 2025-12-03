@interface HMDCameraClipManagerRequestLogEvent
- (HMDCameraClipManagerRequestLogEvent)initWithRequestName:(id)name homeUUID:(id)d;
@end

@implementation HMDCameraClipManagerRequestLogEvent

- (HMDCameraClipManagerRequestLogEvent)initWithRequestName:(id)name homeUUID:(id)d
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = HMDCameraClipManagerRequestLogEvent;
  v8 = [(HMMHomeLogEvent *)&v11 initWithHomeUUID:d];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_requestName, name);
  }

  return v9;
}

@end