@interface HKDiagnosticTestResult(ModelConversion)
+ (id)medicalRecordFromClinicalItem:()ModelConversion error:;
@end

@implementation HKDiagnosticTestResult(ModelConversion)

+ (id)medicalRecordFromClinicalItem:()ModelConversion error:
{
  v186 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v151 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(__CFString *)v4 representedResource];
  v149 = [v5 identifier];

  if (!v149)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138543362;
      v181 = v7;
      _os_log_impl(&dword_251CC8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ missing FHIR identifier on clinical item's represented resource", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item is missing a represented resource"];
    [v151 addObject:v8];
  }

  v114 = [objc_alloc(MEMORY[0x277CCD600]) initWithFHIRIdentifier:v149];
  v9 = [(__CFString *)v4 rulesVersion];
  v115 = [v9 integerValue];

  if (v115 <= 0)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      *buf = 138543618;
      v181 = v11;
      v182 = 2114;
      v183 = v4;
      _os_log_impl(&dword_251CC8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid rules version on %{public}@", buf, 0x16u);
    }

    v12 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"clinical item has invalid rules version"];
    [v151 addObject:v12];
  }

  v169 = 0;
  v135 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"locale" expectedClass:objc_opt_class() isArray:0 error:&v169];
  v148 = v169;
  if (!v135 && v148)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138543874;
      v181 = v14;
      v182 = 2114;
      v183 = @"locale";
      v184 = 2114;
      v185 = v148;
      _os_log_impl(&dword_251CC8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v148];
  }

  v113 = [(__CFString *)v4 country];
  v168 = 0;
  v134 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"note" expectedClass:objc_opt_class() isArray:0 error:&v168];
  v147 = v168;
  if (!v134 && v147)
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      *buf = 138543874;
      v181 = v16;
      v182 = 2114;
      v183 = @"note";
      v184 = 2114;
      v185 = v147;
      _os_log_impl(&dword_251CC8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v147];
  }

  v167 = 0;
  v133 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"enteredInError" expectedClass:objc_opt_class() isArray:0 error:&v167];
  v146 = v167;
  if (!v133 && v146)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      *buf = 138543874;
      v181 = v18;
      v182 = 2114;
      v183 = @"enteredInError";
      v184 = 2114;
      v185 = v146;
      _os_log_impl(&dword_251CC8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v146];
  }

  v19 = [(__CFString *)v4 representedResource];
  v111 = [v19 extractionHints];

  v166 = 0;
  v20 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"diagnosticTestCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v166];
  v21 = v166;
  v119 = v21;
  if (v20 || !v21)
  {
    if (!v20)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueDiagnosticTestCodingCollection instance to avoid throwing exception"];
      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA450];
      v178[0] = @"propertyName";
      v178[1] = v26;
      v179[0] = @"diagnosticTestCodingCollection";
      v179[1] = v24;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v179 forKeys:v178 count:2];
      v28 = [v25 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v27];

      [v151 addObject:v28];
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
      v181 = v23;
      v182 = 2114;
      v183 = @"diagnosticTestCodingCollection";
      v184 = 2114;
      v185 = v119;
      _os_log_impl(&dword_251CC8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v119];
  }

  v120 = v20;
  v165 = 0;
  v29 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"value" expectedClass:objc_opt_class() isArray:0 error:&v165];
  v145 = v165;
  if (!v29 && v145)
  {
    _HKInitializeLogging();
    v30 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      *buf = 138543874;
      v181 = v31;
      v182 = 2114;
      v183 = @"value";
      v184 = 2114;
      v185 = v145;
      _os_log_impl(&dword_251CC8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v145];
  }

  v121 = v29;
  v164 = 0;
  v32 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"referenceRanges" expectedClass:objc_opt_class() isArray:1 error:&v164];
  v144 = v164;
  if (!v32 && v144)
  {
    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_opt_class();
      *buf = 138543874;
      v181 = v34;
      v182 = 2114;
      v183 = @"referenceRanges";
      v184 = 2114;
      v185 = v144;
      _os_log_impl(&dword_251CC8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v144];
  }

  v122 = v32;
  v163 = 0;
  v35 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"effectiveStartDate" expectedClass:objc_opt_class() isArray:0 error:&v163];
  v143 = v163;
  if (!v35 && v143)
  {
    _HKInitializeLogging();
    v36 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = objc_opt_class();
      *buf = 138543874;
      v181 = v37;
      v182 = 2114;
      v183 = @"effectiveStartDate";
      v184 = 2114;
      v185 = v143;
      _os_log_impl(&dword_251CC8000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v143];
  }

  v123 = v35;
  v162 = 0;
  v38 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"category" expectedClass:objc_opt_class() isArray:0 error:&v162];
  v39 = v162;
  v118 = v39;
  if (v38 || !v39)
  {
    if (!v38)
    {
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueCategory instance to avoid throwing exception"];
      v43 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      v176[0] = @"propertyName";
      v176[1] = v44;
      v177[0] = @"category";
      v177[1] = v42;
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v177 forKeys:v176 count:2];
      v46 = [v43 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v45];

      [v151 addObject:v46];
    }
  }

  else
  {
    _HKInitializeLogging();
    v40 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = objc_opt_class();
      *buf = 138543874;
      v181 = v41;
      v182 = 2114;
      v183 = @"category";
      v184 = 2114;
      v185 = v118;
      _os_log_impl(&dword_251CC8000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v118];
  }

  v124 = v38;
  v161 = 0;
  v47 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"categoriesCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v161];
  v48 = v161;
  v117 = v48;
  if (v47 || !v48)
  {
    if (!v47)
    {
      v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueCategoriesCodingCollections instance to avoid throwing exception"];
      v52 = MEMORY[0x277CCA9B8];
      v53 = *MEMORY[0x277CCA450];
      v174[0] = @"propertyName";
      v174[1] = v53;
      v175[0] = @"categoriesCodingCollections";
      v175[1] = v51;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v175 forKeys:v174 count:2];
      v55 = [v52 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v54];

      [v151 addObject:v55];
    }
  }

  else
  {
    _HKInitializeLogging();
    v49 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = objc_opt_class();
      *buf = 138543874;
      v181 = v50;
      v182 = 2114;
      v183 = @"categoriesCodingCollections";
      v184 = 2114;
      v185 = v117;
      _os_log_impl(&dword_251CC8000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v117];
  }

  v125 = v47;
  v160 = 0;
  v56 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"issueDate" expectedClass:objc_opt_class() isArray:0 error:&v160];
  v142 = v160;
  if (!v56 && v142)
  {
    _HKInitializeLogging();
    v57 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = objc_opt_class();
      *buf = 138543874;
      v181 = v58;
      v182 = 2114;
      v183 = @"issueDate";
      v184 = 2114;
      v185 = v142;
      _os_log_impl(&dword_251CC8000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v142];
  }

  v126 = v56;
  v159 = 0;
  v59 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"effectiveEndDate" expectedClass:objc_opt_class() isArray:0 error:&v159];
  v141 = v159;
  if (!v59 && v141)
  {
    _HKInitializeLogging();
    v60 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = objc_opt_class();
      *buf = 138543874;
      v181 = v61;
      v182 = 2114;
      v183 = @"effectiveEndDate";
      v184 = 2114;
      v185 = v141;
      _os_log_impl(&dword_251CC8000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v141];
  }

  v127 = v59;
  v158 = 0;
  v62 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"statusCoding" expectedClass:objc_opt_class() isArray:0 error:&v158];
  v63 = v158;
  v116 = v63;
  if (v62 || !v63)
  {
    if (!v62)
    {
      v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required value is nil, not creating valueStatusCoding instance to avoid throwing exception"];
      v67 = MEMORY[0x277CCA9B8];
      v68 = *MEMORY[0x277CCA450];
      v172[0] = @"propertyName";
      v172[1] = v68;
      v173[0] = @"statusCoding";
      v173[1] = v66;
      v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:2];
      v70 = [v67 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:204 userInfo:v69];

      [v151 addObject:v70];
    }
  }

  else
  {
    _HKInitializeLogging();
    v64 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = objc_opt_class();
      *buf = 138543874;
      v181 = v65;
      v182 = 2114;
      v183 = @"statusCoding";
      v184 = 2114;
      v185 = v116;
      _os_log_impl(&dword_251CC8000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v116];
  }

  v128 = v62;
  v157 = 0;
  v71 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"interpretationCodingCollections" expectedClass:objc_opt_class() isArray:1 error:&v157];
  v140 = v157;
  if (!v71 && v140)
  {
    _HKInitializeLogging();
    v72 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = objc_opt_class();
      *buf = 138543874;
      v181 = v73;
      v182 = 2114;
      v183 = @"interpretationCodingCollections";
      v184 = 2114;
      v185 = v140;
      _os_log_impl(&dword_251CC8000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v140];
  }

  v129 = v71;
  v156 = 0;
  v74 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"comments" expectedClass:objc_opt_class() isArray:0 error:&v156];
  v139 = v156;
  if (!v74 && v139)
  {
    _HKInitializeLogging();
    v75 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v76 = objc_opt_class();
      *buf = 138543874;
      v181 = v76;
      v182 = 2114;
      v183 = @"comments";
      v184 = 2114;
      v185 = v139;
      _os_log_impl(&dword_251CC8000, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v139];
  }

  v130 = v74;
  v155 = 0;
  v77 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"bodySiteCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v155];
  v138 = v155;
  if (!v77 && v138)
  {
    _HKInitializeLogging();
    v78 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      v79 = objc_opt_class();
      *buf = 138543874;
      v181 = v79;
      v182 = 2114;
      v183 = @"bodySiteCodingCollection";
      v184 = 2114;
      v185 = v138;
      _os_log_impl(&dword_251CC8000, v78, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v138];
  }

  v131 = v77;
  v154 = 0;
  v80 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"methodCodingCollection" expectedClass:objc_opt_class() isArray:0 error:&v154];
  v137 = v154;
  if (!v80 && v137)
  {
    _HKInitializeLogging();
    v81 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = objc_opt_class();
      *buf = 138543874;
      v181 = v82;
      v182 = 2114;
      v183 = @"methodCodingCollection";
      v184 = 2114;
      v185 = v137;
      _os_log_impl(&dword_251CC8000, v81, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v137];
  }

  v132 = v80;
  v153 = 0;
  v83 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"performers" expectedClass:objc_opt_class() isArray:1 error:&v153];
  v136 = v153;
  if (!v83 && v136)
  {
    _HKInitializeLogging();
    v84 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v85 = objc_opt_class();
      *buf = 138543874;
      v181 = v85;
      v182 = 2114;
      v183 = @"performers";
      v184 = 2114;
      v185 = v136;
      _os_log_impl(&dword_251CC8000, v84, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v136];
  }

  v86 = v83;
  v152 = 0;
  v87 = [(__CFString *)v4 medicalRecordPropertyValueForKey:@"referenceRangeStatus" expectedClass:objc_opt_class() isArray:0 error:&v152];
  v88 = v152;
  v89 = v88;
  if (!v87 && v88)
  {
    _HKInitializeLogging();
    v90 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = objc_opt_class();
      *buf = 138543874;
      v181 = v91;
      v182 = 2114;
      v183 = @"referenceRangeStatus";
      v184 = 2114;
      v185 = v89;
      _os_log_impl(&dword_251CC8000, v90, OS_LOG_TYPE_DEFAULT, "%{public}@ error retrieving medical record property %{public}@ : %{public}@", buf, 0x20u);
    }

    [v151 addObject:v89];
  }

  v92 = [v87 integerValue];
  if (![v151 count])
  {
    v100 = [(__CFString *)v4 representedResource];
    v101 = [v100 receivedDate];
    v102 = v101;
    if (v101)
    {
      v103 = v101;
    }

    else
    {
      v103 = [MEMORY[0x277CBEAA8] date];
    }

    v104 = [v133 BOOLValue];
    v97 = [MEMORY[0x277CCD2E8] localDevice];
    v150 = [(__CFString *)v4 medicalRecordMetadata];
    v105 = [MEMORY[0x277CCD350] diagnosticTestResultType];
    v106 = [MEMORY[0x277CCD348] diagnosticTestResultWithType:v105 note:v134 enteredInError:v104 modifiedDate:v103 originIdentifier:v114 locale:v135 extractionVersion:v115 device:v97 metadata:v150 country:v113 state:(v111 >> 2) & 1 diagnosticTestCodingCollection:v120 value:v121 referenceRanges:v122 effectiveStartDate:v123 category:v124 categoriesCodingCollections:v125 issueDate:v126 effectiveEndDate:v127 statusCoding:v128 interpretationCodingCollections:v129 comments:v130 bodySiteCodingCollection:v131 methodCodingCollection:v132 performers:v86 referenceRangeStatus:v92];
    v107 = [(__CFString *)v4 representedResource];
    v108 = [v107 firstSeenDate];
    [v106 _setCreationDate:v108];

    v99 = v106;
    goto LABEL_118;
  }

  v93 = MEMORY[0x277CCA9B8];
  v170 = @"conversionErrors";
  v171 = v151;
  v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
  v95 = [v93 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:201 userInfo:v94];

  v96 = v95;
  v97 = v96;
  if (!v96)
  {
    goto LABEL_114;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_114:
    v99 = 0;
    goto LABEL_115;
  }

  v98 = v96;
  v99 = 0;
  *a4 = v97;
LABEL_115:
  v103 = v97;
LABEL_118:

  v109 = *MEMORY[0x277D85DE8];

  return v99;
}

@end