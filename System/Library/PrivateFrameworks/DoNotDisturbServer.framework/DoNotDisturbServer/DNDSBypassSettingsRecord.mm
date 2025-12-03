@interface DNDSBypassSettingsRecord
+ (id)_recordWithEncodedInfo:(id)info error:(id *)error;
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithImmediateBypassEventSourceType:(id)type immediateBypassCNGroupIdentifier:(id)identifier repeatEventSourceBehaviorEnabledSetting:(id)setting;
- (id)_initWithRecord:(id)record;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (unint64_t)legacyPrivilegedSenderType;
@end

@implementation DNDSBypassSettingsRecord

- (id)_initWithRecord:(id)record
{
  recordCopy = record;
  immediateBypassEventSourceType = [recordCopy immediateBypassEventSourceType];
  immediateBypassCNGroupIdentifier = [recordCopy immediateBypassCNGroupIdentifier];
  repeatEventSourceBehaviorEnabledSetting = [recordCopy repeatEventSourceBehaviorEnabledSetting];

  v8 = [(DNDSBypassSettingsRecord *)self _initWithImmediateBypassEventSourceType:immediateBypassEventSourceType immediateBypassCNGroupIdentifier:immediateBypassCNGroupIdentifier repeatEventSourceBehaviorEnabledSetting:repeatEventSourceBehaviorEnabledSetting];
  return v8;
}

