@interface HKUserDomainConceptLocalizedString(HDSyncSupport)
+ (id)createWithCodable:()HDSyncSupport;
- (HDCodableUserDomainConceptLocalizedStringProperty)codableRepresentationForSync;
@end

@implementation HKUserDomainConceptLocalizedString(HDSyncSupport)

- (HDCodableUserDomainConceptLocalizedStringProperty)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableUserDomainConceptLocalizedStringProperty);
  -[HDCodableUserDomainConceptLocalizedStringProperty setType:](v2, "setType:", [self type]);
  -[HDCodableUserDomainConceptLocalizedStringProperty setVersion:](v2, "setVersion:", [self version]);
  [self timestamp];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v2 setTimestamp:?];
  stringValue = [self stringValue];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v2 setStringValue:stringValue];

  locale = [self locale];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v2 setLocale:locale];

  -[HDCodableUserDomainConceptLocalizedStringProperty setDeleted:](v2, "setDeleted:", [self isDeleted]);

  return v2;
}

+ (id)createWithCodable:()HDSyncSupport
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    type = [v3 type];
    version = [v3 version];
    [v3 timestamp];
    v7 = v6;
    stringValue = [v3 stringValue];
    locale = [v3 locale];
    deleted = [v3 deleted];
    if (stringValue && locale)
    {
      v11 = [objc_alloc(MEMORY[0x277CCDB10]) initWithType:type stringValue:stringValue locale:locale version:version timestamp:deleted deleted:v7];
    }

    else
    {
      _HKInitializeLogging();
      v12 = HKLogHealthOntology();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

      if (v13)
      {
        v14 = HKLogHealthOntology();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v17 = 138543874;
          v18 = objc_opt_class();
          v19 = 2114;
          v20 = stringValue;
          v21 = 2114;
          v22 = locale;
          _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_INFO, "Decoded invalid %{public}@ with stringValue = %{public}@, locale = %{public}@", &v17, 0x20u);
        }
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

@end