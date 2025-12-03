@interface HMDSetting
+ (id)logCategory;
+ (id)settingValueWithModel:(id)model;
- (BOOL)isValidValue:(id)value error:(id *)error;
- (BOOL)updateWithSettingValue:(id)value;
- (BOOL)wouldValueUpdate:(id)update;
- (HMDSetting)initWithCoder:(id)coder;
- (HMDSetting)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier name:(id)name properties:(id)properties type:(id)type value:(id)value constraints:(id)constraints;
- (HMDSetting)initWithModel:(id)model;
- (NSArray)constraints;
- (NSString)description;
- (id)constraintsByKeyPathWithCurrentKeyPath:(id)path;
- (id)logIdentifier;
- (id)value;
- (void)addConstraint:(id)constraint;
- (void)encodeWithCoder:(id)coder;
- (void)setConstraints:(id)constraints;
@end

@implementation HMDSetting

- (void)encodeWithCoder:(id)coder
{
  v19 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if ([coderCopy hmd_isForXPCTransport])
  {
    identifier = [(HMDSetting *)self identifier];
    [coderCopy encodeObject:identifier forKey:*MEMORY[0x277CCED58]];

    parentIdentifier = [(HMDSetting *)self parentIdentifier];
    [coderCopy encodeObject:parentIdentifier forKey:@"HMDSettingParentIdentifierCodingKey"];

    properties = [(HMDSetting *)self properties];
    [coderCopy encodeObject:properties forKey:*MEMORY[0x277CCED68]];

    name = [(HMDSetting *)self name];
    [coderCopy encodeObject:name forKey:*MEMORY[0x277CCED60]];

    constraints = [(HMDSetting *)self constraints];
    [coderCopy encodeObject:constraints forKey:*MEMORY[0x277CCED30]];

    value = [(HMDSetting *)self value];
    [coderCopy encodeObject:value forKey:*MEMORY[0x277CCEDA0]];

    type = [(HMDSetting *)self type];
    [coderCopy encodeObject:type forKey:*MEMORY[0x277CCED88]];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Did not encode setting as transport is not XPC.", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDSetting)initWithCoder:(id)coder
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

- (id)constraintsByKeyPathWithCurrentKeyPath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(HMDSetting *)self constraints];
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = MEMORY[0x277CCACA8];
        name = [v10 name];
        v13 = [v11 stringWithFormat:@"%@.%@", pathCopy, name];

        [dictionary setValue:v10 forKey:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = [dictionary copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)wouldValueUpdate:(id)update
{
  updateCopy = update;
  internalValue = [(HMDSetting *)self internalValue];
  v6 = [internalValue isEqual:updateCopy];

  return v6 ^ 1;
}

- (BOOL)isValidValue:(id)value error:(id *)error
{
  v117 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  selfCopy = self;
  v8 = valueCopy;
  type = [(HMDSetting *)selfCopy type];
  integerValue = [type integerValue];

  v11 = 0;
  if (integerValue > 2)
  {
    switch(integerValue)
    {
      case 3:
        if ([v8 type] == 3)
        {
          goto LABEL_61;
        }

        v52 = objc_autoreleasePoolPush();
        v53 = selfCopy;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = HMFGetLogIdentifier();
          v56 = selfCopy;
          v57 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "type")}];
          *buf = 138543618;
          v106 = v55;
          v107 = 2112;
          v108 = v57;
          v58 = "%{public}@Unexpected value type: %@ expected string";
LABEL_66:
          _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, v58, buf, 0x16u);

          selfCopy = v56;
        }

        break;
      case 4:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_61;
        }

        v52 = objc_autoreleasePoolPush();
        v53 = selfCopy;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = HMFGetLogIdentifier();
          *buf = 138543618;
          v106 = v55;
          v107 = 2112;
          v108 = objc_opt_class();
          v56 = selfCopy;
          v57 = v108;
          v58 = "%{public}@Unexpected value class: %@";
          goto LABEL_66;
        }

        break;
      case 5:
        v12 = objc_autoreleasePoolPush();
        v13 = selfCopy;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          *buf = 138543362;
          v106 = v15;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Value cannot be used for collection.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
