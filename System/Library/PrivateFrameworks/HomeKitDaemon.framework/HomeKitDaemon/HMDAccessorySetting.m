@interface HMDAccessorySetting
+ (id)decodedValue:(id)a3 error:(id *)a4;
+ (id)logCategory;
+ (id)supportedConstraintClasses;
+ (id)supportedValueClasses;
- (BOOL)canAddConstraint:(id)a3 error:(id *)a4;
- (BOOL)canRemoveConstraint:(id)a3;
- (BOOL)compareConstraints:(id)a3;
- (BOOL)isConstraintMergeStrategyReflection;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid:(id *)a3;
- (BOOL)shouldBlockSettingUpdateFromVersion:(id)a3 isMultiUserEnabled:(BOOL)a4;
- (BOOL)shouldTurnOffPersonalRequestsOnLanguageChangeTo:(id)a3 supportedMultiUserLanguageCodes:(id)a4 isMultiUserEnabled:(BOOL)a5;
- (HMDAccessorySetting)init;
- (HMDAccessorySetting)initWithCoder:(id)a3;
- (HMDAccessorySetting)initWithIdentifier:(id)a3 name:(id)a4;
- (HMDAccessorySetting)initWithModel:(id)a3;
- (NSArray)constraints;
- (NSString)description;
- (id)_initWithCoder:(id)a3;
- (id)_modelsForMergeStrategyConstraintsUpdate:(id)a3;
- (id)constraintWithIdentifier:(id)a3;
- (id)constraintsForCodingXPC;
- (id)copyIdentical;
- (id)copyReplica;
- (id)counterpartConstraintFor:(id)a3;
- (id)inMemoryConstraintWithIdentifier:(id)a3;
- (id)logIdentifier;
- (id)modelsForConstraintsUpdate:(id)a3;
- (id)replicatedMissingConstraintsFrom:(id)a3;
- (id)value;
- (int64_t)type;
- (unint64_t)configurationVersion;
- (unint64_t)hash;
- (void)_encodeWithCoder:(id)a3;
- (void)_mergeConstraintsLocallyWithAdditions:(id)a3 removals:(id)a4;
- (void)_setType:(int64_t)a3;
- (void)addConstraint:(id)a3;
- (void)addConstraintsInMemory:(id)a3;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)mergeConstraintsFromOther:(id)a3;
- (void)removeConstraint:(id)a3;
- (void)removeConstraintsInMemory:(id)a3;
- (void)setConfigurationVersion:(unint64_t)a3;
- (void)setConstraints:(id)a3;
- (void)setGroup:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation HMDAccessorySetting

