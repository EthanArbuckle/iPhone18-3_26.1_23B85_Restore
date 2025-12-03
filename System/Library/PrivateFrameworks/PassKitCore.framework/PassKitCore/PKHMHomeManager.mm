@interface PKHMHomeManager
- (PKHMHomeManager)init;
- (void)dealloc;
- (void)fetchHomeIdentifierForPassSerialNumber:(id)number withCompletion:(id)completion;
- (void)fetchHomesWithCompletion:(id)completion;
- (void)fetchLockAccessoryWithTerminalReaderIdentifier:(id)identifier withCompletion:(id)completion;
- (void)hasHomeAccessScheduleForPassSerialNumber:(id)number withCompletion:(id)completion;
- (void)isHomeAccessRestrictedForPassSerialNumber:(id)number withCompletion:(id)completion;
- (void)setLockStateToSecuredForLockAccessory:(id)accessory withCompletion:(id)completion;
@end

@implementation PKHMHomeManager

- (PKHMHomeManager)init
{
  v5.receiver = self;
  v5.super_class = PKHMHomeManager;
  v2 = [(PKHMHomeManager *)&v5 init];
  if (v2)
  {
    v3 = +[_SharedPKHMHomeManager sharedInstance];
    [v3 incrementReferenceCount];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[_SharedPKHMHomeManager sharedInstance];
  [v3 decrementReferenceCount];

  v4.receiver = self;
  v4.super_class = PKHMHomeManager;
  [(PKHMHomeManager *)&v4 dealloc];
}

- (void)fetchHomesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[_SharedPKHMHomeManager sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PKHMHomeManager_fetchHomesWithCompletion___block_invoke;
  v6[3] = &unk_1E79DDC50;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 _performOperationWithHomes:v6];
}

void __44__PKHMHomeManager_fetchHomesWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a3;
  v5(v4, a2);
  v6[2]();
}

- (void)fetchHomeIdentifierForPassSerialNumber:(id)number withCompletion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  v7 = completionCopy;
  if (numberCopy)
  {
    v8 = +[_SharedPKHMHomeManager sharedInstance];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__PKHMHomeManager_fetchHomeIdentifierForPassSerialNumber_withCompletion___block_invoke;
    v9[3] = &unk_1E79DDC78;
    v10 = numberCopy;
    v11 = v7;
    [v8 _performOperationWithHomes:v9];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __73__PKHMHomeManager_fetchHomeIdentifierForPassSerialNumber_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (PKHomeKitSimulatedLockCompatibilityMode())
        {
          goto LABEL_17;
        }

        v12 = *(a1 + 32);
        v13 = [v11 walletKeyPassSerialNumber];
        v14 = v12;
        v15 = v13;
        v16 = v15;
        if (v14 == v15)
        {

LABEL_17:
          v8 = v11;
          goto LABEL_18;
        }

        if (v14 && v15)
        {
          v17 = [v14 isEqualToString:v15];

          if (v17)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v18 = [v8 uniqueIdentifier];
  v19 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"Found";
    v21 = *(a1 + 32);
    *buf = 138412802;
    if (!v8)
    {
      v20 = @"Did not find";
    }

    v27 = v20;
    v28 = 2112;
    v29 = v18;
    v30 = 2112;
    v31 = v21;
    _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "PKHMHomeManager: %@ home %@ with pass serial number: %@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v6[2](v6);
}

- (void)fetchLockAccessoryWithTerminalReaderIdentifier:(id)identifier withCompletion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = +[_SharedPKHMHomeManager sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__PKHMHomeManager_fetchLockAccessoryWithTerminalReaderIdentifier_withCompletion___block_invoke;
  v10[3] = &unk_1E79DDC78;
  v11 = identifierCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = identifierCopy;
  [v7 _performOperationWithHomes:v10];
}

void __81__PKHMHomeManager_fetchLockAccessoryWithTerminalReaderIdentifier_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v31 = a3;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v33 = *v39;
    do
    {
      v8 = 0;
      do
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v38 + 1) + 8 * v8) accessories];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v34 objects:v48 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v35;
          while (2)
          {
            v14 = 0;
            do
            {
              if (*v35 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v34 + 1) + 8 * v14);
              if (PKHomeKitSimulatedLockCompatibilityMode())
              {
                v18 = FindLockCharacteristicInAccessory(v15);
                if (v18)
                {
                  v21 = v18;
                  v22 = v15;

                  goto LABEL_20;
                }
              }

              else
              {
                v16 = [v15 readerIDACWG];
                v17 = [v16 isEqualToData:*(a1 + 32)];

                if (v17)
                {
                  v20 = v15;
LABEL_20:

                  if (v15)
                  {
                    goto LABEL_24;
                  }

                  goto LABEL_21;
                }
              }

              ++v14;
            }

            while (v12 != v14);
            v19 = [v10 countByEnumeratingWithState:&v34 objects:v48 count:16];
            v12 = v19;
            if (v19)
            {
              continue;
            }

            break;
          }
        }

