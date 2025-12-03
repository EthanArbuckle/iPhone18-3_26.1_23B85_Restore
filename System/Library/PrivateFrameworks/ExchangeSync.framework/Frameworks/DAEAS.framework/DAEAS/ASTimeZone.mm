@interface ASTimeZone
+ (BOOL)_dateIsValidTransitionDate:(id)date inYear:(int)year withTimeZone:(id)zone;
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)_curTZDataVersion;
+ (id)_tzCachePathCreateIfMissing:(BOOL)missing;
+ (id)gmt;
+ (void)_cacheTimeZoneInfo;
+ (void)_fillOutCurrentTimeZoneInfo;
- ($31FC2A3E460831F3E4E0FB7CDAAFBC8B)mallocTZIForDate:(id)date;
- (ASTimeZone)initWithCodingDict:(id)dict;
- (ASTimeZone)initWithName:(id)name;
- (ASTimeZone)initWithName:(id)name data:(id)data;
- (ASTimeZone)initWithTZNameFromCalDB:(id)b;
- (BOOL)_dateIsValidTransitionDate:(id)date inYear:(int64_t)year outDaylightBias:(int64_t *)bias;
- (BOOL)isDaylightSavingTimeForDate:(id)date;
- (_SYSTEMTIME)_ruleForDate:(id)date;
- (double)daylightSavingTimeOffsetForDate:(id)date;
- (id)dateForRule:(_SYSTEMTIME *)rule inYear:(int64_t)year;
- (id)description;
- (id)dictForCoding;
- (int64_t)secondsFromGMTForDate:(id)date;
- (void)dealloc;
@end

@implementation ASTimeZone

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_6 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_6;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_6 = v2;
    acceptsTopLevelLeaves___haveChecked_6 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_6 == 1)
  {
    v2 = parsingLeafNode___result_6;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_6 = v2;
    parsingLeafNode___haveChecked_6 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_6 == 1)
  {
    v2 = parsingWithSubItems___result_6;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_6 = v2;
    parsingWithSubItems___haveChecked_6 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_6 == 1)
  {
    v2 = frontingBasicTypes___result_6;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_6 = v2;
    frontingBasicTypes___haveChecked_6 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_6 == 1)
  {
    v2 = notifyOfUnknownTokens___result_6;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_6 = v2;
    notifyOfUnknownTokens___haveChecked_6 = 1;
  }

  return v2 & 1;
}

+ (id)gmt
{
  v2 = gmt_gmtTZ;
  if (!gmt_gmtTZ)
  {
    v3 = [MEMORY[0x277CBEBB0] gmt];
    v4 = gmt_gmtTZ;
    gmt_gmtTZ = v3;

    v2 = gmt_gmtTZ;
  }

  return v2;
}

- (ASTimeZone)initWithTZNameFromCalDB:(id)b
{
  bCopy = b;
  v11.receiver = self;
  v11.super_class = ASTimeZone;
  v5 = [(ASTimeZone *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:bCopy];
    wrappedTimeZone = v5->_wrappedTimeZone;
    v5->_wrappedTimeZone = v6;

    if (!v5->_wrappedTimeZone)
    {
      defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
      v9 = v5->_wrappedTimeZone;
      v5->_wrappedTimeZone = defaultTimeZone;
    }
  }

  return v5;
}

