@interface HMDHAPAccessoryTaskContext
- (BOOL)isComplete;
- (BOOL)isRemoteAccessDeviceReachable;
- (BOOL)isShortActionOperation;
- (BOOL)supportsMultiPartResponse;
- (HMDHAPAccessoryTaskContext)initWithIdentifier:(id)a3 operationType:(int64_t)a4 home:(id)a5 sourceType:(unint64_t)a6 biomeSource:(unint64_t)a7 requestMessage:(id)a8 name:(id)a9;
- (HMDHome)home;
- (HMDUser)user;
- (id)clientIdentifier;
- (id)homeMessageDestination;
- (id)homeUniqueIdentifier;
- (id)operationName;
- (id)requestMessageIdentifier;
- (id)requestMessageName;
- (id)residentMapForAccessories:(id)a3;
- (id)workQueue;
- (int64_t)qualityOfService;
- (void)dispatchMessage:(id)a3 delegateDevice:(id)a4;
@end

@implementation HMDHAPAccessoryTaskContext

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDUser)user
{
  v3 = [(HMDHAPAccessoryTaskContext *)self home];
  v4 = [(HMDHAPAccessoryTaskContext *)self requestMessage];

  if (v4)
  {
    if (v3)
    {
      v5 = [(HMDHAPAccessoryTaskContext *)self requestMessage];
      v6 = [v5 userForHome:v3];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [v3 currentUser];
  }

  return v6;
}

- (id)residentMapForAccessories:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] setWithArray:a3];
  v5 = [v4 allObjects];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_189477];

  v7 = [(HMDHAPAccessoryTaskContext *)self home];
  v8 = [v7 balancedResidentMapForAccessories:v6];

  return v8;
}

uint64_t __56__HMDHAPAccessoryTaskContext_residentMapForAccessories___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 uuid];
  v6 = [v5 UUIDString];
  v7 = [v4 uuid];

  v8 = [v7 UUIDString];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)dispatchMessage:(id)a3 delegateDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(HMDHAPAccessoryTaskContext *)self home];
  v8 = [(HMDHAPAccessoryTaskContext *)self homeUniqueIdentifier];
  v9 = [(HMDHAPAccessoryTaskContext *)self workQueue];
  [v10 redispatchToResidentMessage:v7 target:v8 responseQueue:v9 viaDevice:v6];
}

- (BOOL)isComplete
{
  v2 = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  v3 = [v2 responseHandler];
  v4 = v3 == 0;

  return v4;
}

- (id)requestMessageName
{
  v2 = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  v3 = [v2 name];

  return v3;
}

- (BOOL)supportsMultiPartResponse
{
  v6 = 0;
  v2 = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  v3 = [v2 BOOLForKey:@"kMultiPartResponseKey" keyPresent:&v6];
  v4 = v6;

  return v3 & v4;
}

- (BOOL)isRemoteAccessDeviceReachable
{
  v2 = [(HMDHAPAccessoryTaskContext *)self home];
  v3 = [v2 isRemoteAccessDeviceReachable];

  return v3;
}

- (BOOL)isShortActionOperation
{
  v3 = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  v4 = [v3 uuidForKey:*MEMORY[0x277CD2050]];

  v5 = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  v6 = [v5 BOOLForKey:*MEMORY[0x277CD2678]];
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
  v2 = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  v3 = [v2 qualityOfService];

  return v3;
}

- (id)clientIdentifier
{
  v2 = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  v3 = [v2 clientIdentifier];

  return v3;
}

- (id)requestMessageIdentifier
{
  v2 = [(HMDHAPAccessoryTaskContext *)self requestMessage];
  v3 = [v2 identifier];

  return v3;
}

- (id)homeMessageDestination
{
  v2 = [(HMDHAPAccessoryTaskContext *)self home];
  v3 = [v2 messageDestination];

  return v3;
}

- (id)homeUniqueIdentifier
{
  v2 = [(HMDHAPAccessoryTaskContext *)self home];
  v3 = [v2 uuid];

  return v3;
}

- (id)workQueue
{
  v2 = [(HMDHAPAccessoryTaskContext *)self home];
  v3 = [v2 workQueue];

  return v3;
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

- (HMDHAPAccessoryTaskContext)initWithIdentifier:(id)a3 operationType:(int64_t)a4 home:(id)a5 sourceType:(unint64_t)a6 biomeSource:(unint64_t)a7 requestMessage:(id)a8 name:(id)a9
{
  v16 = a3;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v25.receiver = self;
  v25.super_class = HMDHAPAccessoryTaskContext;
  v20 = [(HMDHAPAccessoryTaskContext *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_home, v17);
    objc_storeStrong(&v21->_identifier, a3);
    v21->_operationType = a4;
    v21->_sourceType = a6;
    v21->_biomeSource = a7;
    objc_storeStrong(&v21->_requestMessage, a8);
    v22 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v19];
    activity = v21->_activity;
    v21->_activity = v22;

    [(HMFActivity *)v21->_activity begin];
  }

  return v21;
}

@end