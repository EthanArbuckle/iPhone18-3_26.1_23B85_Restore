@interface HMDRemoteReadRequestMessage
- (HMDRemoteReadRequestMessage)initWithReadMessage:(id)message accessoryUUID:(id)d responseQueue:(id)queue;
- (id)debugDescription;
- (id)description;
@end

@implementation HMDRemoteReadRequestMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  readMessage = [(HMDRemoteReadRequestMessage *)self readMessage];
  identifier = [readMessage identifier];
  uUIDString = [identifier UUIDString];
  accessoryUUID = [(HMDRemoteReadRequestMessage *)self accessoryUUID];
  uUIDString2 = [accessoryUUID UUIDString];
  v9 = [v3 stringWithFormat:@"[Read identifier: %@, accessory: %@]", uUIDString, uUIDString2];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  readMessage = [(HMDRemoteReadRequestMessage *)self readMessage];
  identifier = [readMessage identifier];
  uUIDString = [identifier UUIDString];
  readMessage2 = [(HMDRemoteReadRequestMessage *)self readMessage];
  messagePayload = [readMessage2 messagePayload];
  accessoryUUID = [(HMDRemoteReadRequestMessage *)self accessoryUUID];
  uUIDString2 = [accessoryUUID UUIDString];
  v11 = [v3 stringWithFormat:@"[Read identifier: %@, payload: %@, accessory: %@]", uUIDString, messagePayload, uUIDString2];

  return v11;
}

- (HMDRemoteReadRequestMessage)initWithReadMessage:(id)message accessoryUUID:(id)d responseQueue:(id)queue
{
  messageCopy = message;
  dCopy = d;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = HMDRemoteReadRequestMessage;
  v12 = [(HMDRemoteReadRequestMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_readMessage, message);
    objc_storeStrong(&v13->_accessoryUUID, d);
    objc_storeStrong(&v13->_responseQueue, queue);
  }

  return v13;
}

@end