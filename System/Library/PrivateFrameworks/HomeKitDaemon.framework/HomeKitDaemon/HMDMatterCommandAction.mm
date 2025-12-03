@interface HMDMatterCommandAction
+ (id)actionWithDictionaryRepresentation:(id)representation home:(id)home;
+ (id)logCategory;
- (BOOL)isActionForMatterPath:(id)path;
- (BOOL)isAssociatedWithAccessory:(id)accessory;
- (BOOL)isCompatibleWithAction:(id)action;
- (HMDHome)home;
- (HMDMatterAccessoryProtocol)accessory;
- (HMDMatterCommandAction)init;
- (HMDMatterCommandAction)initWithCoder:(id)coder;
- (HMDMatterCommandAction)initWithUUID:(id)d commands:(id)commands enforceExecutionOrder:(BOOL)order actionSet:(id)set;
- (HMDMatterCommandAction)new;
- (id)associatedAccessories;
- (id)attributeDescriptions;
- (id)dictionaryRepresentation;
- (id)matterPathUUIDs;
- (id)matterPaths;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (id)serializedCommands;
- (id)stateDump;
- (void)_processCommandActionModelUpdated:(id)updated message:(id)message;
- (void)addMatterPathsToTransactionIfNotStored:(id)stored;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithSource:(unint64_t)source clientName:(id)name completionHandler:(id)handler;
- (void)matterPathRemoved:(id)removed message:(id)message transaction:(id)transaction;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDMatterCommandAction

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(HMDAction *)self uuid];
  v5 = [v3 initWithName:@"UUID" value:uuid];
  v19[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  accessory = [(HMDMatterCommandAction *)self accessory];
  uuid2 = [accessory uuid];
  v9 = [v6 initWithName:@"accessory UUID" value:uuid2];
  v19[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  commands = [(HMDMatterCommandAction *)self commands];
  v12 = [v10 initWithName:@"commands" value:commands];
  v19[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDMatterCommandAction enforceExecutionOrder](self, "enforceExecutionOrder")}];
  v15 = [v13 initWithName:@"enforce execution order" value:v14];
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v5 = [HMDMatterCommandActionModel alloc];
  uuid = [(HMDAction *)self uuid];
  actionSet = [(HMDAction *)self actionSet];
  uuid2 = [actionSet uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  matterPathUUIDs = [(HMDMatterCommandAction *)self matterPathUUIDs];
  [(HMDMatterCommandActionModel *)v9 setMatterPathUUIDs:matterPathUUIDs];

  serializedCommands = [(HMDMatterCommandAction *)self serializedCommands];
  [(HMDMatterCommandActionModel *)v9 setCommands:serializedCommands];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDMatterCommandAction enforceExecutionOrder](self, "enforceExecutionOrder")}];
  [(HMDMatterCommandActionModel *)v9 setEnforceExecutionOrder:v12];

  return v9;
}