LABEL_99:
        v11 = 0;
        goto LABEL_100;
      default:
        goto LABEL_100;
    }

LABEL_67:

    objc_autoreleasePoolPop(v52);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
      *error = v11 = 0;
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  if (integerValue == 1)
  {
    if ([v8 type] == 1)
    {
      goto LABEL_61;
    }

    v52 = objc_autoreleasePoolPush();
    v53 = selfCopy;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = HMFGetLogIdentifier();
      v56 = selfCopy;
      v57 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "type")}];
      *buf = 138543618;
      v106 = v55;
      v107 = 2112;
      v108 = v57;
      v58 = "%{public}@Unexpected value type: %@ expected data";
      goto LABEL_66;
    }

    goto LABEL_67;
  }

  if (integerValue != 2)
  {
    goto LABEL_100;
  }

  if ([v8 type] != 2)
  {
    v52 = objc_autoreleasePoolPush();
    v53 = selfCopy;
    v54 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      goto LABEL_67;
    }

    v55 = HMFGetLogIdentifier();
    v56 = selfCopy;
    v57 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "type")}];
    *buf = 138543618;
    v106 = v55;
    v107 = 2112;
    v108 = v57;
    v58 = "%{public}@Unexpected value class: %@ expected number";
    goto LABEL_66;
  }

  errorCopy = error;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = [(HMDSetting *)selfCopy constraints];
  v16 = [obj countByEnumeratingWithState:&v101 objects:buf count:16];
  if (!v16)
  {
    goto LABEL_53;
  }

  v17 = v16;
  context = *v102;
  v94 = v8;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v102 != context)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v101 + 1) + 8 * i);
      numberValue = [v8 numberValue];
      v21 = selfCopy;
      v22 = numberValue;
      v23 = v19;
      value = [(HMDSetting *)v21 value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = value;
      }

      else
      {
        v25 = 0;
      }

      v100 = v25;

      type2 = [v23 type];
      integerValue2 = [type2 integerValue];

      switch(integerValue2)
      {
        case 3:
          value2 = [v23 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v34 = value2;
          }

          else
          {
            v34 = 0;
          }

          v35 = v34;

          if (v35)
          {
            v31 = v100;
            if (!v22)
            {
              v64 = objc_autoreleasePoolPush();
              v65 = v21;
              v66 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
              {
                HMFGetLogIdentifier();
                v68 = v67 = selfCopy;
                value3 = [v23 value];
                *v109 = 138543618;
                v110 = v68;
                v111 = 2112;
                v112 = value3;
                _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@Value is nil but have step value constraint: %@", v109, 0x16u);

                selfCopy = v67;
              }

              objc_autoreleasePoolPop(v64);
              v22 = 0;
              v31 = v100;
              goto LABEL_97;
            }

            [v22 doubleValue];
            v37 = v36;
            [v100 doubleValue];
            v39 = vabdd_f64(v37, v38);
            [v35 doubleValue];
            v41 = fmod(v39, v40);
            if (v41 > 0.00000011920929)
            {
              [v35 doubleValue];
              if (v41 < v42 + -0.00000011920929)
              {
                contextc = objc_autoreleasePoolPush();
                v87 = v21;
                v88 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                {
                  v90 = HMFGetLogIdentifier();
                  *v109 = 138544130;
                  v110 = v90;
                  v111 = 2112;
                  v112 = v22;
                  v113 = 2112;
                  v114 = v35;
                  v115 = 2112;
                  v116 = v100;
                  _os_log_impl(&dword_2531F8000, v88, OS_LOG_TYPE_DEFAULT, "%{public}@Value, %@, does not conform to step, %@, from current value: %@", v109, 0x2Au);

                  v31 = v100;
                }

                objc_autoreleasePoolPop(contextc);
                v75 = errorCopy;
                if (errorCopy)
                {
                  v81 = MEMORY[0x277CCA9B8];
                  v82 = 43;
LABEL_95:
                  v76 = [v81 hmErrorWithCode:v82];
LABEL_96:
                  *v75 = v76;
                }

LABEL_97:

LABEL_98:
                goto LABEL_99;
              }
            }
          }

          else
          {
            value2 = 0;
            v31 = v100;
          }

          break;
        case 2:
          value2 = [v23 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = value2;
          }

          else
          {
            v32 = 0;
          }

          v33 = v32;

          if (!v33)
          {
            v43 = objc_autoreleasePoolPush();
            v44 = v21;
            v45 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = HMFGetLogIdentifier();
              [v23 value];
              v48 = v47 = selfCopy;
              *v109 = 138543618;
              v110 = v46;
              v111 = 2112;
              v112 = v48;
              v49 = v45;
              v50 = "%{public}@Invalid maximum constraint value: %@";
              goto LABEL_48;
            }

LABEL_49:
            v31 = v100;

            objc_autoreleasePoolPop(v43);
            value2 = 0;
            break;
          }

          if (!v22)
          {
            v70 = objc_autoreleasePoolPush();
            v71 = v21;
            v72 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              v73 = HMFGetLogIdentifier();
              *v109 = 138543874;
              v110 = v73;
              v111 = 2112;
              v112 = 0;
              v113 = 2112;
              v114 = v33;
              v74 = "%{public}@Value is %@, but have maximum value constraint: %@";
              goto LABEL_79;
            }

