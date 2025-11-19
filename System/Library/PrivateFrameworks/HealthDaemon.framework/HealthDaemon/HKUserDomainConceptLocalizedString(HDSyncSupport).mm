@interface HKUserDomainConceptLocalizedString(HDSyncSupport)
+ (id)createWithCodable:()HDSyncSupport;
- (HDCodableUserDomainConceptLocalizedStringProperty)codableRepresentationForSync;
@end

@implementation HKUserDomainConceptLocalizedString(HDSyncSupport)

- (HDCodableUserDomainConceptLocalizedStringProperty)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableUserDomainConceptLocalizedStringProperty);
  -[HDCodableUserDomainConceptLocalizedStringProperty setType:](v2, "setType:", [a1 type]);
  -[HDCodableUserDomainConceptLocalizedStringProperty setVersion:](v2, "setVersion:", [a1 version]);
  [a1 timestamp];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v2 setTimestamp:?];
  v3 = [a1 stringValue];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v2 setStringValue:v3];

  v4 = [a1 locale];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v2 setLocale:v4];

  -[HDCodableUserDomainConceptLocalizedStringProperty setDeleted:](v2, "setDeleted:", [a1 isDeleted]);

  return v2;
}

+ (id)createWithCodable:()HDSyncSupport
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = [v3 type];
    v5 = [v3 version];
    [v3 timestamp];
    v7 = v6;
    v8 = [v3 stringValue];
    v9 = [v3 locale];
    v10 = [v3 deleted];
    if (v8 && v9)
    {
      v11 = [objc_alloc(MEMORY[0x277CCDB10]) initWithType:v4 stringValue:v8 locale:v9 version:v5 timestamp:v10 deleted:v7];
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
          v20 = v8;
          v21 = 2114;
          v22 = v9;
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