@interface MKFCKServiceGroup
- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (id)_fetchServiceDetailsWithLocalModel:(void *)a1;
@end

@implementation MKFCKServiceGroup

- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v7 = a3;
  if ([(MKFCKModel *)self copyPropertiesIntoLocalModel:v7 context:a5])
  {
    v8 = v7;
    v9 = v8;
    if (self)
    {
      v10 = [(MKFCKServiceGroup *)self services];
      v11 = v10;
      v12 = MEMORY[0x277CBEBF8];
      if (v10)
      {
        v12 = v10;
      }

      v13 = v12;

      v14 = [MKFCKServiceGroup _fetchServiceDetailsWithLocalModel:v9];
      if ((arraysEqualIgnoringOrder(v14, v13) & 1) == 0)
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v18 = MEMORY[0x277D85DD0];
        v19 = 3221225472;
        v20 = __50__MKFCKServiceGroup_importServicesIntoLocalModel___block_invoke;
        v21 = &unk_278689E38;
        v22 = self;
        v23 = v15;
        v16 = v15;
        [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:&v18];
        [v9 setServices_:{v16, v18, v19, v20, v21, v22}];
      }

      self = [(MKFCKServiceGroup *)self applicationData];
      [_MKFApplicationData setAppDataDictionary:self forContainer:v9];

      LOBYTE(self) = 1;
    }

    else
    {
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (id)_fetchServiceDetailsWithLocalModel:(void *)a1
{
  v27[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v2 setName:@"a"];
  [v2 setExpressionResultType:1100];
  v3 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"accessory.modelID"];
  [v2 setExpression:v3];

  v4 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v4 setName:@"i"];
  [v4 setExpressionResultType:300];
  v5 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"instanceID"];
  [v4 setExpression:v5];

  v6 = +[_MKFService fetchRequest];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ in %K", v1, @"serviceGroups_"];
  [v6 setPredicate:v7];

  v27[0] = v2;
  v27[1] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  [v6 setPropertiesToFetch:v8];

  [v6 setResultType:2];
  v20 = 0;
  v9 = [v6 execute:&v20];
  v10 = v20;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = objc_opt_class();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      [v1 hmd_debugIdentifier];
      v16 = v19 = v12;
      *buf = 138543874;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch service details for %@: %{public}@", buf, 0x20u);

      v12 = v19;
    }

    objc_autoreleasePoolPop(v12);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

void __50__MKFCKServiceGroup_importServicesIntoLocalModel___block_invoke(uint64_t a1, void *a2)
{
  v2 = a1;
  v50 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = [v4 objectForKeyedSubscript:@"a"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v5 objectForKeyedSubscript:@"i"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v8)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = objc_opt_class();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v16;
        v40 = 2112;
        v41 = v5;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invalid service details: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      context = 0;
    }

    else
    {
      v17 = +[_MKFService fetchRequest];
      v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"accessory.modelID", v8, @"instanceID", v11];
      [v17 setPredicate:v18];

      [v17 setFetchLimit:2];
      v37 = 0;
      v19 = [v17 execute:&v37];
      v20 = v37;
      v21 = v20;
      if (v19)
      {
        if ([v19 count] != 1)
        {
          contexta = objc_autoreleasePoolPush();
          v22 = objc_opt_class();
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v24 = v32 = v21;
            v31 = [v19 count];
            v25 = [v3 hmd_debugIdentifier];
            *buf = 138544642;
            v39 = v24;
            v40 = 2048;
            v41 = v31;
            v42 = 2160;
            v43 = 1752392040;
            v44 = 2112;
            v45 = v8;
            v46 = 2112;
            v47 = v11;
            v48 = 2112;
            v49 = v25;
            _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Warning: Found %tu local services %{mask.hash}@/%@ for %@", buf, 0x3Eu);

            v21 = v32;
          }

          objc_autoreleasePoolPop(contexta);
        }

        context = [v19 firstObject];
      }

      else
      {
        contextb = objc_autoreleasePoolPush();
        v26 = objc_opt_class();
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v28 = v33 = v2;
          v29 = [v3 hmd_debugIdentifier];
          *buf = 138544642;
          v39 = v28;
          v40 = 2160;
          v41 = 1752392040;
          v42 = 2112;
          v43 = v8;
          v44 = 2112;
          v45 = v11;
          v46 = 2112;
          v47 = v29;
          v48 = 2114;
          v49 = v21;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local service %{mask.hash}@/%@ for %@: %{public}@", buf, 0x3Eu);

          v2 = v33;
        }

        objc_autoreleasePoolPop(contextb);
        context = 0;
      }
    }

    if (context)
    {
      [*(v2 + 40) addObject:?];
      goto LABEL_30;
    }
  }

  else
  {
  }

  context = 0;
LABEL_30:
  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = [(MKFCKModel *)self copyPropertiesFromLocalModel:v7 context:a5];
  if (self)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [MKFCKServiceGroup _fetchServiceDetailsWithLocalModel:v7];
    v11 = [(MKFCKServiceGroup *)self services];
    v12 = arraysEqualIgnoringOrder(v11, v10);

    if ((v12 & 1) == 0)
    {
      [(MKFCKServiceGroup *)self setServices:v10];
    }

    v13 = [_MKFApplicationData appDataDictionaryForContainer:v7];
    v14 = [(MKFCKServiceGroup *)self applicationData];
    v15 = HMFEqualObjects();

    if ((v15 & 1) == 0)
    {
      [(MKFCKServiceGroup *)self setApplicationData:v13];
    }
  }

  return v9;
}

@end