- (void)_processCommandActionModelUpdated:(id)updated message:(id)message
{
  v47 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  messageCopy = message;
  transactionResult = [messageCopy transactionResult];
  actionSet = [(HMDAction *)self actionSet];
  setProperties = [updatedCopy setProperties];
  if (![setProperties containsObject:@"commands"])
  {
    goto LABEL_4;
  }

  setProperties2 = [updatedCopy setProperties];
  v12 = [setProperties2 containsObject:@"enforceExecutionOrder"];

  if (v12)
  {
    commands = [updatedCopy commands];
    home = [(HMDMatterCommandAction *)self home];
    v15 = [updatedCopy decodeSerializedMatterCommands:commands home:home];
    [(HMDMatterCommandAction *)self setCommands:v15];

    setProperties = [updatedCopy enforceExecutionOrder];
    -[HMDMatterCommandAction setEnforceExecutionOrder:](self, "setEnforceExecutionOrder:", [setProperties BOOLValue]);
LABEL_4:
  }

  home2 = [actionSet home];
  v17 = home2;
  if (actionSet && home2)
  {
    v35 = transactionResult;
    v36 = updatedCopy;
    v37[0] = *MEMORY[0x277CD2060];
    uuid = [(HMDAction *)self uuid];
    uUIDString = [uuid UUIDString];
    v38[0] = uUIDString;
    v37[1] = *MEMORY[0x277CD2028];
    dictionaryRepresentation = [(HMDMatterCommandAction *)self dictionaryRepresentation];
    v38[1] = dictionaryRepresentation;
    v37[2] = *MEMORY[0x277CD0640];
    [v17 uuid];
    v22 = v21 = messageCopy;
    uUIDString2 = [v22 UUIDString];
    v38[2] = uUIDString2;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];

    messageCopy = v21;
    [v21 respondWithPayload:v24];
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v28;
      v41 = 2112;
      v42 = v24;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Responding to client after updating action with response %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    transactionResult = v35;
    [v35 markChanged];
    updatedCopy = v36;
    if ([(HMDMatterCommandAction *)selfCopy isSecureAction])
    {
      [v35 markSaveToAssistant];
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138544130;
      v40 = v32;
      v41 = 2112;
      v42 = updatedCopy;
      v43 = 2112;
      v44 = actionSet;
      v45 = 2112;
      v46 = v17;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@command action Model object (%@) missing actionset %@ or home %@ ", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v33];

    v24 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)matterPathUUIDs
{
  v2 = MEMORY[0x277CBEA60];
  commands = [(HMDMatterCommandAction *)self commands];
  v4 = [commands na_map:&__block_literal_global_44_123742];
  v5 = [v2 arrayWithArray:v4];

  return v5;
}

id __41__HMDMatterCommandAction_matterPathUUIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 matterPath];
  v3 = [v2 uuid];

  return v3;
}

