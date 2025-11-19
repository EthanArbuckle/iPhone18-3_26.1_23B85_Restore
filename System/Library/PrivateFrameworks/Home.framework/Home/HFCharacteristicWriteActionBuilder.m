@interface HFCharacteristicWriteActionBuilder
+ (id)asCharacteristicWriteAction:(id)a3;
- (BOOL)canUpdateWithActionBuilder:(id)a3;
- (BOOL)hasSameTargetAsAction:(id)a3;
- (BOOL)requiresDeviceUnlock;
- (BOOL)updateWithActionBuilder:(id)a3;
- (HFCharacteristicWriteActionBuilder)initWithExistingObject:(id)a3 inHome:(id)a4;
- (id)commitItem;
- (id)compareToObject:(id)a3;
- (id)containedAccessoryRepresentables;
- (id)copyForCreatingNewAction;
- (id)createNewAction;
- (id)description;
- (unint64_t)hash;
- (void)_logInvalidNumberTargetValue:(void *)a3 foundClosestValidValue:(void *)a4 metadata:;
- (void)_logInvalidNumericTargetValue:(void *)a3 clamped:(int)a4 valid:(void *)a5 metadata:;
- (void)_validateAndSetTargetValue:(id *)a1;
- (void)setCharacteristic:(id)a3;
- (void)setTargetValue:(id)a3;
@end

@implementation HFCharacteristicWriteActionBuilder

- (HFCharacteristicWriteActionBuilder)initWithExistingObject:(id)a3 inHome:(id)a4
{
  v13.receiver = self;
  v13.super_class = HFCharacteristicWriteActionBuilder;
  v4 = [(HFItemBuilder *)&v13 initWithExistingObject:a3 inHome:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(HFActionBuilder *)v4 action];
    v7 = [v6 characteristic];
    characteristic = v5->_characteristic;
    v5->_characteristic = v7;

    v9 = [(HFActionBuilder *)v5 action];
    v10 = [v9 targetValue];
    targetValue = v5->_targetValue;
    v5->_targetValue = v10;
  }

  return v5;
}

- (id)copyForCreatingNewAction
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(HFItemBuilder *)self home];
  v5 = [v3 initWithHome:v4];

  v6 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  [v5 setCharacteristic:v6];

  v7 = [(HFCharacteristicWriteActionBuilder *)self targetValue];
  [v5 setTargetValue:v7];

  return v5;
}

- (void)setCharacteristic:(id)a3
{
  v5 = a3;
  v6 = [(HFActionBuilder *)self action];

  if (v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HFActionBuilder.m" lineNumber:211 description:@"Cannot change the characteristic for an existing action!"];
  }

  characteristic = self->_characteristic;
  self->_characteristic = v5;

  v9 = [(HFCharacteristicWriteActionBuilder *)self targetValue];
  [(HFCharacteristicWriteActionBuilder *)&self->super.super.super.isa _validateAndSetTargetValue:v9];
}

- (void)_validateAndSetTargetValue:(id *)a1
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    v5 = [a1 characteristic];

    if (v5)
    {
      if (v4)
      {
        v6 = [a1 characteristic];
        v7 = [v6 metadata];

        if (!v7)
        {
          objc_storeStrong(a1 + 4, a2);
          v9 = HFLogForCategory(0x2BuLL);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            v66 = objc_opt_class();
            v67 = NSStringFromClass(v66);
            v68 = [a1 characteristic];
            *buf = 138543874;
            v79 = v67;
            v80 = 2112;
            v81 = v4;
            v82 = 2112;
            v83 = v68;
            _os_log_fault_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_FAULT, "%{public}@ tried to validate target value %@ but missing metadata on characteristic %@", buf, 0x20u);
          }

          goto LABEL_54;
        }

        if ([v7 hf_isValidValue:v4])
        {
          objc_storeStrong(a1 + 4, a2);
LABEL_54:

          goto LABEL_55;
        }

        v10 = v4;
        v11 = +[HFUtilities hasInternalDiagnostics];
        v12 = HFLogForCategory(0x2BuLL);
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
        if (v11)
        {
          if (!v13)
          {
            goto LABEL_16;
          }

          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v16 = [a1 characteristic];
          v17 = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138413058;
          v79 = v15;
          v80 = 2112;
          v81 = v10;
          v82 = 2112;
          v83 = v16;
          v84 = 2112;
          v85 = v17;
          _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "%@ received invalid target value %@ for characteristic %@. Stack: %@", buf, 0x2Au);
        }

        else
        {
          if (!v13)
          {
            goto LABEL_16;
          }

          v69 = objc_opt_class();
          v15 = NSStringFromClass(v69);
          *buf = 138412290;
          v79 = v15;
          _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "%@ received invalid target value for characteristic.", buf, 0xCu);
        }