+ (BOOL)_dateIsValidTransitionDate:(id)date inYear:(int)year withTimeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  if (dateCopy && ([dateCopy timeIntervalSinceReferenceDate], v9 != 0.0) && objc_msgSend(dateCopy, "yearOfCommonEra") == year)
  {
    v10 = objc_alloc(MEMORY[0x277CBEAA8]);
    [dateCopy timeIntervalSinceReferenceDate];
    v12 = [v10 initWithTimeIntervalSinceReferenceDate:v11 + -86400.0];
    v13 = objc_alloc(MEMORY[0x277CBEAA8]);
    [dateCopy timeIntervalSinceReferenceDate];
    v15 = [v13 initWithTimeIntervalSinceReferenceDate:v14 + 86400.0];
    LODWORD(v13) = [zoneCopy isDaylightSavingTimeForDate:v12];
    v16 = v13 ^ [zoneCopy isDaylightSavingTimeForDate:v15];
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

+ (void)_fillOutCurrentTimeZoneInfo
{
  v195 = *MEMORY[0x277D85DE8];
  v108 = objc_opt_new();
  v106 = objc_opt_new();
  v107 = objc_opt_new();
  v105 = objc_opt_new();
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date dateWithCalendarFormat:0 timeZone:0];
  yearOfCommonEra = [v4 yearOfCommonEra];

  v6 = [objc_alloc(MEMORY[0x277CCA8F8]) initWithYear:yearOfCommonEra month:2 day:1 hour:0 minute:0 second:0 timeZone:0];
  v174 = 0;
  v175 = &v174;
  v176 = 0x3032000000;
  v177 = __Block_byref_object_copy__0;
  v178 = __Block_byref_object_dispose__0;
  v179 = 0;
  v168 = 0;
  v169 = &v168;
  v170 = 0x3032000000;
  v171 = __Block_byref_object_copy__0;
  v172 = __Block_byref_object_dispose__0;
  v173 = 0;
  v164 = 0;
  v165 = &v164;
  v166 = 0x2020000000;
  v167 = 0;
  v160 = 0;
  v161 = &v160;
  v162 = 0x2020000000;
  v163 = 0;
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 3221225472;
  v152[2] = __41__ASTimeZone__fillOutCurrentTimeZoneInfo__block_invoke;
  v152[3] = &unk_278FC7B90;
  v154 = &v174;
  v155 = &v168;
  v156 = &v164;
  v157 = &v160;
  v90 = v6;
  v153 = v90;
  selfCopy = self;
  v159 = yearOfCommonEra;
  v121 = MEMORY[0x24C2119B0](v152);
  v110 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"America/Anchorage", @"America/Campo_Grande", @"America/Chicago", @"America/Chihuahua", @"America/Denver", @"America/Halifax", @"America/Los_Angeles", @"America/Mexico_City", @"America/New_York", @"America/Santiago", @"America/Sao_Paulo", @"Atlantic/Azores", @"Australia/Adelaide", @"Australia/Sydney", @"Europe/Athens", @"Europe/Berlin", @"Europe/London", @"Pacific/Auckland", 0}];
  allObjects = [v110 allObjects];
  v8 = [allObjects mutableCopy];

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  knownTimeZoneNames = [MEMORY[0x277CBEBB0] knownTimeZoneNames];
  v10 = [knownTimeZoneNames countByEnumeratingWithState:&v148 objects:v194 count:16];
  if (v10)
  {
    v11 = *v149;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v149 != v11)
        {
          objc_enumerationMutation(knownTimeZoneNames);
        }

        v13 = *(*(&v148 + 1) + 8 * i);
        if (([v110 containsObject:v13] & 1) == 0)
        {
          [v8 addObject:v13];
        }
      }

      v10 = [knownTimeZoneNames countByEnumeratingWithState:&v148 objects:v194 count:16];
    }

    while (v10);
  }

  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  obj = v8;
  v14 = [obj countByEnumeratingWithState:&v144 objects:v193 count:16];
  if (v14)
  {
    v116 = *v145;
    do
    {
      v118 = v14;
      for (j = 0; j != v118; ++j)
      {
        if (*v145 != v116)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v144 + 1) + 8 * j);
        v17 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:v16];
        (v121)[2](v121, v17);
        if (v175[5])
        {
          if (v169[5])
          {
            v18 = v165[3];
            v19 = v161[3];
            v20 = objc_alloc(MEMORY[0x277CBEAA8]);
            [v175[5] timeIntervalSinceReferenceDate];
            v124 = [v20 initWithTimeIntervalSinceReferenceDate:v21 + -86400.0];
            v22 = [v17 isDaylightSavingTimeForDate:?];
            v23 = v124;
            if (v22)
            {
              v24 = objc_alloc(MEMORY[0x277CBEAA8]);
              [v175[5] timeIntervalSinceReferenceDate];
              v26 = [v24 initWithTimeIntervalSinceReferenceDate:v25 + 86400.0];

              v23 = v26;
            }

            v120 = v23;
            v27 = [v17 secondsFromGMTForDate:?];
            v126 = [MEMORY[0x277CCABB0] numberWithInteger:v27 / 60];
            v28 = v108;
            v29 = v107;
            if (v18 < v19)
            {
              v30 = v106;

              v31 = v105;
              v29 = v31;
              v28 = v30;
            }

            v122 = v28;
            v32 = [v28 objectForKeyedSubscript:v126];
            if (!v32)
            {
              v32 = objc_opt_new();
              [v28 setObject:v32 forKeyedSubscript:v126];
            }

            v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v175[5], "monthOfYear")}];
            v34 = [v32 objectForKeyedSubscript:v33];
            if (!v34)
            {
              v34 = objc_opt_new();
              [v32 setObject:v34 forKeyedSubscript:v33];
            }

            [v34 addObject:v16];
            v35 = [v29 objectForKeyedSubscript:v126];
            if (!v35)
            {
              v35 = objc_opt_new();
              [v29 setObject:v35 forKeyedSubscript:v126];
            }

            v36 = v16;
            v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v169[5], "monthOfYear")}];
            v38 = [v35 objectForKeyedSubscript:v37];
            if (!v38)
            {
              v38 = objc_opt_new();
              [v35 setObject:v38 forKeyedSubscript:v37];
            }

            [v38 addObject:v36];
          }

          else
          {
            v39 = objc_alloc(MEMORY[0x277CBEAA8]);
            [v175[5] timeIntervalSinceReferenceDate];
            v124 = [v39 initWithTimeIntervalSinceReferenceDate:v40 + -86400.0];
            v41 = [v17 isDaylightSavingTimeForDate:?];
            v42 = v124;
            if (v41)
            {
              v43 = objc_alloc(MEMORY[0x277CBEAA8]);
              [v175[5] timeIntervalSinceReferenceDate];
              v45 = [v43 initWithTimeIntervalSinceReferenceDate:v44 + 86400.0];

              v42 = v45;
            }

            v120 = v42;
            v46 = [v17 secondsFromGMTForDate:?];
            v126 = [MEMORY[0x277CCABB0] numberWithInteger:v46 / 60];
            v47 = [v17 isDaylightSavingTimeForDate:v124];
            v48 = v175[5];
            if (v47)
            {
              monthOfYear = [v48 monthOfYear];
              v50 = v106;
              if (monthOfYear >= 7)
              {
                v50 = v107;
              }
            }

            else
            {
              monthOfYear2 = [v48 monthOfYear];
              v50 = v108;
              if (monthOfYear2 > 6)
              {
                v50 = v105;
              }
            }

            v122 = v50;
            v29 = [v122 objectForKeyedSubscript:v126];
            if (!v29)
            {
              v29 = objc_opt_new();
              [v122 setObject:v29 forKeyedSubscript:v126];
            }

            v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v175[5], "monthOfYear")}];
            v33 = [v29 objectForKeyedSubscript:v32];
            if (!v33)
            {
              v33 = objc_opt_new();
              [v29 setObject:v33 forKeyedSubscript:v32];
            }

            [v33 addObject:v16];
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v144 objects:v193 count:16];
    }

    while (v14);
  }

  v192[0] = v108;
  v192[1] = v107;
  v192[2] = v106;
  v192[3] = v105;
  [MEMORY[0x277CBEA60] arrayWithObjects:v192 count:4];
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v96 = v141 = 0u;
  v52 = [v96 countByEnumeratingWithState:&v140 objects:v191 count:16];
  v53 = MEMORY[0x277D03988];
  v89 = v52;
  if (v52)
  {
    v92 = *v141;
    type = *(MEMORY[0x277D03988] + 7);
    do
    {
      v97 = 0;
      do
      {
        if (*v141 != v92)
        {
          objc_enumerationMutation(v96);
        }

        v54 = *(*(&v140 + 1) + 8 * v97);
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v95 = v54;
        allKeys = [v54 allKeys];
        v91 = [allKeys countByEnumeratingWithState:&v136 objects:v190 count:16];
        if (v91)
        {
          v93 = *v137;
          do
          {
            for (k = 0; k != v91; ++k)
            {
              if (*v137 != v93)
              {
                objc_enumerationMutation(allKeys);
              }

              v55 = [v95 objectForKeyedSubscript:*(*(&v136 + 1) + 8 * k)];
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v103 = v55;
              allKeys2 = [v55 allKeys];
              v101 = [allKeys2 countByEnumeratingWithState:&v132 objects:v189 count:16];
              if (v101)
              {
                v100 = *v133;
                do
                {
                  for (m = 0; m != v101; ++m)
                  {
                    if (*v133 != v100)
                    {
                      objc_enumerationMutation(allKeys2);
                    }

                    v56 = *(*(&v132 + 1) + 8 * m);
                    v57 = [v103 objectForKeyedSubscript:v56];
                    v102 = v56;
                    v58 = [v103 objectForKeyedSubscript:v56];
                    v113 = [v58 mutableCopy];

                    v127 = objc_opt_new();
                    v119 = objc_opt_new();
                    v123 = objc_opt_new();
                    v117 = objc_opt_new();
                    v114 = objc_opt_new();
                    v130 = 0u;
                    v131 = 0u;
                    v128 = 0u;
                    v129 = 0u;
                    v115 = v57;
                    v59 = [v115 countByEnumeratingWithState:&v128 objects:v188 count:16];
                    if (v59)
                    {
                      v60 = *v129;
                      do
                      {
                        for (n = 0; n != v59; ++n)
                        {
                          if (*v129 != v60)
                          {
                            objc_enumerationMutation(v115);
                          }

                          v62 = *(*(&v128 + 1) + 8 * n);
                          v63 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:v62];
                          (v121)[2](v121, v63);
                          if (v175[5] && v169[5])
                          {
                            [v127 addObject:?];
                            v64 = [MEMORY[0x277CCABB0] numberWithInteger:v165[3]];
                            [v119 addObject:v64];

                            [v123 addObject:v169[5]];
                            v65 = [MEMORY[0x277CCABB0] numberWithInteger:v161[3]];
                            [v117 addObject:v65];

                            [v114 addObject:v62];
                          }
                        }

                        v59 = [v115 countByEnumeratingWithState:&v128 objects:v188 count:16];
                      }

                      while (v59);
                    }

                    if ([v127 count])
                    {
                      for (ii = 0; ; ii = v112)
                      {
                        v67 = [v127 count];
                        v68 = ii;
                        if (v67 - 1 <= ii)
                        {
                          break;
                        }

                        v125 = ii;
                        v69 = ii + 1;
                        v112 = v68 + 1;
                        while (1)
                        {
                          v70 = v69;
                          if ([v127 count] <= v69)
                          {
                            break;
                          }

                          v71 = [v127 objectAtIndexedSubscript:v125];
                          v72 = [v127 objectAtIndexedSubscript:v69];
                          if (([v71 isEqual:v72]& 1) != 0)
                          {
                            v73 = [v123 objectAtIndexedSubscript:v125];
                            v74 = [v123 objectAtIndexedSubscript:v69];
                            if ([v73 isEqual:v74])
                            {
                              v75 = [v119 objectAtIndexedSubscript:v125];
                              v76 = [v119 objectAtIndexedSubscript:v69];
                              if ([v75 isEqual:v76])
                              {
                                v77 = [v117 objectAtIndexedSubscript:v125];
                                v78 = [v117 objectAtIndexedSubscript:v70];
                                v79 = [v77 isEqual:v78];

                                if (!v79)
                                {
                                  goto LABEL_88;
                                }

                                v71 = [v114 objectAtIndexedSubscript:v125];
                                if ([v113 containsObject:v71])
                                {
                                  v80 = [v114 objectAtIndexedSubscript:v70];
                                  v81 = [v113 containsObject:v80];

                                  if (!v81)
                                  {
                                    goto LABEL_88;
                                  }

                                  v82 = [v114 objectAtIndexedSubscript:v70];
                                  [v113 removeObject:v82];

                                  v71 = DALoggingwithCategory();
                                  if (os_log_type_enabled(v71, type))
                                  {
                                    v83 = [v114 objectAtIndexedSubscript:v70];
                                    v84 = [v114 objectAtIndexedSubscript:v125];
                                    *buf = 138412546;
                                    v181 = v83;
                                    v182 = 2112;
                                    v183 = v84;
                                    _os_log_impl(&dword_24A0AC000, v71, type, "removing duplicate tz %@ (dupe of %@)", buf, 0x16u);
                                  }
                                }
                              }

                              else
                              {
                              }
                            }

                            else
                            {
                            }
                          }

                          else
                          {
                          }

LABEL_88:
                          v69 = v70 + 1;
                        }
                      }
                    }

                    [v103 setObject:v113 forKeyedSubscript:v102];
                  }

                  v101 = [allKeys2 countByEnumeratingWithState:&v132 objects:v189 count:16];
                }

                while (v101);
              }
            }

            v91 = [allKeys countByEnumeratingWithState:&v136 objects:v190 count:16];
          }

          while (v91);
        }

        ++v97;
      }

      while (v97 != v89);
      v85 = [v96 countByEnumeratingWithState:&v140 objects:v191 count:16];
      v53 = MEMORY[0x277D03988];
      v89 = v85;
    }

    while (v85);
  }

  objc_storeStrong(&__northTZByOffsetFirstTransition, v108);
  objc_storeStrong(&__northTZByOffsetSecondTransition, v107);
  objc_storeStrong(&__southTZByOffsetFirstTransition, v106);
  objc_storeStrong(&__southTZByOffsetSecondTransition, v105);
  v86 = DALoggingwithCategory();
  v87 = *(v53 + 7);
  if (os_log_type_enabled(v86, v87))
  {
    *buf = 138413058;
    v181 = v108;
    v182 = 2112;
    v183 = v107;
    v184 = 2112;
    v185 = v106;
    v186 = 2112;
    v187 = v105;
    _os_log_impl(&dword_24A0AC000, v86, v87, "\nnorthTZByOffsetFirstTransition %@\nnorthTZByOffsetSecondTransition %@\nsouthTZByOffsetFirstTransition %@\nsouthTZByOffsetSecondTransition %@\n", buf, 0x2Au);
  }

  _Block_object_dispose(&v160, 8);
  _Block_object_dispose(&v164, 8);
  _Block_object_dispose(&v168, 8);

  _Block_object_dispose(&v174, 8);
  v88 = *MEMORY[0x277D85DE8];
}

