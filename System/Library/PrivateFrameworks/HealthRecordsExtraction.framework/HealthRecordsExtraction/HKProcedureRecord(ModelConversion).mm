@interface HKProcedureRecord(ModelConversion)
+ (id)medicalRecordFromClinicalItem:()ModelConversion error:;
@end

@implementation HKProcedureRecord(ModelConversion)

+ (id)medicalRecordFromClinicalItem:()ModelConversion error:
{
  v158 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v129 = objc_alloc_init(MEMORY[0x277CBEB18]);
  representedResource = [(__CFString *)v4 representedResource];
  identifier = [representedResource identifier];

  if (!identifier)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138543362;
      v153 = v7;
      _os_log_impl(&dword_251CC8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ missing FHIR identifier on clinical item's represented resource", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item is missing a represented resource"];
    [v129 addObject:v8];
  }

  v96 = [objc_alloc(MEMORY[0x277CCD600]) initWithFHIRIdentifier:identifier];
  rulesVersion = [(__CFString *)v4 rulesVersion];
  integerValue = [rulesVersion integerValue];

  if (integerValue <= 0)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      *buf = 138543618;
      v153 = v11;
      v154 = 2114;
      v155 = v4;
      _os_log_impl(&dword_251CC8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid rules version on %{public}@", buf, 0x16u);
    }

    v12 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item has invalid rules version"];
    [v129 addObject:v12];
  }

  v145 = 0;
  v112 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"locale" expectedClass:objc_opt_class() isArray:0 error:&v145];
  v125 = v145;
  if (!v112 && v125)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138543874;
      v153 = v14;
      v154 = 2114;
      v155 = @"locale";
      v156 = 2114;
      v157 = v125;
      _os_log_impl(&dword_251CC8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v125];
  }

  country = [(__CFString *)v4 country];
  v144 = 0;
  v111 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"note" expectedClass:objc_opt_class() isArray:0 error:&v144];
  v124 = v144;
  if (!v111 && v124)
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      *buf = 138543874;
      v153 = v16;
      v154 = 2114;
      v155 = @"note";
      v156 = 2114;
      v157 = v124;
      _os_log_impl(&dword_251CC8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v124];
  }

  v143 = 0;
  v110 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"enteredInError" expectedClass:objc_opt_class() isArray:0 error:&v143];
  v123 = v143;
  if (!v110 && v123)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      *buf = 138543874;
      v153 = v18;
      v154 = 2114;
      v155 = @"enteredInError";
      v156 = 2114;
      v157 = v123;
      _os_log_impl(&dword_251CC8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v123];
  }

  representedResource2 = [(__CFString *)v4 representedResource];
  extractionHints = [representedResource2 extractionHints];

  v142 = 0;
  v20 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"procedureCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v142];
  v21 = v142;
  v99 = v21;
  if (v20 || !v21)
  {
    if (!v20)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueProcedureCodingCollection instance to avoid throwing exception"];
      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA450];
      v150[0] = @"propertyName";
      v150[1] = v26;
      v151[0] = @"procedureCodingCollection";
      v151[1] = v24;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v151 forKeys:v150 count:2];
      v28 = [v25 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v27];

      [v129 addObject:v28];
    }
  }

  else
  {
    _HKInitializeLogging();
    v22 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      *buf = 138543874;
      v153 = v23;
      v154 = 2114;
      v155 = @"procedureCodingCollection";
      v156 = 2114;
      v157 = v99;
      _os_log_impl(&dword_251CC8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v99];
  }

  v100 = v20;
  v141 = 0;
  v29 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"performers" expectedClass:objc_opt_class() isArray:1 error:&v141];
  v122 = v141;
  if (!v29 && v122)
  {
    _HKInitializeLogging();
    v30 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      *buf = 138543874;
      v153 = v31;
      v154 = 2114;
      v155 = @"performers";
      v156 = 2114;
      v157 = v122;
      _os_log_impl(&dword_251CC8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v122];
  }

  v101 = v29;
  v140 = 0;
  v32 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"executionStartDate" expectedClass:objc_opt_class() isArray:0 error:&v140];
  v121 = v140;
  if (!v32 && v121)
  {
    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_opt_class();
      *buf = 138543874;
      v153 = v34;
      v154 = 2114;
      v155 = @"executionStartDate";
      v156 = 2114;
      v157 = v121;
      _os_log_impl(&dword_251CC8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v121];
  }

  v102 = v32;
  v139 = 0;
  v35 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"executionEndDate" expectedClass:objc_opt_class() isArray:0 error:&v139];
  v120 = v139;
  if (!v35 && v120)
  {
    _HKInitializeLogging();
    v36 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = objc_opt_class();
      *buf = 138543874;
      v153 = v37;
      v154 = 2114;
      v155 = @"executionEndDate";
      v156 = 2114;
      v157 = v120;
      _os_log_impl(&dword_251CC8000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v120];
  }

  v104 = v35;
  v138 = 0;
  v126 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"notPerformed" expectedClass:objc_opt_class() isArray:0 error:&v138];
  v119 = v138;
  if (!v126 && v119)
  {
    _HKInitializeLogging();
    v38 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_opt_class();
      *buf = 138543874;
      v153 = v39;
      v154 = 2114;
      v155 = @"notPerformed";
      v156 = 2114;
      v157 = v119;
      _os_log_impl(&dword_251CC8000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v119];
  }

  bOOLValue = [v126 BOOLValue];
  v137 = 0;
  v40 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"statusCoding" expectedClass:objc_opt_class() isArray:0 error:&v137];
  v41 = v137;
  v98 = v41;
  if (v40 || !v41)
  {
    if (!v40)
    {
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueStatusCoding instance to avoid throwing exception"];
      v45 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA450];
      v148[0] = @"propertyName";
      v148[1] = v46;
      v149[0] = @"statusCoding";
      v149[1] = v44;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:v148 count:2];
      v48 = [v45 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v47];

      [v129 addObject:v48];
    }
  }

  else
  {
    _HKInitializeLogging();
    v42 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = objc_opt_class();
      *buf = 138543874;
      v153 = v43;
      v154 = 2114;
      v155 = @"statusCoding";
      v156 = 2114;
      v157 = v98;
      _os_log_impl(&dword_251CC8000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v98];
  }

  v103 = v40;
  v136 = 0;
  v49 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"categoryCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v136];
  v118 = v136;
  if (!v49 && v118)
  {
    _HKInitializeLogging();
    v50 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = objc_opt_class();
      *buf = 138543874;
      v153 = v51;
      v154 = 2114;
      v155 = @"categoryCodingCollection";
      v156 = 2114;
      v157 = v118;
      _os_log_impl(&dword_251CC8000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v118];
  }

  v105 = v49;
  v135 = 0;
  v52 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"reasonCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v135];
  v117 = v135;
  if (!v52 && v117)
  {
    _HKInitializeLogging();
    v53 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = objc_opt_class();
      *buf = 138543874;
      v153 = v54;
      v154 = 2114;
      v155 = @"reasonCodingCollections";
      v156 = 2114;
      v157 = v117;
      _os_log_impl(&dword_251CC8000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v117];
  }

  v106 = v52;
  v134 = 0;
  v55 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"reasonsNotPerformedCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v134];
  v116 = v134;
  if (!v55 && v116)
  {
    _HKInitializeLogging();
    v56 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = objc_opt_class();
      *buf = 138543874;
      v153 = v57;
      v154 = 2114;
      v155 = @"reasonsNotPerformedCodingCollections";
      v156 = 2114;
      v157 = v116;
      _os_log_impl(&dword_251CC8000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v116];
  }

  v107 = v55;
  v133 = 0;
  v58 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"outcomeCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v133];
  v115 = v133;
  if (!v58 && v115)
  {
    _HKInitializeLogging();
    v59 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = objc_opt_class();
      *buf = 138543874;
      v153 = v60;
      v154 = 2114;
      v155 = @"outcomeCodingCollection";
      v156 = 2114;
      v157 = v115;
      _os_log_impl(&dword_251CC8000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v115];
  }

  v108 = v58;
  v132 = 0;
  v61 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"complicationsCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v132];
  v114 = v132;
  if (!v61 && v114)
  {
    _HKInitializeLogging();
    v62 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = objc_opt_class();
      *buf = 138543874;
      v153 = v63;
      v154 = 2114;
      v155 = @"complicationsCodingCollections";
      v156 = 2114;
      v157 = v114;
      _os_log_impl(&dword_251CC8000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v114];
  }

  v109 = v61;
  v131 = 0;
  v64 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"followUpsCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v131];
  v113 = v131;
  if (!v64 && v113)
  {
    _HKInitializeLogging();
    v65 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = objc_opt_class();
      *buf = 138543874;
      v153 = v66;
      v154 = 2114;
      v155 = @"followUpsCodingCollections";
      v156 = 2114;
      v157 = v113;
      _os_log_impl(&dword_251CC8000, v65, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v113];
  }

  v67 = v64;
  v130 = 0;
  v68 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"bodySitesCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v130];
  v69 = v130;
  v70 = v69;
  if (!v68 && v69)
  {
    _HKInitializeLogging();
    v71 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v72 = objc_opt_class();
      *buf = 138543874;
      v153 = v72;
      v154 = 2114;
      v155 = @"bodySitesCodingCollections";
      v156 = 2114;
      v157 = v70;
      _os_log_impl(&dword_251CC8000, v71, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v129 addObject:v70];
  }

  v73 = v68;
  if (![v129 count])
  {
    representedResource3 = [(__CFString *)v4 representedResource];
    receivedDate = [representedResource3 receivedDate];
    v82 = receivedDate;
    if (receivedDate)
    {
      date = receivedDate;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    bOOLValue2 = [v110 BOOLValue];
    localDevice = [MEMORY[0x277CCD2E8] localDevice];
    medicalRecordMetadata = [(__CFString *)v4 medicalRecordMetadata];
    procedureRecordType = [MEMORY[0x277CCD7B8] procedureRecordType];
    LOBYTE(v91) = bOOLValue;
    v128 = [MEMORY[0x277CCD7B0] procedureRecordWithType:procedureRecordType note:v111 enteredInError:bOOLValue2 modifiedDate:date originIdentifier:v96 locale:v112 extractionVersion:integerValue device:localDevice metadata:medicalRecordMetadata country:country state:(extractionHints >> 2) & 1 procedureCodingCollection:v100 performers:v101 executionStartDate:v102 executionEndDate:v104 notPerformed:v91 statusCoding:v103 categoryCodingCollection:v105 reasonCodingCollections:v106 reasonsNotPerformedCodingCollections:v107 outcomeCodingCollection:v108 complicationsCodingCollections:v109 followUpsCodingCollections:v67 bodySitesCodingCollections:v73];
    representedResource4 = [(__CFString *)v4 representedResource];
    firstSeenDate = [representedResource4 firstSeenDate];
    [v128 _setCreationDate:firstSeenDate];

    goto LABEL_104;
  }

  v74 = MEMORY[0x277CCA9B8];
  v146 = @"conversionErrors";
  v147 = v129;
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
  v76 = [v74 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:201 userInfo:v75];

  v77 = v76;
  localDevice = v77;
  if (!v77)
  {
    goto LABEL_100;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_100:
    v128 = 0;
    goto LABEL_101;
  }

  v79 = v77;
  v128 = 0;
  *a4 = localDevice;
LABEL_101:
  date = localDevice;
LABEL_104:

  v89 = *MEMORY[0x277D85DE8];

  return v128;
}

@end