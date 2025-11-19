@interface HMDRemoteReadRequestMessage
- (HMDRemoteReadRequestMessage)initWithReadMessage:(id)a3 accessoryUUID:(id)a4 responseQueue:(id)a5;
- (id)debugDescription;
- (id)description;
@end

@implementation HMDRemoteReadRequestMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDRemoteReadRequestMessage *)self readMessage];
  v5 = [v4 identifier];
  v6 = [v5 UUIDString];
  v7 = [(HMDRemoteReadRequestMessage *)self accessoryUUID];
  v8 = [v7 UUIDString];
  v9 = [v3 stringWithFormat:@"[Read identifier: %@, accessory: %@]", v6, v8];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDRemoteReadRequestMessage *)self readMessage];
  v5 = [v4 identifier];
  v6 = [v5 UUIDString];
  v7 = [(HMDRemoteReadRequestMessage *)self readMessage];
  v8 = [v7 messagePayload];
  v9 = [(HMDRemoteReadRequestMessage *)self accessoryUUID];
  v10 = [v9 UUIDString];
  v11 = [v3 stringWithFormat:@"[Read identifier: %@, payload: %@, accessory: %@]", v6, v8, v10];

  return v11;
}

- (HMDRemoteReadRequestMessage)initWithReadMessage:(id)a3 accessoryUUID:(id)a4 responseQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDRemoteReadRequestMessage;
  v12 = [(HMDRemoteReadRequestMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_readMessage, a3);
    objc_storeStrong(&v13->_accessoryUUID, a4);
    objc_storeStrong(&v13->_responseQueue, a5);
  }

  return v13;
}

@end