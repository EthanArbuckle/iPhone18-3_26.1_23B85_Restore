@interface HMDSetting
+ (id)logCategory;
+ (id)settingValueWithModel:(id)a3;
- (BOOL)isValidValue:(id)a3 error:(id *)a4;
- (BOOL)updateWithSettingValue:(id)a3;
- (BOOL)wouldValueUpdate:(id)a3;
- (HMDSetting)initWithCoder:(id)a3;
- (HMDSetting)initWithIdentifier:(id)a3 parentIdentifier:(id)a4 name:(id)a5 properties:(id)a6 type:(id)a7 value:(id)a8 constraints:(id)a9;
- (HMDSetting)initWithModel:(id)a3;
- (NSArray)constraints;
- (NSString)description;
- (id)constraintsByKeyPathWithCurrentKeyPath:(id)a3;
- (id)logIdentifier;
- (id)value;
- (void)addConstraint:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setConstraints:(id)a3;
@end

@implementation HMDSetting

- (void)encodeWithCoder:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hmd_isForXPCTransport])
  {
    v5 = [(HMDSetting *)self identifier];
    [v4 encodeObject:v5 forKey:*MEMORY[0x277CCED58]];

    v6 = [(HMDSetting *)self parentIdentifier];
    [v4 encodeObject:v6 forKey:@"HMDSettingParentIdentifierCodingKey"];

    v7 = [(HMDSetting *)self properties];
    [v4 encodeObject:v7 forKey:*MEMORY[0x277CCED68]];

    v8 = [(HMDSetting *)self name];
    [v4 encodeObject:v8 forKey:*MEMORY[0x277CCED60]];

    v9 = [(HMDSetting *)self constraints];
    [v4 encodeObject:v9 forKey:*MEMORY[0x277CCED30]];

    v10 = [(HMDSetting *)self value];
    [v4 encodeObject:v10 forKey:*MEMORY[0x277CCEDA0]];

    v11 = [(HMDSetting *)self type];
    [v4 encodeObject:v11 forKey:*MEMORY[0x277CCED88]];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
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

- (HMDSetting)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)constraintsByKeyPathWithCurrentKeyPath:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
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
        v12 = [v10 name];
        v13 = [v11 stringWithFormat:@"%@.%@", v4, v12];

        [v5 setValue:v10 forKey:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)wouldValueUpdate:(id)a3
{
  v4 = a3;
  v5 = [(HMDSetting *)self internalValue];
  v6 = [v5 isEqual:v4];

  return v6 ^ 1;
}

- (BOOL)isValidValue:(id)a3 error:(id *)a4
{
  v117 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self;
  v8 = v6;
  v9 = [(HMDSetting *)v7 type];
  v10 = [v9 integerValue];

  v11 = 0;
  if (v10 > 2)
  {
    switch(v10)
    {
      case 3:
        if ([v8 type] == 3)
        {
          goto LABEL_61;
        }

        v52 = objc_autoreleasePoolPush();
        v53 = v7;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = HMFGetLogIdentifier();
          v56 = v7;
          v57 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "type")}];
          *buf = 138543618;
          v106 = v55;
          v107 = 2112;
          v108 = v57;
          v58 = "%{public}@Unexpected value type: %@ expected string";