void __41__ASTimeZone__fillOutCurrentTimeZoneInfo__block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  *(*(*(a1 + 56) + 8) + 24) = 0;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  v7 = [v20 nextDaylightSavingTimeTransitionAfterDate:*(a1 + 32)];
  v8 = [v7 dateWithCalendarFormat:0 timeZone:v20];

  v9 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v8 timeIntervalSinceReferenceDate];
  v11 = [v9 initWithTimeIntervalSinceReferenceDate:v10 + 86400.0];
  v12 = [v20 nextDaylightSavingTimeTransitionAfterDate:v11];
  v13 = [v12 dateWithCalendarFormat:0 timeZone:v20];

  if ([*(a1 + 72) _dateIsValidTransitionDate:v8 inYear:*(a1 + 80) withTimeZone:v20])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
    *(*(*(a1 + 56) + 8) + 24) = [v20 secondsFromGMTForDate:*(*(*(a1 + 40) + 8) + 40)];
    v14 = [*(a1 + 72) _dateIsValidTransitionDate:v13 inYear:*(a1 + 80) withTimeZone:v20];
    v15 = *(*(a1 + 48) + 8);
    if (v14)
    {
      objc_storeStrong((v15 + 40), v13);
      *(*(*(a1 + 64) + 8) + 24) = [v20 secondsFromGMTForDate:*(*(*(a1 + 48) + 8) + 40)];
      goto LABEL_7;
    }

    v19 = *(v15 + 40);
    *(v15 + 40) = 0;
  }

  else
  {
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;

    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;
  }

