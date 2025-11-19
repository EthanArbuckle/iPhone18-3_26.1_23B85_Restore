@interface HKClinicalNoteRecord(ModelConversion)
+ (id)medicalRecordFromClinicalItem:()ModelConversion error:;
@end

@implementation HKClinicalNoteRecord(ModelConversion)

+ (id)medicalRecordFromClinicalItem:()ModelConversion error:
{
  v153 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v128 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(__CFString *)v4 representedResource];
  v127 = [v5 identifier];

  if (!v127)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      *buf = 138543362;
      v148 = objc_opt_class();
      v8 = v148;
      _os_log_impl(&dword_251CC8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ missing FHIR identifier on clinical item's represented resource", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item is missing a represented resource"];
    [v128 addObject:v9];
  }

  v107 = [objc_alloc(MEMORY[0x277CCD600]) initWithFHIRIdentifier:v127];
  v10 = [(__CFString *)v4 rulesVersion];
  v108 = [v10 integerValue];

  if (v108 <= 0)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      *buf = 138543618;
      v148 = v13;
      v149 = 2114;
      v150 = v4;
      v14 = v13;
      _os_log_impl(&dword_251CC8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid rules version on %{public}@", buf, 0x16u);
    }

    v15 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item has invalid rules version"];
    [v128 addObject:v15];
  }

  v138 = 0;
  v120 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"locale" expectedClass:objc_opt_class() isArray:0 error:&v138];
  v126 = v138;
  if (!v120 && v126)
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = objc_opt_class();
      *buf = 138543874;
      v148 = v18;
      v149 = 2114;
      v150 = @"locale";
      v151 = 2114;
      v152 = v126;
      v19 = v18;
      _os_log_impl(&dword_251CC8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v128 addObject:v126];
  }

  v106 = [(__CFString *)v4 country];
  v137 = 0;
  v119 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"note" expectedClass:objc_opt_class() isArray:0 error:&v137];
  v125 = v137;
  if (!v119 && v125)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = objc_opt_class();
      *buf = 138543874;
      v148 = v22;
      v149 = 2114;
      v150 = @"note";
      v151 = 2114;
      v152 = v125;
      v23 = v22;
      _os_log_impl(&dword_251CC8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v128 addObject:v125];
  }

  v136 = 0;
  v118 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"enteredInError" expectedClass:objc_opt_class() isArray:0 error:&v136];
  v124 = v136;
  if (!v118 && v124)
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = objc_opt_class();
      *buf = 138543874;
      v148 = v26;
      v149 = 2114;
      v150 = @"enteredInError";
      v151 = 2114;
      v152 = v124;
      v27 = v26;
      _os_log_impl(&dword_251CC8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v128 addObject:v124];
  }

  v28 = [(__CFString *)v4 representedResource];
  v104 = [v28 extractionHints];

  v135 = 0;
  v29 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"statusCoding" expectedClass:objc_opt_class() isArray:0 error:&v135];
  v30 = v135;
  v111 = v30;
  if (v29 || !v30)
  {
    if (!v29)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueStatusCoding instance to avoid throwing exception"];
      v36 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v145[0] = @"propertyName";
      v145[1] = v37;
      v146[0] = @"statusCoding";
      v146[1] = v35;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:2];
      v39 = [v36 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v38];

      [v128 addObject:v39];
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
      v148 = v33;
      v149 = 2114;
      v150 = @"statusCoding";
      v151 = 2114;
      v152 = v111;
      v34 = v33;
      _os_log_impl(&dword_251CC8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v128 addObject:v111];
  }

  v112 = v29;
  v134 = 0;
  v40 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"documentTypeCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v134];
  v41 = v134;
  v110 = v41;
  if (v40 || !v41)
  {
    if (!v40)
    {
      v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueDocumentTypeCodingCollection instance to avoid throwing exception"];
      v47 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA450];
      v143[0] = @"propertyName";
      v143[1] = v48;
      v144[0] = @"documentTypeCodingCollection";
      v144[1] = v46;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v143 count:2];
      v50 = [v47 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v49];

      [v128 addObject:v50];
    }
  }

  else
  {
    _HKInitializeLogging();
    v42 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v43 = v42;
      v44 = objc_opt_class();
      *buf = 138543874;
      v148 = v44;
      v149 = 2114;
      v150 = @"documentTypeCodingCollection";
      v151 = 2114;
      v152 = v110;
      v45 = v44;
      _os_log_impl(&dword_251CC8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v128 addObject:v110];
  }

  v113 = v40;
  v133 = 0;
  v51 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"noteCreationDate" expectedClass:objc_opt_class() isArray:0 error:&v133];
  v123 = v133;
  if (!v51 && v123)
  {
    _HKInitializeLogging();
    v52 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v53 = v52;
      v54 = objc_opt_class();
      *buf = 138543874;
      v148 = v54;
      v149 = 2114;
      v150 = @"noteCreationDate";
      v151 = 2114;
      v152 = v123;
      v55 = v54;
      _os_log_impl(&dword_251CC8000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v128 addObject:v123];
  }

  v114 = v51;
  v132 = 0;
  v56 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"categoriesCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v132];
  v57 = v132;
  v109 = v57;
  if (v56 || !v57)
  {
    if (!v56)
    {
      v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueCategoriesCodingCollections instance to avoid throwing exception"];
      v63 = MEMORY[0x277CCA9B8];
      v64 = *MEMORY[0x277CCA450];
      v141[0] = @"propertyName";
      v141[1] = v64;
      v142[0] = @"categoriesCodingCollections";
      v142[1] = v62;
      v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:2];
      v66 = [v63 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v65];

      [v128 addObject:v66];
    }
  }

  else
  {
    _HKInitializeLogging();
    v58 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v59 = v58;
      v60 = objc_opt_class();
      *buf = 138543874;
      v148 = v60;
      v149 = 2114;
      v150 = @"categoriesCodingCollections";
      v151 = 2114;
      v152 = v109;
      v61 = v60;
      _os_log_impl(&dword_251CC8000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v128 addObject:v109];
  }

  v115 = v56;
  v131 = 0;
  v67 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"relevantStartDate" expectedClass:objc_opt_class() isArray:0 error:&v131];
  v122 = v131;
  if (!v67 && v122)
  {
    _HKInitializeLogging();
    v68 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v69 = v68;
      v70 = objc_opt_class();
      *buf = 138543874;
      v148 = v70;
      v149 = 2114;
      v150 = @"relevantStartDate";
      v151 = 2114;
      v152 = v122;
      v71 = v70;
      _os_log_impl(&dword_251CC8000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v128 addObject:v122];
  }

  v116 = v67;
  v130 = 0;
  v72 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"relevantEndDate" expectedClass:objc_opt_class() isArray:0 error:&v130];
  v121 = v130;
  if (!v72 && v121)
  {
    _HKInitializeLogging();
    v73 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v74 = v73;
      v75 = objc_opt_class();
      *buf = 138543874;
      v148 = v75;
      v149 = 2114;
      v150 = @"relevantEndDate";
      v151 = 2114;
      v152 = v121;
      v76 = v75;
      _os_log_impl(&dword_251CC8000, v74, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v128 addObject:v121];
  }

  v117 = v72;
  v129 = 0;
  v77 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"authors" expectedClass:objc_opt_class() isArray:1 error:&v129];
  v78 = v129;
  v79 = v78;
  if (!v77 && v78)
  {
    _HKInitializeLogging();
    v80 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v81 = v80;
      v82 = objc_opt_class();
      *buf = 138543874;
      v148 = v82;
      v149 = 2114;
      v150 = @"authors";
      v151 = 2114;
      v152 = v79;
      v83 = v82;
      _os_log_impl(&dword_251CC8000, v81, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v128 addObject:v79];
  }

  v84 = v77;
  if (![v128 count])
  {
    v92 = [(__CFString *)v4 representedResource];
    v93 = [v92 receivedDate];
    v94 = v93;
    if (v93)
    {
      v95 = v93;
    }

    else
    {
      v95 = [MEMORY[0x277CBEAA8] date];
    }

    v96 = v95;

    v97 = [v118 BOOLValue];
    v89 = [MEMORY[0x277CCD2E8] localDevice];
    v98 = [(__CFString *)v4 medicalRecordMetadata];
    v99 = [MEMORY[0x277CCD108] clinicalNoteRecordType];
    v91 = [MEMORY[0x277CCD100] clinicalNoteRecordWithType:v99 note:v119 enteredInError:v97 modifiedDate:v96 originIdentifier:v107 locale:v120 extractionVersion:v108 device:v89 metadata:v98 country:v106 state:(v104 >> 2) & 1 statusCoding:v112 documentTypeCodingCollection:v113 noteCreationDate:v114 categoriesCodingCollections:v115 relevantStartDate:v116 relevantEndDate:v117 authors:v84];
    v100 = [(__CFString *)v4 representedResource];
    v101 = [v100 firstSeenDate];
    [v91 _setCreationDate:v101];

    goto LABEL_76;
  }

  v85 = MEMORY[0x277CCA9B8];
  v139 = @"conversionErrors";
  v140 = v128;
  v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
  v87 = [v85 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:201 userInfo:v86];

  v88 = v87;
  v89 = v88;
  if (!v88)
  {
    goto LABEL_72;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_72:
    v91 = 0;
    goto LABEL_73;
  }

  v90 = v88;
  v91 = 0;
  *a4 = v89;
LABEL_73:
  v96 = v89;
LABEL_76:

  v102 = *MEMORY[0x277D85DE8];

  return v91;
}

@end