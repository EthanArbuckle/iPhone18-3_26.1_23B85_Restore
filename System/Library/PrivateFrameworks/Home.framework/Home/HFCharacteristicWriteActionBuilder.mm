@interface HFCharacteristicWriteActionBuilder
+ (id)asCharacteristicWriteAction:(id)action;
- (BOOL)canUpdateWithActionBuilder:(id)builder;
- (BOOL)hasSameTargetAsAction:(id)action;
- (BOOL)requiresDeviceUnlock;
- (BOOL)updateWithActionBuilder:(id)builder;
- (HFCharacteristicWriteActionBuilder)initWithExistingObject:(id)object inHome:(id)home;
- (id)commitItem;
- (id)compareToObject:(id)object;
- (id)containedAccessoryRepresentables;
- (id)copyForCreatingNewAction;
- (id)createNewAction;
- (id)description;
- (unint64_t)hash;
- (void)_logInvalidNumberTargetValue:(void *)value foundClosestValidValue:(void *)validValue metadata:;
- (void)_logInvalidNumericTargetValue:(void *)value clamped:(int)clamped valid:(void *)valid metadata:;
- (void)_validateAndSetTargetValue:(id *)value;
- (void)setCharacteristic:(id)characteristic;
- (void)setTargetValue:(id)value;
@end

@implementation HFCharacteristicWriteActionBuilder

- (HFCharacteristicWriteActionBuilder)initWithExistingObject:(id)object inHome:(id)home
{
  v13.receiver = self;
  v13.super_class = HFCharacteristicWriteActionBuilder;
  v4 = [(HFItemBuilder *)&v13 initWithExistingObject:object inHome:home];
  v5 = v4;
  if (v4)
  {
    action = [(HFActionBuilder *)v4 action];
    characteristic = [action characteristic];
    characteristic = v5->_characteristic;
    v5->_characteristic = characteristic;

    action2 = [(HFActionBuilder *)v5 action];
    targetValue = [action2 targetValue];
    targetValue = v5->_targetValue;
    v5->_targetValue = targetValue;
  }

  return v5;
}

- (id)copyForCreatingNewAction
{
  v3 = objc_alloc(objc_opt_class());
  home = [(HFItemBuilder *)self home];
  v5 = [v3 initWithHome:home];

  characteristic = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  [v5 setCharacteristic:characteristic];

  targetValue = [(HFCharacteristicWriteActionBuilder *)self targetValue];
  [v5 setTargetValue:targetValue];

  return v5;
}

- (void)setCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  action = [(HFActionBuilder *)self action];

  if (action)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFActionBuilder.m" lineNumber:211 description:@"Cannot change the characteristic for an existing action!"];
  }

  characteristic = self->_characteristic;
  self->_characteristic = characteristicCopy;

  targetValue = [(HFCharacteristicWriteActionBuilder *)self targetValue];
  [(HFCharacteristicWriteActionBuilder *)&self->super.super.super.isa _validateAndSetTargetValue:targetValue];
}

- (void)_validateAndSetTargetValue:(id *)value
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (value)
  {
    characteristic = [value characteristic];

    if (characteristic)
    {
      if (v4)
      {
        characteristic2 = [value characteristic];
        metadata = [characteristic2 metadata];

        if (!metadata)
        {
          objc_storeStrong(value + 4, a2);
          v9 = HFLogForCategory(0x2BuLL);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            v66 = objc_opt_class();
            v67 = NSStringFromClass(v66);
            characteristic3 = [value characteristic];
            *buf = 138543874;
            v79 = v67;
            v80 = 2112;
            v81 = v4;
            v82 = 2112;
            v83 = characteristic3;
            _os_log_fault_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_FAULT, "%{public}@ tried to validate target value %@ but missing metadata on characteristic %@", buf, 0x20u);
          }

          goto LABEL_54;
        }

        if ([metadata hf_isValidValue:v4])
        {
          objc_storeStrong(value + 4, a2);
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
          characteristic4 = [value characteristic];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138413058;
          v79 = v15;
          v80 = 2112;
          v81 = v10;
          v82 = 2112;
          v83 = characteristic4;
          v84 = 2112;
          v85 = callStackSymbols;
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

        format = [metadata format];
        v23 = [format isEqualToString:*MEMORY[0x277CCF6B0]];

        if (v23 && (isKindOfClass & 1) != 0)
        {
          v24 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v21, "integerValue") > 0}];
          v25 = value[4];
          value[4] = v24;
LABEL_22:

