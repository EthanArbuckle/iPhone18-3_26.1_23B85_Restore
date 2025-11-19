@interface HKCoverageRecord(ModelConversion)
+ (id)medicalRecordFromClinicalItem:()ModelConversion error:;
@end

@implementation HKCoverageRecord(ModelConversion)

+ (id)medicalRecordFromClinicalItem:()ModelConversion error:
{
  v172 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v140 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(__CFString *)v4 representedResource];
  v138 = [v5 identifier];

  if (!v138)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138543362;
      v167 = v7;
      _os_log_impl(&dword_251CC8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ missing FHIR identifier on clinical item's represented resource", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item is missing a represented resource"];
    [v140 addObject:v8];
  }

  v106 = [objc_alloc(MEMORY[0x277CCD600]) initWithFHIRIdentifier:v138];
  v9 = [(__CFString *)v4 rulesVersion];
  v10 = [v9 integerValue];

  if (v10 <= 0)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      *buf = 138543618;
      v167 = v12;
      v168 = 2114;
      v169 = v4;
      _os_log_impl(&dword_251CC8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid rules version on %{public}@", buf, 0x16u);
    }

    v13 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item has invalid rules version"];
    [v140 addObject:v13];
  }

  v157 = 0;
  v124 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"locale" expectedClass:objc_opt_class() isArray:0 error:&v157];
  v137 = v157;
  if (!v124 && v137)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138543874;
      v167 = v15;
      v168 = 2114;
      v169 = @"locale";
      v170 = 2114;
      v171 = v137;
      _os_log_impl(&dword_251CC8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v137];
  }

  v105 = [(__CFString *)v4 country];
  v156 = 0;
  v123 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"note" expectedClass:objc_opt_class() isArray:0 error:&v156];
  v136 = v156;
  if (!v123 && v136)
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      *buf = 138543874;
      v167 = v17;
      v168 = 2114;
      v169 = @"note";
      v170 = 2114;
      v171 = v136;
      _os_log_impl(&dword_251CC8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v136];
  }

  v155 = 0;
  v122 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"enteredInError" expectedClass:objc_opt_class() isArray:0 error:&v155];
  v135 = v155;
  if (!v122 && v135)
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      *buf = 138543874;
      v167 = v19;
      v168 = 2114;
      v169 = @"enteredInError";
      v170 = 2114;
      v171 = v135;
      _os_log_impl(&dword_251CC8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v135];
  }

  v20 = [(__CFString *)v4 representedResource];
  v103 = [v20 extractionHints];

  v154 = 0;
  v21 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"statusCoding" expectedClass:objc_opt_class() isArray:0 error:&v154];
  v22 = v154;
  v109 = v22;
  if (v21 || !v22)
  {
    if (!v21)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueStatusCoding instance to avoid throwing exception"];
      v26 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v164[0] = @"propertyName";
      v164[1] = v27;
      v165[0] = @"statusCoding";
      v165[1] = v25;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v165 forKeys:v164 count:2];
      v29 = [v26 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v28];

      [v140 addObject:v29];
    }
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      *buf = 138543874;
      v167 = v24;
      v168 = 2114;
      v169 = @"statusCoding";
      v170 = 2114;
      v171 = v109;
      _os_log_impl(&dword_251CC8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v109];
  }

  v110 = v21;
  v153 = 0;
  v30 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"coverageTypeCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v153];
  v31 = v153;
  v108 = v31;
  if (v30 || !v31)
  {
    if (!v30)
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueCoverageTypeCodingCollection instance to avoid throwing exception"];
      v35 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v162[0] = @"propertyName";
      v162[1] = v36;
      v163[0] = @"coverageTypeCodingCollection";
      v163[1] = v34;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v163 forKeys:v162 count:2];
      v38 = [v35 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v37];

      [v140 addObject:v38];
    }
  }

  else
  {
    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      *buf = 138543874;
      v167 = v33;
      v168 = 2114;
      v169 = @"coverageTypeCodingCollection";
      v170 = 2114;
      v171 = v108;
      _os_log_impl(&dword_251CC8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v108];
  }

  v111 = v30;
  v152 = 0;
  v39 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"subscriber" expectedClass:objc_opt_class() isArray:0 error:&v152];
  v134 = v152;
  if (!v39 && v134)
  {
    _HKInitializeLogging();
    v40 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = objc_opt_class();
      *buf = 138543874;
      v167 = v41;
      v168 = 2114;
      v169 = @"subscriber";
      v170 = 2114;
      v171 = v134;
      _os_log_impl(&dword_251CC8000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v134];
  }

  v112 = v39;
  v151 = 0;
  v42 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"subscriberId" expectedClass:objc_opt_class() isArray:0 error:&v151];
  v43 = v151;
  v107 = v43;
  if (v42 || !v43)
  {
    if (!v42)
    {
      v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueSubscriberId instance to avoid throwing exception"];
      v47 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA450];
      v160[0] = @"propertyName";
      v160[1] = v48;
      v161[0] = @"subscriberId";
      v161[1] = v46;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v161 forKeys:v160 count:2];
      v50 = [v47 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v49];

      [v140 addObject:v50];
    }
  }

  else
  {
    _HKInitializeLogging();
    v44 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = objc_opt_class();
      *buf = 138543874;
      v167 = v45;
      v168 = 2114;
      v169 = @"subscriberId";
      v170 = 2114;
      v171 = v107;
      _os_log_impl(&dword_251CC8000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v107];
  }

  v113 = v42;
  v150 = 0;
  v51 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"beneficiary" expectedClass:objc_opt_class() isArray:0 error:&v150];
  v133 = v150;
  if (!v51 && v133)
  {
    _HKInitializeLogging();
    v52 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = objc_opt_class();
      *buf = 138543874;
      v167 = v53;
      v168 = 2114;
      v169 = @"beneficiary";
      v170 = 2114;
      v171 = v133;
      _os_log_impl(&dword_251CC8000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v133];
  }

  v114 = v51;
  v149 = 0;
  v54 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"policyHolder" expectedClass:objc_opt_class() isArray:0 error:&v149];
  v132 = v149;
  if (!v54 && v132)
  {
    _HKInitializeLogging();
    v55 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = objc_opt_class();
      *buf = 138543874;
      v167 = v56;
      v168 = 2114;
      v169 = @"policyHolder";
      v170 = 2114;
      v171 = v132;
      _os_log_impl(&dword_251CC8000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v132];
  }

  v115 = v54;
  v148 = 0;
  v57 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"payor" expectedClass:objc_opt_class() isArray:1 error:&v148];
  v131 = v148;
  if (!v57 && v131)
  {
    _HKInitializeLogging();
    v58 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = objc_opt_class();
      *buf = 138543874;
      v167 = v59;
      v168 = 2114;
      v169 = @"payor";
      v170 = 2114;
      v171 = v131;
      _os_log_impl(&dword_251CC8000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v131];
  }

  v116 = v57;
  v147 = 0;
  v60 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"relationshipCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v147];
  v130 = v147;
  if (!v60 && v130)
  {
    _HKInitializeLogging();
    v61 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = objc_opt_class();
      *buf = 138543874;
      v167 = v62;
      v168 = 2114;
      v169 = @"relationshipCodingCollection";
      v170 = 2114;
      v171 = v130;
      _os_log_impl(&dword_251CC8000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v130];
  }

  v117 = v60;
  v146 = 0;
  v63 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"classification" expectedClass:objc_opt_class() isArray:1 error:&v146];
  v129 = v146;
  if (!v63 && v129)
  {
    _HKInitializeLogging();
    v64 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = objc_opt_class();
      *buf = 138543874;
      v167 = v65;
      v168 = 2114;
      v169 = @"classification";
      v170 = 2114;
      v171 = v129;
      _os_log_impl(&dword_251CC8000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v129];
  }

  v118 = v63;
  v145 = 0;
  v66 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"network" expectedClass:objc_opt_class() isArray:0 error:&v145];
  v128 = v145;
  if (!v66 && v128)
  {
    _HKInitializeLogging();
    v67 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = objc_opt_class();
      *buf = 138543874;
      v167 = v68;
      v168 = 2114;
      v169 = @"network";
      v170 = 2114;
      v171 = v128;
      _os_log_impl(&dword_251CC8000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v128];
  }

  v119 = v66;
  v144 = 0;
  v69 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"periodStartDate" expectedClass:objc_opt_class() isArray:0 error:&v144];
  v127 = v144;
  if (!v69 && v127)
  {
    _HKInitializeLogging();
    v70 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = objc_opt_class();
      *buf = 138543874;
      v167 = v71;
      v168 = 2114;
      v169 = @"periodStartDate";
      v170 = 2114;
      v171 = v127;
      _os_log_impl(&dword_251CC8000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v127];
  }

  v120 = v69;
  v143 = 0;
  v72 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"periodEndDate" expectedClass:objc_opt_class() isArray:0 error:&v143];
  v126 = v143;
  if (!v72 && v126)
  {
    _HKInitializeLogging();
    v73 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = objc_opt_class();
      *buf = 138543874;
      v167 = v74;
      v168 = 2114;
      v169 = @"periodEndDate";
      v170 = 2114;
      v171 = v126;
      _os_log_impl(&dword_251CC8000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v126];
  }

  v121 = v72;
  v142 = 0;
  v75 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"subscriberIdentifier" expectedClass:objc_opt_class() isArray:0 error:&v142];
  v125 = v142;
  if (!v75 && v125)
  {
    _HKInitializeLogging();
    v76 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      v77 = objc_opt_class();
      *buf = 138543874;
      v167 = v77;
      v168 = 2114;
      v169 = @"subscriberIdentifier";
      v170 = 2114;
      v171 = v125;
      _os_log_impl(&dword_251CC8000, v76, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v125];
  }

  v78 = v75;
  v141 = 0;
  v79 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"beneficiaryIdentifier" expectedClass:objc_opt_class() isArray:0 error:&v141];
  v80 = v141;
  v81 = v80;
  if (!v79 && v80)
  {
    _HKInitializeLogging();
    v82 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v83 = objc_opt_class();
      *buf = 138543874;
      v167 = v83;
      v168 = 2114;
      v169 = @"beneficiaryIdentifier";
      v170 = 2114;
      v171 = v81;
      _os_log_impl(&dword_251CC8000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v140 addObject:v81];
  }

  v84 = v79;
  if (![v140 count])
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

    v96 = [v122 BOOLValue];
    v89 = [MEMORY[0x277CCD2E8] localDevice];
    v139 = [(__CFString *)v4 medicalRecordMetadata];
    v97 = [MEMORY[0x277CCD278] coverageRecordType];
    v98 = [MEMORY[0x277CCD270] coverageRecordWithType:v97 note:v123 enteredInError:v96 modifiedDate:v95 originIdentifier:v106 locale:v124 extractionVersion:v10 device:v89 metadata:v139 country:v105 state:(v103 >> 2) & 1 statusCoding:v110 coverageTypeCodingCollection:v111 subscriber:v112 subscriberId:v113 beneficiary:v114 policyHolder:v115 payor:v116 relationshipCodingCollection:v117 classification:v118 network:v119 periodStartDate:v120 periodEndDate:v121 subscriberIdentifier:v78 beneficiaryIdentifier:v84];
    v99 = [(__CFString *)v4 representedResource];
    v100 = [v99 firstSeenDate];
    [v98 _setCreationDate:v100];

    v91 = v98;
    goto LABEL_111;
  }

  v85 = MEMORY[0x277CCA9B8];
  v158 = @"conversionErrors";
  v159 = v140;
  v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
  v87 = [v85 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:201 userInfo:v86];

  v88 = v87;
  v89 = v88;
  if (!v88)
  {
    goto LABEL_107;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_107:
    v91 = 0;
    goto LABEL_108;
  }

  v90 = v88;
  v91 = 0;
  *a4 = v89;
LABEL_108:
  v95 = v89;
LABEL_111:

  v101 = *MEMORY[0x277D85DE8];

  return v91;
}

@end