- (id)matterPaths
{
  v2 = MEMORY[0x277CBEA60];
  commands = [(HMDMatterCommandAction *)self commands];
  v4 = [commands na_map:&__block_literal_global_42_123745];
  v5 = [v2 arrayWithArray:v4];

  return v5;
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

  if (v13)
  {
    [(HMDMatterCommandAction *)self _processCommandActionModelUpdated:v13 message:messageCopy];
  }

  else
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

- (id)serializedCommands
{
  commands = [(HMDMatterCommandAction *)self commands];
  v4 = [(HMDMatterCommandAction *)self serializedCommands:commands];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = HMDMatterCommandAction;
  coderCopy = coder;
  [(HMDAction *)&v8 encodeWithCoder:coderCopy];
  v5 = [(HMDMatterCommandAction *)self serializedCommands:v8.receiver];
  [coderCopy encodeObject:v5 forKey:*MEMORY[0x277CCFC18]];

  enforceExecutionOrder = [(HMDMatterCommandAction *)self enforceExecutionOrder];
  [coderCopy encodeBool:enforceExecutionOrder forKey:*MEMORY[0x277CCFD18]];
  home = [(HMDMatterCommandAction *)self home];
  [coderCopy encodeConditionalObject:home forKey:@"home"];
}

- (HMDMatterCommandAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)associatedAccessories
{
  v7[1] = *MEMORY[0x277D85DE8];
  accessory = [(HMDMatterCommandAction *)self accessory];
  v3 = accessory;
  if (accessory)
  {
    v7[0] = accessory;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isAssociatedWithAccessory:(id)accessory
{
  uuid = [accessory uuid];
  accessory = [(HMDMatterCommandAction *)self accessory];
  uuid2 = [accessory uuid];
  v7 = [uuid isEqual:uuid2];

  return v7;
}

- (HMDMatterAccessoryProtocol)accessory
{
  v14 = *MEMORY[0x277D85DE8];
  commands = [(HMDMatterCommandAction *)self commands];
  firstObject = [commands firstObject];
  accessory = [firstObject accessory];

  if (!accessory)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Accessory was set to nil", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return accessory;
}

- (void)addMatterPathsToTransactionIfNotStored:(id)stored
{
  storedCopy = stored;
  commands = [(HMDMatterCommandAction *)self commands];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDMatterCommandAction_addMatterPathsToTransactionIfNotStored___block_invoke;
  v7[3] = &unk_278679590;
  v8 = storedCopy;
  v6 = storedCopy;
  [commands hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
}

- (BOOL)isCompatibleWithAction:(id)action
{
  actionCopy = action;
  v13.receiver = self;
  v13.super_class = HMDMatterCommandAction;
  if ([(HMDAction *)&v13 isCompatibleWithAction:actionCopy])
  {
    commands = [(HMDMatterCommandAction *)self commands];
    commands2 = [actionCopy commands];
    if ([commands isEqual:commands2])
    {
      accessory = [(HMDMatterCommandAction *)self accessory];
      uuid = [accessory uuid];
      accessory2 = [actionCopy accessory];
      uuid2 = [accessory2 uuid];
      v11 = [uuid isEqual:uuid2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)matterPathRemoved:(id)removed message:(id)message transaction:(id)transaction
{
  removedCopy = removed;
  messageCopy = message;
  transactionCopy = transaction;
  commands = [(HMDMatterCommandAction *)self commands];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __64__HMDMatterCommandAction_matterPathRemoved_message_transaction___block_invoke;
  v22[3] = &unk_278679568;
  v12 = removedCopy;
  v23 = v12;
  v13 = [commands na_filter:v22];

  commands2 = [(HMDMatterCommandAction *)self commands];
  v15 = [v13 isEqualToArray:commands2];

  if ((v15 & 1) == 0)
  {
    actionSet = [(HMDAction *)self actionSet];
    v17 = [v13 count];
    v18 = [HMDMatterCommandActionModel alloc];
    uuid = [(HMDAction *)self uuid];
    uuid2 = [actionSet uuid];
    if (v17)
    {
      v21 = [(HMDBackingStoreModelObject *)v18 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

      uuid = [(HMDMatterCommandAction *)self serializedCommands:v13];
      [(HMDMatterCommandActionModel *)v21 setCommands:uuid];
    }

    else
    {
      v21 = [(HMDBackingStoreModelObject *)v18 initWithObjectChangeType:3 uuid:uuid parentUUID:uuid2];
    }

    [transactionCopy add:v21 withMessage:messageCopy];
  }
}

uint64_t __64__HMDMatterCommandAction_matterPathRemoved_message_transaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 matterPath];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

- (BOOL)isActionForMatterPath:(id)path
{
  pathCopy = path;
  commands = [(HMDMatterCommandAction *)self commands];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HMDMatterCommandAction_isActionForMatterPath___block_invoke;
  v9[3] = &unk_278679568;
  v10 = pathCopy;
  v6 = pathCopy;
  v7 = [commands na_any:v9];

  return v7;
}

- (void)executeWithSource:(unint64_t)source clientName:(id)name completionHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  accessory = [(HMDMatterCommandAction *)self accessory];
  v10 = accessory;
  if (accessory)
  {
    home = [accessory home];
    if (home)
    {
      commands = [(HMDMatterCommandAction *)self commands];
      v13 = [commands na_map:&__block_literal_global_123762];

      matterAdapter = [v10 matterAdapter];
      v15 = matterAdapter;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v38 = __Block_byref_object_copy__123763;
      v39 = __Block_byref_object_dispose__123764;
      v40 = 0;
      if (matterAdapter)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __73__HMDMatterCommandAction_executeWithSource_clientName_completionHandler___block_invoke_28;
        v34[3] = &unk_278679540;
        v34[4] = self;
        v34[5] = buf;
        [matterAdapter invokeCommands:v13 completion:v34];
        v16 = _Block_copy(handlerCopy);
        v17 = v16;
        if (v16)
        {
          (*(v16 + 2))(v16, *(*&buf[8] + 40));
        }
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        selfCopy = self;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *v35 = 138543362;
          v36 = v29;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to find matter adapter to execute bulk commands", v35, 0xCu);
        }

        objc_autoreleasePoolPop(v26);
        v30 = *&buf[8];
        v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        v32 = *(v30 + 40);
        *(v30 + 40) = v31;
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Home unexpectedly set to nil on accessory %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v13 = _Block_copy(handlerCopy);
      if (!v13)
      {
        home = 0;
        goto LABEL_20;
      }

      v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      (v13)[2](v13, v15);
    }

LABEL_20:
    goto LABEL_21;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = 0;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@unable to cast accessory %@ to matter accessory or hap accessory", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  home = _Block_copy(handlerCopy);
  if (home)
  {
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    home[2](home, v13);
    goto LABEL_20;
  }

LABEL_21:

  v33 = *MEMORY[0x277D85DE8];
}

void __73__HMDMatterCommandAction_executeWithSource_clientName_completionHandler___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Bulk command invocation completed with error: %@ values: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;

  v13 = *MEMORY[0x277D85DE8];
}

id __73__HMDMatterCommandAction_executeWithSource_clientName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CD52F0];
  v3 = a2;
  v4 = [v3 matterPath];
  v5 = [v4 endpointID];
  v6 = [v3 matterPath];
  v7 = [v6 clusterID];
  v8 = [v3 matterPath];
  v9 = [v8 commandID];
  v10 = [v2 commandPathWithEndpointID:v5 clusterID:v7 commandID:v9];

  v11 = objc_alloc(MEMORY[0x277CD52F8]);
  v12 = [v3 commandFields];

  v13 = [v11 initWithPath:v10 commandFields:v12 requiredResponse:0];
  v17[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HMDMatterCommandAction;
  dictionaryRepresentation = [(HMDAction *)&v25 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  accessory = [(HMDMatterCommandAction *)self accessory];
  v5 = accessoryToEncodeForXPCTransportForAccessory(accessory);
  uuid = [v5 uuid];
  uUIDString = [uuid UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CCF0B0]];

  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  commands = [(HMDMatterCommandAction *)self commands];
  v10 = [commands countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(commands);
        }

        v14 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentationWithEncodedValues:1];
        [array addObject:v14];
      }

      v11 = [commands countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  v15 = [array copy];
  [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCFC10]];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDMatterCommandAction enforceExecutionOrder](self, "enforceExecutionOrder")}];
  [v4 setObject:v16 forKeyedSubscript:*MEMORY[0x277CCFD20]];

  v17 = [v4 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)stateDump
{
  v3 = MEMORY[0x277CCACA8];
  uuid = [(HMDAction *)self uuid];
  commands = [(HMDMatterCommandAction *)self commands];
  v6 = [v3 stringWithFormat:@"Action uuid: %@, commands %@", uuid, commands];

  return v6;
}

