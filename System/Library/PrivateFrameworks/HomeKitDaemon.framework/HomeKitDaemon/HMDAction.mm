@interface HMDAction
+ (id)logCategory;
- (BOOL)isAssociatedWithAccessory:(id)accessory;
- (BOOL)isCompatibleWithAction:(id)action;
- (BOOL)isStaleWithAccessory:(id)accessory;
- (BOOL)isUnsecuringAction;
- (HMDAction)init;
- (HMDAction)initWithCoder:(id)coder;
- (HMDAction)initWithUUID:(id)d actionSet:(id)set;
- (HMDActionSet)actionSet;
- (NSArray)associatedAccessories;
- (NSDictionary)dictionaryRepresentation;
- (NSString)stateDump;
- (NSUUID)modelParentIdentifier;
- (id)attributeDescriptions;
- (id)backingStoreObjectsWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)logIdentifier;
- (id)modelBackedObjects;
- (id)modelObjectWithChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (unint64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithSource:(unint64_t)source clientName:(id)name completionHandler:(id)handler;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)updateActionSetIfNil:(id)nil;
@end

@implementation HMDAction

- (HMDActionSet)actionSet
{
  WeakRetained = objc_loadWeakRetained(&self->_actionSet);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(HMDAction *)self uuid];
  v5 = [v3 initWithName:@"UUID" value:uuid];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAction *)self type];
  v7 = HMActionTypeAsString();
  v8 = [v6 initWithName:@"Type" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionSet = [(HMDAction *)self actionSet];
  [coderCopy encodeConditionalObject:actionSet forKey:@"actionActionSet"];

  uuid = [(HMDAction *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"actionUUID"];
}

- (HMDAction)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionUUID"];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionActionSet"];
    selfCopy = [(HMDAction *)self initWithUUID:v6 actionSet:v7];

    v9 = selfCopy;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = @"actionUUID";
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode HMDAction missing key: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)logIdentifier
{
  uuid = [(HMDAction *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = objc_opt_class();
      v18 = v26;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)modelBackedObjects
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)backingStoreObjectsWithChangeType:(unint64_t)type version:(int64_t)version
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [(HMDAction *)self modelObjectWithChangeType:type version:version];
  v5 = v4;
  if (v4)
  {
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  v6 = objc_alloc([(HMDAction *)self modelClass:type]);
  uuid = self->_uuid;
  WeakRetained = objc_loadWeakRetained(&self->_actionSet);
  uuid = [WeakRetained uuid];
  v10 = [v6 initWithObjectChangeType:type uuid:uuid parentUUID:uuid];

  return v10;
}

- (NSUUID)modelParentIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_actionSet);
  uuid = [WeakRetained uuid];

  return uuid;
}

- (BOOL)isUnsecuringAction
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

- (BOOL)isStaleWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)isCompatibleWithAction:(id)action
{
  actionCopy = action;
  type = [(HMDAction *)self type];
  type2 = [actionCopy type];

  return type == type2;
}

- (BOOL)isAssociatedWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (NSArray)associatedAccessories
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

- (id)modelObjectWithChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d
{
  dCopy = d;
  uuidCopy = uuid;
  v10 = [objc_alloc(-[HMDAction modelClass](self "modelClass"))];

  return v10;
}

- (void)executeWithSource:(unint64_t)source clientName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(a2);
  v13 = [v11 stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [v9 exceptionWithName:v10 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (NSDictionary)dictionaryRepresentation
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = *MEMORY[0x277CD2060];
  uuid = [(HMDAction *)self uuid];
  uUIDString = [uuid UUIDString];
  v10[0] = uUIDString;
  v9[1] = *MEMORY[0x277CD2058];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAction type](self, "type")}];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSString)stateDump
{
  v2 = MEMORY[0x277CCACA8];
  uuid = [(HMDAction *)self uuid];
  uUIDString = [uuid UUIDString];
  v5 = [v2 stringWithFormat:@"Action uuid: %@", uUIDString];

  return v5;
}

- (unint64_t)type
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)updateActionSetIfNil:(id)nil
{
  nilCopy = nil;
  actionSet = [(HMDAction *)self actionSet];

  if (!actionSet)
  {
    [(HMDAction *)self setActionSet:nilCopy];
  }
}

- (HMDAction)initWithUUID:(id)d actionSet:(id)set
{
  dCopy = d;
  setCopy = set;
  v12.receiver = self;
  v12.super_class = HMDAction;
  v9 = [(HMDAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, d);
    objc_storeWeak(&v10->_actionSet, setCopy);
  }

  return v10;
}

- (HMDAction)init
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

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_185970 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_185970, &__block_literal_global_185971);
  }

  v3 = logCategory__hmf_once_v3_185972;

  return v3;
}

void __24__HMDAction_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_185972;
  logCategory__hmf_once_v3_185972 = v1;
}

@end