LABEL_16:
        objc_opt_class();
        v18 = v10;
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v20 = v18;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        v22 = [v7 format];
        v23 = [v22 isEqualToString:*MEMORY[0x277CCF6B0]];

        if (v23 && (isKindOfClass & 1) != 0)
        {
          v24 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v21, "integerValue") > 0}];
          v25 = a1[4];
          a1[4] = v24;
LABEL_22:

LABEL_53:
          goto LABEL_54;
        }

        if ([v7 hf_isNumeric])
        {
          v26 = [v7 minimumValue];
          if (v26)
          {
            v27 = v26;
            v28 = [v7 maximumValue];
            v29 = v18;
            v30 = v7;
            v31 = (v28 != 0) & isKindOfClass;

            v32 = v31 == 1;
            v7 = v30;
            v18 = v29;
            if (v32)
            {
              v33 = [v7 minimumValue];
              [v33 doubleValue];
              v35 = v34;

              [v21 doubleValue];
              v37 = v36;
              v38 = [v7 maximumValue];
              [v38 doubleValue];
              v40 = v39;

              if (v37 >= v40)
              {
                v41 = v40;
              }

              else
              {
                v41 = v37;
              }

              if (v35 >= v41)
              {
                v41 = v35;
              }

              v42 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
              v43 = [v7 hf_isValidValue:v42];
              [(HFCharacteristicWriteActionBuilder *)a1 _logInvalidNumericTargetValue:v21 clamped:v42 valid:v43 metadata:v7];
              if (v43)
              {
                goto LABEL_60;
              }
            }
          }
        }

        v44 = [v7 validValues];
        if (v44 && [v7 hf_isNumeric])
        {

          if (isKindOfClass)
          {
            v71 = v18;
            v72 = v7;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v45 = [v7 validValues];
            v46 = [v45 countByEnumeratingWithState:&v73 objects:v77 count:16];
            if (v46)
            {
              v47 = v46;
              v42 = 0;
              v48 = *v74;
              v49 = 1.79769313e308;
              do
              {
                for (i = 0; i != v47; ++i)
                {
                  if (*v74 != v48)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v51 = *(*(&v73 + 1) + 8 * i);
                  [v51 doubleValue];
                  v53 = v52;
                  [v21 doubleValue];
                  v55 = vabdd_f64(v53, v54);
                  if (v55 < v49)
                  {
                    v56 = v51;

                    v49 = v55;
                    v42 = v56;
                  }
                }

                v47 = [v45 countByEnumeratingWithState:&v73 objects:v77 count:16];
              }

              while (v47);
            }

            else
            {
              v42 = 0;
            }

            v7 = v72;
            [(HFCharacteristicWriteActionBuilder *)a1 _logInvalidNumberTargetValue:v21 foundClosestValidValue:v42 metadata:v72];
            v18 = v71;
            if (v42)
            {
LABEL_60:
              v25 = a1[4];
              a1[4] = v42;
              goto LABEL_22;
            }
          }
        }

        else
        {
        }

        v57 = v18;
        v58 = +[HFUtilities hasInternalDiagnostics];
        v59 = HFLogForCategory(0x2BuLL);
        v60 = os_log_type_enabled(v59, OS_LOG_TYPE_FAULT);
        if (v58)
        {
          if (v60)
          {
            v61 = objc_opt_class();
            v62 = NSStringFromClass(v61);
            v63 = [a1 characteristic];
            v64 = [MEMORY[0x277CCACC8] callStackSymbols];
            *buf = 138413058;
            v79 = v62;
            v80 = 2112;
            v81 = v63;
            v82 = 2112;
            v83 = v57;
            v84 = 2112;
            v85 = v64;
            _os_log_fault_impl(&dword_20D9BF000, v59, OS_LOG_TYPE_FAULT, "%@ for %@: Failed to automatically find a valid value similar to %@. Keeping it. Stack: %@", buf, 0x2Au);

LABEL_62:
          }
        }

        else if (v60)
        {
          v70 = objc_opt_class();
          v62 = NSStringFromClass(v70);
          *buf = 138412290;
          v79 = v62;
          _os_log_fault_impl(&dword_20D9BF000, v59, OS_LOG_TYPE_FAULT, "%@: Failed to automatically find a valid value similar to assigned value. Keeping it", buf, 0xCu);
          goto LABEL_62;
        }

        objc_storeStrong(a1 + 4, a2);
        goto LABEL_53;
      }

      v8 = a1[4];
      a1[4] = 0;
    }

    else
    {
      objc_storeStrong(a1 + 4, a2);
    }
  }