- (void)_encodeWithCoder:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmd_isForXPCTransport];
  v6 = [v4 hmd_isForRemoteTransport];
  v7 = [(HMDAccessorySetting *)self identifier];
  [v4 encodeObject:v7 forKey:*MEMORY[0x277CCED58]];

  v8 = [(HMDAccessorySetting *)self properties];
  [v4 encodeInteger:v8 forKey:*MEMORY[0x277CCED68]];
  v9 = [(HMDAccessorySetting *)self name];
  [v4 encodeObject:v9 forKey:*MEMORY[0x277CCED60]];

  v10 = [(HMDAccessorySetting *)self value];
  [v4 encodeObject:v10 forKey:*MEMORY[0x277CCEDA0]];

  if ((v6 & 1) == 0)
  {
    if (v5)
    {
      [(HMDAccessorySetting *)self constraintsForCodingXPC];
    }

    else
    {
      [(HMDAccessorySetting *)self constraints];
    }
    v24 = ;
    [v4 encodeObject:v24 forKey:*MEMORY[0x277CCED30]];

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_20:
    [v4 encodeInteger:-[HMDAccessorySetting configurationVersion](self forKey:{"configurationVersion"), @"HM.version"}];
    goto LABEL_21;
  }

  v28 = v5;
  v29 = v4;
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = [(HMDAccessorySetting *)self constraints];
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = [v18 value];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v21 = v12;
        }

        else
        {
          v21 = v11;
        }

        [v21 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  v22 = [v11 copy];
  v4 = v29;
  [v29 encodeObject:v22 forKey:*MEMORY[0x277CCED30]];

  if ([v12 count])
  {
    v23 = [v12 copy];
    [v29 encodeObject:v23 forKey:@"HM.constraintsV1"];
  }

  v5 = v28;
  if ((v28 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  if ([v4 hmd_isForXPCTransport])
  {
    v25 = [(HMDAccessorySetting *)self isReflected];
    [v4 encodeBool:v25 forKey:*MEMORY[0x277CCED70]];
  }

  if (v5)
  {
    Type = [(HMDAccessorySetting *)self type];
  }

  else
  {
    Type = __getType(self);
  }

  [v4 encodeInteger:Type forKey:*MEMORY[0x277CCED88]];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [(HMDAccessorySetting *)self _encodeWithCoder:v5];
  objc_autoreleasePoolPop(v4);
}

- (id)constraintsForCodingXPC
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__262400;
  v15 = __Block_byref_object_dispose__262401;
  v16 = 0;
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_constraints copy];
  v4 = [(NSMutableArray *)self->_inMemoryCachedConstraints copy];
  v5 = [(NSMutableSet *)self->_inMemoryCachedConstraintRemovals copy];
  v6 = v12[5];
  v12[5] = v5;

  os_unfair_lock_unlock(&self->_lock);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__HMDAccessorySetting_constraintsForCodingXPC__block_invoke;
  v10[3] = &unk_278687338;
  v10[4] = &v11;
  v7 = [v3 hmf_objectsPassingTest:v10];

  v8 = [v7 arrayByAddingObjectsFromArray:v4];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __46__HMDAccessorySetting_constraintsForCodingXPC__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (id)_initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCED58]];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCED60]];
  v7 = [(HMDAccessorySetting *)self initWithIdentifier:v5 name:v6];
  if (v7)
  {
    v7->_type = [v4 decodeIntegerForKey:*MEMORY[0x277CCED88]];
    v7->_properties = [v4 decodeIntegerForKey:*MEMORY[0x277CCED68]];
    v8 = [objc_opt_class() supportedConstraintClasses];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:*MEMORY[0x277CCED30]];
    v10 = [v9 mutableCopy];

    if (v10)
    {
      v11 = [objc_opt_class() supportedConstraintClasses];
      v12 = [v4 decodeObjectOfClasses:v11 forKey:@"HM.constraintsV1"];

      if (v12)
      {
        [v10 addObjectsFromArray:v12];
      }

      objc_storeStrong(&v7->_constraints, v10);
    }

    v13 = [objc_opt_class() supportedValueClasses];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:*MEMORY[0x277CCEDA0]];
    value = v7->_value;
    v7->_value = v14;

    v7->_configurationVersion = [v4 decodeIntegerForKey:@"HM.version"];
  }

  return v7;
}

- (HMDAccessorySetting)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDAccessorySetting *)self _initWithCoder:v4];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)_modelsForMergeStrategyConstraintsUpdate:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(HMDAccessorySetting *)self constraints];
  v7 = __missingElementsFromLeftNotInRight(v6, v4);

  v46 = v4;
  v47 = v5;
  v45 = v7;
  if (([v7 hmf_isEmpty] & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v53 = v11;
      v54 = 2112;
      v55 = v7;
      v56 = 2112;
      v57 = v9;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@will remove %@ from %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMDAccessorySetting *)v9 identifier];
    v13 = v7;
    v14 = [MEMORY[0x277CBEB18] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v48 objects:buf count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v49;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v49 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v48 + 1) + 8 * i);
          v21 = [HMDAccessorySettingConstraintModel alloc];
          v22 = [v20 identifier];
          v23 = [(HMDBackingStoreModelObject *)v21 initWithObjectChangeType:3 uuid:v22 parentUUID:v12];

          [v14 addObject:v23];
        }

        v17 = [v15 countByEnumeratingWithState:&v48 objects:buf count:16];
      }

      while (v17);
    }

    v5 = v47;
    [v47 addObjectsFromArray:v14];

    v7 = v45;
  }

  v24 = [(HMDAccessorySetting *)self constraints];
  v25 = __missingElementsFromLeftNotInRight(v4, v24);

  if (([v25 hmf_isEmpty] & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543874;
      v53 = v29;
      v54 = 2112;
      v55 = v25;
      v56 = 2112;
      v57 = v27;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@will add %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [(HMDAccessorySetting *)v27 identifier];
    v31 = v25;
    v32 = [MEMORY[0x277CBEB18] array];
    v33 = __deepCopiedConstraints(v31);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v34 = [v33 countByEnumeratingWithState:&v48 objects:buf count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v49;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v49 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v48 + 1) + 8 * j) modelWithParentIdentifier:v30];
          [v38 setObjectChangeType:1];
          [v32 addObject:v38];
        }

        v35 = [v33 countByEnumeratingWithState:&v48 objects:buf count:16];
      }

      while (v35);
    }

    v5 = v47;
    [v47 addObjectsFromArray:v32];

    v7 = v45;
    v4 = v46;
  }

  if ([v5 count])
  {
    v39 = objc_autoreleasePoolPush();
    v40 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v42;
      v54 = 2112;
      v55 = v5;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEBUG, "%{public}@fixing up accessory constraints %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
  }

  v43 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAccessorySetting *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [(HMDAccessorySetting *)self name];
  v7 = [v3 stringWithFormat:@"%@/%@", v5, v6];

  return v7;
}