LABEL_53:
          goto LABEL_54;
        }

        if ([metadata hf_isNumeric])
        {
          minimumValue = [metadata minimumValue];
          if (minimumValue)
          {
            v27 = minimumValue;
            maximumValue = [metadata maximumValue];
            v29 = v18;
            v30 = metadata;
            v31 = (maximumValue != 0) & isKindOfClass;

            v32 = v31 == 1;
            metadata = v30;
            v18 = v29;
            if (v32)
            {
              minimumValue2 = [metadata minimumValue];
              [minimumValue2 doubleValue];
              v35 = v34;

              [v21 doubleValue];
              v37 = v36;
              maximumValue2 = [metadata maximumValue];
              [maximumValue2 doubleValue];
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
              v43 = [metadata hf_isValidValue:v42];
              [(HFCharacteristicWriteActionBuilder *)value _logInvalidNumericTargetValue:v21 clamped:v42 valid:v43 metadata:metadata];
              if (v43)
              {
                goto LABEL_60;
              }
            }
          }
        }

        validValues = [metadata validValues];
        if (validValues && [metadata hf_isNumeric])
        {

          if (isKindOfClass)
          {
            v71 = v18;
            v72 = metadata;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            validValues2 = [metadata validValues];
            v46 = [validValues2 countByEnumeratingWithState:&v73 objects:v77 count:16];
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
                    objc_enumerationMutation(validValues2);
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

                v47 = [validValues2 countByEnumeratingWithState:&v73 objects:v77 count:16];
              }

              while (v47);
            }

            else
            {
              v42 = 0;
            }

            metadata = v72;
            [(HFCharacteristicWriteActionBuilder *)value _logInvalidNumberTargetValue:v21 foundClosestValidValue:v42 metadata:v72];
            v18 = v71;
            if (v42)
            {
LABEL_60:
              v25 = value[4];
              value[4] = v42;
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
            characteristic5 = [value characteristic];
            callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
            *buf = 138413058;
            v79 = v62;
            v80 = 2112;
            v81 = characteristic5;
            v82 = 2112;
            v83 = v57;
            v84 = 2112;
            v85 = callStackSymbols2;
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

        objc_storeStrong(value + 4, a2);
        goto LABEL_53;
      }

      v8 = value[4];
      value[4] = 0;
    }

    else
    {
      objc_storeStrong(value + 4, a2);
    }
  }

LABEL_55:

  v65 = *MEMORY[0x277D85DE8];
}

- (void)setTargetValue:(id)value
{
  valueCopy = value;
  v6 = valueCopy;
  if (self->_targetValue != valueCopy)
  {
    v9 = valueCopy;
    if (!valueCopy)
    {
      action = [(HFActionBuilder *)self action];

      if (action)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"HFActionBuilder.m" lineNumber:219 description:@"Cannot set target value to nil for an existing action!"];
      }
    }

    [(HFCharacteristicWriteActionBuilder *)&self->super.super.super.isa _validateAndSetTargetValue:v9];
    v6 = v9;
  }
}

- (void)_logInvalidNumericTargetValue:(void *)value clamped:(int)clamped valid:(void *)valid metadata:
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a2;
  valueCopy = value;
  validCopy = valid;
  v12 = +[HFUtilities hasInternalDiagnostics];
  v13 = HFLogForCategory(0x2BuLL);
  v14 = v13;
  if (!v12)
  {
    v20 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (clamped)
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

  if (!clamped)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v24 = objc_opt_class();
    v16 = NSStringFromClass(v24);
    characteristic = [self characteristic];
    minimumValue = [validCopy minimumValue];
    maximumValue = [validCopy maximumValue];
    v27 = 138544386;
    v28 = v16;
    v29 = 2112;
    v30 = characteristic;
    v31 = 2112;
    v32 = minimumValue;
    v33 = 2112;
    v34 = maximumValue;
    v35 = 2112;
    v36 = valueCopy;
    _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "%{public}@ for %@: Failed to clamp to (%@, %@) as it produced an invalid value %@", &v27, 0x34u);
    goto LABEL_5;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    characteristic = [self characteristic];
    minimumValue = [validCopy minimumValue];
    maximumValue = [validCopy maximumValue];
    v27 = 138413314;
    v28 = v16;
    v29 = 2112;
    v30 = characteristic;
    v31 = 2112;
    v32 = minimumValue;
    v33 = 2112;
    v34 = maximumValue;
    v35 = 2112;
    v36 = valueCopy;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "%@ for %@: Clamping to (%@, %@) resulting in %@", &v27, 0x34u);
LABEL_5:
  }

