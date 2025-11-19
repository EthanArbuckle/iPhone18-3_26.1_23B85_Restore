@interface HMDBiomeLogEventObserver
+ (id)shortDescription;
- (HMDBiomeLogEventObserver)initWithBiomeEventManager:(id)a3 dataSource:(id)a4;
- (void)observeEvent:(id)a3;
@end

@implementation HMDBiomeLogEventObserver

- (void)observeEvent:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v47 = v8;
    v48 = 2112;
    v49 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received biome log event %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = v4;
  if (objc_opt_respondsToSelector())
  {
    v38 = v9;
    [v9 biomeEventsRepresentationForLogObserver:v6];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v10 = v45 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v43;
      v15 = 0x277CF1000uLL;
      *&v12 = 138543874;
      v37 = v12;
      v41 = v10;
      do
      {
        v16 = 0;
        do
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(v15 + 2416);
          v18 = *(*(&v42 + 1) + 8 * v16);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;

          if (v20)
          {
            if (v6)
            {
              Property = objc_getProperty(v6, v21, 8, 1);
            }

            else
            {
              Property = 0;
            }

            [Property submitActionSetEvent:{v20, v37}];
          }

          else
          {
            v23 = v18;
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

            if (v25)
            {
              if (v6)
              {
                v27 = objc_getProperty(v6, v26, 8, 1);
              }

              else
              {
                v27 = 0;
              }

              [v27 submitAccessoryEvent:{v25, v37}];
            }

            else
            {
              v28 = v23;
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

              if (v30)
              {
                if (v6)
                {
                  v32 = objc_getProperty(v6, v31, 8, 1);
                }

                else
                {
                  v32 = 0;
                }

                v10 = v41;
                [v32 submitMediaAccessoryEvent:{v30, v37}];
              }

              else
              {
                context = objc_autoreleasePoolPush();
                v33 = v6;
                v34 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v39 = HMFGetLogIdentifier();
                  *buf = v37;
                  v47 = v39;
                  v48 = 2112;
                  v49 = v28;
                  v50 = 2112;
                  v51 = v38;
                  _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Skipping submission of unknown biome event: %@ for event: %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(context);
                v10 = v41;
              }

              v15 = 0x277CF1000;
            }
          }

          ++v16;
        }

        while (v13 != v16);
        v35 = [v10 countByEnumeratingWithState:&v42 objects:v52 count:16];
        v13 = v35;
      }

      while (v35);
    }

    v9 = v38;
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (HMDBiomeLogEventObserver)initWithBiomeEventManager:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDBiomeLogEventObserver;
  v9 = [(HMDBiomeLogEventObserver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_biomeEventManager, a3);
    objc_storeWeak(&v10->_dataSource, v8);
  }

  return v10;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end