LABEL_7:
}

+ (id)_tzCachePathCreateIfMissing:(BOOL)missing
{
  missingCopy = missing;
  v4 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Caches/DataAccess"];
  if (missingCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v6 = [v4 stringByAppendingPathComponent:@"EASTimeZone.data"];

  return v6;
}

+ (id)_curTZDataVersion
{
  if (_curTZDataVersion_onceToken != -1)
  {
    +[ASTimeZone _curTZDataVersion];
  }

  v3 = _curTZDataVersion_tzDataVersionString;

  return v3;
}

void __31__ASTimeZone__curTZDataVersion__block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v0 = MEMORY[0x24C211C90](&v6);
  if (v6)
  {
    v1 = DALoggingwithCategory();
    v2 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v1, v2))
    {
      *buf = 67109120;
      v8 = v6;
      _os_log_impl(&dword_24A0AC000, v1, v2, "Couldn't get current tz data version, status %d", buf, 8u);
    }
  }

  if (v0)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v0];
    v4 = _curTZDataVersion_tzDataVersionString;
    _curTZDataVersion_tzDataVersionString = v3;
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_cacheTimeZoneInfo
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ASTimeZone__cacheTimeZoneInfo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_cacheTimeZoneInfo_onceToken != -1)
  {
    dispatch_once(&_cacheTimeZoneInfo_onceToken, block);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(ASTimeZone *)self name];
  abbreviation = [(ASTimeZone *)self abbreviation];
  secondsFromGMT = [(ASTimeZone *)self secondsFromGMT];
  isDaylightSavingTime = [(ASTimeZone *)self isDaylightSavingTime];
  v8 = &stru_285D39BD0;
  if (isDaylightSavingTime)
  {
    v8 = @" (Daylight)";
  }

  v9 = [v3 stringWithFormat:@"%@ (%@) offset %ld%@", name, abbreviation, secondsFromGMT, v8];

  return v9;
}