- (void)setConfigurationVersion:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_configurationVersion < a3)
  {
    self->_configurationVersion = a3;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)configurationVersion
{
  os_unfair_lock_lock_with_options();
  configurationVersion = self->_configurationVersion;
  os_unfair_lock_unlock(&self->_lock);
  return configurationVersion;
}

- (BOOL)shouldTurnOffPersonalRequestsOnLanguageChangeTo:(id)a3 supportedMultiUserLanguageCodes:(id)a4 isMultiUserEnabled:(BOOL)a5
{
  v5 = a5;
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HMDAccessorySetting *)self value];
  if (v5 && (-[HMDAccessorySetting keyPath](self, "keyPath"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqual:@"root.siri.language"], v11, v12))
  {
    v13 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v43 = v15;
    v19 = [v15 title];
    v20 = [v18 title];
    v21 = [v19 componentsSeparatedByString:{@", "}];
    v44 = v20;
    v22 = [v20 componentsSeparatedByString:{@", "}];
    if ([v21 count] < 4)
    {
      v30 = v22;
      v31 = objc_autoreleasePoolPush();
      v32 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v34 = loga = v18;
        *buf = 138543362;
        v46 = v34;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Unable to deserialize selected language.", buf, 0xCu);

        v18 = loga;
      }

      objc_autoreleasePoolPop(v31);
      v29 = 0;
      v22 = v30;
    }

    else
    {
      v23 = [v21 objectAtIndexedSubscript:0];
      if ([v9 containsObject:v23])
      {
        v42 = v22;
        if ([v22 count] >= 4 && (objc_msgSend(v22, "objectAtIndexedSubscript:", 0), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v9, "containsObject:", v24), v24, v25))
        {
          context = objc_autoreleasePoolPush();
          v26 = self;
          log = HMFGetOSLogHandle();
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v27 = HMFGetLogIdentifier();
            v28 = [v42 objectAtIndexedSubscript:0];
            *buf = 138543874;
            v46 = v27;
            v47 = 2112;
            v48 = v23;
            v49 = 2112;
            v50 = v28;
            _os_log_impl(&dword_229538000, log, OS_LOG_TYPE_INFO, "%{public}@Language changing from %@ to %@ and both are supported.", buf, 0x20u);
          }

          v29 = 0;
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v35 = self;
          HMFGetOSLogHandle();
          log = v29 = 1;
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543618;
            v46 = v36;
            v47 = 2112;
            v48 = v23;
            _os_log_impl(&dword_229538000, log, OS_LOG_TYPE_INFO, "%{public}@Found recognition language %@ in supported languages need to turn off personal requests.", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(context);
        v22 = v42;
      }

      else
      {
        v29 = 0;
      }
    }
  }

  else
  {
    v29 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)shouldBlockSettingUpdateFromVersion:(id)a3 isMultiUserEnabled:(BOOL)a4
{
  LODWORD(v4) = a4;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[HMDHomeKitVersion version6];
  v8 = [(HMDAccessorySetting *)self keyPath];
  v9 = [v8 isEqual:@"root.siri.language"];
  if (v6 && v9 && [v6 compare:v7] == -1)
  {

    if (v4)
    {
      v4 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v14;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Settings update blocked due to attempting language setting update with homekit version: %@", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      LOBYTE(v4) = 1;
    }
  }

  else
  {

    LOBYTE(v4) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setValue:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  value = self->_value;
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_value, a3);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)value
{
  os_unfair_lock_lock_with_options();
  v3 = self->_value;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)modelsForConstraintsUpdate:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDAccessorySetting *)self isConstraintMergeStrategyReflection])
  {
    v5 = [(HMDAccessorySetting *)self _modelsForMergeStrategyConstraintsUpdate:v4];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v10;
      v60 = 2112;
      v61 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Updating constraints: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = MEMORY[0x277CBEB98];
    v12 = [(HMDAccessorySetting *)v8 constraints];
    v13 = [v11 setWithArray:v12];

    v46 = v4;
    v14 = [MEMORY[0x277CBEB98] setWithArray:v4];
    v47 = v13;
    v15 = [v13 mutableCopy];
    v45 = v14;
    [v15 minusSet:v14];
    v16 = objc_autoreleasePoolPush();
    v17 = v8;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v19;
      v60 = 2112;
      v61 = v15;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing constraints: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v20 = v15;
    v21 = [v20 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v53;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v53 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v52 + 1) + 8 * i);
          v26 = [HMDAccessorySettingConstraintModel alloc];
          v27 = [v25 identifier];
          v28 = [(HMDAccessorySetting *)v17 identifier];
          v29 = [(HMDBackingStoreModelObject *)v26 initWithObjectChangeType:3 uuid:v27 parentUUID:v28];

          [v6 addObject:v29];
        }

        v22 = [v20 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v22);
    }

    v30 = [v45 mutableCopy];
    [v30 minusSet:v47];
    v31 = objc_autoreleasePoolPush();
    v32 = v17;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v34;
      v60 = 2112;
      v61 = v30;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Adding constraints: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v35 = v30;
    v36 = [v35 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v49;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v49 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v48 + 1) + 8 * j);
          v41 = [(HMDAccessorySetting *)v32 identifier];
          v42 = [v40 modelWithParentIdentifier:v41];

          [v42 setObjectChangeType:1];
          [v6 addObject:v42];
        }

        v37 = [v35 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v37);
    }

    v5 = [v6 copy];
    v4 = v46;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)isConstraintMergeStrategyReflection
{
  v2 = [(HMDAccessorySetting *)self name];
  v3 = [v2 isEqualToString:@"alarms"];

  return v3;
}

