@interface HMDBackingStoreModelObjectUnsupported
- (void)dumpWithVerbosity:(BOOL)a3 prefix:(id)a4 logType:(unsigned __int8)a5;
@end

@implementation HMDBackingStoreModelObjectUnsupported

- (void)dumpWithVerbosity:(BOOL)a3 prefix:(id)a4 logType:(unsigned __int8)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [MEMORY[0x277CCAB68] string];
  v9 = [(HMDBackingStoreModelObject *)self bsoType];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 isEqual:v11];

  if ((v12 & 1) == 0)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [(HMDBackingStoreModelObject *)self bsoType];
    v17 = [v13 stringWithFormat:@"%@/%@", v15, v16];

    v9 = v17;
  }

  type = a5;
  v42 = v9;
  [v8 appendFormat:@"%@values: (%@)", v7, v9];
  v18 = [(HMDBackingStoreModelObject *)self uuid];
  v19 = [v18 UUIDString];
  [v8 appendFormat:@"\n  uuid: %@", v19];

  v20 = [(HMDBackingStoreModelObject *)self parentUUID];
  v21 = [v20 UUIDString];
  [v8 appendFormat:@"\n  parent: %@", v21];

  v22 = [(HMDBackingStoreModelObject *)self bsoDataVersion];
  [v8 appendFormat:@"\n  version: %@", v22];

  v23 = [(HMDBackingStoreModelObject *)self bsoIgnoredBefore];
  v24 = v23;
  v25 = self;
  if (v23)
  {
    [v8 appendFormat:@"\n  ignore before: %@", v23];
  }

  v41 = v24;
  v45 = v8;
  v44 = shouldLogPrivateInformation();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v26 = [(NSMutableDictionary *)self->super._reserved allKeys];
  v27 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v46 + 1) + 8 * i);
        if (([v31 hasPrefix:@"_"] & 1) == 0)
        {
          v32 = [(NSMutableDictionary *)v25->super._reserved valueForKey:v31];
          if (v32)
          {
            v33 = v32;
            if (v44)
            {
              v34 = [HMDBackingStoreModelObject formatValue:v32];
            }

            else
            {
              v34 = @"...";
              v35 = @"...";
            }

            [v45 appendFormat:@"\n  %@ (read-only) (unsupported): %@", v31, v34, v41];
          }
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v28);
  }

  v36 = objc_autoreleasePoolPush();
  v37 = v25;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, type))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v39;
    v52 = 2112;
    v53 = v45;
    _os_log_impl(&dword_229538000, v38, type, "%{public}@HMDBackingStoreModelObjectUnsupported %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v36);
  v40 = *MEMORY[0x277D85DE8];
}

@end