- (HMDMatterCommandAction)initWithUUID:(id)d commands:(id)commands enforceExecutionOrder:(BOOL)order actionSet:(id)set
{
  commandsCopy = commands;
  setCopy = set;
  v16.receiver = self;
  v16.super_class = HMDMatterCommandAction;
  v13 = [(HMDAction *)&v16 initWithUUID:d actionSet:setCopy];
  if (v13)
  {
    home = [setCopy home];
    objc_storeWeak(&v13->_home, home);

    objc_storeStrong(&v13->_commands, commands);
    v13->_enforceExecutionOrder = order;
  }

  return v13;
}

- (HMDMatterCommandAction)new
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

- (HMDMatterCommandAction)init
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
  if (logCategory__hmf_once_t23_123785 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t23_123785, &__block_literal_global_53_123786);
  }

  v3 = logCategory__hmf_once_v24_123787;

  return v3;
}

void __37__HMDMatterCommandAction_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v24_123787;
  logCategory__hmf_once_v24_123787 = v1;
}

+ (id)actionWithDictionaryRepresentation:(id)representation home:(id)home
{
  v82 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  homeCopy = home;
  v8 = +[HMDCoreData featuresDataSource];
  isRVCEnabled = [v8 isRVCEnabled];

  if ((isRVCEnabled & 1) == 0)
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v38;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@RVC feature is not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    v34 = 0;
    goto LABEL_50;
  }

  v10 = [representationCopy hmf_numberForKey:*MEMORY[0x277CD2058]];
  v11 = v10;
  if (!v10)
  {
    v39 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v42;
      v43 = "%{public}@Action type cannot be nil";
      v44 = v41;
      v45 = 12;
LABEL_29:
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, v43, buf, v45);
    }

