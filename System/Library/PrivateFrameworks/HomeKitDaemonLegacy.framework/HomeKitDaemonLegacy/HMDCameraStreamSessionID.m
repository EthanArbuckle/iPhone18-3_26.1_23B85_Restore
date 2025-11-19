@interface HMDCameraStreamSessionID
- (HMDCameraStreamSessionID)initWithAccessory:(id)a3 service:(id)a4 sessionID:(id)a5 message:(id)a6;
@end

@implementation HMDCameraStreamSessionID

- (HMDCameraStreamSessionID)initWithAccessory:(id)a3 service:(id)a4 sessionID:(id)a5 message:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!v11)
  {
LABEL_7:
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v12)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v14 = v13;
  if (v13)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [v10 name];
    v17 = [v11 instanceID];
    v18 = [v15 stringWithFormat:@"%@/%@/%@", v16, v17, v12];

    v19 = [(HMDCameraSessionID *)self initWithSessionID:v12 message:v14 description:v18];
    return v19;
  }

LABEL_9:
  v21 = _HMFPreconditionFailure();
  [(HMDMediaDestinationMessageHandler *)v21 .cxx_destruct];
  return result;
}

@end