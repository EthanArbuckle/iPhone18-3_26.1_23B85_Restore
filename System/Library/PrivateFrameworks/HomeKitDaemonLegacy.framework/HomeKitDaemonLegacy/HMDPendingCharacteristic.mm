@interface HMDPendingCharacteristic
- (HMDPendingCharacteristic)initWithCharacteristic:(id)characteristic queue:(id)queue handler:(id)handler;
@end

@implementation HMDPendingCharacteristic

- (HMDPendingCharacteristic)initWithCharacteristic:(id)characteristic queue:(id)queue handler:(id)handler
{
  characteristicCopy = characteristic;
  queueCopy = queue;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = HMDPendingCharacteristic;
  v12 = [(HMDPendingCharacteristic *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_writeRequest, characteristic);
    objc_storeStrong(&v13->_queue, queue);
    v14 = _Block_copy(handlerCopy);
    handler = v13->_handler;
    v13->_handler = v14;
  }

  return v13;
}

@end