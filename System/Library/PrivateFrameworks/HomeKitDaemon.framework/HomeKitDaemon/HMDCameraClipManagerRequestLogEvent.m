@interface HMDCameraClipManagerRequestLogEvent
- (HMDCameraClipManagerRequestLogEvent)initWithRequestName:(id)a3 homeUUID:(id)a4;
@end

@implementation HMDCameraClipManagerRequestLogEvent

- (HMDCameraClipManagerRequestLogEvent)initWithRequestName:(id)a3 homeUUID:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMDCameraClipManagerRequestLogEvent;
  v8 = [(HMMHomeLogEvent *)&v11 initWithHomeUUID:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_requestName, a3);
  }

  return v9;
}

@end