LABEL_80:

            objc_autoreleasePoolPop(v70);
            v75 = errorCopy;
            v31 = v100;
            if (errorCopy)
            {
              v76 = [MEMORY[0x277CCA9B8] hmErrorWithCode:44];
              v22 = 0;
              goto LABEL_96;
            }

            v22 = 0;
            goto LABEL_97;
          }

          v31 = v100;
          if ([v22 compare:v33] == 1)
          {
            contextb = objc_autoreleasePoolPush();
            v77 = v21;
            v78 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              v80 = HMFGetLogIdentifier();
              *v109 = 138543874;
              v110 = v80;
              v111 = 2112;
              v112 = v22;
              v113 = 2112;
              v114 = v33;
              _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_DEFAULT, "%{public}@Value, %@, more than maximum value: %@", v109, 0x20u);

              v31 = v100;
            }

            objc_autoreleasePoolPop(contextb);
            v75 = errorCopy;
            if (errorCopy)
            {
              v81 = MEMORY[0x277CCA9B8];
              v82 = 45;
              goto LABEL_95;
            }

            goto LABEL_97;
          }

          break;
        case 1:
          value2 = [v23 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = value2;
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;

          if (!v30)
          {
            v43 = objc_autoreleasePoolPush();
            v51 = v21;
            v45 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = HMFGetLogIdentifier();
              [v23 value];
              v48 = v47 = selfCopy;
              *v109 = 138543618;
              v110 = v46;
              v111 = 2112;
              v112 = v48;
              v49 = v45;
              v50 = "%{public}@Invalid minimum constraint value: %@";
LABEL_48:
              _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_DEFAULT, v50, v109, 0x16u);

              selfCopy = v47;
              v8 = v94;
            }

            goto LABEL_49;
          }

          if (!v22)
          {
            v70 = objc_autoreleasePoolPush();
            v71 = v21;
            v72 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              v73 = HMFGetLogIdentifier();
              *v109 = 138543874;
              v110 = v73;
              v111 = 2112;
              v112 = 0;
              v113 = 2112;
              v114 = v30;
              v74 = "%{public}@Value is %@, but have minimum value constraint: %@";
LABEL_79:
              _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_DEFAULT, v74, v109, 0x20u);
            }

            goto LABEL_80;
          }

          v31 = v100;
          if ([v22 compare:v30] == -1)
          {
            contexta = objc_autoreleasePoolPush();
            v83 = v21;
            v84 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
            {
              v86 = HMFGetLogIdentifier();
              *v109 = 138543874;
              v110 = v86;
              v111 = 2112;
              v112 = v22;
              v113 = 2112;
              v114 = v30;
              _os_log_impl(&dword_2531F8000, v84, OS_LOG_TYPE_DEFAULT, "%{public}@Value, %@, less than minimum value: %@", v109, 0x20u);

              v31 = v100;
            }

            objc_autoreleasePoolPop(contexta);
            v75 = errorCopy;
            if (errorCopy)
            {
              v81 = MEMORY[0x277CCA9B8];
              v82 = 44;
              goto LABEL_95;
            }

            goto LABEL_97;
          }

          break;
        default:
          v59 = objc_autoreleasePoolPush();
          v60 = v21;
          v61 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v63 = v62 = selfCopy;
            *v109 = 138543618;
            v110 = v63;
            v111 = 2112;
            v112 = v22;
            _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_ERROR, "%{public}@Did not understand value %@", v109, 0x16u);

            selfCopy = v62;
          }

          objc_autoreleasePoolPop(v59);
          v31 = v100;
          goto LABEL_98;
      }
    }

    v17 = [obj countByEnumeratingWithState:&v101 objects:buf count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_53:

LABEL_61:
  v11 = 1;
LABEL_100:

  v91 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HMDSetting *)self identifier];
  uUIDString = [identifier UUIDString];
  name = [(HMDSetting *)self name];
  v7 = [v3 stringWithFormat:@"%@/%@", uUIDString, name];

  return v7;
}

