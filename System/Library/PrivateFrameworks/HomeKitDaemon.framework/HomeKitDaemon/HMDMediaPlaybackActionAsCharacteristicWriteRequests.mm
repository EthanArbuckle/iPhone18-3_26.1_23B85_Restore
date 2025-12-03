@interface HMDMediaPlaybackActionAsCharacteristicWriteRequests
- (HMDMediaPlaybackActionAsCharacteristicWriteRequests)init;
- (HMDMediaPlaybackActionAsCharacteristicWriteRequests)initWithAction:(id)action characteristicWriteRequests:(id)requests;
@end

@implementation HMDMediaPlaybackActionAsCharacteristicWriteRequests

- (HMDMediaPlaybackActionAsCharacteristicWriteRequests)initWithAction:(id)action characteristicWriteRequests:(id)requests
{
  actionCopy = action;
  requestsCopy = requests;
  v12.receiver = self;
  v12.super_class = HMDMediaPlaybackActionAsCharacteristicWriteRequests;
  v9 = [(HMDMediaPlaybackActionAsCharacteristicWriteRequests *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_residualAction, action);
    objc_storeStrong(&v10->_characteristicWriteRequests, requests);
  }

  return v10;
}

- (HMDMediaPlaybackActionAsCharacteristicWriteRequests)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end