LABEL_21:
        ++v8;
      }

      while (v8 != v7);
      v7 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v7);
  }

  v15 = 0;
LABEL_24:

  v23 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (v15)
    {
      v24 = @"Found";
    }

    else
    {
      v24 = @"Did not find";
    }

    v25 = [v15 uniqueIdentifier];
    v26 = [v15 name];
    *buf = 138412802;
    v43 = v24;
    v44 = 2112;
    v45 = v25;
    v46 = 2112;
    v47 = v26;
    _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "PKHMHomeManager: %@ lock accessory with identifier: %@ (name: %@)", buf, 0x20u);
  }

  if (v15)
  {
    v27 = [PKHMAccessory alloc];
    v28 = [v15 uniqueIdentifier];
    v29 = [v15 name];
    v30 = [(PKHMAccessory *)v27 initWithUniqueIdentifier:v28 name:v29];
  }

  else
  {
    v30 = 0;
  }

  (*(*(a1 + 40) + 16))();
  v31[2](v31);
}

- (void)setLockStateToSecuredForLockAccessory:(id)accessory withCompletion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v8 = +[_SharedPKHMHomeManager sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__PKHMHomeManager_setLockStateToSecuredForLockAccessory_withCompletion___block_invoke;
  v11[3] = &unk_1E79DDCF0;
  v12 = accessoryCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = accessoryCopy;
  v10 = completionCopy;
  [v8 _performOperationWithHomes:v11];
}

void __72__PKHMHomeManager_setLockStateToSecuredForLockAccessory_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKHMHomeManager_setLockStateToSecuredForLockAccessory_withCompletion___block_invoke_113;
  aBlock[3] = &unk_1E79DDCC8;
  v6 = *(a1 + 48);
  aBlock[4] = *(a1 + 32);
  v33 = v6;
  v28 = a3;
  v7 = a2;
  v27 = _Block_copy(aBlock);
  v8 = *(a1 + 40);
  v9 = v7;
  v10 = v8;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v9;
  v31 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v31)
  {
    v30 = *v39;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v38 + 1) + 8 * i) accessories];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v34 objects:v48 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v35;
LABEL_8:
          v17 = 0;
          while (1)
          {
            if (*v35 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v34 + 1) + 8 * v17);
            v19 = [v18 uniqueIdentifier];
            v20 = [v10 uniqueIdentifier];
            v21 = [v19 hmf_isEqualToUUID:v20];

            if (v21)
            {
              break;
            }

            if (v15 == ++v17)
            {
              v15 = [v13 countByEnumeratingWithState:&v34 objects:v48 count:16];
              if (v15)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v22 = v18;

          if (v22)
          {
            goto LABEL_19;
          }
        }

        else
        {
LABEL_14:
        }
      }

      v31 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v31);
  }

  v22 = 0;
LABEL_19:

  v23 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (v22)
    {
      v24 = @"Found";
    }

    else
    {
      v24 = @"Did not find";
    }

    v25 = [v22 uniqueIdentifier];
    v26 = [v22 name];
    *buf = 138412802;
    v43 = v24;
    v44 = 2112;
    v45 = v25;
    v46 = 2112;
    v47 = v26;
    _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "PKHMHomeManager: %@ lock accessory with identifier: %@ (name: %@)", buf, 0x20u);
  }

  v27[2](v27, v22);
  v28[2](v28);
}

void __72__PKHMHomeManager_setLockStateToSecuredForLockAccessory_withCompletion___block_invoke_113(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FindLockCharacteristicInAccessory(v3);
  v5 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v6 = @"Found";
    }

    else
    {
      v6 = @"Did not find";
    }

    v7 = [v3 uniqueIdentifier];
    *buf = 138412546;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKHMHomeManager: %@ lock characteristic for accessory: %@", buf, 0x16u);
  }

  if (v4)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__PKHMHomeManager_setLockStateToSecuredForLockAccessory_withCompletion___block_invoke_115;
    v16[3] = &unk_1E79DDCA0;
    v16[4] = v4;
    v17 = v3;
    v8 = *(a1 + 40);
    v18 = *(a1 + 32);
    v19 = v8;
    [v4 writeValue:&unk_1F23B5408 completionHandler:v16];
  }

  else if (*(a1 + 40))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v3 uniqueIdentifier];
    v11 = [v9 stringWithFormat:@"Failed to find HMCharacteristicTypeTargetLockMechanismState for accessory %@", v10];

    v12 = *(a1 + 40);
    v13 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21 = v11;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v15 = [v13 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v14];
    (*(v12 + 16))(v12, v15);
  }
}

