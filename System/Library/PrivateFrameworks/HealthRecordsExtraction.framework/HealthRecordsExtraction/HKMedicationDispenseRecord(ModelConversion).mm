@interface HKMedicationDispenseRecord(ModelConversion)
+ (id)medicalRecordFromClinicalItem:()ModelConversion error:;
@end

@implementation HKMedicationDispenseRecord(ModelConversion)

+ (id)medicalRecordFromClinicalItem:()ModelConversion error:
{
  v145 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v123 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(__CFString *)v4 representedResource];
  v122 = [v5 identifier];

  if (!v122)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      *buf = 138543362;
      v140 = objc_opt_class();
      v8 = v140;
      _os_log_impl(&dword_251CC8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ missing FHIR identifier on clinical item's represented resource", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item is missing a represented resource"];
    [v123 addObject:v9];
  }

  v101 = [objc_alloc(MEMORY[0x277CCD600]) initWithFHIRIdentifier:v122];
  v10 = [(__CFString *)v4 rulesVersion];
  v11 = [v10 integerValue];

  if (v11 <= 0)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = objc_opt_class();
      *buf = 138543618;
      v140 = v14;
      v141 = 2114;
      v142 = v4;
      v15 = v14;
      _os_log_impl(&dword_251CC8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid rules version on %{public}@", buf, 0x16u);
    }

    v16 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item has invalid rules version"];
    [v123 addObject:v16];
  }

  v134 = 0;
  v112 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"locale" expectedClass:objc_opt_class() isArray:0 error:&v134];
  v121 = v134;
  if (!v112 && v121)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = objc_opt_class();
      *buf = 138543874;
      v140 = v19;
      v141 = 2114;
      v142 = @"locale";
      v143 = 2114;
      v144 = v121;
      v20 = v19;
      _os_log_impl(&dword_251CC8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v123 addObject:v121];
  }

  v100 = [(__CFString *)v4 country];
  v133 = 0;
  v111 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"note" expectedClass:objc_opt_class() isArray:0 error:&v133];
  v120 = v133;
  if (!v111 && v120)
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = objc_opt_class();
      *buf = 138543874;
      v140 = v23;
      v141 = 2114;
      v142 = @"note";
      v143 = 2114;
      v144 = v120;
      v24 = v23;
      _os_log_impl(&dword_251CC8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v123 addObject:v120];
  }

  v132 = 0;
  v110 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"enteredInError" expectedClass:objc_opt_class() isArray:0 error:&v132];
  v119 = v132;
  if (!v110 && v119)
  {
    _HKInitializeLogging();
    v25 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      v27 = objc_opt_class();
      *buf = 138543874;
      v140 = v27;
      v141 = 2114;
      v142 = @"enteredInError";
      v143 = 2114;
      v144 = v119;
      v28 = v27;
      _os_log_impl(&dword_251CC8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v123 addObject:v119];
  }

  v29 = [(__CFString *)v4 representedResource];
  v98 = [v29 extractionHints];

  v131 = 0;
  v30 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"medicationCodings" expectedClass:objc_opt_class() isArray:1 error:&v131];
  v31 = v131;
  v102 = v31;
  if (v30 || !v31)
  {
    if (!v30)
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueMedicationCodings instance to avoid throwing exception"];
      v37 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277CCA450];
      v137[0] = @"propertyName";
      v137[1] = v38;
      v138[0] = @"medicationCodings";
      v138[1] = v36;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:2];
      v40 = [v37 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v39];

      [v123 addObject:v40];
    }
  }

  else
  {
    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      v34 = objc_opt_class();
      *buf = 138543874;
      v140 = v34;
      v141 = 2114;
      v142 = @"medicationCodings";
      v143 = 2114;
      v144 = v102;
      v35 = v34;
      _os_log_impl(&dword_251CC8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v123 addObject:v102];
  }

  v103 = v30;
  v130 = 0;
  v41 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"quantityDispensed" expectedClass:objc_opt_class() isArray:0 error:&v130];
  v118 = v130;
  if (!v41 && v118)
  {
    _HKInitializeLogging();
    v42 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v43 = v42;
      v44 = objc_opt_class();
      *buf = 138543874;
      v140 = v44;
      v141 = 2114;
      v142 = @"quantityDispensed";
      v143 = 2114;
      v144 = v118;
      v45 = v44;
      _os_log_impl(&dword_251CC8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v123 addObject:v118];
  }

  v104 = v41;
  v129 = 0;
  v46 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"preparationDate" expectedClass:objc_opt_class() isArray:0 error:&v129];
  v117 = v129;
  if (!v46 && v117)
  {
    _HKInitializeLogging();
    v47 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v48 = v47;
      v49 = objc_opt_class();
      *buf = 138543874;
      v140 = v49;
      v141 = 2114;
      v142 = @"preparationDate";
      v143 = 2114;
      v144 = v117;
      v50 = v49;
      _os_log_impl(&dword_251CC8000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v123 addObject:v117];
  }

  v105 = v46;
  v128 = 0;
  v51 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"handOverDate" expectedClass:objc_opt_class() isArray:0 error:&v128];
  v116 = v128;
  if (!v51 && v116)
  {
    _HKInitializeLogging();
    v52 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v53 = v52;
      v54 = objc_opt_class();
      *buf = 138543874;
      v140 = v54;
      v141 = 2114;
      v142 = @"handOverDate";
      v143 = 2114;
      v144 = v116;
      v55 = v54;
      _os_log_impl(&dword_251CC8000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v123 addObject:v116];
  }

  v106 = v51;
  v127 = 0;
  v56 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"dosages" expectedClass:objc_opt_class() isArray:1 error:&v127];
  v115 = v127;
  if (!v56 && v115)
  {
    _HKInitializeLogging();
    v57 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v58 = v57;
      v59 = objc_opt_class();
      *buf = 138543874;
      v140 = v59;
      v141 = 2114;
      v142 = @"dosages";
      v143 = 2114;
      v144 = v115;
      v60 = v59;
      _os_log_impl(&dword_251CC8000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v123 addObject:v115];
  }

  v107 = v56;
  v126 = 0;
  v61 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"earliestDosageDate" expectedClass:objc_opt_class() isArray:0 error:&v126];
  v114 = v126;
  if (!v61 && v114)
  {
    _HKInitializeLogging();
    v62 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v63 = v62;
      v64 = objc_opt_class();
      *buf = 138543874;
      v140 = v64;
      v141 = 2114;
      v142 = @"earliestDosageDate";
      v143 = 2114;
      v144 = v114;
      v65 = v64;
      _os_log_impl(&dword_251CC8000, v63, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v123 addObject:v114];
  }

  v108 = v61;
  v125 = 0;
  v66 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"statusCoding" expectedClass:objc_opt_class() isArray:0 error:&v125];
  v113 = v125;
  if (!v66 && v113)
  {
    _HKInitializeLogging();
    v67 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v68 = v67;
      v69 = objc_opt_class();
      *buf = 138543874;
      v140 = v69;
      v141 = 2114;
      v142 = @"statusCoding";
      v143 = 2114;
      v144 = v113;
      v70 = v69;
      _os_log_impl(&dword_251CC8000, v68, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v123 addObject:v113];
  }

  v109 = v66;
  v124 = 0;
  v71 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"daysSupplyQuantity" expectedClass:objc_opt_class() isArray:0 error:&v124];
  v72 = v124;
  v73 = v72;
  if (!v71 && v72)
  {
    _HKInitializeLogging();
    v74 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v75 = v74;
      v76 = objc_opt_class();
      *buf = 138543874;
      v140 = v76;
      v141 = 2114;
      v142 = @"daysSupplyQuantity";
      v143 = 2114;
      v144 = v73;
      v77 = v76;
      _os_log_impl(&dword_251CC8000, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v123 addObject:v73];
  }

  v78 = v71;
  if (![v123 count])
  {
    v86 = [(__CFString *)v4 representedResource];
    v87 = [v86 receivedDate];
    v88 = v87;
    if (v87)
    {
      v89 = v87;
    }

    else
    {
      v89 = [MEMORY[0x277CBEAA8] date];
    }

    v90 = v89;

    v91 = [v110 BOOLValue];
    v83 = [MEMORY[0x277CCD2E8] localDevice];
    v92 = [(__CFString *)v4 medicalRecordMetadata];
    v93 = [MEMORY[0x277CCD638] medicationDispenseRecordType];
    v85 = [MEMORY[0x277CCD630] medicationDispenseRecordWithType:v93 note:v111 enteredInError:v91 modifiedDate:v90 originIdentifier:v101 locale:v112 extractionVersion:v11 device:v83 metadata:v92 country:v100 state:(v98 >> 2) & 1 medicationCodings:v103 quantityDispensed:v104 preparationDate:v105 handOverDate:v106 dosages:v107 earliestDosageDate:v108 statusCoding:v109 daysSupplyQuantity:v78];
    v94 = [(__CFString *)v4 representedResource];
    v95 = [v94 firstSeenDate];
    [v85 _setCreationDate:v95];

    goto LABEL_77;
  }

  v79 = MEMORY[0x277CCA9B8];
  v135 = @"conversionErrors";
  v136 = v123;
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
  v81 = [v79 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:201 userInfo:v80];

  v82 = v81;
  v83 = v82;
  if (!v82)
  {
    goto LABEL_73;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_73:
    v85 = 0;
    goto LABEL_74;
  }

  v84 = v82;
  v85 = 0;
  *a4 = v83;
LABEL_74:
  v90 = v83;
LABEL_77:

  v96 = *MEMORY[0x277D85DE8];

  return v85;
}

@end