- (void)_mergeConstraintsLocallyWithAdditions:(id)a3 removals:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HMDAccessorySetting *)self removeConstraint:*(*(&v22 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(HMDAccessorySetting *)self addConstraint:*(*(&v18 + 1) + 8 * v16++), v18];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeConstraintsInMemory:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 8;
  os_unfair_lock_lock_with_options();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if ([(NSMutableArray *)self->_constraints containsObject:v8, v18])
        {
          inMemoryCachedConstraintRemovals = self->_inMemoryCachedConstraintRemovals;
          v10 = [v8 identifier];
          LOBYTE(inMemoryCachedConstraintRemovals) = [(NSMutableSet *)inMemoryCachedConstraintRemovals containsObject:v10];

          if ((inMemoryCachedConstraintRemovals & 1) == 0)
          {
            v11 = self->_inMemoryCachedConstraintRemovals;
            v12 = [v8 identifier];
            [(NSMutableSet *)v11 addObject:v12];
          }
        }

        if ([(NSMutableArray *)self->_inMemoryCachedConstraints containsObject:v8])
        {
          v13 = self->_inMemoryCachedConstraintRemovals;
          v14 = [v8 identifier];
          LOBYTE(v13) = [(NSMutableSet *)v13 containsObject:v14];

          if ((v13 & 1) == 0)
          {
            [(NSMutableArray *)self->_inMemoryCachedConstraints removeObject:v8];
            v15 = self->_inMemoryCachedConstraintRemovals;
            v16 = [v8 identifier];
            [(NSMutableSet *)v15 addObject:v16];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock((self + v18));
  v17 = *MEMORY[0x277D85DE8];
}

- (void)addConstraintsInMemory:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_constraints containsObject:v9, v11]& 1) == 0 && ([(NSMutableArray *)self->_inMemoryCachedConstraints containsObject:v9]& 1) == 0)
        {
          [(NSMutableArray *)self->_inMemoryCachedConstraints addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeConstraint:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    os_unfair_lock_lock_with_options();
    inMemoryCachedConstraintRemovals = self->_inMemoryCachedConstraintRemovals;
    v6 = [v9 identifier];
    LODWORD(inMemoryCachedConstraintRemovals) = [(NSMutableSet *)inMemoryCachedConstraintRemovals containsObject:v6];

    if (inMemoryCachedConstraintRemovals)
    {
      v7 = self->_inMemoryCachedConstraintRemovals;
      v8 = [v9 identifier];
      [(NSMutableSet *)v7 removeObject:v8];
    }

    if ([(NSMutableArray *)self->_constraints containsObject:v9])
    {
      [(NSMutableArray *)self->_constraints removeObject:v9];
    }

    os_unfair_lock_unlock(&self->_lock);
    v4 = v9;
  }
}

