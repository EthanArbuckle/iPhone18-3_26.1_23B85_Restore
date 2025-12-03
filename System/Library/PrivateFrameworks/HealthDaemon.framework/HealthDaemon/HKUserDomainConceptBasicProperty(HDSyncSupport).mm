@interface HKUserDomainConceptBasicProperty(HDSyncSupport)
+ (id)createWithCodable:()HDSyncSupport;
- (HDCodableUserDomainConceptProperty)codableRepresentationForSync;
@end

@implementation HKUserDomainConceptBasicProperty(HDSyncSupport)

- (HDCodableUserDomainConceptProperty)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableUserDomainConceptProperty);
  -[HDCodableUserDomainConceptProperty setType:](v2, "setType:", [self type]);
  -[HDCodableUserDomainConceptProperty setVersion:](v2, "setVersion:", [self version]);
  [self timestamp];
  [(HDCodableUserDomainConceptProperty *)v2 setTimestamp:?];
  -[HDCodableUserDomainConceptProperty setValueType:](v2, "setValueType:", [self valueType]);
  valueType = [self valueType];
  if (valueType <= 3)
  {
    if (valueType != 1)
    {
      if (valueType != 2)
      {
        if (valueType != 3)
        {
          goto LABEL_18;
        }

        numberValue = [self numberValue];
        -[HDCodableUserDomainConceptProperty setIntegerValue:](v2, "setIntegerValue:", [numberValue integerValue]);
        goto LABEL_17;
      }

      numberValue = [self numberValue];
      [numberValue doubleValue];
      goto LABEL_16;
    }

    numberValue = [self stringValue];
    [(HDCodableUserDomainConceptProperty *)v2 setStringValue:numberValue];
  }

  else if (valueType > 5)
  {
    if (valueType == 6)
    {
      numberValue = [self UUIDValue];
      hk_dataForUUIDBytes = [numberValue hk_dataForUUIDBytes];
      [(HDCodableUserDomainConceptProperty *)v2 setDataValue:hk_dataForUUIDBytes];
    }

    else
    {
      if (valueType != 7)
      {
        goto LABEL_18;
      }

      numberValue = [self dataValue];
      [(HDCodableUserDomainConceptProperty *)v2 setDataValue:numberValue];
    }
  }

  else
  {
    if (valueType != 4)
    {
      numberValue = [self dateValue];
      [numberValue timeIntervalSinceReferenceDate];
LABEL_16:
      [(HDCodableUserDomainConceptProperty *)v2 setDoubleValue:?];
      goto LABEL_17;
    }

    numberValue = [self numberValue];
    -[HDCodableUserDomainConceptProperty setBoolValue:](v2, "setBoolValue:", [numberValue BOOLValue]);
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

  type = [v3 type];
  version = [v3 version];
  [v3 timestamp];
  v7 = v6;
  valueType = [v3 valueType];
  v9 = valueType;
  v10 = 0;
  if (valueType <= 3)
  {
    if (valueType <= 1)
    {
      if (valueType)
      {
        if (valueType != 1)
        {
          goto LABEL_24;
        }

        stringValue = [v3 stringValue];
      }

      else
      {
        stringValue = [MEMORY[0x277CBEB68] null];
      }

LABEL_20:
      v10 = stringValue;
      if (stringValue)
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

    if (valueType == 2)
    {
      v14 = MEMORY[0x277CCABB0];
      [v3 doubleValue];
      [v14 numberWithDouble:?];
    }

    else
    {
      [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "integerValue")}];
    }

    stringValue = LABEL_11:;
    goto LABEL_20;
  }

  if (valueType <= 5)
  {
    if (valueType == 4)
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

  if (valueType != 6)
  {
    if (valueType != 7)
    {
      goto LABEL_24;
    }

    stringValue = [v3 dataValue];
    goto LABEL_20;
  }

  v15 = MEMORY[0x277CCAD78];
  dataValue = [v3 dataValue];
  v10 = [v15 hk_UUIDWithData:dataValue];

  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_21:
  if ((HKIsValidUserDomainConceptPropertyValueType() & 1) == 0)
  {
    goto LABEL_24;
  }

  v12 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:type version:version timestamp:v9 valueType:v10 value:v7];
LABEL_29:

LABEL_30:
  v23 = *MEMORY[0x277D85DE8];

  return v12;
}

@end