LABEL_14:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_logInvalidNumberTargetValue:(void *)value foundClosestValidValue:(void *)validValue metadata:
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  valueCopy = value;
  validValueCopy = validValue;
  v10 = +[HFUtilities hasInternalDiagnostics];
  v11 = HFLogForCategory(0x2BuLL);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      characteristic = [self characteristic];
      v19 = 138544130;
      v20 = v14;
      v21 = 2112;
      v22 = characteristic;
      v23 = 2112;
      v24 = valueCopy;
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
  characteristic = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  characteristicType = [characteristic characteristicType];

  if (+[HFUtilities hasInternalDiagnostics])
  {
    v5 = [MEMORY[0x277CD1970] localizedDescriptionForCharacteristicType:characteristicType];
    lowercaseString = [v5 lowercaseString];
  }

  else
  {
    lowercaseString = @"<redacted>";
  }

  v7 = MEMORY[0x277CCACA8];
  targetValue = [(HFCharacteristicWriteActionBuilder *)self targetValue];
  characteristic2 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  service = [characteristic2 service];
  name = [service name];
  characteristic3 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  service2 = [characteristic3 service];
  uniqueIdentifier = [service2 uniqueIdentifier];
  v15 = [v7 stringWithFormat:@"<characteristic %@ set to targetValue: %@ in service: '%@' (%@)>", lowercaseString, targetValue, name, uniqueIdentifier];

  return v15;
}

- (BOOL)canUpdateWithActionBuilder:(id)builder
{
  builderCopy = builder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = builderCopy;
    characteristic = [v5 characteristic];
    characteristic2 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
    if ([characteristic isEqual:characteristic2])
    {
      targetValue = [v5 targetValue];
      v9 = targetValue != 0;
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

- (BOOL)updateWithActionBuilder:(id)builder
{
  builderCopy = builder;
  if ([(HFCharacteristicWriteActionBuilder *)self canUpdateWithActionBuilder:builderCopy])
  {
    v5 = builderCopy;
    targetValue = [v5 targetValue];
    targetValue2 = [(HFCharacteristicWriteActionBuilder *)self targetValue];

    v8 = targetValue == targetValue2;
    v9 = targetValue != targetValue2;
    if (!v8)
    {
      targetValue3 = [v5 targetValue];
      [(HFCharacteristicWriteActionBuilder *)self setTargetValue:targetValue3];
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
  characteristic = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  requiresDeviceUnlock = [characteristic requiresDeviceUnlock];

  return requiresDeviceUnlock;
}

- (id)createNewAction
{
  characteristic = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  if (characteristic && (v4 = characteristic, [(HFCharacteristicWriteActionBuilder *)self targetValue], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = objc_alloc(MEMORY[0x277CD19A8]);
    characteristic2 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
    targetValue = [(HFCharacteristicWriteActionBuilder *)self targetValue];
    v9 = [v6 initWithCharacteristic:characteristic2 targetValue:targetValue];
  }

  else
  {
    characteristic2 = [(HFCharacteristicWriteActionBuilder *)self characteristic];
    targetValue = [(HFCharacteristicWriteActionBuilder *)self targetValue];
    NSLog(&cfstr_Hfcharacterist_13.isa, self, characteristic2, targetValue);
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasSameTargetAsAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  v5 = actionCopy;
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
    characteristic = [(HFCharacteristicWriteActionBuilder *)self characteristic];
    characteristic2 = [v7 characteristic];
    v10 = [characteristic isEqual:characteristic2];
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
  characteristic = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  service = [characteristic service];
  v5 = [v2 na_arrayWithSafeObject:service];

  return v5;
}

- (id)commitItem
{
  performValidation = [(HFCharacteristicWriteActionBuilder *)self performValidation];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HFCharacteristicWriteActionBuilder_commitItem__block_invoke;
  v7[3] = &unk_277DF2CE0;
  v7[4] = self;
  v4 = [performValidation flatMap:v7];
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

+ (id)asCharacteristicWriteAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  v4 = actionCopy;
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

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = HFCharacteristicWriteActionBuilder;
  v5 = [(HFActionBuilder *)&v15 compareToObject:objectCopy];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    characteristic = [(HFCharacteristicWriteActionBuilder *)self characteristic];
    uniqueIdentifier = [characteristic uniqueIdentifier];
    characteristic2 = [objectCopy characteristic];
    uniqueIdentifier2 = [characteristic2 uniqueIdentifier];
    v10 = [HFPropertyDifference compareObjectA:uniqueIdentifier toObjectB:uniqueIdentifier2 key:@"characteristic.uniqueIdentifier" priority:3];
    [v5 add:v10];

    targetValue = [(HFCharacteristicWriteActionBuilder *)self targetValue];
    targetValue2 = [objectCopy targetValue];
    v13 = [HFPropertyDifference compareObjectA:targetValue toObjectB:targetValue2 key:@"targetValue" priority:3];
    [v5 add:v13];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  characteristic = [(HFCharacteristicWriteActionBuilder *)self characteristic];
  uniqueIdentifier = [characteristic uniqueIdentifier];
  v6 = [uniqueIdentifier hash];

  return v6 ^ v3;
}

@end