- (void)addConstraint:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    if (([(NSMutableArray *)self->_constraints containsObject:v5]& 1) == 0)
    {
      [(NSMutableArray *)self->_constraints addObject:v5];
    }

    if ([(NSMutableArray *)self->_inMemoryCachedConstraints containsObject:v5])
    {
      [(NSMutableArray *)self->_inMemoryCachedConstraints removeObject:v5];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  MEMORY[0x2821F9730]();
}

- (void)mergeConstraintsFromOther:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetting *)self constraints];
  v6 = __missingElementsFromLeftNotInRight(v4, v5);

  if (([v6 hmf_isEmpty] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v10;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@found constraints that are not present adding, %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = __deepCopiedConstraints(v6);
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(HMDAccessorySetting *)v8 addConstraint:*(*(&v17 + 1) + 8 * v15++), v17];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)replicatedMissingConstraintsFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetting *)self constraints];
  v6 = __missingElementsFromLeftNotInRight(v4, v5);

  if ([v6 hmf_isEmpty])
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@found constraints that are not present returning, %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = __deepCopiedConstraints(v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
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

- (id)inMemoryConstraintWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_inMemoryCachedConstraints;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 hmf_isEqualToUUID:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)constraintWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_constraints;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 hmf_isEqualToUUID:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)counterpartConstraintFor:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __itemFromConstraint(v4);
  if (v5)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [(HMDAccessorySetting *)self constraints];
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = __itemFromConstraint(v11);
          if (v12 && [v5 isEqual:v12])
          {
            v18 = objc_autoreleasePoolPush();
            v19 = self;
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v21 = HMFGetLogIdentifier();
              *buf = 138543874;
              v29 = v21;
              v30 = 2112;
              v31 = v11;
              v32 = 2112;
              v33 = v4;
              _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Found counterpart constraint %@ for %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v18);
            v13 = v11;

            goto LABEL_18;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_18:
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v17;
      v30 = 2112;
      v31 = v4;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Can't decode constraint %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSArray)constraints
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_constraints copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)canRemoveConstraint:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetting *)self constraints];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Missing Constraint: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)canAddConstraint:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDAccessorySetting *)self constraints];
  v8 = [v7 containsObject:v6];

  if (!v8)
  {
    if (__isConstraintValid(self, v6, a4))
    {
      v13 = 1;
      goto LABEL_12;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *a4;
      v21 = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Invalid constraint, %@, with error: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v12;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Duplicate constraint: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if (!a4)
  {
    goto LABEL_11;
  }

  [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
  *a4 = v13 = 0;
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)isValid:(id *)a3
{
  v108 = *MEMORY[0x277D85DE8];
  if (![(HMDAccessorySetting *)self type])
  {
    if (a3)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
      *a3 = v14 = 0;
      goto LABEL_99;
    }

LABEL_65:
    v14 = 0;
    goto LABEL_99;
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v5 = [(HMDAccessorySetting *)self constraints];
  v6 = [v5 countByEnumeratingWithState:&v87 objects:v95 count:16];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = *v88;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v88 != v8)
      {
        objc_enumerationMutation(v5);
      }

      if (!__isConstraintValid(self, *(*(&v87 + 1) + 8 * i), a3))
      {

        goto LABEL_65;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v87 objects:v95 count:16];
  }

  while (v7);
LABEL_10:

  v10 = [(HMDAccessorySetting *)self value];
  v11 = self;
  v12 = v10;
  if (!v12)
  {
    goto LABEL_75;
  }

  v13 = [(HMDAccessorySetting *)v11 type];
  v14 = 0;
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v53 = objc_autoreleasePoolPush();
        v54 = v11;
        v55 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      }
    }

    else
    {
      if (v13 != 4)
      {
        goto LABEL_98;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v53 = objc_autoreleasePoolPush();
        v54 = v11;
        v55 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          goto LABEL_80;
        }

LABEL_79:
        v56 = HMFGetLogIdentifier();
        v57 = objc_opt_class();
        *v96 = 138543618;
        v97 = v56;
        v98 = 2112;
        v99 = v57;
        v58 = v57;
        _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@Unexpected value class: %@", v96, 0x16u);

LABEL_80:
        objc_autoreleasePoolPop(v53);
        if (a3)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
          *a3 = v14 = 0;
        }

        else
        {
LABEL_97:
          v14 = 0;
        }

        goto LABEL_98;
      }
    }

