@interface HMDCameraStreamSessionID
- (HMDCameraStreamSessionID)initWithAccessory:(id)accessory service:(id)service sessionID:(id)d message:(id)message;
@end

@implementation HMDCameraStreamSessionID

- (HMDCameraStreamSessionID)initWithAccessory:(id)accessory service:(id)service sessionID:(id)d message:(id)message
{
  accessoryCopy = accessory;
  serviceCopy = service;
  dCopy = d;
  messageCopy = message;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!serviceCopy)
  {
LABEL_7:
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!dCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v14 = messageCopy;
  if (messageCopy)
  {
    v15 = MEMORY[0x277CCACA8];
    name = [accessoryCopy name];
    instanceID = [serviceCopy instanceID];
    dCopy = [v15 stringWithFormat:@"%@/%@/%@", name, instanceID, dCopy];

    v19 = [(HMDCameraSessionID *)self initWithSessionID:dCopy message:v14 description:dCopy];
    return v19;
  }

LABEL_9:
  v21 = _HMFPreconditionFailure();
  [(HMDMediaDestinationMessageHandler *)v21 .cxx_destruct];
  return result;
}

@end