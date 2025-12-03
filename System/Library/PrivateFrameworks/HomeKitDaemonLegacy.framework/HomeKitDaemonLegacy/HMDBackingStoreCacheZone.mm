@interface HMDBackingStoreCacheZone
- (HMDBackingStoreCacheZone)initWithZoneID:(int64_t)d name:(id)name;
- (id)dumpDebug;
@end

@implementation HMDBackingStoreCacheZone

- (id)dumpDebug
{
  v29 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"zone: %lu (%p)\n", -[HMDBackingStoreCacheZone zoneID](self, "zoneID"), self];
  zoneName = [(HMDBackingStoreCacheZone *)self zoneName];
  [string appendFormat:@"  name: %@\n", zoneName];

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
        dumpDebug = [v9 dumpDebug];
        v11 = [dumpDebug componentsSeparatedByString:@"\n"];

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

              [string appendFormat:@"    %@\n", *(*(&v19 + 1) + 8 * j)];
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

  return string;
}

- (HMDBackingStoreCacheZone)initWithZoneID:(int64_t)d name:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreCacheZone;
  v8 = [(HMDBackingStoreCacheZone *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_zoneID = d;
    objc_storeStrong(&v8->_zoneName, name);
    array = [MEMORY[0x277CBEB18] array];
    actualGroups = v9->_actualGroups;
    v9->_actualGroups = array;

    v12 = v9;
  }

  return v9;
}

@end