LABEL_55:

  v65 = *MEMORY[0x277D85DE8];
}

- (void)setTargetValue:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_targetValue != v5)
  {
    v9 = v5;
    if (!v5)
    {
      v7 = [(HFActionBuilder *)self action];

      if (v7)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        [v8 handleFailureInMethod:a2 object:self file:@"HFActionBuilder.m" lineNumber:219 description:@"Cannot set target value to nil for an existing action!"];
      }
    }

    [(HFCharacteristicWriteActionBuilder *)&self->super.super.super.isa _validateAndSetTargetValue:v9];
    v6 = v9;
  }
}

- (void)_logInvalidNumericTargetValue:(void *)a3 clamped:(int)a4 valid:(void *)a5 metadata:
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = +[HFUtilities hasInternalDiagnostics];
  v13 = HFLogForCategory(0x2BuLL);
  v14 = v13;
  if (!v12)
  {
    v20 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (a4)
    {
      if (!v20)
      {
        goto LABEL_14;
      }

      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v27 = 138543362;
      v28 = v22;
      v23 = "%{public}@: Clamping";
    }

    else
    {
      if (!v20)
      {
        goto LABEL_14;
      }

      v25 = objc_opt_class();
      v22 = NSStringFromClass(v25);
      v27 = 138543362;
      v28 = v22;
      v23 = "%{public}@: Failed clamping";
    }

    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, v23, &v27, 0xCu);

    goto LABEL_14;
  }

  if (!a4)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v24 = objc_opt_class();
    v16 = NSStringFromClass(v24);
    v17 = [a1 characteristic];
    v18 = [v11 minimumValue];
    v19 = [v11 maximumValue];
    v27 = 138544386;
    v28 = v16;
    v29 = 2112;
    v30 = v17;
    v31 = 2112;
    v32 = v18;
    v33 = 2112;
    v34 = v19;
    v35 = 2112;
    v36 = v10;
    _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "%{public}@ for %@: Failed to clamp to (%@, %@) as it produced an invalid value %@", &v27, 0x34u);
    goto LABEL_5;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [a1 characteristic];
    v18 = [v11 minimumValue];
    v19 = [v11 maximumValue];
    v27 = 138413314;
    v28 = v16;
    v29 = 2112;
    v30 = v17;
    v31 = 2112;
    v32 = v18;
    v33 = 2112;
    v34 = v19;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "%@ for %@: Clamping to (%@, %@) resulting in %@", &v27, 0x34u);
LABEL_5:
  }

LABEL_14:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_logInvalidNumberTargetValue:(void *)a3 foundClosestValidValue:(void *)a4 metadata:
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[HFUtilities hasInternalDiagnostics];
  v11 = HFLogForCategory(0x2BuLL);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [a1 characteristic];
      v19 = 138544130;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ for %@: Found closest valid value %@ for requested target value %@", &v19, 0x2Au);
    }
  }

  else if (v12)
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v19 = 138543362;
    v20 = v17;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Found closest valid value for requested target value", &v19, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  v4 = [v3 characteristicType];

  if (+[HFUtilities hasInternalDiagnostics])
  {
    v5 = [MEMORY[0x277CD1970] localizedDescriptionForCharacteristicType:v4];
    v6 = [v5 lowercaseString];
  }

  else
  {
    v6 = @"<redacted>";
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [(HFCharacteristicWriteActionBuilder *)self targetValue];
  v9 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  v10 = [v9 service];
  v11 = [v10 name];
  v12 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  v13 = [v12 service];
  v14 = [v13 uniqueIdentifier];
  v15 = [v7 stringWithFormat:@"<characteristic %@ set to targetValue: %@ in service: '%@' (%@)>", v6, v8, v11, v14];

  return v15;
}