LABEL_66:
          _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, v58, buf, 0x16u);

          v7 = v56;
        }

        break;
      case 4:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_61;
        }

        v52 = objc_autoreleasePoolPush();
        v53 = v7;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = HMFGetLogIdentifier();
          *buf = 138543618;
          v106 = v55;
          v107 = 2112;
          v108 = objc_opt_class();
          v56 = v7;
          v57 = v108;
          v58 = "%{public}@Unexpected value class: %@";
          goto LABEL_66;
        }

        break;
      case 5:
        v12 = objc_autoreleasePoolPush();
        v13 = v7;
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
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
      *a4 = v11 = 0;
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  if (v10 == 1)
  {
    if ([v8 type] == 1)
    {
      goto LABEL_61;
    }

    v52 = objc_autoreleasePoolPush();
    v53 = v7;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = HMFGetLogIdentifier();
      v56 = v7;
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

  if (v10 != 2)
  {
    goto LABEL_100;
  }

  if ([v8 type] != 2)
  {
    v52 = objc_autoreleasePoolPush();
    v53 = v7;
    v54 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      goto LABEL_67;
    }

    v55 = HMFGetLogIdentifier();
    v56 = v7;
    v57 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "type")}];
    *buf = 138543618;
    v106 = v55;
    v107 = 2112;
    v108 = v57;
    v58 = "%{public}@Unexpected value class: %@ expected number";
    goto LABEL_66;
  }

  v93 = a4;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = [(HMDSetting *)v7 constraints];
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
      v20 = [v8 numberValue];
      v21 = v7;
      v22 = v20;
      v23 = v19;
      v24 = [(HMDSetting *)v21 value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v100 = v25;

      v26 = [v23 type];
      v27 = [v26 integerValue];

      switch(v27)
      {
        case 3:
          v28 = [v23 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v34 = v28;
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
                v68 = v67 = v7;
                v69 = [v23 value];
                *v109 = 138543618;
                v110 = v68;
                v111 = 2112;
                v112 = v69;
                _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@Value is nil but have step value constraint: %@", v109, 0x16u);

                v7 = v67;
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
                v75 = v93;
                if (v93)
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
            v28 = 0;
            v31 = v100;
          }

          break;
        case 2:
          v28 = [v23 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = v28;
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
              v48 = v47 = v7;
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
            v28 = 0;
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
            v75 = v93;
            v31 = v100;
            if (v93)
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
            v75 = v93;
            if (v93)
            {
              v81 = MEMORY[0x277CCA9B8];
              v82 = 45;
              goto LABEL_95;
            }

            goto LABEL_97;
          }

          break;
        case 1:
          v28 = [v23 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = v28;
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
              v48 = v47 = v7;
              *v109 = 138543618;
              v110 = v46;
              v111 = 2112;
              v112 = v48;
              v49 = v45;
              v50 = "%{public}@Invalid minimum constraint value: %@";
LABEL_48:
              _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_DEFAULT, v50, v109, 0x16u);

              v7 = v47;
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
            v75 = v93;
            if (v93)
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
            v63 = v62 = v7;
            *v109 = 138543618;
            v110 = v63;
            v111 = 2112;
            v112 = v22;
            _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_ERROR, "%{public}@Did not understand value %@", v109, 0x16u);

            v7 = v62;
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
  v4 = [(HMDSetting *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [(HMDSetting *)self name];
  v7 = [v3 stringWithFormat:@"%@/%@", v5, v6];

  return v7;
}

- (BOOL)updateWithSettingValue:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(HMDSetting *)self isValidValue:v4 error:0])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Received value is not valid %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    goto LABEL_9;
  }

  if (![(HMDSetting *)self wouldValueUpdate:v4])
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDSetting *)v6 name];
    v10 = [(HMDSetting *)v6 internalValue];
    v18 = 138544130;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating setting %@ in transaction from %@ to %@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDSetting *)v6 setInternalValue:v4];
  v11 = 1;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)addConstraint:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_constraints addObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setConstraints:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 mutableCopy];
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
  v2 = [(HMDSetting *)self internalValue];
  v3 = [v2 type];
  v4 = 0;
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v5 = [v2 dataValue];
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_11;
      }

      v5 = [v2 numberValue];
    }

    goto LABEL_10;
  }

  if (v3 == 3)
  {
    v5 = [v2 stringValue];
LABEL_10:
    v4 = v5;
    goto LABEL_11;
  }

  if (v3 == 4)
  {
    v6 = [HMDSettingValueSelectionItem alloc];
    v7 = [v2 selectionIdentifier];
    v8 = [v2 selectionValue];
    v4 = [(HMDSettingValueSelectionItem *)v6 initWithIdentifier:v7 selection:v8];
  }

LABEL_11:

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDSetting *)self name];
  v5 = [(HMDSetting *)self identifier];
  v6 = [(HMDSetting *)self internalValue];
  v7 = [v3 stringWithFormat:@"[HMDSetting: %@/%@ - %@]", v4, v5, v6];

  return v7;
}

- (HMDSetting)initWithIdentifier:(id)a3 parentIdentifier:(id)a4 name:(id)a5 properties:(id)a6 type:(id)a7 value:(id)a8 constraints:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v38.receiver = self;
  v38.super_class = HMDSetting;
  v22 = [(HMDSetting *)&v38 init];
  if (v22)
  {
    v23 = [v15 copy];
    identifier = v22->_identifier;
    v22->_identifier = v23;

    v25 = [v16 copy];
    parentIdentifier = v22->_parentIdentifier;
    v22->_parentIdentifier = v25;

    v27 = [v17 copy];
    name = v22->_name;
    v22->_name = v27;

    v29 = [v17 copy];
    keyPath = v22->_keyPath;
    v22->_keyPath = v29;

    v31 = [v19 copy];
    type = v22->_type;
    v22->_type = v31;

    objc_storeStrong(&v22->_internalValue, a8);
    v33 = [v18 copy];
    properties = v22->_properties;
    v22->_properties = v33;

    v35 = [v21 mutableCopy];
    constraints = v22->_constraints;
    v22->_constraints = v35;
  }

  return v22;
}

- (HMDSetting)initWithModel:(id)a3
{
  v4 = a3;
  v5 = [HMDSetting settingValueWithModel:v4];
  v6 = [v4 hmbModelID];
  v7 = [v4 hmbParentModelID];
  v8 = [v4 name];
  v9 = [v4 properties];
  v10 = [v4 type];

  v11 = [(HMDSetting *)self initWithIdentifier:v6 parentIdentifier:v7 name:v8 properties:v9 type:v10 value:v5 constraints:MEMORY[0x277CBEBF8]];
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

+ (id)settingValueWithModel:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 type];
  v5 = [v4 integerValue];
  if (v5 > 2)
  {
    if (v5 == 4)
    {
      v8 = [v3 selectionIdentifier];
      v7 = [v3 selectionValue];
LABEL_13:
      v9 = 0;
      goto LABEL_14;
    }

    if (v5 == 3)
    {
      v10 = [v3 stringValue];
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v6 = 0;
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
      v20 = v3;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine type of setting value for model %@ of type %@.", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v7 = 0;
    v8 = 0;
    goto LABEL_13;
  }

  if (v5 == 1)
  {
    v9 = [v3 dataValue];
    v7 = 0;
    v8 = 0;
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if (v5 != 2)
  {
    goto LABEL_8;
  }

  v6 = [v3 numberValue];
  v7 = 0;
  v8 = 0;
  v9 = 0;
LABEL_15:
  v10 = 0;
LABEL_16:
  v14 = [objc_alloc(MEMORY[0x277CD1DD0]) initWithType:objc_msgSend(v4 stringValue:"integerValue") numberValue:v10 dataValue:v6 selectionIdentifier:v9 selectionValue:{v8, v7}];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end