- (BOOL)updateWithSettingValue:(id)value
{
  v26 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (![(HMDSetting *)self isValidValue:valueCopy error:0])
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = valueCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Received value is not valid %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    goto LABEL_9;
  }

  if (![(HMDSetting *)self wouldValueUpdate:valueCopy])
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v5 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [(HMDSetting *)selfCopy2 name];
    internalValue = [(HMDSetting *)selfCopy2 internalValue];
    v18 = 138544130;
    v19 = v8;
    v20 = 2112;
    v21 = name;
    v22 = 2112;
    v23 = internalValue;
    v24 = 2112;
    v25 = valueCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating setting %@ in transaction from %@ to %@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDSetting *)selfCopy2 setInternalValue:valueCopy];
  v11 = 1;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)addConstraint:(id)constraint
{
  constraintCopy = constraint;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_constraints addObject:constraintCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setConstraints:(id)constraints
{
  constraintsCopy = constraints;
  os_unfair_lock_lock_with_options();
  v4 = [constraintsCopy mutableCopy];
  constraints = self->_constraints;
  self->_constraints = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)constraints
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_constraints copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)value
{
  internalValue = [(HMDSetting *)self internalValue];
  type = [internalValue type];
  v4 = 0;
  if (type <= 2)
  {
    if (type == 1)
    {
      dataValue = [internalValue dataValue];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_11;
      }

      dataValue = [internalValue numberValue];
    }

    goto LABEL_10;
  }

  if (type == 3)
  {
    dataValue = [internalValue stringValue];
LABEL_10:
    v4 = dataValue;
    goto LABEL_11;
  }

  if (type == 4)
  {
    v6 = [HMDSettingValueSelectionItem alloc];
    selectionIdentifier = [internalValue selectionIdentifier];
    selectionValue = [internalValue selectionValue];
    v4 = [(HMDSettingValueSelectionItem *)v6 initWithIdentifier:selectionIdentifier selection:selectionValue];
  }

LABEL_11:

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(HMDSetting *)self name];
  identifier = [(HMDSetting *)self identifier];
  internalValue = [(HMDSetting *)self internalValue];
  v7 = [v3 stringWithFormat:@"[HMDSetting: %@/%@ - %@]", name, identifier, internalValue];

  return v7;
}