- (void)dealloc
{
  standardDate = self->_standardDate;
  if (standardDate)
  {
    free(standardDate);
  }

  daylightDate = self->_daylightDate;
  if (daylightDate)
  {
    free(daylightDate);
  }

  v5.receiver = self;
  v5.super_class = ASTimeZone;
  [(ASTimeZone *)&v5 dealloc];
}

- (id)dateForRule:(_SYSTEMTIME *)rule inYear:(int64_t)year
{
  if (*&rule->var1 || rule->var3 || rule->var4)
  {
    v6 = objc_opt_new();
    [v6 setYear:year];
    [v6 setMonth:rule->var1];
    [v6 setWeekday:rule->var2 + 1];
    if (rule->var3 == 5)
    {
      var3 = -1;
    }

    else
    {
      var3 = rule->var3;
    }

    [v6 setWeekdayOrdinal:var3];
    [v6 setHour:rule->var4];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = +[ASTimeZone gmt];
    [currentCalendar setTimeZone:v9];

    distantPast = [currentCalendar dateFromComponents:v6];
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  return distantPast;
}

- (int64_t)secondsFromGMTForDate:(id)date
{
  dateCopy = date;
  if (self->_dstOffset)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = +[ASTimeZone gmt];
    v7 = [dateCopy dateWithCalendarFormat:0 timeZone:v6];

    yearOfCommonEra = [v7 yearOfCommonEra];
    v9 = [(ASTimeZone *)self dateForRule:self->_daylightDate inYear:yearOfCommonEra];
    v10 = [(ASTimeZone *)self dateForRule:self->_standardDate inYear:yearOfCommonEra];
    if ([v9 compare:v10] == 1)
    {
      if ([dateCopy compare:v9] == -1)
      {
        v16 = [(ASTimeZone *)self dateForRule:self->_daylightDate inYear:yearOfCommonEra - 1];
        v12 = v9;
        v9 = v16;
      }

      else
      {
        v11 = [(ASTimeZone *)self dateForRule:self->_standardDate inYear:yearOfCommonEra + 1];
        v12 = v10;
        v10 = v11;
      }
    }

    if ([dateCopy compare:v9] == -1 || objc_msgSend(dateCopy, "compare:", v10) == 1)
    {
      gmtOffset = self->_gmtOffset;
    }

    else
    {
      gmtOffset = self->_dstOffset + self->_gmtOffset;
    }

    v15 = -60 * gmtOffset;

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CBEAA8]);
    [dateCopy timeIntervalSinceReferenceDate];
    v14 = [v13 initWithTimeIntervalSinceReferenceDate:?];
    v15 = [(NSTimeZone *)self->_wrappedTimeZone secondsFromGMTForDate:v14];
  }

  return v15;
}

