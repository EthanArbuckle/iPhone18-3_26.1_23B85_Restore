@interface HMAccessorySettingConstraint(Metadata)
+ (id)constraintWithDictonaryRepresentation:()Metadata;
+ (id)constraintsWithArrayRepresenation:()Metadata;
+ (id)valueWithType:()Metadata representation:;
@end

@implementation HMAccessorySettingConstraint(Metadata)

+ (id)valueWithType:()Metadata representation:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  if ((a3 - 1) < 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      goto LABEL_15;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid constraint value: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    goto LABEL_14;
  }

  if (a3 != 4)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  v8 = v5;
  objc_opt_class();
  v9 = objc_opt_isKindOfClass() & 1;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v9)
  {
    v7 = [objc_alloc(MEMORY[0x277CD1770]) initWithTitle:v8];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v19;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid constraint value: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v7 = 0;
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)constraintWithDictonaryRepresentation:()Metadata
{
  v4 = a3;
  v5 = [v4 hmf_stringForKey:@"Type"];
  if (v5)
  {
    v6 = HMAccessorySettingConstraintTypeFromString();
    v7 = MEMORY[0x277CD1780];
    v8 = [v4 objectForKeyedSubscript:@"Value"];
    v9 = [v7 valueWithType:v6 representation:v8];

    if (v9)
    {
      v10 = [[a1 alloc] initWithType:v6 value:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)constraintsWithArrayRepresenation:()Metadata
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [MEMORY[0x277CD1780] constraintWithDictonaryRepresentation:{v10, v15}];
          if (v11)
          {
            [v4 addObject:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end