LABEL_75:
    v14 = 1;
    goto LABEL_98;
  }

  if (v13 == 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v53 = objc_autoreleasePoolPush();
      v54 = v11;
      v55 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }

    goto LABEL_75;
  }

  if (v13 != 2)
  {
    goto LABEL_98;
  }

  v15 = v12;
  objc_opt_class();
  v16 = objc_opt_isKindOfClass() & 1;
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v83 = v17;

  if (!v16)
  {
    v53 = objc_autoreleasePoolPush();
    v54 = v11;
    v55 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v77 = v15;
  v78 = v12;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = [(HMDAccessorySetting *)v11 constraints];
  v82 = [obj countByEnumeratingWithState:&v91 objects:v96 count:16];
  if (!v82)
  {
    goto LABEL_61;
  }

  v81 = *v92;
  v79 = v11;
  while (2)
  {
    v18 = 0;
    while (2)
    {
      if (*v92 != v81)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v91 + 1) + 8 * v18);
      v20 = v11;
      v21 = v83;
      v22 = v19;
      v23 = [(HMDAccessorySetting *)v20 value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      v26 = [v22 type];
      switch(v26)
      {
        case 3:
          v27 = [v22 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = v27;
          }

          else
          {
            v32 = 0;
          }

          v33 = v32;

          if (v33)
          {
            [v21 doubleValue];
            v35 = v34;
            [v25 doubleValue];
            v37 = vabdd_f64(v35, v36);
            [v33 doubleValue];
            v39 = fmod(v37, v38);
            if (v39 > 0.00000011920929)
            {
              [v33 doubleValue];
              if (v39 < v40 + -0.00000011920929)
              {
                v70 = objc_autoreleasePoolPush();
                v71 = v20;
                v72 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                {
                  HMFGetLogIdentifier();
                  v74 = v86 = v70;
                  *buf = 138544130;
                  v101 = v74;
                  v102 = 2112;
                  v103 = v77;
                  v104 = 2112;
                  v105 = v33;
                  v106 = 2112;
                  v107 = v25;
                  _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@Value, %@, does not conform to step, %@, from current value: %@", buf, 0x2Au);

                  v70 = v86;
                }

                objc_autoreleasePoolPop(v70);
                if (a3)
                {
                  v64 = 43;
LABEL_94:
                  v11 = v79;
                  v12 = v78;
                  *a3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v64];
LABEL_96:

                  goto LABEL_97;
                }

LABEL_95:
                v11 = v79;
                v12 = v78;
                goto LABEL_96;
              }
            }

            goto LABEL_58;
          }

LABEL_57:
          v27 = 0;
          goto LABEL_58;
        case 2:
          v27 = [v22 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = v27;
          }

          else
          {
            v30 = 0;
          }

          v31 = v30;

          if (v31)
          {
            if ([v21 compare:v31] == 1)
            {
              v59 = objc_autoreleasePoolPush();
              v60 = v20;
              v61 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                HMFGetLogIdentifier();
                v63 = v84 = v59;
                *buf = 138543874;
                v101 = v63;
                v102 = 2112;
                v103 = v77;
                v104 = 2112;
                v105 = v31;
                _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@Value, %@, more than maximum value: %@", buf, 0x20u);

                v59 = v84;
              }

              objc_autoreleasePoolPop(v59);
              if (a3)
              {
                v64 = 45;
                goto LABEL_94;
              }

              goto LABEL_95;
            }

LABEL_58:

            goto LABEL_59;
          }

          v45 = objc_autoreleasePoolPush();
          v46 = v20;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = HMFGetLogIdentifier();
            v49 = [v22 value];
            *buf = 138543618;
            v101 = v48;
            v102 = 2112;
            v103 = v49;
            v50 = v47;
            v51 = "%{public}@Invalid maximum constraint value: %@";
            goto LABEL_55;
          }

