@interface HKMedicationRecord(ModelConversion)
+ (id)medicalRecordFromClinicalItem:()ModelConversion error:;
@end

@implementation HKMedicationRecord(ModelConversion)

+ (id)medicalRecordFromClinicalItem:()ModelConversion error:
{
  v171 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v143 = objc_alloc_init(MEMORY[0x277CBEB18]);
  representedResource = [(__CFString *)v4 representedResource];
  identifier = [representedResource identifier];

  if (!identifier)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v166 = objc_opt_class();
      v7 = v166;
      _os_log_impl(&dword_251CC8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ missing FHIR identifier on clinical item's represented resource", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item is missing a represented resource"];
    [v143 addObject:v8];
  }

  v112 = [objc_alloc(MEMORY[0x277CCD600]) initWithFHIRIdentifier:identifier];
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
      v166 = v11;
      v167 = 2114;
      v168 = v4;
      v12 = v11;
      _os_log_impl(&dword_251CC8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid rules version on %{public}@", buf, 0x16u);
    }

    v13 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item has invalid rules version"];
    [v143 addObject:v13];
  }

  v158 = 0;
  v126 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"locale" expectedClass:objc_opt_class() isArray:0 error:&v158];
  v138 = v158;
  if (!v126 && v138)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138543874;
      v166 = v15;
      v167 = 2114;
      v168 = @"locale";
      v169 = 2114;
      v170 = v138;
      v16 = v15;
      _os_log_impl(&dword_251CC8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v138];
  }

  country = [(__CFString *)v4 country];
  v157 = 0;
  v125 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"note" expectedClass:objc_opt_class() isArray:0 error:&v157];
  v137 = v157;
  if (!v125 && v137)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      *buf = 138543874;
      v166 = v18;
      v167 = 2114;
      v168 = @"note";
      v169 = 2114;
      v170 = v137;
      v19 = v18;
      _os_log_impl(&dword_251CC8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v137];
  }

  v156 = 0;
  v124 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"enteredInError" expectedClass:objc_opt_class() isArray:0 error:&v156];
  v136 = v156;
  if (!v124 && v136)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      *buf = 138543874;
      v166 = v21;
      v167 = 2114;
      v168 = @"enteredInError";
      v169 = 2114;
      v170 = v136;
      v22 = v21;
      _os_log_impl(&dword_251CC8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v136];
  }

  representedResource2 = [(__CFString *)v4 representedResource];
  extractionHints = [representedResource2 extractionHints];

  v155 = 0;
  v24 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"medicationCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v155];
  v25 = v155;
  v115 = v25;
  if (v24 || !v25)
  {
    if (!v24)
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueMedicationCodingCollection instance to avoid throwing exception"];
      v31 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v163[0] = @"propertyName";
      v163[1] = v32;
      v164[0] = @"medicationCodingCollection";
      v164[1] = v30;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v163 count:2];
      v34 = [v31 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v33];

      [v143 addObject:v34];
    }
  }

  else
  {
    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = objc_opt_class();
      *buf = 138543874;
      v166 = v28;
      v167 = 2114;
      v168 = @"medicationCodingCollection";
      v169 = 2114;
      v170 = v115;
      v29 = v28;
      _os_log_impl(&dword_251CC8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v115];
  }

  v116 = v24;
  v154 = 0;
  v140 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"assertionType" expectedClass:objc_opt_class() isArray:0 error:&v154];
  v135 = v154;
  if (!v140 && v135)
  {
    _HKInitializeLogging();
    v35 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_opt_class();
      *buf = 138543874;
      v166 = v36;
      v167 = 2114;
      v168 = @"assertionType";
      v169 = 2114;
      v170 = v135;
      v37 = v36;
      _os_log_impl(&dword_251CC8000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v135];
  }

  integerValue2 = [v140 integerValue];
  v153 = 0;
  v38 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"asserter" expectedClass:objc_opt_class() isArray:0 error:&v153];
  v134 = v153;
  if (!v38 && v134)
  {
    _HKInitializeLogging();
    v39 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_opt_class();
      *buf = 138543874;
      v166 = v40;
      v167 = 2114;
      v168 = @"asserter";
      v169 = 2114;
      v170 = v134;
      v41 = v40;
      _os_log_impl(&dword_251CC8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v134];
  }

  v117 = v38;
  v152 = 0;
  v42 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"assertionDate" expectedClass:objc_opt_class() isArray:0 error:&v152];
  v133 = v152;
  if (!v42 && v133)
  {
    _HKInitializeLogging();
    v43 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = objc_opt_class();
      *buf = 138543874;
      v166 = v44;
      v167 = 2114;
      v168 = @"assertionDate";
      v169 = 2114;
      v170 = v133;
      v45 = v44;
      _os_log_impl(&dword_251CC8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v133];
  }

  v118 = v42;
  v151 = 0;
  v46 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"statusCoding" expectedClass:objc_opt_class() isArray:0 error:&v151];
  v47 = v151;
  v114 = v47;
  if (v46 || !v47)
  {
    if (!v46)
    {
      v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueStatusCoding instance to avoid throwing exception"];
      v53 = MEMORY[0x277CCA9B8];
      v54 = *MEMORY[0x277CCA450];
      v161[0] = @"propertyName";
      v161[1] = v54;
      v162[0] = @"statusCoding";
      v162[1] = v52;
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v162 forKeys:v161 count:2];
      v56 = [v53 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v55];

      [v143 addObject:v56];
    }
  }

  else
  {
    _HKInitializeLogging();
    v48 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v49 = v48;
      v50 = objc_opt_class();
      *buf = 138543874;
      v166 = v50;
      v167 = 2114;
      v168 = @"statusCoding";
      v169 = 2114;
      v170 = v114;
      v51 = v50;
      _os_log_impl(&dword_251CC8000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v114];
  }

  v119 = v46;
  v150 = 0;
  v57 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"dosages" expectedClass:objc_opt_class() isArray:1 error:&v150];
  v132 = v150;
  if (!v57 && v132)
  {
    _HKInitializeLogging();
    v58 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = objc_opt_class();
      *buf = 138543874;
      v166 = v59;
      v167 = 2114;
      v168 = @"dosages";
      v169 = 2114;
      v170 = v132;
      v60 = v59;
      _os_log_impl(&dword_251CC8000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v132];
  }

  v120 = v57;
  v149 = 0;
  v61 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"earliestDosageDate" expectedClass:objc_opt_class() isArray:0 error:&v149];
  v131 = v149;
  if (!v61 && v131)
  {
    _HKInitializeLogging();
    v62 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = objc_opt_class();
      *buf = 138543874;
      v166 = v63;
      v167 = 2114;
      v168 = @"earliestDosageDate";
      v169 = 2114;
      v170 = v131;
      v64 = v63;
      _os_log_impl(&dword_251CC8000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v131];
  }

  v121 = v61;
  v148 = 0;
  v65 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"reasonForUseCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v148];
  v130 = v148;
  if (!v65 && v130)
  {
    _HKInitializeLogging();
    v66 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = objc_opt_class();
      *buf = 138543874;
      v166 = v67;
      v167 = 2114;
      v168 = @"reasonForUseCodingCollections";
      v169 = 2114;
      v170 = v130;
      v68 = v67;
      _os_log_impl(&dword_251CC8000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v130];
  }

  v122 = v65;
  v147 = 0;
  v139 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"notTaken" expectedClass:objc_opt_class() isArray:0 error:&v147];
  v129 = v147;
  if (!v139 && v129)
  {
    _HKInitializeLogging();
    v69 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = objc_opt_class();
      *buf = 138543874;
      v166 = v70;
      v167 = 2114;
      v168 = @"notTaken";
      v169 = 2114;
      v170 = v129;
      v71 = v70;
      _os_log_impl(&dword_251CC8000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v129];
  }

  bOOLValue = [v139 BOOLValue];
  v146 = 0;
  v72 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"reasonsNotTakenCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v146];
  v128 = v146;
  if (!v72 && v128)
  {
    _HKInitializeLogging();
    v73 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = objc_opt_class();
      *buf = 138543874;
      v166 = v74;
      v167 = 2114;
      v168 = @"reasonsNotTakenCodingCollections";
      v169 = 2114;
      v170 = v128;
      v75 = v74;
      _os_log_impl(&dword_251CC8000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v128];
  }

  v123 = v72;
  v145 = 0;
  v76 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"effectiveStartDate" expectedClass:objc_opt_class() isArray:0 error:&v145];
  v127 = v145;
  if (!v76 && v127)
  {
    _HKInitializeLogging();
    v77 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = objc_opt_class();
      *buf = 138543874;
      v166 = v78;
      v167 = 2114;
      v168 = @"effectiveStartDate";
      v169 = 2114;
      v170 = v127;
      v79 = v78;
      _os_log_impl(&dword_251CC8000, v77, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v127];
  }

  v80 = v76;
  v144 = 0;
  v81 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"effectiveEndDate" expectedClass:objc_opt_class() isArray:0 error:&v144];
  v82 = v144;
  v83 = v82;
  if (!v81 && v82)
  {
    _HKInitializeLogging();
    v84 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v85 = objc_opt_class();
      *buf = 138543874;
      v166 = v85;
      v167 = 2114;
      v168 = @"effectiveEndDate";
      v169 = 2114;
      v170 = v83;
      v86 = v85;
      _os_log_impl(&dword_251CC8000, v84, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v143 addObject:v83];
  }

  v87 = v81;
  if (![v143 count])
  {
    representedResource3 = [(__CFString *)v4 representedResource];
    receivedDate = [representedResource3 receivedDate];
    v96 = receivedDate;
    if (receivedDate)
    {
      date = receivedDate;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v98 = date;

    bOOLValue2 = [v124 BOOLValue];
    localDevice = [MEMORY[0x277CCD2E8] localDevice];
    medicalRecordMetadata = [(__CFString *)v4 medicalRecordMetadata];
    medicationRecordType = [MEMORY[0x277CCD688] medicationRecordType];
    LOBYTE(v106) = bOOLValue;
    v142 = [MEMORY[0x277CCD680] medicationRecordWithType:medicationRecordType note:v125 enteredInError:bOOLValue2 modifiedDate:v98 originIdentifier:v112 locale:v126 extractionVersion:integerValue device:localDevice metadata:medicalRecordMetadata country:country state:(extractionHints >> 2) & 1 medicationCodingCollection:v116 assertionType:integerValue2 asserter:v117 assertionDate:v118 statusCoding:v119 dosages:v120 earliestDosageDate:v121 reasonForUseCodingCollections:v122 notTaken:v106 reasonsNotTakenCodingCollections:v123 effectiveStartDate:v80 effectiveEndDate:v87];
    representedResource4 = [(__CFString *)v4 representedResource];
    firstSeenDate = [representedResource4 firstSeenDate];
    [v142 _setCreationDate:firstSeenDate];

    goto LABEL_99;
  }

  v88 = MEMORY[0x277CCA9B8];
  v159 = @"conversionErrors";
  v160 = v143;
  v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
  v90 = [v88 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:201 userInfo:v89];

  v91 = v90;
  localDevice = v91;
  if (!v91)
  {
    goto LABEL_95;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_95:
    v142 = 0;
    goto LABEL_96;
  }

  v93 = v91;
  v142 = 0;
  *a4 = localDevice;
LABEL_96:
  v98 = localDevice;
LABEL_99:

  v104 = *MEMORY[0x277D85DE8];

  return v142;
}

@end