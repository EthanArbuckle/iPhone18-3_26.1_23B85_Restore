@interface HMDThreadNetworkPeripheralDeviceNodeTypeEvent
- (HMDThreadNetworkPeripheralDeviceNodeTypeEvent)initWithPeripheralDeviceNodeType:(int64_t)a3;
@end

@implementation HMDThreadNetworkPeripheralDeviceNodeTypeEvent

- (HMDThreadNetworkPeripheralDeviceNodeTypeEvent)initWithPeripheralDeviceNodeType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDThreadNetworkPeripheralDeviceNodeTypeEvent;
  result = [(HMDThreadNetworkPeripheralDeviceNodeTypeEvent *)&v5 init];
  if (result)
  {
    result->_peripheralDeviceNodeType = a3;
  }

  return result;
}

@end