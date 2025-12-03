@interface HMDThreadNetworkPeripheralDeviceNodeTypeEvent
- (HMDThreadNetworkPeripheralDeviceNodeTypeEvent)initWithPeripheralDeviceNodeType:(int64_t)type;
@end

@implementation HMDThreadNetworkPeripheralDeviceNodeTypeEvent

- (HMDThreadNetworkPeripheralDeviceNodeTypeEvent)initWithPeripheralDeviceNodeType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = HMDThreadNetworkPeripheralDeviceNodeTypeEvent;
  result = [(HMDThreadNetworkPeripheralDeviceNodeTypeEvent *)&v5 init];
  if (result)
  {
    result->_peripheralDeviceNodeType = type;
  }

  return result;
}

@end