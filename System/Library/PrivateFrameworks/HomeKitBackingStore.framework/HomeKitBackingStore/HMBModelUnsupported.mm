@interface HMBModelUnsupported
- (void)dumpDebug:(id)debug;
@end

@implementation HMBModelUnsupported

- (void)dumpDebug:(id)debug
{
  v29 = *MEMORY[0x277D85DE8];
  debugCopy = debug;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(HMBModelUnsupported *)self debugString:0];
  v5 = [v4 componentsSeparatedByString:@"\n"];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
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
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          *buf = 138543874;
          v23 = v14;
          v24 = 2112;
          v25 = debugCopy;
          v26 = 2112;
          v27 = v10;
          _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@%@%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end