- (id)_initWithImmediateBypassEventSourceType:(id)type immediateBypassCNGroupIdentifier:(id)identifier repeatEventSourceBehaviorEnabledSetting:(id)setting
{
  typeCopy = type;
  identifierCopy = identifier;
  settingCopy = setting;
  v21.receiver = self;
  v21.super_class = DNDSBypassSettingsRecord;
  v11 = [(DNDSBypassSettingsRecord *)&v21 init];
  if (v11)
  {
    v12 = [typeCopy copy];
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

    v15 = [identifierCopy copy];
    immediateBypassCNGroupIdentifier = v11->_immediateBypassCNGroupIdentifier;
    v11->_immediateBypassCNGroupIdentifier = v15;

    v17 = [settingCopy copy];
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
  immediateBypassEventSourceType = [(DNDSBypassSettingsRecord *)self immediateBypassEventSourceType];
  v4 = [immediateBypassEventSourceType hash];
  immediateBypassCNGroupIdentifier = [(DNDSBypassSettingsRecord *)self immediateBypassCNGroupIdentifier];
  v6 = [immediateBypassCNGroupIdentifier hash] ^ v4;
  repeatEventSourceBehaviorEnabledSetting = [(DNDSBypassSettingsRecord *)self repeatEventSourceBehaviorEnabledSetting];
  v8 = [repeatEventSourceBehaviorEnabledSetting hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      immediateBypassEventSourceType = [(DNDSBypassSettingsRecord *)self immediateBypassEventSourceType];
      immediateBypassEventSourceType2 = [(DNDSBypassSettingsRecord *)v6 immediateBypassEventSourceType];
      if (immediateBypassEventSourceType != immediateBypassEventSourceType2)
      {
        immediateBypassEventSourceType3 = [(DNDSBypassSettingsRecord *)self immediateBypassEventSourceType];
        if (!immediateBypassEventSourceType3)
        {
          v13 = 0;
          goto LABEL_37;
        }

        v10 = immediateBypassEventSourceType3;
        immediateBypassEventSourceType4 = [(DNDSBypassSettingsRecord *)v6 immediateBypassEventSourceType];
        if (!immediateBypassEventSourceType4)
        {
          v13 = 0;
LABEL_36:

          goto LABEL_37;
        }

        immediateBypassEventSourceType5 = [(DNDSBypassSettingsRecord *)self immediateBypassEventSourceType];
        immediateBypassEventSourceType6 = [(DNDSBypassSettingsRecord *)v6 immediateBypassEventSourceType];
        if (![immediateBypassEventSourceType5 isEqual:immediateBypassEventSourceType6])
        {
          v13 = 0;
LABEL_35:

          goto LABEL_36;
        }

        v36 = immediateBypassEventSourceType6;
        v37 = immediateBypassEventSourceType5;
        v38 = immediateBypassEventSourceType4;
        v39 = v10;
      }

      immediateBypassCNGroupIdentifier = [(DNDSBypassSettingsRecord *)self immediateBypassCNGroupIdentifier];
      immediateBypassCNGroupIdentifier2 = [(DNDSBypassSettingsRecord *)v6 immediateBypassCNGroupIdentifier];
      if (immediateBypassCNGroupIdentifier != immediateBypassCNGroupIdentifier2)
      {
        immediateBypassCNGroupIdentifier3 = [(DNDSBypassSettingsRecord *)self immediateBypassCNGroupIdentifier];
        if (immediateBypassCNGroupIdentifier3)
        {
          v17 = immediateBypassCNGroupIdentifier3;
          immediateBypassCNGroupIdentifier4 = [(DNDSBypassSettingsRecord *)v6 immediateBypassCNGroupIdentifier];
          if (immediateBypassCNGroupIdentifier4)
          {
            v35 = immediateBypassCNGroupIdentifier;
            immediateBypassCNGroupIdentifier5 = [(DNDSBypassSettingsRecord *)self immediateBypassCNGroupIdentifier];
            immediateBypassEventSourceType6 = [(DNDSBypassSettingsRecord *)v6 immediateBypassCNGroupIdentifier];
            if ([immediateBypassCNGroupIdentifier5 isEqual:immediateBypassEventSourceType6])
            {
              v31 = immediateBypassCNGroupIdentifier5;
              v32 = immediateBypassCNGroupIdentifier4;
              v33 = v17;
LABEL_17:
              repeatEventSourceBehaviorEnabledSetting = [(DNDSBypassSettingsRecord *)self repeatEventSourceBehaviorEnabledSetting];
              repeatEventSourceBehaviorEnabledSetting2 = [(DNDSBypassSettingsRecord *)v6 repeatEventSourceBehaviorEnabledSetting];
              v22 = repeatEventSourceBehaviorEnabledSetting2;
              if (repeatEventSourceBehaviorEnabledSetting == repeatEventSourceBehaviorEnabledSetting2)
              {

                v13 = 1;
                v27 = v35;
              }

              else
              {
                v34 = immediateBypassEventSourceType6;
                repeatEventSourceBehaviorEnabledSetting3 = [(DNDSBypassSettingsRecord *)self repeatEventSourceBehaviorEnabledSetting];
                if (repeatEventSourceBehaviorEnabledSetting3)
                {
                  v24 = repeatEventSourceBehaviorEnabledSetting3;
                  repeatEventSourceBehaviorEnabledSetting4 = [(DNDSBypassSettingsRecord *)v6 repeatEventSourceBehaviorEnabledSetting];
                  if (repeatEventSourceBehaviorEnabledSetting4)
                  {
                    v30 = repeatEventSourceBehaviorEnabledSetting4;
                    repeatEventSourceBehaviorEnabledSetting5 = [(DNDSBypassSettingsRecord *)self repeatEventSourceBehaviorEnabledSetting];
                    repeatEventSourceBehaviorEnabledSetting6 = [(DNDSBypassSettingsRecord *)v6 repeatEventSourceBehaviorEnabledSetting];
                    v13 = [repeatEventSourceBehaviorEnabledSetting5 isEqual:repeatEventSourceBehaviorEnabledSetting6];

                    repeatEventSourceBehaviorEnabledSetting4 = v30;
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

                immediateBypassEventSourceType6 = v34;
                v27 = v35;
              }

              if (v27 != immediateBypassCNGroupIdentifier2)
              {
              }

LABEL_34:
              immediateBypassEventSourceType4 = v38;
              v10 = v39;
              immediateBypassEventSourceType6 = v36;
              immediateBypassEventSourceType5 = v37;
              if (immediateBypassEventSourceType != immediateBypassEventSourceType2)
              {
                goto LABEL_35;
              }

LABEL_37:

              goto LABEL_38;
            }

            immediateBypassCNGroupIdentifier = v35;
          }
        }

        v13 = 0;
        goto LABEL_34;
      }

      v35 = immediateBypassCNGroupIdentifier;
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
  immediateBypassEventSourceType = [(DNDSBypassSettingsRecord *)self immediateBypassEventSourceType];
  immediateBypassCNGroupIdentifier = [(DNDSBypassSettingsRecord *)self immediateBypassCNGroupIdentifier];
  repeatEventSourceBehaviorEnabledSetting = [(DNDSBypassSettingsRecord *)self repeatEventSourceBehaviorEnabledSetting];
  v8 = [v3 stringWithFormat:@"<%@: %p immediateBypassEventSourceType: %@; immediateBypassCNGroupIdentifier: '%@'; repeatEventSourceBehaviorEnabledSetting: %@>", v4, self, immediateBypassEventSourceType, immediateBypassCNGroupIdentifier, repeatEventSourceBehaviorEnabledSetting];;

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableBypassSettingsRecord alloc];

  return [(DNDSBypassSettingsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  v6 = [representationCopy bs_safeObjectForKey:@"immediateBypassEventSourceType" ofType:objc_opt_class()];
  v7 = [representationCopy bs_safeObjectForKey:@"immediateBypassCNGroupIdentifier" ofType:objc_opt_class()];
  v8 = [representationCopy bs_safeObjectForKey:@"repeatEventSourceBehaviorEnabledSetting" ofType:objc_opt_class()];

  v9 = [[self alloc] _initWithImmediateBypassEventSourceType:v6 immediateBypassCNGroupIdentifier:v7 repeatEventSourceBehaviorEnabledSetting:v8];
  return v9;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  healingSource = [context healingSource];
  v5 = [healingSource mutableCopy];
  v6 = v5;
  if (v5)
  {
    dictionary = v5;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = dictionary;

  immediateBypassEventSourceType = [(DNDSBypassSettingsRecord *)self immediateBypassEventSourceType];
  [v8 setObject:immediateBypassEventSourceType forKey:@"immediateBypassEventSourceType"];

  immediateBypassCNGroupIdentifier = [(DNDSBypassSettingsRecord *)self immediateBypassCNGroupIdentifier];
  [v8 bs_setSafeObject:immediateBypassCNGroupIdentifier forKey:@"immediateBypassCNGroupIdentifier"];

  repeatEventSourceBehaviorEnabledSetting = [(DNDSBypassSettingsRecord *)self repeatEventSourceBehaviorEnabledSetting];
  [v8 setObject:repeatEventSourceBehaviorEnabledSetting forKey:@"repeatEventSourceBehaviorEnabledSetting"];

  return v8;
}

+ (id)_recordWithEncodedInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v6 = [infoCopy bs_safeObjectForKey:@"privilegedSenderTypes" ofType:objc_opt_class()];
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
    v9 = [infoCopy bs_safeObjectForKey:@"privilegedAddressBookGroupRecordID" ofType:objc_opt_class()];
    v10 = [self recordForLegacyPrivilegedSenderType:unsignedIntegerValue legacyAddressBookID:{objc_msgSend(v9, "intValue")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)legacyPrivilegedSenderType
{
  immediateBypassEventSourceType = [(DNDSBypassSettingsRecord *)self immediateBypassEventSourceType];
  [immediateBypassEventSourceType unsignedIntegerValue];
  v4 = DNDResolvedImmediateBypassEventSourceType();

  if ((v4 - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_2491FFC18[v4 - 1];
  }

  repeatEventSourceBehaviorEnabledSetting = [(DNDSBypassSettingsRecord *)self repeatEventSourceBehaviorEnabledSetting];
  [repeatEventSourceBehaviorEnabledSetting unsignedIntegerValue];
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