@interface PSYActivityInfo
+ (id)activityWithPlist:(id)plist;
+ (unint64_t)buddyStageValueForString:(id)string;
- (PSYActivityInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSYActivityInfo

+ (id)activityWithPlist:(id)plist
{
  v55 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  v5 = [plistCopy objectForKey:@"Label"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [plistCopy objectForKey:@"MachServiceName"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [plistCopy objectForKey:@"SessionTypes"];
      v8 = 0x277CBE000uLL;
      v40 = v7;
      v41 = v6;
      if (v7)
      {
        v9 = v7;
        array = [MEMORY[0x277CBEB18] array];
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

              [array addObject:v16];
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
        array = 0;
      }

      obj = [plistCopy objectForKey:@"BackboardPrelaunchBundleIdentifier"];
      v19 = [plistCopy objectForKey:@"DependentServices"];
      v20 = [plistCopy objectForKey:@"DependentBuddyStages"];
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
        v39 = plistCopy;
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
        plistCopy = v39;
        v6 = v41;
        v24 = v36;
        v19 = v37;
      }

      v18 = objc_alloc_init(self);
      [v18 setLabel:v5];
      [v18 setMachServiceName:v6];
      [v18 setBackboardPrelaunchBundleIdentifier:obj];
      [v18 setSessionTypes:array];
      [v18 setDependentServices:v19];
      if ([v25 count])
      {
        [v18 setDependentBuddyStages:v25];
      }

      v33 = [plistCopy objectForKey:{@"Timeout", v36, v37, v38, v39}];
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

+ (unint64_t)buddyStageValueForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"InstallAllAvailableAppsSelection"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"Activation"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"AppleID"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"ApplePay"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  label = [(PSYActivityInfo *)self label];
  [coderCopy encodeObject:label forKey:@"Label"];

  machServiceName = [(PSYActivityInfo *)self machServiceName];
  [coderCopy encodeObject:machServiceName forKey:@"MachServiceName"];

  priority = [(PSYActivityInfo *)self priority];
  [coderCopy encodeObject:priority forKey:@"Priority"];

  backboardPrelaunchBundleIdentifier = [(PSYActivityInfo *)self backboardPrelaunchBundleIdentifier];
  [coderCopy encodeObject:backboardPrelaunchBundleIdentifier forKey:@"BackboardPrelaunchBundleIdentifier"];

  timeoutSeconds = [(PSYActivityInfo *)self timeoutSeconds];
  [coderCopy encodeObject:timeoutSeconds forKey:@"Timeout"];

  sessionTypes = [(PSYActivityInfo *)self sessionTypes];
  [coderCopy encodeObject:sessionTypes forKey:@"SessionTypes"];

  dependentServices = [(PSYActivityInfo *)self dependentServices];
  [coderCopy encodeObject:dependentServices forKey:@"DependentServices"];

  dependentBuddyStages = [(PSYActivityInfo *)self dependentBuddyStages];
  [coderCopy encodeObject:dependentBuddyStages forKey:@"DependentBuddyStages"];
}

- (PSYActivityInfo)initWithCoder:(id)coder
{
  v36[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = PSYActivityInfo;
  v5 = [(PSYActivityInfo *)&v33 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MachServiceName"];
    machServiceName = v5->_machServiceName;
    v5->_machServiceName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Priority"];
    priority = v5->_priority;
    v5->_priority = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BackboardPrelaunchBundleIdentifier"];
    backboardPrelaunchBundleIdentifier = v5->_backboardPrelaunchBundleIdentifier;
    v5->_backboardPrelaunchBundleIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Timeout"];
    timeoutSeconds = v5->_timeoutSeconds;
    v5->_timeoutSeconds = v14;

    v16 = MEMORY[0x277CBEB98];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"SessionTypes"];
    sessionTypes = v5->_sessionTypes;
    v5->_sessionTypes = v19;

    v21 = MEMORY[0x277CBEB98];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v23 = [v21 setWithArray:v22];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"DependentServices"];
    dependentServices = v5->_dependentServices;
    v5->_dependentServices = v24;

    v26 = MEMORY[0x277CBEB98];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v28 = [v26 setWithArray:v27];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"DependentBuddyStages"];
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
  label = [(PSYActivityInfo *)self label];
  machServiceName = [(PSYActivityInfo *)self machServiceName];
  v8 = [v3 stringWithFormat:@"<%@ %p label=%@; machServiceName=%@>", v5, self, label, machServiceName];;

  return v8;
}

@end