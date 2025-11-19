@interface HMIHomeTask
- (HMIHomeTask)initWithTaskID:(int)a3 homeUUID:(id)a4 timeout:(double)a5;
@end

@implementation HMIHomeTask

- (HMIHomeTask)initWithTaskID:(int)a3 homeUUID:(id)a4 timeout:(double)a5
{
  v7 = *&a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = HMIHomeTask;
  v10 = [(HMITask *)&v13 initWithTaskID:v7 timeout:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_homeUUID, a4);
  }

  return v11;
}

@end