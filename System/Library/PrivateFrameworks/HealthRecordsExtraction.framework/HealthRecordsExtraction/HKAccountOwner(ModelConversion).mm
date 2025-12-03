@interface HKAccountOwner(ModelConversion)
+ (id)medicalRecordFromClinicalItem:()ModelConversion error:;
@end

@implementation HKAccountOwner(ModelConversion)

+ (id)medicalRecordFromClinicalItem:()ModelConversion error:
{
  v97 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v81 = objc_alloc_init(MEMORY[0x277CBEB18]);
  representedResource = [(__CFString *)v4 representedResource];
  identifier = [representedResource identifier];

  if (!identifier)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      *buf = 138543362;
      v92 = objc_opt_class();
      v8 = v92;
      _os_log_impl(&dword_251CC8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ missing FHIR identifier on clinical item's represented resource", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item is missing a represented resource"];
    [v81 addObject:v9];
  }

  v70 = [objc_alloc(MEMORY[0x277CCD600]) initWithFHIRIdentifier:identifier];
  rulesVersion = [(__CFString *)v4 rulesVersion];
  integerValue = [rulesVersion integerValue];

  if (integerValue <= 0)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      *buf = 138543618;
      v92 = v13;
      v93 = 2114;
      v94 = v4;
      v14 = v13;
      _os_log_impl(&dword_251CC8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid rules version on %{public}@", buf, 0x16u);
    }

    v15 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item has invalid rules version"];
    [v81 addObject:v15];
  }

  v86 = 0;
  v76 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"locale" expectedClass:objc_opt_class() isArray:0 error:&v86];
  v79 = v86;
  if (!v76 && v79)
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = objc_opt_class();
      *buf = 138543874;
      v92 = v18;
      v93 = 2114;
      v94 = @"locale";
      v95 = 2114;
      v96 = v79;
      v19 = v18;
      _os_log_impl(&dword_251CC8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v81 addObject:v79];
  }

  country = [(__CFString *)v4 country];
  v85 = 0;
  v75 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"note" expectedClass:objc_opt_class() isArray:0 error:&v85];
  v78 = v85;
  if (!v75 && v78)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = objc_opt_class();
      *buf = 138543874;
      v92 = v22;
      v93 = 2114;
      v94 = @"note";
      v95 = 2114;
      v96 = v78;
      v23 = v22;
      _os_log_impl(&dword_251CC8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v81 addObject:v78];
  }

  v84 = 0;
  v74 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"enteredInError" expectedClass:objc_opt_class() isArray:0 error:&v84];
  v77 = v84;
  if (!v74 && v77)
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = objc_opt_class();
      *buf = 138543874;
      v92 = v26;
      v93 = 2114;
      v94 = @"enteredInError";
      v95 = 2114;
      v96 = v77;
      v27 = v26;
      _os_log_impl(&dword_251CC8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v81 addObject:v77];
  }

  representedResource2 = [(__CFString *)v4 representedResource];
  extractionHints = [representedResource2 extractionHints];

  v83 = 0;
  v29 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"name" expectedClass:objc_opt_class() isArray:0 error:&v83];
  v30 = v83;
  v72 = v30;
  if (v29 || !v30)
  {
    if (!v29)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueName instance to avoid throwing exception"];
      v36 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v89[0] = @"propertyName";
      v89[1] = v37;
      v90[0] = @"name";
      v90[1] = v35;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
      v39 = [v36 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v38];

      [v81 addObject:v39];
    }
  }

  else
  {
    _HKInitializeLogging();
    v31 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = objc_opt_class();
      *buf = 138543874;
      v92 = v33;
      v93 = 2114;
      v94 = @"name";
      v95 = 2114;
      v96 = v72;
      v34 = v33;
      _os_log_impl(&dword_251CC8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v81 addObject:v72];
  }

  v73 = v29;
  v82 = 0;
  v40 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"birthDate" expectedClass:objc_opt_class() isArray:0 error:&v82];
  v41 = v82;
  v42 = v41;
  if (!v40 && v41)
  {
    _HKInitializeLogging();
    v43 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43;
      v45 = objc_opt_class();
      *buf = 138543874;
      v92 = v45;
      v93 = 2114;
      v94 = @"birthDate";
      v95 = 2114;
      v96 = v42;
      v46 = v45;
      _os_log_impl(&dword_251CC8000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v81 addObject:v42];
  }

  v47 = v40;
  if (![v81 count])
  {
    representedResource3 = [(__CFString *)v4 representedResource];
    receivedDate = [representedResource3 receivedDate];
    v57 = receivedDate;
    if (receivedDate)
    {
      date = receivedDate;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v59 = date;

    bOOLValue = [v74 BOOLValue];
    localDevice = [MEMORY[0x277CCD2E8] localDevice];
    medicalRecordMetadata = [(__CFString *)v4 medicalRecordMetadata];
    accountOwnerType = [MEMORY[0x277CCCF90] accountOwnerType];
    v54 = [MEMORY[0x277CCCF88] accountOwnerWithType:accountOwnerType note:v75 enteredInError:bOOLValue modifiedDate:v59 originIdentifier:v70 locale:v76 extractionVersion:integerValue device:localDevice metadata:medicalRecordMetadata country:country state:(extractionHints >> 2) & 1 name:v73 birthDate:v47];
    representedResource4 = [(__CFString *)v4 representedResource];
    firstSeenDate = [representedResource4 firstSeenDate];
    [v54 _setCreationDate:firstSeenDate];

    goto LABEL_47;
  }

  v48 = MEMORY[0x277CCA9B8];
  v87 = @"conversionErrors";
  v88 = v81;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
  v50 = [v48 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:201 userInfo:v49];

  v51 = v50;
  localDevice = v51;
  if (!v51)
  {
    goto LABEL_43;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_43:
    v54 = 0;
    goto LABEL_44;
  }

  v53 = v51;
  v54 = 0;
  *a4 = localDevice;
LABEL_44:
  v59 = localDevice;
LABEL_47:

  v65 = *MEMORY[0x277D85DE8];

  return v54;
}

@end