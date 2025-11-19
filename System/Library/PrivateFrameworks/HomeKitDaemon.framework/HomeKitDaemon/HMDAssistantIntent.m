@interface HMDAssistantIntent
+ (id)logCategory;
- (HMDAssistantIntent)initWithIntent:(id)a3;
- (id)_getObjectsWithUUID;
- (void)_handleActionSetForConfirmation:(id)a3 message:(id)a4;
- (void)_handleActionSetForExecution:(id)a3 message:(id)a4;
- (void)_handleIntentRequestMessage:(id)a3;
- (void)performWithGather:(id)a3 message:(id)a4;
@end

@implementation HMDAssistantIntent

- (void)_handleActionSetForExecution:(id)a3 message:(id)a4
{
  v18[3] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = actionSetFromObject(a3);
  v18[0] = &unk_283E737A8;
  v7 = *MEMORY[0x277CD2060];
  v17[0] = @"sourceType";
  v17[1] = v7;
  v8 = [v6 uuid];
  v9 = [v8 UUIDString];
  v18[1] = v9;
  v17[2] = @"kApplyDeviceUnlockKey";
  v10 = [MEMORY[0x277CCABB0] numberWithInt:!isPasscodeEnabledOnThisDevice()];
  v18[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v12 = MEMORY[0x277D0F818];
  v13 = *MEMORY[0x277CD2348];
  v14 = [v5 responseHandler];

  v15 = [v12 internalMessageWithName:v13 messagePayload:v11 responseHandler:v14];

  [v6 execute:v15];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionSetForConfirmation:(id)a3 message:(id)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = actionSetFromObject(a3);
  v7 = isPasscodeEnabledOnThisDevice();
  v16[0] = @"sourceType";
  v16[1] = @"kApplyDeviceUnlockKey";
  v17[0] = &unk_283E737A8;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:!v7];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = [MEMORY[0x277D0F818] messageWithMessage:v5 messagePayload:v9];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__HMDAssistantIntent__handleActionSetForConfirmation_message___block_invoke;
  v13[3] = &unk_27867C768;
  v15 = v7;
  v14 = v5;
  v11 = v5;
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
  v3 = [(HMDAssistantIntent *)self intent];
  v4 = [v3 contents];
  v5 = [v4 firstObject];

  v6 = [v5 filter];
  v7 = [v6 entityIdentifiers];
  v8 = [v7 firstObject];

  v9 = [(HMDAssistantIntent *)self homeKitObjects];
  v10 = v9;
  if (v9 && [v9 count])
  {
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K =[d] %@", @"objectSPIIdentifier", v8];
    v12 = [v10 filteredArrayUsingPredicate:v11];

    v10 = v12;
  }

  v13 = [v10 firstObject];

  return v13;
}

- (void)_handleIntentRequestMessage:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAssistantIntent *)self intent];
  v6 = [v5 contents];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(HMDAssistantIntent *)self intent];
    v9 = [v8 contents];
    v10 = [v9 firstObject];

    v11 = [v10 filter];
    v12 = [v11 entityType];

    v13 = 0;
    if (v12 <= 4)
    {
      if (v12 <= 1)
      {
        if (v12)
        {
          if (v12 == 1)
          {
            v13 = @"INHomeEntityTypeHome";
          }
        }

        else
        {
          v13 = @"INHomeEntityTypeUnknown";
        }
      }

      else if (v12 == 2)
      {
        v13 = @"INHomeEntityTypeZone";
      }

      else if (v12 == 3)
      {
        v13 = @"INHomeEntityTypeRoom";
      }

      else
      {
        v13 = @"INHomeEntityTypeGroup";
      }

      goto LABEL_32;
    }

    if (v12 > 7)
    {
      switch(v12)
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

    if (v12 != 5)
    {
      if (v12 == 6)
      {
        v13 = @"INHomeEntityTypeTrigger";
      }

      else
      {
        v13 = @"INHomeEntityTypeDevice";
      }

LABEL_32:
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v35 = 138543618;
        v36 = v25;
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Intent execution with entityType %@ is not yet supported.", &v35, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [v4 respondWithError:v26];

      goto LABEL_35;
    }

    v18 = [(HMDAssistantIntent *)self _getObjectsWithUUID];
    if (v18)
    {
      v19 = [v4 numberForKey:*MEMORY[0x277CD26A0]];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 unsignedIntegerValue];
        if (v21 == 1)
        {
          [(HMDAssistantIntent *)self _handleActionSetForExecution:v18 message:v4];
        }

        else if (!v21)
        {
          [(HMDAssistantIntent *)self _handleActionSetForConfirmation:v18 message:v4];
        }

        goto LABEL_43;
      }

      v32 = MEMORY[0x277CCA9B8];
      v33 = 3;
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v31;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@The actionSet provided by the intent does not exist.", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      v32 = MEMORY[0x277CCA9B8];
      v33 = 2;
    }

    v34 = [v32 hmErrorWithCode:v33];
    [v4 respondWithError:v34];

LABEL_43:
    goto LABEL_35;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v35 = 138543362;
    v36 = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Error - There is no content in intent to handle.", &v35, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
  [v4 respondWithError:v10];
LABEL_35:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)performWithGather:(id)a3 message:(id)a4
{
  v7 = a4;
  v6 = [a3 homeKitObjects];
  [(HMDAssistantIntent *)self setHomeKitObjects:v6];

  [(HMDAssistantIntent *)self _handleIntentRequestMessage:v7];
}

- (HMDAssistantIntent)initWithIntent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDAssistantIntent;
  v6 = [(HMDAssistantIntent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_intent, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_166365 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_166365, &__block_literal_global_166366);
  }

  v3 = logCategory__hmf_once_v4_166367;

  return v3;
}

void __33__HMDAssistantIntent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_166367;
  logCategory__hmf_once_v4_166367 = v1;
}

@end