- (BOOL)isDaylightSavingTimeForDate:(id)date
{
  dateCopy = date;
  if (self->_dstOffset)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = +[ASTimeZone gmt];
    v7 = [dateCopy dateWithCalendarFormat:0 timeZone:v6];

    yearOfCommonEra = [v7 yearOfCommonEra];
    v9 = [(ASTimeZone *)self dateForRule:self->_daylightDate inYear:yearOfCommonEra];
    v10 = [(ASTimeZone *)self dateForRule:self->_standardDate inYear:yearOfCommonEra];
    if ([v9 compare:v10] == 1)
    {
      if ([dateCopy compare:v9] == -1)
      {
        v16 = [(ASTimeZone *)self dateForRule:self->_daylightDate inYear:yearOfCommonEra - 1];
        v12 = v9;
        v9 = v16;
      }

      else
      {
        v11 = [(ASTimeZone *)self dateForRule:self->_standardDate inYear:yearOfCommonEra + 1];
        v12 = v10;
        v10 = v11;
      }
    }

    v15 = [dateCopy compare:v9] != -1 && objc_msgSend(dateCopy, "compare:", v10) != 1;

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CBEAA8]);
    [dateCopy timeIntervalSinceReferenceDate];
    v14 = [v13 initWithTimeIntervalSinceReferenceDate:?];
    v15 = [(NSTimeZone *)self->_wrappedTimeZone isDaylightSavingTimeForDate:v14];
  }

  return v15;
}

- (double)daylightSavingTimeOffsetForDate:(id)date
{
  dateCopy = date;
  if (self->_dstOffset)
  {
    v5 = 0.0;
    if ([(ASTimeZone *)self isDaylightSavingTimeForDate:dateCopy])
    {
      v5 = (-60 * self->_dstOffset);
    }
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    [dateCopy timeIntervalSinceReferenceDate];
    v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    [(NSTimeZone *)self->_wrappedTimeZone daylightSavingTimeOffsetForDate:v7];
    v5 = v8;
  }

  return v5;
}

