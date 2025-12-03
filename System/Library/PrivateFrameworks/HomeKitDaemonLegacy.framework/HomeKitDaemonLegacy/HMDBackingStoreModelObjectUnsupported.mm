@interface HMDBackingStoreModelObjectUnsupported
- (void)dumpWithVerbosity:(BOOL)verbosity prefix:(id)prefix logType:(unsigned __int8)type;
@end

@implementation HMDBackingStoreModelObjectUnsupported

- (void)dumpWithVerbosity:(BOOL)verbosity prefix:(id)prefix logType:(unsigned __int8)type
{
  v55 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  string = [MEMORY[0x277CCAB68] string];
  bsoType = [(HMDBackingStoreModelObject *)self bsoType];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [bsoType isEqual:v11];

  if ((v12 & 1) == 0)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    bsoType2 = [(HMDBackingStoreModelObject *)self bsoType];
    v17 = [v13 stringWithFormat:@"%@/%@", v15, bsoType2];

    bsoType = v17;
  }

  type = type;
  v42 = bsoType;
  [string appendFormat:@"%@values: (%@)", prefixCopy, bsoType];
  uuid = [(HMDBackingStoreModelObject *)self uuid];
  uUIDString = [uuid UUIDString];
  [string appendFormat:@"\n  uuid: %@", uUIDString];

  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];
  uUIDString2 = [parentUUID UUIDString];
  [string appendFormat:@"\n  parent: %@", uUIDString2];

  bsoDataVersion = [(HMDBackingStoreModelObject *)self bsoDataVersion];
  [string appendFormat:@"\n  version: %@", bsoDataVersion];

  bsoIgnoredBefore = [(HMDBackingStoreModelObject *)self bsoIgnoredBefore];
  v24 = bsoIgnoredBefore;
  selfCopy = self;
  if (bsoIgnoredBefore)
  {
    [string appendFormat:@"\n  ignore before: %@", bsoIgnoredBefore];
  }

  v41 = v24;
  v45 = string;
  v44 = shouldLogPrivateInformation();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  allKeys = [(NSMutableDictionary *)self->super._reserved allKeys];
  v27 = [allKeys countByEnumeratingWithState:&v46 objects:v54 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v31 = *(*(&v46 + 1) + 8 * i);
        if (([v31 hasPrefix:@"_"] & 1) == 0)
        {
          v32 = [(NSMutableDictionary *)selfCopy->super._reserved valueForKey:v31];
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

      v28 = [allKeys countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v28);
  }

  v36 = objc_autoreleasePoolPush();
  v37 = selfCopy;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, type))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v39;
    v52 = 2112;
    v53 = v45;
    _os_log_impl(&dword_2531F8000, v38, type, "%{public}@HMDBackingStoreModelObjectUnsupported %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v36);
  v40 = *MEMORY[0x277D85DE8];
}

@end