LABEL_56:

          objc_autoreleasePoolPop(v45);
          goto LABEL_57;
        case 1:
          v27 = [v22 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;

          if (v29)
          {
            if ([v21 compare:v29] == -1)
            {
              v65 = objc_autoreleasePoolPush();
              v66 = v20;
              v67 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                HMFGetLogIdentifier();
                v69 = v85 = v65;
                *buf = 138543874;
                v101 = v69;
                v102 = 2112;
                v103 = v77;
                v104 = 2112;
                v105 = v29;
                _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@Value, %@, less than minimum value: %@", buf, 0x20u);

                v65 = v85;
              }

              objc_autoreleasePoolPop(v65);
              if (a3)
              {
                v64 = 44;
                goto LABEL_94;
              }

              goto LABEL_95;
            }

            goto LABEL_58;
          }

          v45 = objc_autoreleasePoolPush();
          v52 = v20;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = HMFGetLogIdentifier();
            v49 = [v22 value];
            *buf = 138543618;
            v101 = v48;
            v102 = 2112;
            v103 = v49;
            v50 = v47;
            v51 = "%{public}@Invalid minimum constraint value: %@";
LABEL_55:
            _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_DEFAULT, v51, buf, 0x16u);

            v11 = v79;
          }

          goto LABEL_56;
      }

      v41 = objc_autoreleasePoolPush();
      v42 = v20;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543618;
        v101 = v44;
        v102 = 2112;
        v103 = v22;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring numeric constraint: %@", buf, 0x16u);

        v11 = v79;
      }

      objc_autoreleasePoolPop(v41);
LABEL_59:

      if (v82 != ++v18)
      {
        continue;
      }

      break;
    }

    v82 = [obj countByEnumeratingWithState:&v91 objects:v96 count:16];
    if (v82)
    {
      continue;
    }

    break;
  }

LABEL_61:

  v14 = 1;
  v12 = v78;
LABEL_98:

LABEL_99:
  v75 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_setType:(int64_t)a3
{
  if (self)
  {
    v5 = self;
    os_unfair_lock_lock_with_options();
    v5->_type = a3;
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (int64_t)type
{
  result = __getType(self);
  if (result >= 6)
  {
    return 0;
  }

  return result;
}

- (void)setGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  parentIdentifier = self->_parentIdentifier;
  self->_parentIdentifier = v5;

  v11 = [v4 keyPath];

  v7 = [(HMDAccessorySetting *)self name];
  if (v11)
  {
    v8 = [v11 stringByAppendingFormat:@".%@", v7];
    keyPath = self->_keyPath;
    self->_keyPath = v8;
  }

  else
  {
    v10 = self->_keyPath;
    self->_keyPath = v7;
    v7 = v10;
  }
}

- (id)copyReplica
{
  v3 = [HMDAccessorySetting alloc];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [(HMDAccessorySetting *)self name];
  v6 = [(HMDAccessorySetting *)v3 initWithIdentifier:v4 name:v5];

  v6->_type = [(HMDAccessorySetting *)self type];
  v6->_properties = [(HMDAccessorySetting *)self properties];
  v7 = [(HMDAccessorySetting *)self constraints];
  v8 = __deepCopiedConstraints(v7);
  v9 = [v8 mutableCopy];
  constraints = v6->_constraints;
  v6->_constraints = v9;

  v11 = [(HMDAccessorySetting *)self value];
  value = v6->_value;
  v6->_value = v11;

  return v6;
}

- (id)copyIdentical
{
  v3 = [HMDAccessorySetting alloc];
  v4 = [(HMDAccessorySetting *)self identifier];
  v5 = [(HMDAccessorySetting *)self name];
  v6 = [(HMDAccessorySetting *)v3 initWithIdentifier:v4 name:v5];

  v6->_type = [(HMDAccessorySetting *)self type];
  v6->_properties = [(HMDAccessorySetting *)self properties];
  v7 = [(HMDAccessorySetting *)self constraints];
  v8 = [v7 mutableCopy];
  constraints = v6->_constraints;
  v6->_constraints = v8;

  v10 = [(HMDAccessorySetting *)self value];
  value = v6->_value;
  v6->_value = v10;

  return v6;
}

- (BOOL)compareConstraints:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDAccessorySetting *)self type];
      if (v7 == 4 || v7 == 2)
      {
        v8 = MEMORY[0x277CBEB98];
        v9 = [(HMDAccessorySetting *)self constraints];
        v10 = [v8 setWithArray:v9];
        v11 = MEMORY[0x277CBEB98];
        v12 = [(HMDAccessorySetting *)v6 constraints];
        v13 = [v11 setWithArray:v12];
        v14 = [v10 isEqualToSet:v13];
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDAccessorySetting *)self name];
      v8 = [(HMDAccessorySetting *)v6 name];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMDAccessorySetting *)self name];
  v3 = [v2 hash];

  return v3;
}