- (BOOL)canUpdateWithActionBuilder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 characteristic];
    v7 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
    if ([v6 isEqual:v7])
    {
      v8 = [v5 targetValue];
      v9 = v8 != 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)updateWithActionBuilder:(id)a3
{
  v4 = a3;
  if ([(HFCharacteristicWriteActionBuilder *)self canUpdateWithActionBuilder:v4])
  {
    v5 = v4;
    v6 = [v5 targetValue];
    v7 = [(HFCharacteristicWriteActionBuilder *)self targetValue];

    v8 = v6 == v7;
    v9 = v6 != v7;
    if (!v8)
    {
      v10 = [v5 targetValue];
      [(HFCharacteristicWriteActionBuilder *)self setTargetValue:v10];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)requiresDeviceUnlock
{
  v2 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  v3 = [v2 requiresDeviceUnlock];

  return v3;
}

- (id)createNewAction
{
  v3 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  if (v3 && (v4 = v3, [(HFCharacteristicWriteActionBuilder *)self targetValue], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = objc_alloc(MEMORY[0x277CD19A8]);
    v7 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
    v8 = [(HFCharacteristicWriteActionBuilder *)self targetValue];
    v9 = [v6 initWithCharacteristic:v7 targetValue:v8];
  }

  else
  {
    v7 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
    v8 = [(HFCharacteristicWriteActionBuilder *)self targetValue];
    NSLog(&cfstr_Hfcharacterist_13.isa, self, v7, v8);
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasSameTargetAsAction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
    v9 = [v7 characteristic];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)containedAccessoryRepresentables
{
  v2 = MEMORY[0x277CBEA60];
  v3 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  v4 = [v3 service];
  v5 = [v2 na_arrayWithSafeObject:v4];

  return v5;
}

- (id)commitItem
{
  v3 = [(HFCharacteristicWriteActionBuilder *)self performValidation];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HFCharacteristicWriteActionBuilder_commitItem__block_invoke;
  v7[3] = &unk_277DF2CE0;
  v7[4] = self;
  v4 = [v3 flatMap:v7];
  v5 = [v4 recover:&__block_literal_global_96];

  return v5;
}

id __48__HFCharacteristicWriteActionBuilder_commitItem__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) action];

  if (v2)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__HFCharacteristicWriteActionBuilder_commitItem__block_invoke_2;
    v10[3] = &unk_277DF2C68;
    v10[4] = *(a1 + 32);
    v3 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__HFCharacteristicWriteActionBuilder_commitItem__block_invoke_3;
    v9[3] = &unk_277DF2CE0;
    v9[4] = *(a1 + 32);
    v4 = [v3 flatMap:v9];
  }

  else
  {
    v5 = [*(a1 + 32) createNewAction];
    [*(a1 + 32) setAction:v5];

    v6 = MEMORY[0x277D2C900];
    v7 = [*(a1 + 32) action];
    v4 = [v6 futureWithResult:v7];
  }

  return v4;
}

void __48__HFCharacteristicWriteActionBuilder_commitItem__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 action];
  v5 = [*(a1 + 32) targetValue];
  [v6 updateTargetValue:v5 completionHandler:v4];
}

id __48__HFCharacteristicWriteActionBuilder_commitItem__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) action];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

id __48__HFCharacteristicWriteActionBuilder_commitItem__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 hf_errorWithOperationType:@"HFOperationMediaSelection" failedItemName:0];
  v4 = [v2 futureWithError:v3];

  return v4;
}

+ (id)asCharacteristicWriteAction:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)compareToObject:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HFCharacteristicWriteActionBuilder;
  v5 = [(HFActionBuilder *)&v15 compareToObject:v4];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    v6 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
    v7 = [v6 uniqueIdentifier];
    v8 = [v4 characteristic];
    v9 = [v8 uniqueIdentifier];
    v10 = [HFPropertyDifference compareObjectA:v7 toObjectB:v9 key:@"characteristic.uniqueIdentifier" priority:3];
    [v5 add:v10];

    v11 = [(HFCharacteristicWriteActionBuilder *)self targetValue];
    v12 = [v4 targetValue];
    v13 = [HFPropertyDifference compareObjectA:v11 toObjectB:v12 key:@"targetValue" priority:3];
    [v5 add:v13];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  v4 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 hash];

  return v6 ^ v3;
}

@end