- (BOOL)_dateIsValidTransitionDate:(id)date inYear:(int64_t)year outDaylightBias:(int64_t *)bias
{
  dateCopy = date;
  v9 = dateCopy;
  if (dateCopy && ([dateCopy timeIntervalSinceReferenceDate], v10 != 0.0) && objc_msgSend(v9, "yearOfCommonEra") == year)
  {
    v11 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v9 timeIntervalSinceReferenceDate];
    v13 = [v11 initWithTimeIntervalSinceReferenceDate:v12 + -86400.0];
    v14 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v9 timeIntervalSinceReferenceDate];
    v16 = [v14 initWithTimeIntervalSinceReferenceDate:v15 + 86400.0];
    v17 = [(ASTimeZone *)self isDaylightSavingTimeForDate:v13];
    v18 = v17 ^ [(ASTimeZone *)self isDaylightSavingTimeForDate:v16];
    if (bias)
    {
      v19 = [(ASTimeZone *)self secondsFromGMTForDate:v13];
      v20 = [(ASTimeZone *)self secondsFromGMTForDate:v16];
      v21 = v19 - v20;
      if (v17)
      {
        v21 = v20 - v19;
      }

      *bias = v21 / 60;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (_SYSTEMTIME)_ruleForDate:(id)date
{
  dateCopy = date;
  v4 = +[ASTimeZone gmt];
  v5 = [dateCopy dateWithCalendarFormat:0 timeZone:v4];

  yearOfCommonEra = [v5 yearOfCommonEra];
  v7 = objc_opt_new();
  [v7 setDay:{objc_msgSend(v5, "dayOfMonth")}];
  [v7 setMonth:{objc_msgSend(v5, "monthOfYear")}];
  [v7 setYear:yearOfCommonEra];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = +[ASTimeZone gmt];
  [currentCalendar setTimeZone:v9];

  v10 = [currentCalendar dateFromComponents:v7];
  v11 = [currentCalendar components:1024 fromDate:v10];
  weekdayOrdinal = [v11 weekdayOrdinal];
  if (weekdayOrdinal < 4)
  {
    v17 = weekdayOrdinal;
  }

  else
  {
    v13 = objc_opt_new();

    [v13 setDay:{objc_msgSend(v5, "dayOfMonth") + 7}];
    [v13 setMonth:{objc_msgSend(v5, "monthOfYear")}];
    [v13 setYear:yearOfCommonEra];
    v14 = [currentCalendar dateFromComponents:v13];

    v15 = [currentCalendar components:24 fromDate:v14];
    month = [v15 month];
    if (month == [v5 monthOfYear])
    {
      v17 = 4;
    }

    else
    {
      v17 = 5;
    }

    v7 = v13;
    v10 = v14;
  }

  monthOfYear = [v5 monthOfYear];
  dayOfWeek = [v5 dayOfWeek];
  hourOfDay = [v5 hourOfDay];

  v21 = (v17 << 48) | (dayOfWeek << 32) | (monthOfYear << 16);
  v22 = hourOfDay;
  result.var4 = v22;
  result.var5 = WORD1(v22);
  result.var6 = WORD2(v22);
  result.var7 = HIWORD(v22);
  result.var0 = v21;
  result.var1 = WORD1(v21);
  result.var2 = WORD2(v21);
  result.var3 = HIWORD(v21);
  return result;
}

- ($31FC2A3E460831F3E4E0FB7CDAAFBC8B)mallocTZIForDate:(id)date
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = [date dateWithCalendarFormat:0 timeZone:self];
  yearOfCommonEra = [v4 yearOfCommonEra];
  v6 = malloc_type_calloc(0xACuLL, 1uLL, 0x10000402F7E722EuLL);
  v55 = [objc_alloc(MEMORY[0x277CCA8F8]) initWithYear:yearOfCommonEra month:1 day:1 hour:0 minute:0 second:0 timeZone:self];
  v7 = [(ASTimeZone *)self nextDaylightSavingTimeTransitionAfterDate:?];
  v8 = [v7 dateWithCalendarFormat:0 timeZone:self];

  v9 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v8 timeIntervalSinceReferenceDate];
  v11 = [v9 initWithTimeIntervalSinceReferenceDate:v10 + -86400.0];
  v12 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v8 timeIntervalSinceReferenceDate];
  v14 = [v12 initWithTimeIntervalSinceReferenceDate:v13 + 86400.0];
  v15 = [(ASTimeZone *)self nextDaylightSavingTimeTransitionAfterDate:v14];
  v16 = [v15 dateWithCalendarFormat:0 timeZone:self];

  v56 = 0;
  if ([(ASTimeZone *)self _dateIsValidTransitionDate:v8 inYear:yearOfCommonEra outDaylightBias:&v56])
  {
    if ([(ASTimeZone *)self _dateIsValidTransitionDate:v16 inYear:yearOfCommonEra outDaylightBias:0])
    {
      v53 = v4;
      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v17, v18))
      {
        v52 = [v8 dateWithCalendarFormat:0 timeZone:self];
        v19 = [v16 dateWithCalendarFormat:0 timeZone:self];
        *buf = 134218754;
        v58 = yearOfCommonEra;
        v59 = 2112;
        v60 = v55;
        v61 = 2112;
        v62 = v52;
        v63 = 2112;
        v64 = v19;
        _os_log_impl(&dword_24A0AC000, v17, v18, "_tziDataWithOpenConnectionForYear. year is %ld, firstOfTheYear is %@, firstTransitionDate is %@, secondTransitionDate is %@", buf, 0x2Au);
      }

      *(v6 + 42) = v56;
      if ([(ASTimeZone *)self isDaylightSavingTimeForDate:v11])
      {
        v20 = [(ASTimeZone *)self secondsFromGMTForDate:v14];
        v21 = ((v20 * 0x7777777777777777) >> 64) - v20;
        *v6 = (v21 >> 5) + (v21 >> 63);
        v22 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v8 sinceDate:(v20 - 60 * v56)];
        *(v6 + 68) = [(ASTimeZone *)self _ruleForDate:v22];
        *(v6 + 76) = v23;

        v24 = MEMORY[0x277CBEAA8];
        v25 = v20;
        v26 = v16;
      }

      else
      {
        v37 = [(ASTimeZone *)self secondsFromGMTForDate:v11];
        v38 = ((v37 * 0x7777777777777777) >> 64) - v37;
        *v6 = (v38 >> 5) + (v38 >> 63);
        v39 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v16 sinceDate:(v37 - 60 * v56)];
        *(v6 + 68) = [(ASTimeZone *)self _ruleForDate:v39];
        *(v6 + 76) = v40;

        v24 = MEMORY[0x277CBEAA8];
        v25 = v37;
        v26 = v8;
      }

      v41 = [v24 dateWithTimeInterval:v26 sinceDate:v25];
      *(v6 + 19) = [(ASTimeZone *)self _ruleForDate:v41];
      *(v6 + 20) = v42;

      v4 = v53;
    }

    else
    {
      *(v6 + 42) = v56;
      if ([(ASTimeZone *)self isDaylightSavingTimeForDate:v11])
      {
        v31 = [(ASTimeZone *)self secondsFromGMTForDate:v14];
        v32 = ((v31 * 0x7777777777777777) >> 64) - v31;
        *v6 = (v32 >> 5) + (v32 >> 63);
        v33 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v8 sinceDate:(v31 - 60 * v56)];
        *(v6 + 68) = [(ASTimeZone *)self _ruleForDate:v33];
        *(v6 + 76) = v34;

        v35 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v55 sinceDate:0.0];
        *(v6 + 19) = [(ASTimeZone *)self _ruleForDate:v35];
        *(v6 + 20) = v36;
      }

      else
      {
        v54 = v4;
        v43 = [(ASTimeZone *)self secondsFromGMTForDate:v11];
        v44 = ((v43 * 0x7777777777777777) >> 64) - v43;
        *v6 = (v44 >> 5) + (v44 >> 63);
        v35 = [objc_alloc(MEMORY[0x277CCA8F8]) initWithYear:yearOfCommonEra month:12 day:31 hour:23 minute:59 second:59 timeZone:self];
        v45 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v35 sinceDate:0.0];
        *(v6 + 68) = [(ASTimeZone *)self _ruleForDate:v45];
        *(v6 + 76) = v46;

        v47 = v43;
        v4 = v54;
        v48 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v8 sinceDate:v47];
        *(v6 + 19) = [(ASTimeZone *)self _ruleForDate:v48];
        *(v6 + 20) = v49;
      }
    }
  }

  else
  {
    secondsFromGMT = [(ASTimeZone *)self secondsFromGMT];
    isDaylightSavingTime = [(ASTimeZone *)self isDaylightSavingTime];
    v29 = secondsFromGMT - 3600;
    if (!isDaylightSavingTime)
    {
      v29 = secondsFromGMT;
    }

    v30 = ((v29 * 0x7777777777777777) >> 64) - v29;
    *v6 = (v30 >> 5) + (v30 >> 63);
    *(v6 + 42) = -60;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v6;
}

