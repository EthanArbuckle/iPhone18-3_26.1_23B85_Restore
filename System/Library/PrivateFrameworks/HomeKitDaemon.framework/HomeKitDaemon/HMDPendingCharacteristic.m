@interface HMDPendingCharacteristic
- (HMDPendingCharacteristic)initWithCharacteristic:(id)a3 queue:(id)a4 handler:(id)a5;
@end

@implementation HMDPendingCharacteristic

- (HMDPendingCharacteristic)initWithCharacteristic:(id)a3 queue:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HMDPendingCharacteristic;
  v12 = [(HMDPendingCharacteristic *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_writeRequest, a3);
    objc_storeStrong(&v13->_queue, a4);
    v14 = _Block_copy(v11);
    handler = v13->_handler;
    v13->_handler = v14;
  }

  return v13;
}

@end