- (HMDSetting)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier name:(id)name properties:(id)properties type:(id)type value:(id)value constraints:(id)constraints
{
  identifierCopy = identifier;
  parentIdentifierCopy = parentIdentifier;
  nameCopy = name;
  propertiesCopy = properties;
  typeCopy = type;
  valueCopy = value;
  constraintsCopy = constraints;
  v38.receiver = self;
  v38.super_class = HMDSetting;
  v22 = [(HMDSetting *)&v38 init];
  if (v22)
  {
    v23 = [identifierCopy copy];
    identifier = v22->_identifier;
    v22->_identifier = v23;

    v25 = [parentIdentifierCopy copy];
    parentIdentifier = v22->_parentIdentifier;
    v22->_parentIdentifier = v25;

    v27 = [nameCopy copy];
    name = v22->_name;
    v22->_name = v27;

    v29 = [nameCopy copy];
    keyPath = v22->_keyPath;
    v22->_keyPath = v29;

    v31 = [typeCopy copy];
    type = v22->_type;
    v22->_type = v31;

    objc_storeStrong(&v22->_internalValue, value);
    v33 = [propertiesCopy copy];
    properties = v22->_properties;
    v22->_properties = v33;

    v35 = [constraintsCopy mutableCopy];
    constraints = v22->_constraints;
    v22->_constraints = v35;
  }

  return v22;
}

- (HMDSetting)initWithModel:(id)model
{
  modelCopy = model;
  v5 = [HMDSetting settingValueWithModel:modelCopy];
  hmbModelID = [modelCopy hmbModelID];
  hmbParentModelID = [modelCopy hmbParentModelID];
  name = [modelCopy name];
  properties = [modelCopy properties];
  type = [modelCopy type];

  v11 = [(HMDSetting *)self initWithIdentifier:hmbModelID parentIdentifier:hmbParentModelID name:name properties:properties type:type value:v5 constraints:MEMORY[0x277CBEBF8]];
  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7, &__block_literal_global_153);
  }

  v3 = logCategory__hmf_once_v8;

  return v3;
}

uint64_t __25__HMDSetting_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v8 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)settingValueWithModel:(id)model
{
  v23 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  type = [modelCopy type];
  integerValue = [type integerValue];
  if (integerValue > 2)
  {
    if (integerValue == 4)
    {
      selectionIdentifier = [modelCopy selectionIdentifier];
      selectionValue = [modelCopy selectionValue];
LABEL_13:
      dataValue = 0;
      goto LABEL_14;
    }

    if (integerValue == 3)
    {
      stringValue = [modelCopy stringValue];
      selectionValue = 0;
      selectionIdentifier = 0;
      dataValue = 0;
      numberValue = 0;
      goto LABEL_16;
    }

LABEL_8:
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = modelCopy;
      v21 = 2112;
      v22 = type;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine type of setting value for model %@ of type %@.", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    selectionValue = 0;
    selectionIdentifier = 0;
    goto LABEL_13;
  }

  if (integerValue == 1)
  {
    dataValue = [modelCopy dataValue];
    selectionValue = 0;
    selectionIdentifier = 0;
LABEL_14:
    numberValue = 0;
    goto LABEL_15;
  }

  if (integerValue != 2)
  {
    goto LABEL_8;
  }

  numberValue = [modelCopy numberValue];
  selectionValue = 0;
  selectionIdentifier = 0;
  dataValue = 0;
LABEL_15:
  stringValue = 0;
LABEL_16:
  v14 = [objc_alloc(MEMORY[0x277CD1DD0]) initWithType:objc_msgSend(type stringValue:"integerValue") numberValue:stringValue dataValue:numberValue selectionIdentifier:dataValue selectionValue:{selectionIdentifier, selectionValue}];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end