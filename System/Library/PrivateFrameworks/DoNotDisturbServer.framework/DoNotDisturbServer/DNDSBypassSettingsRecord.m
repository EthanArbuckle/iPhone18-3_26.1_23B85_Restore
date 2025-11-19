@interface DNDSBypassSettingsRecord
+ (id)_recordWithEncodedInfo:(id)a3 error:(id *)a4;
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithImmediateBypassEventSourceType:(id)a3 immediateBypassCNGroupIdentifier:(id)a4 repeatEventSourceBehaviorEnabledSetting:(id)a5;
- (id)_initWithRecord:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (unint64_t)legacyPrivilegedSenderType;
@end

@implementation DNDSBypassSettingsRecord

- (id)_initWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 immediateBypassEventSourceType];
  v6 = [v4 immediateBypassCNGroupIdentifier];
  v7 = [v4 repeatEventSourceBehaviorEnabledSetting];

  v8 = [(DNDSBypassSettingsRecord *)self _initWithImmediateBypassEventSourceType:v5 immediateBypassCNGroupIdentifier:v6 repeatEventSourceBehaviorEnabledSetting:v7];
  return v8;
}

- (id)_initWithImmediateBypassEventSourceType:(id)a3 immediateBypassCNGroupIdentifier:(id)a4 repeatEventSourceBehaviorEnabledSetting:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = DNDSBypassSettingsRecord;
  v11 = [(DNDSBypassSettingsRecord *)&v21 init];
  if (v11)
  {
    v12 = [v8 copy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &unk_285C53400;
    }

    objc_storeStrong(&v11->_immediateBypassEventSourceType, v14);

    v15 = [v9 copy];
    immediateBypassCNGroupIdentifier = v11->_immediateBypassCNGroupIdentifier;
    v11->_immediateBypassCNGroupIdentifier = v15;

    v17 = [v10 copy];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &unk_285C53400;
    }

    objc_storeStrong(&v11->_repeatEventSourceBehaviorEnabledSetting, v19);
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(DNDSBypassSettingsRecord *)self immediateBypassEventSourceType];
  v4 = [v3 hash];
  v5 = [(DNDSBypassSettingsRecord *)self immediateBypassCNGroupIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSBypassSettingsRecord *)self repeatEventSourceBehaviorEnabledSetting];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDSBypassSettingsRecord *)self immediateBypassEventSourceType];
      v8 = [(DNDSBypassSettingsRecord *)v6 immediateBypassEventSourceType];
      if (v7 != v8)
      {
        v9 = [(DNDSBypassSettingsRecord *)self immediateBypassEventSourceType];
        if (!v9)
        {
          v13 = 0;
          goto LABEL_37;
        }

        v10 = v9;
        v11 = [(DNDSBypassSettingsRecord *)v6 immediateBypassEventSourceType];
        if (!v11)
        {
          v13 = 0;
LABEL_36:

          goto LABEL_37;
        }

        v12 = [(DNDSBypassSettingsRecord *)self immediateBypassEventSourceType];
        v3 = [(DNDSBypassSettingsRecord *)v6 immediateBypassEventSourceType];
        if (![v12 isEqual:v3])
        {
          v13 = 0;
LABEL_35:

          goto LABEL_36;
        }

        v36 = v3;
        v37 = v12;
        v38 = v11;
        v39 = v10;
      }

      v14 = [(DNDSBypassSettingsRecord *)self immediateBypassCNGroupIdentifier];
      v15 = [(DNDSBypassSettingsRecord *)v6 immediateBypassCNGroupIdentifier];
      if (v14 != v15)
      {
        v16 = [(DNDSBypassSettingsRecord *)self immediateBypassCNGroupIdentifier];
        if (v16)
        {
          v17 = v16;
          v18 = [(DNDSBypassSettingsRecord *)v6 immediateBypassCNGroupIdentifier];
          if (v18)
          {
            v35 = v14;
            v19 = [(DNDSBypassSettingsRecord *)self immediateBypassCNGroupIdentifier];
            v3 = [(DNDSBypassSettingsRecord *)v6 immediateBypassCNGroupIdentifier];
            if ([v19 isEqual:v3])
            {
              v31 = v19;
              v32 = v18;
              v33 = v17;
LABEL_17:
              v20 = [(DNDSBypassSettingsRecord *)self repeatEventSourceBehaviorEnabledSetting];
              v21 = [(DNDSBypassSettingsRecord *)v6 repeatEventSourceBehaviorEnabledSetting];
              v22 = v21;
              if (v20 == v21)
              {

                v13 = 1;
                v27 = v35;
              }

              else
              {
                v34 = v3;
                v23 = [(DNDSBypassSettingsRecord *)self repeatEventSourceBehaviorEnabledSetting];
                if (v23)
                {
                  v24 = v23;
                  v25 = [(DNDSBypassSettingsRecord *)v6 repeatEventSourceBehaviorEnabledSetting];
                  if (v25)
                  {
                    v30 = v25;
                    v29 = [(DNDSBypassSettingsRecord *)self repeatEventSourceBehaviorEnabledSetting];
                    v26 = [(DNDSBypassSettingsRecord *)v6 repeatEventSourceBehaviorEnabledSetting];
                    v13 = [v29 isEqual:v26];

                    v25 = v30;
                  }

                  else
                  {
                    v13 = 0;
                  }
                }

                else
                {

                  v13 = 0;
                }

                v3 = v34;
                v27 = v35;
              }

              if (v27 != v15)
              {
              }

LABEL_34:
              v11 = v38;
              v10 = v39;
              v3 = v36;
              v12 = v37;
              if (v7 != v8)
              {
                goto LABEL_35;
              }

LABEL_37:

              goto LABEL_38;
            }

            v14 = v35;
          }
        }

        v13 = 0;
        goto LABEL_34;
      }

      v35 = v14;
      goto LABEL_17;
    }

    v13 = 0;
  }

