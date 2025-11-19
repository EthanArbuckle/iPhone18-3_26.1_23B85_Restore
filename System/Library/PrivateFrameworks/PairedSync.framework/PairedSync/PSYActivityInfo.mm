@interface PSYActivityInfo
+ (id)activityWithPlist:(id)a3;
+ (unint64_t)buddyStageValueForString:(id)a3;
- (PSYActivityInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSYActivityInfo

+ (id)activityWithPlist:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"Label"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v4 objectForKey:@"MachServiceName"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v4 objectForKey:@"SessionTypes"];
      v8 = 0x277CBE000uLL;
      v40 = v7;
      v41 = v6;
      if (v7)
      {
        v9 = v7;
        v43 = [MEMORY[0x277CBEB18] array];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        obj = v9;
        v10 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v49;
          do
          {
            v13 = 0;
            do
            {
              if (*v49 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v48 + 1) + 8 * v13);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_26;
              }

              v15 = v14;
              if ([v15 isEqualToString:@"Initial"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"FullSync"))
              {
                v16 = &unk_286FC2AF0;
              }

              else
              {
                v16 = &unk_286FC2B08;
                if (([v15 isEqualToString:@"Reunion"] & 1) == 0)
                {
                  if ([v15 isEqualToString:@"Migration"])
                  {
                    v16 = &unk_286FC2B20;
                  }

                  else
                  {
                    v16 = 0;
                  }
                }
              }

              if (!v16)
              {
LABEL_26:
                v18 = 0;
                v6 = v41;
                goto LABEL_45;
              }

              [v43 addObject:v16];
              ++v13;
            }

            while (v11 != v13);
            v17 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
            v11 = v17;
          }

          while (v17);
        }

        v6 = v41;
        v8 = 0x277CBE000;
      }

      else
      {
        v43 = 0;
      }

      obj = [v4 objectForKey:@"BackboardPrelaunchBundleIdentifier"];
      v19 = [v4 objectForKey:@"DependentServices"];
      v20 = [v4 objectForKey:@"DependentBuddyStages"];
      v21 = MEMORY[0x277CBEB98];
      v53[0] = @"InstallAllAvailableAppsSelection";
      v53[1] = @"Activation";
      v53[2] = @"AppleID";
      v53[3] = @"ApplePay";
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
      v23 = [v21 setWithArray:v22];

      v24 = v20;
      v25 = objc_alloc_init(*(v8 + 2840));
      if ([v20 count])
      {
        v37 = v19;
        v38 = v5;
        v39 = v4;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v36 = v20;
        v26 = v20;
        v27 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v45;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v45 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v44 + 1) + 8 * i);
              if ([v23 containsObject:{v31, v36, v37, v38, v39, v40}])
              {
                v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "buddyStageValueForString:", v31)}];
                [v25 addObject:v32];
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v28);
        }

        v5 = v38;
        v4 = v39;
        v6 = v41;
        v24 = v36;
        v19 = v37;
      }

      v18 = objc_alloc_init(a1);
      [v18 setLabel:v5];
      [v18 setMachServiceName:v6];
      [v18 setBackboardPrelaunchBundleIdentifier:obj];
      [v18 setSessionTypes:v43];
      [v18 setDependentServices:v19];
      if ([v25 count])
      {
        [v18 setDependentBuddyStages:v25];
      }

      v33 = [v4 objectForKey:{@"Timeout", v36, v37, v38, v39}];
      if (v33)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v18 setTimeoutSeconds:v33];
        }
      }

LABEL_45:
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (unint64_t)buddyStageValueForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"InstallAllAvailableAppsSelection"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Activation"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AppleID"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ApplePay"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PSYActivityInfo *)self label];
  [v4 encodeObject:v5 forKey:@"Label"];

  v6 = [(PSYActivityInfo *)self machServiceName];
  [v4 encodeObject:v6 forKey:@"MachServiceName"];

  v7 = [(PSYActivityInfo *)self priority];
  [v4 encodeObject:v7 forKey:@"Priority"];

  v8 = [(PSYActivityInfo *)self backboardPrelaunchBundleIdentifier];
  [v4 encodeObject:v8 forKey:@"BackboardPrelaunchBundleIdentifier"];

  v9 = [(PSYActivityInfo *)self timeoutSeconds];
  [v4 encodeObject:v9 forKey:@"Timeout"];

  v10 = [(PSYActivityInfo *)self sessionTypes];
  [v4 encodeObject:v10 forKey:@"SessionTypes"];

  v11 = [(PSYActivityInfo *)self dependentServices];
  [v4 encodeObject:v11 forKey:@"DependentServices"];

  v12 = [(PSYActivityInfo *)self dependentBuddyStages];
  [v4 encodeObject:v12 forKey:@"DependentBuddyStages"];
}

- (PSYActivityInfo)initWithCoder:(id)a3
{
  v36[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = PSYActivityInfo;
  v5 = [(PSYActivityInfo *)&v33 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MachServiceName"];
    machServiceName = v5->_machServiceName;
    v5->_machServiceName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Priority"];
    priority = v5->_priority;
    v5->_priority = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BackboardPrelaunchBundleIdentifier"];
    backboardPrelaunchBundleIdentifier = v5->_backboardPrelaunchBundleIdentifier;
    v5->_backboardPrelaunchBundleIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Timeout"];
    timeoutSeconds = v5->_timeoutSeconds;
    v5->_timeoutSeconds = v14;

    v16 = MEMORY[0x277CBEB98];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"SessionTypes"];
    sessionTypes = v5->_sessionTypes;
    v5->_sessionTypes = v19;

    v21 = MEMORY[0x277CBEB98];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v23 = [v21 setWithArray:v22];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"DependentServices"];
    dependentServices = v5->_dependentServices;
    v5->_dependentServices = v24;

    v26 = MEMORY[0x277CBEB98];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v28 = [v26 setWithArray:v27];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"DependentBuddyStages"];
    dependentBuddyStages = v5->_dependentBuddyStages;
    v5->_dependentBuddyStages = v29;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PSYActivityInfo *)self label];
  v7 = [(PSYActivityInfo *)self machServiceName];
  v8 = [v3 stringWithFormat:@"<%@ %p label=%@; machServiceName=%@>", v5, self, v6, v7];;

  return v8;
}

@end