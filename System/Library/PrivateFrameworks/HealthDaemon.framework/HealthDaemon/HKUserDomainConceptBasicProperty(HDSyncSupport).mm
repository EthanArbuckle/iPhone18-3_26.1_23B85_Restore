@interface HKUserDomainConceptBasicProperty(HDSyncSupport)
+ (id)createWithCodable:()HDSyncSupport;
- (HDCodableUserDomainConceptProperty)codableRepresentationForSync;
@end

@implementation HKUserDomainConceptBasicProperty(HDSyncSupport)

- (HDCodableUserDomainConceptProperty)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableUserDomainConceptProperty);
  -[HDCodableUserDomainConceptProperty setType:](v2, "setType:", [a1 type]);
  -[HDCodableUserDomainConceptProperty setVersion:](v2, "setVersion:", [a1 version]);
  [a1 timestamp];
  [(HDCodableUserDomainConceptProperty *)v2 setTimestamp:?];
  -[HDCodableUserDomainConceptProperty setValueType:](v2, "setValueType:", [a1 valueType]);
  v3 = [a1 valueType];
  if (v3 <= 3)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        if (v3 != 3)
        {
          goto LABEL_18;
        }

        v4 = [a1 numberValue];
        -[HDCodableUserDomainConceptProperty setIntegerValue:](v2, "setIntegerValue:", [v4 integerValue]);
        goto LABEL_17;
      }

      v4 = [a1 numberValue];
      [v4 doubleValue];
      goto LABEL_16;
    }

    v4 = [a1 stringValue];
    [(HDCodableUserDomainConceptProperty *)v2 setStringValue:v4];
  }

  else if (v3 > 5)
  {
    if (v3 == 6)
    {
      v4 = [a1 UUIDValue];
      v5 = [v4 hk_dataForUUIDBytes];
      [(HDCodableUserDomainConceptProperty *)v2 setDataValue:v5];
    }

    else
    {
      if (v3 != 7)
      {
        goto LABEL_18;
      }

      v4 = [a1 dataValue];
      [(HDCodableUserDomainConceptProperty *)v2 setDataValue:v4];
    }
  }

  else
  {
    if (v3 != 4)
    {
      v4 = [a1 dateValue];
      [v4 timeIntervalSinceReferenceDate];
LABEL_16:
      [(HDCodableUserDomainConceptProperty *)v2 setDoubleValue:?];
      goto LABEL_17;
    }

    v4 = [a1 numberValue];
    -[HDCodableUserDomainConceptProperty setBoolValue:](v2, "setBoolValue:", [v4 BOOLValue]);
  }

LABEL_17:

LABEL_18:

  return v2;
}

+ (id)createWithCodable:()HDSyncSupport
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (![v3 isMemberOfClass:objc_opt_class()])
  {
    v12 = 0;
    goto LABEL_30;
  }

  v4 = [v3 type];
  v5 = [v3 version];
  [v3 timestamp];
  v7 = v6;
  v8 = [v3 valueType];
  v9 = v8;
  v10 = 0;
  if (v8 <= 3)
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        if (v8 != 1)
        {
          goto LABEL_24;
        }

        v11 = [v3 stringValue];
      }

      else
      {
        v11 = [MEMORY[0x277CBEB68] null];
      }

LABEL_20:
      v10 = v11;
      if (v11)
      {
        goto LABEL_21;
      }

LABEL_24:
      _HKInitializeLogging();
      v17 = HKLogHealthOntology();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

      if (v18)
      {
        v19 = HKLogHealthOntology();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = objc_opt_class();
          v21 = HKStringFromUserDomainConceptPropertyValueType();
          v25 = 138543874;
          v26 = v20;
          v27 = 2114;
          v28 = v21;
          v29 = 2114;
          v30 = objc_opt_class();
          v22 = v30;
          _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "Decoded invalid %{public}@ with valueType = %{public}@, value of class %{public}@", &v25, 0x20u);
        }
      }

      v12 = 0;
      goto LABEL_29;
    }

    if (v8 == 2)
    {
      v14 = MEMORY[0x277CCABB0];
      [v3 doubleValue];
      [v14 numberWithDouble:?];
    }

    else
    {
      [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "integerValue")}];
    }

    v11 = LABEL_11:;
    goto LABEL_20;
  }

  if (v8 <= 5)
  {
    if (v8 == 4)
    {
      [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "BOOLValue")}];
    }

    else
    {
      v13 = MEMORY[0x277CBEAA8];
      [v3 doubleValue];
      [v13 dateWithTimeIntervalSinceReferenceDate:?];
    }

    goto LABEL_11;
  }

  if (v8 != 6)
  {
    if (v8 != 7)
    {
      goto LABEL_24;
    }

    v11 = [v3 dataValue];
    goto LABEL_20;
  }

  v15 = MEMORY[0x277CCAD78];
  v16 = [v3 dataValue];
  v10 = [v15 hk_UUIDWithData:v16];

  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_21:
  if ((HKIsValidUserDomainConceptPropertyValueType() & 1) == 0)
  {
    goto LABEL_24;
  }

  v12 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:v4 version:v5 timestamp:v9 valueType:v10 value:v7];
LABEL_29:

LABEL_30:
  v23 = *MEMORY[0x277D85DE8];

  return v12;
}

@end