LABEL_38:

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDSBypassSettingsRecord *)self immediateBypassEventSourceType];
  v6 = [(DNDSBypassSettingsRecord *)self immediateBypassCNGroupIdentifier];
  v7 = [(DNDSBypassSettingsRecord *)self repeatEventSourceBehaviorEnabledSetting];
  v8 = [v3 stringWithFormat:@"<%@: %p immediateBypassEventSourceType: %@; immediateBypassCNGroupIdentifier: '%@'; repeatEventSourceBehaviorEnabledSetting: %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableBypassSettingsRecord alloc];

  return [(DNDSBypassSettingsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [v5 bs_safeObjectForKey:@"immediateBypassEventSourceType" ofType:objc_opt_class()];
  v7 = [v5 bs_safeObjectForKey:@"immediateBypassCNGroupIdentifier" ofType:objc_opt_class()];
  v8 = [v5 bs_safeObjectForKey:@"repeatEventSourceBehaviorEnabledSetting" ofType:objc_opt_class()];

  v9 = [[a1 alloc] _initWithImmediateBypassEventSourceType:v6 immediateBypassCNGroupIdentifier:v7 repeatEventSourceBehaviorEnabledSetting:v8];
  return v9;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v4 = [a3 healingSource];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;

  v9 = [(DNDSBypassSettingsRecord *)self immediateBypassEventSourceType];
  [v8 setObject:v9 forKey:@"immediateBypassEventSourceType"];

  v10 = [(DNDSBypassSettingsRecord *)self immediateBypassCNGroupIdentifier];
  [v8 bs_setSafeObject:v10 forKey:@"immediateBypassCNGroupIdentifier"];

  v11 = [(DNDSBypassSettingsRecord *)self repeatEventSourceBehaviorEnabledSetting];
  [v8 setObject:v11 forKey:@"repeatEventSourceBehaviorEnabledSetting"];

  return v8;
}

+ (id)_recordWithEncodedInfo:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 bs_safeObjectForKey:@"privilegedSenderTypes" ofType:objc_opt_class()];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntegerValue];
    v9 = [v5 bs_safeObjectForKey:@"privilegedAddressBookGroupRecordID" ofType:objc_opt_class()];
    v10 = [a1 recordForLegacyPrivilegedSenderType:v8 legacyAddressBookID:{objc_msgSend(v9, "intValue")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)legacyPrivilegedSenderType
{
  v3 = [(DNDSBypassSettingsRecord *)self immediateBypassEventSourceType];
  [v3 unsignedIntegerValue];
  v4 = DNDResolvedImmediateBypassEventSourceType();

  if ((v4 - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_2491FFC18[v4 - 1];
  }

  v6 = [(DNDSBypassSettingsRecord *)self repeatEventSourceBehaviorEnabledSetting];
  [v6 unsignedIntegerValue];
  v7 = DNDResolvedRepeatEventSourceBehaviorEnabledSetting();

  if (v7 == 2)
  {
    return v5 | 8;
  }

  else
  {
    return v5;
  }
}

@end