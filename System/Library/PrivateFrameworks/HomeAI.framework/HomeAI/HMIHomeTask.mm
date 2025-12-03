@interface HMIHomeTask
- (HMIHomeTask)initWithTaskID:(int)d homeUUID:(id)iD timeout:(double)timeout;
@end

@implementation HMIHomeTask

- (HMIHomeTask)initWithTaskID:(int)d homeUUID:(id)iD timeout:(double)timeout
{
  v7 = *&d;
  iDCopy = iD;
  v13.receiver = self;
  v13.super_class = HMIHomeTask;
  v10 = [(HMITask *)&v13 initWithTaskID:v7 timeout:timeout];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_homeUUID, iD);
  }

  return v11;
}

@end