void __72__PKHMHomeManager_setLockStateToSecuredForLockAccessory_withCompletion___block_invoke_115(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v5 = @"Unsuccessfully";
    }

    else
    {
      v5 = @"Successfully";
    }

    v6 = [*(a1 + 32) uniqueIdentifier];
    v7 = [*(a1 + 40) uniqueIdentifier];
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKHMHomeManager: %@ wrote characteristic %@ for accessory: %@", &v9, 0x20u);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)hasHomeAccessScheduleForPassSerialNumber:(id)number withCompletion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    if (numberCopy)
    {
      v8 = +[_SharedPKHMHomeManager sharedInstance];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __75__PKHMHomeManager_hasHomeAccessScheduleForPassSerialNumber_withCompletion___block_invoke;
      v9[3] = &unk_1E79DDC78;
      v10 = numberCopy;
      v11 = v7;
      [v8 _performOperationWithHomes:v9];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

void __75__PKHMHomeManager_hasHomeAccessScheduleForPassSerialNumber_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = v3;
  if (PKHomeKitSimulatedLockCompatibilityMode())
  {
    v27 = [v4 firstObject];
    v25 = [v27 uniqueIdentifier];
    v28 = v25;
  }

  else
  {
    v29 = v2;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v7)
    {
      v8 = *v31;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = [v10 walletKeyPassSerialNumber];
          v12 = v5;
          v13 = v11;
          v14 = v13;
          if (v13 == v12)
          {

LABEL_17:
            v7 = v10;
            goto LABEL_18;
          }

          if (v5 && v13)
          {
            v15 = [v12 isEqualToString:v13];

            if (v15)
            {
              goto LABEL_17;
            }
          }

          else
          {
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v30 objects:v40 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v16 = [v7 uniqueIdentifier];
    v17 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = @"Found";
      *buf = 138412802;
      if (!v7)
      {
        v18 = @"Did not find";
      }

      v35 = v18;
      v36 = 2112;
      v37 = v16;
      v38 = 2112;
      v39 = v5;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKHMHomeManager: %@ home %@ with pass serial number: %@", buf, 0x20u);
    }

    if (v7)
    {
      v19 = v16;
      v20 = [v7 currentUser];
      v21 = [v7 homeAccessControlForUser:v20];
      v22 = [v21 restrictedGuestAccessSettings];
      v23 = [v22 guestAccessSchedule];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v24 = @"does not have";
        if (v23)
        {
          v24 = @"has";
        }

        *buf = 138412546;
        v35 = v16;
        v36 = 2112;
        v37 = v24;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKHMHomeManager: Home %@ %@ access schedule", buf, 0x16u);
      }

      v25 = v16;
    }

    else
    {
      v25 = 0;
    }

    v2 = v29;
  }

  v26 = v25;
  (*(*(v2 + 40) + 16))();
}

- (void)isHomeAccessRestrictedForPassSerialNumber:(id)number withCompletion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    if (numberCopy)
    {
      v8 = +[_SharedPKHMHomeManager sharedInstance];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __76__PKHMHomeManager_isHomeAccessRestrictedForPassSerialNumber_withCompletion___block_invoke;
      v9[3] = &unk_1E79DDC78;
      v10 = numberCopy;
      v11 = v7;
      [v8 _performOperationWithHomes:v9];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

uint64_t __76__PKHMHomeManager_isHomeAccessRestrictedForPassSerialNumber_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a1;
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = v3;
  if ((PKHomeKitSimulatedLockCompatibilityMode() & 1) == 0)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v7)
    {
      v25 = v2;
      v8 = *v27;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = [v10 walletKeyPassSerialNumber];
          v12 = v5;
          v13 = v11;
          v14 = v13;
          if (v13 == v12)
          {

LABEL_17:
            v7 = v10;
            goto LABEL_18;
          }

          if (v5 && v13)
          {
            v15 = [v12 isEqualToString:v13];

            if (v15)
            {
              goto LABEL_17;
            }
          }

          else
          {
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

LABEL_18:
      v2 = v25;
    }

    v16 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v17 = @"Found";
      }

      else
      {
        v17 = @"Did not find";
      }

      v18 = [v7 uniqueIdentifier];
      *buf = 138412802;
      v31 = v17;
      v32 = 2112;
      v33 = v18;
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "PKHMHomeManager: %@ home %@ with pass serial number: %@", buf, 0x20u);
    }

    if (v7)
    {
      v19 = [v7 currentUser];
      v20 = [v7 homeAccessControlForUser:v19];
      v21 = [v20 restrictedGuestAccessSettings];
      v22 = [v21 guestAccessSchedule];
      [v20 isRestrictedGuestInAllowedPeriod];
    }
  }

  v23 = *(*(v2 + 40) + 16);

  return v23();
}

@end