- (ASTimeZone)initWithName:(id)name
{
  v4.receiver = self;
  v4.super_class = ASTimeZone;
  return [(ASTimeZone *)&v4 init];
}

- (ASTimeZone)initWithName:(id)name data:(id)data
{
  v5.receiver = self;
  v5.super_class = ASTimeZone;
  return [(ASTimeZone *)&v5 init:name];
}

- (ASTimeZone)initWithCodingDict:(id)dict
{
  dictCopy = dict;
  v16.receiver = self;
  v16.super_class = ASTimeZone;
  v5 = [(ASTimeZone *)&v16 init];
  if (v5)
  {
    v6 = [dictCopy objectForKeyedSubscript:@"gmtOffset"];
    v5->_gmtOffset = [v6 intValue];

    v7 = [dictCopy objectForKeyedSubscript:@"dstOffset"];
    v5->_dstOffset = [v7 intValue];

    v8 = [dictCopy objectForKeyedSubscript:@"standardDate"];
    if ([v8 length])
    {
      v9 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      v5->_standardDate = v9;
      [v8 getBytes:v9 length:16];
    }

    v10 = [dictCopy objectForKeyedSubscript:@"daylightDate"];
    if ([v10 length])
    {
      v11 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      v5->_daylightDate = v11;
      [v10 getBytes:v11 length:16];
    }

    v12 = [dictCopy objectForKeyedSubscript:@"wrappedTZName"];
    if (v12)
    {
      defaultTimeZone = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:v12];
    }

    else
    {
      defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
    }

    wrappedTimeZone = v5->_wrappedTimeZone;
    v5->_wrappedTimeZone = defaultTimeZone;
  }

  return v5;
}

- (id)dictForCoding
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_gmtOffset];
  [dictionary setObject:v4 forKeyedSubscript:@"gmtOffset"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_dstOffset];
  [dictionary setObject:v5 forKeyedSubscript:@"dstOffset"];

  standardDate = self->_standardDate;
  if (standardDate)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:standardDate length:16];
    [dictionary setObject:v7 forKeyedSubscript:@"standardDate"];
  }

  daylightDate = self->_daylightDate;
  if (daylightDate)
  {
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:daylightDate length:16];
    [dictionary setObject:v9 forKeyedSubscript:@"daylightDate"];
  }

  name = [(NSTimeZone *)self->_wrappedTimeZone name];
  if (name)
  {
    [dictionary setObject:name forKeyedSubscript:@"wrappedTZName"];
  }

  return dictionary;
}

@end