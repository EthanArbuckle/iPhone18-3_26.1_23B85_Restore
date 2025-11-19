@interface HMDBackingStoreCacheZone
- (HMDBackingStoreCacheZone)initWithZoneID:(int64_t)a3 name:(id)a4;
- (id)dumpDebug;
@end

@implementation HMDBackingStoreCacheZone

- (id)dumpDebug
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"zone: %lu (%p)\n", -[HMDBackingStoreCacheZone zoneID](self, "zoneID"), self];
  v4 = [(HMDBackingStoreCacheZone *)self zoneName];
  [v3 appendFormat:@"  name: %@\n", v4];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(HMDBackingStoreCacheZone *)self actualGroups];
  v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = [v9 dumpDebug];
        v11 = [v10 componentsSeparatedByString:@"\n"];

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v3 appendFormat:@"    %@\n", *(*(&v19 + 1) + 8 * j)];
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMDBackingStoreCacheZone)initWithZoneID:(int64_t)a3 name:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreCacheZone;
  v8 = [(HMDBackingStoreCacheZone *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_zoneID = a3;
    objc_storeStrong(&v8->_zoneName, a4);
    v10 = [MEMORY[0x277CBEB18] array];
    actualGroups = v9->_actualGroups;
    v9->_actualGroups = v10;

    v12 = v9;
  }

  return v9;
}

@end