- (void)description:(id)a3 indent:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySetting *)self name];
  v9 = [(HMDAccessorySetting *)self identifier];
  [v6 appendFormat:@"\r %@ name = %@, identifier = %@\n", v7, v8, v9];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(HMDAccessorySetting *)self constraints];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v6 appendFormat:@"\r     %@ %@\n", v7, *(*(&v16 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAccessorySetting *)self keyPath];
  v5 = [(HMDAccessorySetting *)self identifier];
  v6 = [(HMDAccessorySetting *)self value];
  v7 = [v3 stringWithFormat:@"[HMD-Accessory-Setting: %@/%@ - %@]", v4, v5, v6];

  return v7;
}

- (HMDAccessorySetting)initWithIdentifier:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v19.receiver = self;
    v19.super_class = HMDAccessorySetting;
    v9 = [(HMDAccessorySetting *)&v19 init];
    v10 = v9;
    if (v9)
    {
      v9->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v9->_identifier, a3);
      objc_storeStrong(&v10->_name, a4);
      v11 = [MEMORY[0x277CBEB18] array];
      constraints = v10->_constraints;
      v10->_constraints = v11;

      v13 = [MEMORY[0x277CBEB18] array];
      inMemoryCachedConstraints = v10->_inMemoryCachedConstraints;
      v10->_inMemoryCachedConstraints = v13;

      v15 = [MEMORY[0x277CBEB58] set];
      inMemoryCachedConstraintRemovals = v10->_inMemoryCachedConstraintRemovals;
      v10->_inMemoryCachedConstraintRemovals = v15;
    }

    self = v10;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (HMDAccessorySetting)initWithModel:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v5 copy];
  v7 = [v4 name];
  v8 = [v7 copy];
  v9 = [(HMDAccessorySetting *)self initWithIdentifier:v6 name:v8];

  if (v9)
  {
    v10 = [v4 type];
    v9->_type = [v10 integerValue];

    v11 = [v4 properties];
    v9->_properties = [v11 unsignedIntegerValue];

    v12 = [v4 configurationVersion];
    v9->_configurationVersion = [v12 unsignedIntegerValue];

    v13 = MEMORY[0x277CCAAC8];
    v14 = [objc_opt_class() supportedValueClasses];
    v15 = [v4 value];
    v25 = 0;
    v16 = [v13 unarchivedObjectOfClasses:v14 fromData:v15 error:&v25];
    v17 = v25;
    value = v9->_value;
    v9->_value = v16;

    if (!v9->_value)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v9;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v22;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive supported value from the model's value data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HMDAccessorySetting)init
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

+ (id)supportedConstraintClasses
{
  if (supportedConstraintClasses_onceToken != -1)
  {
    dispatch_once(&supportedConstraintClasses_onceToken, &__block_literal_global_55_262492);
  }

  v3 = supportedConstraintClasses_supportedConstraintClasses;

  return v3;
}

void __49__HMDAccessorySetting_supportedConstraintClasses__block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = supportedConstraintClasses_supportedConstraintClasses;
  supportedConstraintClasses_supportedConstraintClasses = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)supportedValueClasses
{
  if (supportedValueClasses_onceToken != -1)
  {
    dispatch_once(&supportedValueClasses_onceToken, &__block_literal_global_50_262495);
  }

  v3 = supportedValueClasses_supportedValueClasses;

  return v3;
}

void __44__HMDAccessorySetting_supportedValueClasses__block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = supportedValueClasses_supportedValueClasses;
  supportedValueClasses_supportedValueClasses = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t58_262497 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t58_262497, &__block_literal_global_262498);
  }

  v3 = logCategory__hmf_once_v59_262499;

  return v3;
}

void __34__HMDAccessorySetting_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v59_262499;
  logCategory__hmf_once_v59_262499 = v1;
}

+ (id)decodedValue:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = a3;
  v7 = +[HMDAccessorySetting supportedValueClasses];
  v8 = [v5 unarchivedObjectOfClasses:v7 fromData:v6 error:a4];

  return v8;
}

@end