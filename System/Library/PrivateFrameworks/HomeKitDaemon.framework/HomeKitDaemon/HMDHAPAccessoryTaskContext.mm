@interface HMDHAPAccessoryTaskContext
- (BOOL)isComplete;
- (BOOL)isRemoteAccessDeviceReachable;
- (BOOL)isShortActionOperation;
- (BOOL)supportsMultiPartResponse;
- (HMDHAPAccessoryTaskContext)initWithIdentifier:(id)identifier operationType:(int64_t)type home:(id)home sourceType:(unint64_t)sourceType biomeSource:(unint64_t)source requestMessage:(id)message name:(id)name;
- (HMDHome)home;
- (HMDUser)user;
- (id)clientIdentifier;
- (id)homeMessageDestination;
- (id)homeUniqueIdentifier;
- (id)operationName;
- (id)requestMessageIdentifier;
- (id)requestMessageName;
- (id)workQueue;
- (int64_t)qualityOfService;
- (void)dispatchMessage:(id)message delegateDevice:(id)device;
@end

@implementation HMDHAPAccessoryTaskContext

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDUser)user
{
  home = [(HMDHAPAccessoryTaskContext *)self home];
  requestMessage = [(HMDHAPAccessoryTaskContext *)self requestMessage];

  if (requestMessage)
  {
    if (home)
    {
      requestMessage2 = [(HMDHAPAccessoryTaskContext *)self requestMessage];
      currentUser = [requestMessage2 userForHome:home];
    }

    else
    {
      currentUser = 0;
    }
  }

  else
  {
    currentUser = [home currentUser];
  }

  return currentUser;
}

- (void)dispatchMessage:(id)message delegateDevice:(id)device
{
  deviceCopy = device;
  messageCopy = message;
  home = [(HMDHAPAccessoryTaskContext *)self home];
  homeUniqueIdentifier = [(HMDHAPAccessoryTaskContext *)self homeUniqueIdentifier];
  workQueue = [(HMDHAPAccessoryTaskContext *)self workQueue];
  [home redispatchToResidentMessage:messageCopy target:homeUniqueIdentifier responseQueue:workQueue viaDevice:deviceCopy];
}

- (BOOL)isComplete
{
  requestMessage = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  responseHandler = [requestMessage responseHandler];
  v4 = responseHandler == 0;

  return v4;
}

- (id)requestMessageName
{
  requestMessage = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  name = [requestMessage name];

  return name;
}

- (BOOL)supportsMultiPartResponse
{
  v6 = 0;
  requestMessage = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  v3 = [requestMessage BOOLForKey:@"kMultiPartResponseKey" keyPresent:&v6];
  v4 = v6;

  return v3 & v4;
}

- (BOOL)isRemoteAccessDeviceReachable
{
  home = [(HMDHAPAccessoryTaskContext *)self home];
  isRemoteAccessDeviceReachable = [home isRemoteAccessDeviceReachable];

  return isRemoteAccessDeviceReachable;
}

- (BOOL)isShortActionOperation
{
  requestMessage = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  v4 = [requestMessage uuidForKey:*MEMORY[0x277CD2050]];

  requestMessage2 = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  v6 = [requestMessage2 BOOLForKey:*MEMORY[0x277CD2678]];
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (int64_t)qualityOfService
{
  requestMessage = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  qualityOfService = [requestMessage qualityOfService];

  return qualityOfService;
}

- (id)clientIdentifier
{
  requestMessage = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  clientIdentifier = [requestMessage clientIdentifier];

  return clientIdentifier;
}

- (id)requestMessageIdentifier
{
  requestMessage = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  identifier = [requestMessage identifier];

  return identifier;
}

- (id)homeMessageDestination
{
  home = [(HMDHAPAccessoryTaskContext *)self home];
  messageDestination = [home messageDestination];

  return messageDestination;
}

- (id)homeUniqueIdentifier
{
  home = [(HMDHAPAccessoryTaskContext *)self home];
  uuid = [home uuid];

  return uuid;
}

- (id)workQueue
{
  home = [(HMDHAPAccessoryTaskContext *)self home];
  workQueue = [home workQueue];

  return workQueue;
}

- (id)operationName
{
  if ([(HMDHAPAccessoryTaskContext *)self operationType])
  {
    v2 = @"write";
  }

  else
  {
    v2 = @"read";
  }

  return v2;
}

- (HMDHAPAccessoryTaskContext)initWithIdentifier:(id)identifier operationType:(int64_t)type home:(id)home sourceType:(unint64_t)sourceType biomeSource:(unint64_t)source requestMessage:(id)message name:(id)name
{
  identifierCopy = identifier;
  homeCopy = home;
  messageCopy = message;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = HMDHAPAccessoryTaskContext;
  v20 = [(HMDHAPAccessoryTaskContext *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_home, homeCopy);
    objc_storeStrong(&v21->_identifier, identifier);
    v21->_operationType = type;
    v21->_sourceType = sourceType;
    v21->_biomeSource = source;
    objc_storeStrong(&v21->_requestMessage, message);
    v22 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:nameCopy];
    activity = v21->_activity;
    v21->_activity = v22;

    [(HMFActivity *)v21->_activity begin];
  }

  return v21;
}

@end