LABEL_30:

    objc_autoreleasePoolPop(v39);
    v34 = 0;
    goto LABEL_49;
  }

  if ([v10 unsignedIntegerValue] != 5)
  {
    v39 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v79 = v42;
      v80 = 2112;
      v81 = v11;
      v43 = "%{public}@Invalid action type: %@";
      v44 = v41;
      v45 = 22;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v68 = v11;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v69 = representationCopy;
  [representationCopy hmf_arrayForKey:*MEMORY[0x277CCFC10]];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v13 = v76 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v73 objects:v77 count:16];
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = v14;
  v16 = *v74;
  obj = v13;
  while (2)
  {
    v17 = homeCopy;
    for (i = 0; i != v15; ++i)
    {
      if (*v74 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v73 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      if (!v21)
      {
        v46 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543618;
          v79 = v49;
          v80 = 2112;
          v81 = v19;
          _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Unable to serialize encoded command %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v46);
        v11 = v68;
        representationCopy = v69;
        homeCopy = v17;
        goto LABEL_41;
      }

      v22 = [[HMDMatterCommand alloc] initWithDictionary:v19 home:v17];
      if (![(HMDMatterCommand *)v22 isValid])
      {
        v50 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v52 = HMFGetOSLogHandle();
        v11 = v68;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = HMFGetLogIdentifier();
          *buf = 138543618;
          v79 = v53;
          v80 = 2112;
          v81 = v21;
          _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Unable to initialize command from dictionary %@", buf, 0x16u);
        }

        representationCopy = v69;
        homeCopy = v17;
        goto LABEL_40;
      }

      [(HMDMatterCommand *)v22 matterPath];
      v24 = v23 = array2;
      v25 = [v23 containsObject:v24];

      if (v25)
      {
        v67 = v23;
        v50 = objc_autoreleasePoolPush();
        selfCopy6 = self;
        v52 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v56 = v55 = v50;
          matterPath = [(HMDMatterCommand *)v22 matterPath];
          *buf = 138543618;
          v79 = v56;
          v80 = 2112;
          v81 = matterPath;
          _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Conflicting commands detected for matterPath %@", buf, 0x16u);

          v50 = v55;
        }

        v11 = v68;
        representationCopy = v69;
        homeCopy = v17;
        array2 = v67;
LABEL_40:

        objc_autoreleasePoolPop(v50);
LABEL_41:
        v13 = obj;

        goto LABEL_42;
      }

      [array addObject:v22];
      matterPath2 = [(HMDMatterCommand *)v22 matterPath];
      [v23 addObject:matterPath2];

      array2 = v23;
    }

    v15 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
    homeCopy = v17;
    v13 = obj;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_17:

  if ([array count])
  {
    v27 = *MEMORY[0x277CCFD20];
    v72 = 0;
    representationCopy = v69;
    v28 = [v69 hmf_BOOLForKey:v27 error:&v72];
    v29 = v72;
    v11 = v68;
    if (v29)
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy7 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v79 = v33;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Command action dictionary must have enforce execution order key", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      v34 = 0;
      representationCopy = v69;
    }

    else
    {
      v62 = [self alloc];
      [MEMORY[0x277CCAD78] UUID];
      v64 = v63 = array2;
      v34 = [v62 initWithUUID:v64 commands:array enforceExecutionOrder:v28 actionSet:0];

      array2 = v63;
    }
  }

  else
  {
    v58 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v60 = HMFGetOSLogHandle();
    v11 = v68;
    representationCopy = v69;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v61;
      _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Command Action must have commands", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v58);
LABEL_42:
    v34 = 0;
  }

LABEL_49:
LABEL_50:

  v65 = *MEMORY[0x277D85DE8];

  return v34;
}

@end