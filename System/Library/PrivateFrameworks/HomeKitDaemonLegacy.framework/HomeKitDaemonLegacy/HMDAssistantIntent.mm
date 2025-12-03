@interface HMDAssistantIntent
+ (id)logCategory;
- (HMDAssistantIntent)initWithIntent:(id)intent;
- (id)_getObjectsWithUUID;
- (void)_handleActionSetForConfirmation:(id)confirmation message:(id)message;
- (void)_handleActionSetForExecution:(id)execution message:(id)message;
- (void)_handleIntentRequestMessage:(id)message;
- (void)performWithGather:(id)gather message:(id)message;
@end

@implementation HMDAssistantIntent

- (void)_handleActionSetForExecution:(id)execution message:(id)message
{
  v18[3] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = actionSetFromObject(execution);
  v18[0] = &unk_286628CD8;
  v7 = *MEMORY[0x277CD2060];
  v17[0] = @"sourceType";
  v17[1] = v7;
  uuid = [v6 uuid];
  uUIDString = [uuid UUIDString];
  v18[1] = uUIDString;
  v17[2] = @"kApplyDeviceUnlockKey";
  v10 = [MEMORY[0x277CCABB0] numberWithInt:!isPasscodeEnabledOnThisDevice()];
  v18[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v12 = MEMORY[0x277D0F818];
  v13 = *MEMORY[0x277CD2348];
  responseHandler = [messageCopy responseHandler];

  v15 = [v12 internalMessageWithName:v13 messagePayload:v11 responseHandler:responseHandler];

  [v6 execute:v15];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionSetForConfirmation:(id)confirmation message:(id)message
{
  v17[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = actionSetFromObject(confirmation);
  v7 = isPasscodeEnabledOnThisDevice();
  v16[0] = @"sourceType";
  v16[1] = @"kApplyDeviceUnlockKey";
  v17[0] = &unk_286628CD8;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:!v7];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = [MEMORY[0x277D0F818] messageWithMessage:messageCopy messagePayload:v9];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__HMDAssistantIntent__handleActionSetForConfirmation_message___block_invoke;
  v13[3] = &unk_27972B1E8;
  v15 = v7;
  v14 = messageCopy;
  v11 = messageCopy;
  [v6 isAccessValidForExecutionWithMessage:v10 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __62__HMDAssistantIntent__handleActionSetForConfirmation_message___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v8 = v5;
    if ([v5 code] != 82)
    {
      v6 = v8;
      if (v8)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v6 = v8;
    if (!v8 || (*(a1 + 40) & 1) == 0)
    {
LABEL_7:
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];

      v6 = v7;
    }
  }

LABEL_8:
  v9 = v6;
  [*(a1 + 32) respondWithPayload:0 error:v6];
}

- (id)_getObjectsWithUUID
{
  intent = [(HMDAssistantIntent *)self intent];
  contents = [intent contents];
  firstObject = [contents firstObject];

  filter = [firstObject filter];
  entityIdentifiers = [filter entityIdentifiers];
  firstObject2 = [entityIdentifiers firstObject];

  homeKitObjects = [(HMDAssistantIntent *)self homeKitObjects];
  v10 = homeKitObjects;
  if (homeKitObjects && [homeKitObjects count])
  {
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K =[d] %@", @"objectSPIIdentifier", firstObject2];
    v12 = [v10 filteredArrayUsingPredicate:v11];

    v10 = v12;
  }

  firstObject3 = [v10 firstObject];

  return firstObject3;
}

- (void)_handleIntentRequestMessage:(id)message
{
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  intent = [(HMDAssistantIntent *)self intent];
  contents = [intent contents];
  v7 = [contents count];

  if (v7)
  {
    intent2 = [(HMDAssistantIntent *)self intent];
    contents2 = [intent2 contents];
    firstObject = [contents2 firstObject];

    filter = [firstObject filter];
    entityType = [filter entityType];

    v13 = 0;
    if (entityType <= 4)
    {
      if (entityType <= 1)
      {
        if (entityType)
        {
          if (entityType == 1)
          {
            v13 = @"INHomeEntityTypeHome";
          }
        }

        else
        {
          v13 = @"INHomeEntityTypeUnknown";
        }
      }

      else if (entityType == 2)
      {
        v13 = @"INHomeEntityTypeZone";
      }

      else if (entityType == 3)
      {
        v13 = @"INHomeEntityTypeRoom";
      }

      else
      {
        v13 = @"INHomeEntityTypeGroup";
      }

      goto LABEL_32;
    }

    if (entityType > 7)
    {
      switch(entityType)
      {
        case 8:
          v13 = @"INHomeEntityTypeServiceGroup";
          break;
        case 9:
          v13 = @"INHomeEntityTypeAccessory";
          break;
        case 10:
          v13 = @"INHomeEntityTypeService";
          break;
      }

      goto LABEL_32;
    }

    if (entityType != 5)
    {
      if (entityType == 6)
      {
        v13 = @"INHomeEntityTypeTrigger";
      }

      else
      {
        v13 = @"INHomeEntityTypeDevice";
      }

LABEL_32:
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v35 = 138543618;
        v36 = v25;
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Intent execution with entityType %@ is not yet supported.", &v35, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [messageCopy respondWithError:v26];

      goto LABEL_35;
    }

    _getObjectsWithUUID = [(HMDAssistantIntent *)self _getObjectsWithUUID];
    if (_getObjectsWithUUID)
    {
      v19 = [messageCopy numberForKey:*MEMORY[0x277CD26A0]];
      if (v19)
      {
        v20 = v19;
        unsignedIntegerValue = [v19 unsignedIntegerValue];
        if (unsignedIntegerValue == 1)
        {
          [(HMDAssistantIntent *)self _handleActionSetForExecution:_getObjectsWithUUID message:messageCopy];
        }

        else if (!unsignedIntegerValue)
        {
          [(HMDAssistantIntent *)self _handleActionSetForConfirmation:_getObjectsWithUUID message:messageCopy];
        }

        goto LABEL_43;
      }

      v32 = MEMORY[0x277CCA9B8];
      v33 = 3;
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v31;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@The actionSet provided by the intent does not exist.", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      v32 = MEMORY[0x277CCA9B8];
      v33 = 2;
    }

    v34 = [v32 hmErrorWithCode:v33];
    [messageCopy respondWithError:v34];

LABEL_43:
    goto LABEL_35;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v35 = 138543362;
    v36 = v17;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Error - There is no content in intent to handle.", &v35, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  firstObject = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
  [messageCopy respondWithError:firstObject];
LABEL_35:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)performWithGather:(id)gather message:(id)message
{
  messageCopy = message;
  homeKitObjects = [gather homeKitObjects];
  [(HMDAssistantIntent *)self setHomeKitObjects:homeKitObjects];

  [(HMDAssistantIntent *)self _handleIntentRequestMessage:messageCopy];
}

- (HMDAssistantIntent)initWithIntent:(id)intent
{
  intentCopy = intent;
  v9.receiver = self;
  v9.super_class = HMDAssistantIntent;
  v6 = [(HMDAssistantIntent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_intent, intent);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_110115 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_110115, &__block_literal_global_110116);
  }

  v3 = logCategory__hmf_once_v4_110117;

  return v3;
}

uint64_t __33__HMDAssistantIntent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_110117;
  logCategory__hmf_once_v4_110117 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end