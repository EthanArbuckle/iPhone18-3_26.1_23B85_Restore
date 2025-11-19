@interface IPDataDetectorsFeatureExtractor
- (BOOL)stringContainsNonTimeStrings:(id)a3 aroundRange:(_NSRange)a4;
- (IPDataDetectorsFeatureExtractor)init;
- (_NSRange)textRangeReferencingAfternoon:(id)a3;
- (_NSRange)textRangeReferencingAllDay:(id)a3;
- (_NSRange)textRangeReferencingEvening:(id)a3;
- (_NSRange)textRangeReferencingMorning:(id)a3;
- (_NSRange)textRangeReferencingNewYearsEve:(id)a3;
- (_NSRange)textRangeReferencingNextWeekEnd:(id)a3;
- (_NSRange)textRangeReferencingNoon:(id)a3;
- (_NSRange)textRangeReferencingThisWeekEnd:(id)a3;
- (_NSRange)textRangeReferencingTomorrow:(id)a3;
- (_NSRange)textRangeReferencingValentineDay:(id)a3;
- (__DDScanner)standardScanner;
- (id)featureDataComplementingFeatureData:(id)a3 hour:(unint64_t)a4 minute:(unint64_t)a5 duration:(double)a6;
- (id)featuresForTextString:(id)a3 inMessageUnit:(id)a4 context:(id)a5;
- (id)newYearsEveDayDateFromReferenceDate:(id)a3;
- (id)queue;
- (id)stringByReplacingDetectedDataWithNGramMarkersInString:(id)a3;
- (id)thisSaturdayDateFromReferenceDate:(id)a3;
- (id)tomorrowDateFromReferenceDate:(id)a3;
- (id)valentineDayDateFromReferenceDate:(id)a3;
- (void)setTimeZone:(id)a3 forDateFeatures:(id)a4;
- (void)standardizeTimezonesForDetectedFeatures:(id)a3;
@end

@implementation IPDataDetectorsFeatureExtractor

- (IPDataDetectorsFeatureExtractor)init
{
  v4.receiver = self;
  v4.super_class = IPDataDetectorsFeatureExtractor;
  v2 = [(IPDataDetectorsFeatureExtractor *)&v4 init];
  if (init_onceToken != -1)
  {
    [IPDataDetectorsFeatureExtractor init];
  }

  return v2;
}

void __39__IPDataDetectorsFeatureExtractor_init__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Ipsos.IPDataDetectorsFeatureExtractor", v2);
  v1 = sStandardScannerQueue;
  sStandardScannerQueue = v0;
}

- (__DDScanner)standardScanner
{
  v15 = *MEMORY[0x277D85DE8];
  if (sScanner)
  {
    v2 = sLastPreferredLanguage;
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 arrayForKey:@"AppleLanguages"];
    v5 = [v4 firstObject];
    LOBYTE(v2) = [v2 isEqualToString:v5];

    result = sScanner;
    if (v2)
    {
      if (sScanner)
      {
        goto LABEL_14;
      }
    }

    else
    {
      CFRelease(sScanner);
      sScanner = 0;
    }
  }

  sScanner = DDScannerCreate();
  if (sScanner)
  {
    DDScannerEnableOptionalSource();
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = [v7 arrayForKey:@"AppleLanguages"];
    v9 = [v8 firstObject];
    v10 = sLastPreferredLanguage;
    sLastPreferredLanguage = v9;
  }

  else
  {
    v11 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v11 = _IPLogHandle;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = 0;
      _os_log_impl(&dword_2485E4000, v11, OS_LOG_TYPE_ERROR, "standardScanner creation failed: %@ #Generic", buf, 0xCu);
    }

    CFRelease(0);
  }

  result = sScanner;
LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)stringContainsNonTimeStrings:(id)a3 aroundRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v7 = [IPRegexToolbox regularExpressionWithKey:@"stringContainsNonTimeStrings:aroundRange:" generator:&__block_literal_global_15];
  if (location <= 1)
  {
    v8 = length;
  }

  else
  {
    v8 = length + 2;
  }

  if (location <= 1)
  {
    v9 = location;
  }

  else
  {
    v9 = location - 2;
  }

  v10 = [v6 length] - (v9 + v8);
  if (v10 >= 2)
  {
    v10 = 2;
  }

  v11 = [v7 rangeOfFirstMatchInString:v6 options:2 range:{v9, v10 + v8}];

  return v11 != 0x7FFFFFFFFFFFFFFFLL;
}

id __76__IPDataDetectorsFeatureExtractor_stringContainsNonTimeStrings_aroundRange___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([£%$€#]| (sera))" options:65 error:&v2];

  return v0;
}

- (id)featuresForTextString:(id)a3 inMessageUnit:(id)a4 context:(id)a5
{
  v120 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v84 = a4;
  v88 = a5;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:30];
  v9 = [v84 originalMessage];
  v10 = [v9 dateSent];

  v116[0] = 0;
  v116[1] = v116;
  v116[2] = 0x3032000000;
  v116[3] = __Block_byref_object_copy__1;
  v116[4] = __Block_byref_object_dispose__1;
  v117 = [MEMORY[0x277CBEB18] array];
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  v11 = [v88 objectForKey:@"IPFeatureExtractorDetectedDateInSubjectFeatureData"];
  v12 = [v11 value];
  v83 = v11;
  v13 = [v11 contextDictionary];
  v14 = [v13 objectForKeyedSubscript:?];
  v15 = [v14 BOOLValue];

  v16 = [v83 contextDictionary];
  v17 = [v16 objectForKeyedSubscript:@"timeIsApproximate"];
  v18 = [v17 BOOLValue];

  v19 = [v7 length];
  v20 = [v88 objectForKey:@"IPFeatureExtractorContextText"];
  v93 = [v7 copy];
  v86 = v20;
  if (v20)
  {
    v19 = [v7 length];
    v21 = [v20 stringByAppendingString:v7];

    v22 = v8;
    v20 = ([v20 length] + 1);
    v7 = v21;
  }

  else
  {
    v22 = v8;
  }

  v23 = sStandardScannerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__IPDataDetectorsFeatureExtractor_featuresForTextString_inMessageUnit_context___block_invoke;
  block[3] = &unk_278F23078;
  v109 = v7;
  block[4] = self;
  v107 = v116;
  v87 = v7;
  v103 = v87;
  v24 = v22;
  v104 = v24;
  v81 = v12;
  v105 = v81;
  v110 = v15;
  v111 = v18;
  v90 = v10;
  v106 = v90;
  v108 = &v112;
  dispatch_sync(v23, block);
  v25 = objc_autoreleasePoolPush();
  v85 = [v87 lowercaseString];
  objc_autoreleasePoolPop(v25);
  if ((v113[3] & 1) == 0)
  {
    if (v90)
    {
      v27 = [(IPDataDetectorsFeatureExtractor *)self textRangeReferencingTomorrow:v85, v81];
      if (v27 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = v26;
        v29 = [(IPDataDetectorsFeatureExtractor *)self tomorrowDateFromReferenceDate:v90];
        v30 = [IPFeatureData featureDataWithType:1 value:v29 matchRange:v27, v28];
        v31 = [v30 contextDictionary];
        [v31 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"allDay"];

        v32 = [v30 contextDictionary];
        [v32 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"dateTimeIsTenseDependent"];

        v33 = [v30 contextDictionary];
        [v33 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IPFeatureDataContextDateTimeFromIpsosOverlay"];

        [v30 setTextUnit:v87];
        [v24 addObject:v30];
      }
    }
  }

  if ((v113[3] & 1) == 0)
  {
    if (v90)
    {
      v35 = [(IPDataDetectorsFeatureExtractor *)self textRangeReferencingValentineDay:v85];
      if (v35 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = v34;
        v37 = [(IPDataDetectorsFeatureExtractor *)self valentineDayDateFromReferenceDate:v90];
        v38 = [IPFeatureData featureDataWithType:1 value:v37 matchRange:v35, v36];
        v39 = [v38 contextDictionary];
        [v39 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"allDay"];

        v40 = [v37 dateByAddingTimeInterval:10800.0];
        v41 = [v38 contextDictionary];
        [v41 setObject:v40 forKeyedSubscript:@"endDate"];

        v42 = [v38 contextDictionary];
        [v42 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"dateTimeIsTenseDependent"];

        v43 = [v38 contextDictionary];
        [v43 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IPFeatureDataContextDateTimeFromIpsosOverlay"];

        [v38 setTextUnit:v87];
        [v24 addObject:v38];
      }
    }
  }

  if ((v113[3] & 1) == 0 && v90)
  {
    if (IPGregorianCalendar_once_0 != -1)
    {
      [IPDataDetectorsFeatureExtractor featuresForTextString:inMessageUnit:context:];
    }

    v44 = IPGregorianCalendar_calendar_0;
    v45 = [v44 components:8 fromDate:v90];
    if ([v45 month] == 12)
    {
      v47 = [(IPDataDetectorsFeatureExtractor *)self textRangeReferencingNewYearsEve:v85];
      if (v47 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v48 = v46;
        v49 = [(IPDataDetectorsFeatureExtractor *)self newYearsEveDayDateFromReferenceDate:v90];
        v50 = [IPFeatureData featureDataWithType:1 value:v49 matchRange:v47, v48];
        v51 = [v50 contextDictionary];
        [v51 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"allDay"];

        v52 = [v49 dateByAddingTimeInterval:21600.0];
        v53 = [v50 contextDictionary];
        [v53 setObject:v52 forKeyedSubscript:@"endDate"];

        v54 = [v50 contextDictionary];
        [v54 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"dateTimeIsTenseDependent"];

        v55 = [v50 contextDictionary];
        [v55 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IPFeatureDataContextDateTimeFromIpsosOverlay"];

        [v50 setTextUnit:v87];
        [v24 addObject:v50];
      }
    }
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v24;
  v56 = [obj countByEnumeratingWithState:&v98 objects:v119 count:16];
  if (!v56)
  {
LABEL_42:
    v65 = 0;
    v66 = obj;
LABEL_43:

    goto LABEL_44;
  }

  v57 = 0;
  v58 = *v99;
  while (2)
  {
    for (i = 0; i != v56; ++i)
    {
      if (*v99 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v60 = *(*(&v98 + 1) + 8 * i);
      if (![v60 type] || objc_msgSend(v60, "type") == 1)
      {
        v61 = [v60 contextDictionary];
        v62 = [v61 objectForKeyedSubscript:@"allDay"];
        v63 = [v62 BOOLValue];

        if (v57)
        {
          v64 = 0;
        }

        else
        {
          v64 = v63;
        }

        if ((v64 & 1) == 0)
        {

          goto LABEL_42;
        }

        v57 = v60;
      }
    }

    v56 = [obj countByEnumeratingWithState:&v98 objects:v119 count:16];
    if (v56)
    {
      continue;
    }

    break;
  }

  v65 = v57;
  if (v57)
  {
    if ([(IPDataDetectorsFeatureExtractor *)self textRangeReferencingMorning:v85]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(IPDataDetectorsFeatureExtractor *)self textRangeReferencingNoon:v85]== 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(IPDataDetectorsFeatureExtractor *)self textRangeReferencingAfternoon:v85]== 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([(IPDataDetectorsFeatureExtractor *)self textRangeReferencingEvening:v85]== 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([(IPDataDetectorsFeatureExtractor *)self textRangeReferencingAllDay:v85]== 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_44;
            }

            v66 = [(IPDataDetectorsFeatureExtractor *)self featureDataComplementingFeatureData:v57 hour:8 minute:0 duration:43200.0];
            v67 = [v66 contextDictionary];
            [v67 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"allDay"];

            v68 = [v66 contextDictionary];
            [v68 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"prefersAllDay"];

            [v66 setTextUnit:v87];
            v65 = v57;
            [obj addObject:v66];
            [obj removeObject:v57];
          }

          else
          {
            v66 = [(IPDataDetectorsFeatureExtractor *)self featureDataComplementingFeatureData:v57 hour:19 minute:0 duration:7200.0];
            [v66 setTextUnit:v87];
            [obj addObject:v66];
            [obj removeObject:v57];
          }
        }

        else
        {
          v66 = [(IPDataDetectorsFeatureExtractor *)self featureDataComplementingFeatureData:v57 hour:15 minute:0 duration:7200.0];
          [v66 setTextUnit:v87];
          [obj addObject:v66];
          [obj removeObject:v57];
        }
      }

      else
      {
        v66 = [(IPDataDetectorsFeatureExtractor *)self featureDataComplementingFeatureData:v57 hour:12 minute:0 duration:3600.0];
        [v66 setTextUnit:v87];
        [obj addObject:v66];
        [obj removeObject:v57];
      }
    }

    else
    {
      v66 = [(IPDataDetectorsFeatureExtractor *)self featureDataComplementingFeatureData:v57 hour:9 minute:0 duration:7200.0];
      [v66 setTextUnit:v87];
      [obj addObject:v66];
      [obj removeObject:v57];
    }

    goto LABEL_43;
  }

LABEL_44:
  [(IPDataDetectorsFeatureExtractor *)self standardizeTimezonesForDetectedFeatures:obj, v81];
  if (v86)
  {
    v92 = v65;
    v69 = [v86 length];
    v70 = objc_opt_new();
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v71 = obj;
    v72 = [v71 countByEnumeratingWithState:&v94 objects:v118 count:16];
    if (v72)
    {
      v73 = *v95;
      do
      {
        for (j = 0; j != v72; ++j)
        {
          if (*v95 != v73)
          {
            objc_enumerationMutation(v71);
          }

          v75 = *(*(&v94 + 1) + 8 * j);
          v122.location = [v75 matchRange];
          v123.location = v20;
          v123.length = v19;
          if (NSIntersectionRange(v122, v123).length)
          {
            v76 = [v75 matchRange];
            [v75 matchRange];
            [v75 setMatchRange:{v76 - v69, v77}];
            [v75 setTextUnit:v93];
            [v70 addObject:v75];
          }
        }

        v72 = [v71 countByEnumeratingWithState:&v94 objects:v118 count:16];
      }

      while (v72);
    }

    obj = [v70 copy];
    v65 = v92;
  }

  v78 = obj;

  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(v116, 8);

  v79 = *MEMORY[0x277D85DE8];

  return v78;
}

void __79__IPDataDetectorsFeatureExtractor_featuresForTextString_inMessageUnit_context___block_invoke(uint64_t a1)
{
  v1 = a1;
  v209 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) standardScanner];
  v2 = [*(v1 + 32) timeScanner];
  v3 = *(v1 + 88);
  if (DDScannerScanString())
  {
    v4 = *MEMORY[0x277D041E8];
    v5 = *(*(*(v1 + 72) + 8) + 40);
    v6 = DDScannerCopyResultsWithOptions();
    [v5 addObjectsFromArray:v6];
  }

  if ([*(*(*(v1 + 72) + 8) + 40) count])
  {
    v7 = v2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *(v1 + 88);
    if (DDScannerScanString())
    {
      v9 = DDScannerCopyResultsWithOptions();
      v10 = [MEMORY[0x277CBEB18] array];
      v201 = 0u;
      v202 = 0u;
      v203 = 0u;
      v204 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v201 objects:v208 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v202;
        v15 = *MEMORY[0x277D04198];
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v202 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v201 + 1) + 8 * i);
            Type = DDResultGetType();
            if (CFStringCompare(Type, v15, 0) == kCFCompareEqualTo)
            {
              Range = DDResultGetRange();
              if (([*(v1 + 32) stringContainsNonTimeStrings:*(v1 + 40) aroundRange:{Range, v20}] & 1) == 0)
              {
                [v10 addObject:v17];
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v201 objects:v208 count:16];
        }

        while (v13);
      }

      if ([v10 count])
      {
        [v10 addObjectsFromArray:*(*(*(v1 + 72) + 8) + 40)];
        v210.length = CFArrayGetCount(v10);
        v210.location = 0;
        CFArraySortValues(v10, v210, IPDDResultRangeCompare, 0);
        if (CFArrayGetCount(v10) >= 2)
        {
          v21 = 0;
          do
          {
            CFArrayGetValueAtIndex(v10, v21);
            v22 = DDResultGetRange();
            v24 = v23;
            v25 = v21 + 1;
            CFArrayGetValueAtIndex(v10, v21 + 1);
            v26 = DDResultGetRange();
            if (v26 < v22 + v24)
            {
              if (v27 >= v24 && v22 == v26)
              {
                v29 = v21;
              }

              else
              {
                v29 = v21 + 1;
              }

              CFArrayRemoveValueAtIndex(v10, v29);
              v25 = v21;
            }

            v21 = v25;
          }

          while (v25 < CFArrayGetCount(v10) - 1);
        }

        objc_storeStrong((*(*(v1 + 72) + 8) + 40), v10);
      }
    }
  }

  v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(*(*(v1 + 72) + 8) + 40), "count")}];
  v31 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(*(*(v1 + 72) + 8) + 40), "count")}];
  v197 = 0u;
  v199 = 0u;
  v200 = 0u;
  v198 = 0u;
  obj = *(*(*(v1 + 72) + 8) + 40);
  v188 = [obj countByEnumeratingWithState:&v197 objects:v207 count:16];
  v190 = v1;
  v182 = v30;
  v183 = v31;
  if (v188)
  {
    v186 = *v198;
    v180 = *MEMORY[0x277D040D0];
    v176 = *MEMORY[0x277D04180];
    v178 = *MEMORY[0x277D041A0];
    v172 = *MEMORY[0x277D04150];
    do
    {
      v32 = 0;
      do
      {
        if (*v198 != v186)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v197 + 1) + 8 * v32);
        Category = DDResultGetCategory();
        v35 = DDResultGetRange();
        v37 = v36;
        v191 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld %ld", v35, v36];
        if (([v31 containsObject:?] & 1) == 0)
        {
          [v31 addObject:v191];
          if (Category > 2)
          {
            switch(Category)
            {
              case 3:
                if (DDResultGetSubresultWithType() && DDResultGetSubresultWithType())
                {
                  goto LABEL_87;
                }

                v40 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
                DDResultCopyFullAddressComponents();
                v41 = 3;
                break;
              case 4:
                goto LABEL_49;
              case 5:
                if (DDResultHasType())
                {
                  MatchedString = DDResultGetMatchedString();
                  v39 = CFRetain(MatchedString);
                  v31 = v183;
                  v64 = [IPFeatureData featureDataWithType:11 value:v39 matchRange:v35, v37];

                  goto LABEL_85;
                }

                ParsecDomain = DDResultGetParsecDomain();
                if (ParsecDomain > 8 || ((0x19Bu >> ParsecDomain) & 1) == 0)
                {
                  goto LABEL_87;
                }

                v62 = qword_24860E090[ParsecDomain];
                v63 = DDResultGetMatchedString();
                v40 = CFRetain(v63);
                v41 = v62;
                v31 = v183;
                break;
              default:
                goto LABEL_87;
            }

            v64 = [IPFeatureData featureDataWithType:v41 value:v40 matchRange:v35, v37];

            v30 = v182;
          }

          else
          {
            if (!Category)
            {
              if (!DDResultHasType())
              {
                goto LABEL_87;
              }

LABEL_49:
              [v30 addObject:v33];
              goto LABEL_87;
            }

            if (Category != 1)
            {
              if (Category != 2)
              {
                goto LABEL_87;
              }

              DDResultCopyPhoneValue();
              v64 = 0;
              goto LABEL_85;
            }

            v42 = DDResultCopyExtractedURLWithOptions();
            if (v42)
            {
              v43 = [MEMORY[0x277CBEBC0] URLWithString:v42];
              v44 = v43;
              if (v43)
              {
                v45 = [(__CFString *)v43 scheme];
                v46 = [v45 lowercaseString];

                v47 = [(__CFString *)v44 resourceSpecifier];
                if ([(__CFString *)v47 hasPrefix:@"//"])
                {
                  v48 = [(__CFString *)v47 substringFromIndex:2];
                  v49 = v47;
                  v47 = v48;
                }

                v174 = v47;
                v50 = [(__CFString *)v47 length];
                v31 = v183;
                if (v50 && [v46 length])
                {
                  if ([v46 isEqualToString:@"mailto"])
                  {
                    v170 = v46;
                    v167 = v44;
                    v51 = [(__CFString *)v174 componentsSeparatedByString:@"?"];
                    v52 = [v51 firstObject];
                    v53 = [v52 componentsSeparatedByString:{@", "}];

                    v195 = 0u;
                    v196 = 0u;
                    v193 = 0u;
                    v194 = 0u;
                    v54 = v53;
                    v55 = [v54 countByEnumeratingWithState:&v193 objects:v206 count:16];
                    if (v55)
                    {
                      v56 = v55;
                      v57 = *v194;
                      do
                      {
                        for (j = 0; j != v56; ++j)
                        {
                          if (*v194 != v57)
                          {
                            objc_enumerationMutation(v54);
                          }

                          v59 = *(*(&v193 + 1) + 8 * j);
                          if ([v59 containsString:@"@"])
                          {
                            v60 = [IPFeatureData featureDataWithType:5 value:v59 matchRange:v35, v37];
                            [v60 setTextUnit:*(v190 + 40)];
                            [*(v190 + 48) addObject:v60];
                          }
                        }

                        v56 = [v54 countByEnumeratingWithState:&v193 objects:v206 count:16];
                      }

                      while (v56);
                    }

                    v64 = 0;
                    v1 = v190;
                    v30 = v182;
                    v31 = v183;
                    v44 = v167;
LABEL_71:
                    v46 = v170;
                  }

                  else
                  {
                    if (([v46 isEqualToString:@"tel"] & 1) != 0 || objc_msgSend(v46, "isEqualToString:", @"telprompt"))
                    {
                      v65 = 6;
                      v66 = v174;
                    }

                    else
                    {
                      if (([v46 isEqualToString:@"facetime"] & 1) != 0 || objc_msgSend(v46, "isEqualToString:", @"facetime-audio"))
                      {
                        v67 = [(__CFString *)v174 componentsSeparatedByString:@"?"];
                        [v67 firstObject];
                        v68 = v170 = v46;

                        v31 = v183;
                        if ([v68 containsString:@"@"])
                        {
                          v69 = 5;
                        }

                        else
                        {
                          v69 = 6;
                        }

                        v64 = [IPFeatureData featureDataWithType:v69 value:v68 matchRange:v35, v37];

                        goto LABEL_71;
                      }

                      v65 = 4;
                      v66 = v44;
                    }

                    v64 = [IPFeatureData featureDataWithType:v65 value:v66 matchRange:v35, v37];
                  }
                }

                else
                {
                  v64 = 0;
                }
              }

              else
              {
                v64 = 0;
              }
            }

            else
            {
              v64 = 0;
            }
          }

LABEL_85:
          if (v64)
          {
            [v64 setTextUnit:*(v1 + 40)];
            [*(v1 + 48) addObject:v64];
          }
        }

LABEL_87:

        ++v32;
      }

      while (v32 != v188);
      v70 = [obj countByEnumeratingWithState:&v197 objects:v207 count:16];
      v188 = v70;
    }

    while (v70);
  }

  v71 = [v30 count];
  v153 = v71 - 1;
  if (v71 >= 1)
  {
    v72 = v71;
    v171 = 0;
    v157 = 0;
    v73 = 0;
    v162 = *MEMORY[0x277D041A0];
    theString2 = *MEMORY[0x277D04198];
    v160 = *MEMORY[0x277D04190];
    obja = *MEMORY[0x277D040A8];
    v159 = *MEMORY[0x277D040A0];
    v175 = *MEMORY[0x277D040B0];
    v179 = -1;
    v177 = 1;
    v169 = -3;
    v154 = v71;
    while (1)
    {
      v74 = [v30 objectAtIndexedSubscript:v73];

      v75 = DDResultGetType();
      HasType = DDResultHasType();
      v77 = CFStringCompare(v75, theString2, 0);
      v78 = CFStringCompare(v75, v160, 0);
      v192 = CFStringCompare(v75, obja, 0);
      v181 = CFStringCompare(v75, v159, 0);
      v187 = HasType;
      if (HasType)
      {
        v79 = 0;
        v189 = 1;
      }

      else
      {
        v189 = CFStringCompare(v75, v175, 0) == kCFCompareEqualTo;
        v79 = DDResultTimeIsApprox() != 0;
      }

      v168 = v79;
      v80 = v192 && (!v189 || !v79) || DDResultDateExtractionDependsOnContextTense() == 0;
      v163 = v80;
      v81 = v77 == kCFCompareEqualTo || v78 == kCFCompareEqualTo;
      v82 = v81;
      v166 = v82;
      if (!v81)
      {
        break;
      }

      v85 = *(v1 + 56);
      if (!v85)
      {
        v128 = v73 + ~v169;
        if (v128 >= 2)
        {
          v128 = 2;
        }

        v129 = v128 + v73;
        if (v129 >= v153)
        {
          v129 = v153;
        }

        if (v73 < v129)
        {
          v130 = v177;
          v131 = v179 - v169;
          if (v179 - v169 >= 2)
          {
            v131 = 2;
          }

          v132 = v131 + v73;
          if (v132 >= v153)
          {
            v132 = v153;
          }

          v133 = v73 - v132;
          do
          {
            [v30 objectAtIndexedSubscript:v130];

            v134 = DDResultGetType();
            if (CFStringCompare(v134, v175, 0) && CFStringCompare(v134, obja, 0) || (v135 = *(v1 + 64), !DDResultCopyExtractedDateFromReferenceDate()))
            {
              v31 = v183;
            }

            else
            {
              v31 = v183;
            }

            ++v130;
          }

          while (!__CFADD__(v133++, 1));
        }

        v83 = v154;
        v171 = 0;
        goto LABEL_115;
      }

      v83 = v72;
      v173 = v85;
      v84 = 0;
LABEL_118:
      v87 = DDResultGetRange();
      v88 = v187;
      if (v192 == kCFCompareEqualTo)
      {
        v88 = 1;
      }

      v89 = v88 | v189;
      if (v77)
      {
        v90 = 1;
      }

      else
      {
        v90 = v84;
      }

      if (v89 & 1) == 0 && (v90)
      {
        if (v78 && v181)
        {
          v72 = v83;
        }

        else
        {
          v124 = v86;
          v165 = v84;
          if (DDResultCopyExtractedStartDateEndDate())
          {
            if (DDResultDateExtractionDependsOnContextTense())
            {
              v125 = 1;
            }

            else
            {
              v125 = v77 == kCFCompareEqualTo;
            }

            v126 = v125;
            DDResultIsPartialDateRangeOrTimeRange();
            v102 = [IPFeatureData featureDataWithType:1 value:0 matchRange:v87, v124];

            v72 = v154;
            v137 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:0];
            v138 = [v102 contextDictionary];
            [v138 setObject:v137 forKeyedSubscript:@"allDay"];

            v139 = [MEMORY[0x277CCABB0] numberWithBool:v168];
            v140 = [v102 contextDictionary];
            [v140 setObject:v139 forKeyedSubscript:@"timeIsApproximate"];

            v141 = [MEMORY[0x277CCABB0] numberWithBool:v126];
            v142 = [v102 contextDictionary];
            [v142 setObject:v141 forKeyedSubscript:@"dateTimeIsTenseDependent"];

            v143 = [MEMORY[0x277CCABB0] numberWithBool:v166 & v165];
            v144 = [v102 contextDictionary];
            [v144 setObject:v143 forKeyedSubscript:@"dateIsTimeOnlyAndReferrengingToSentDate"];

            v145 = [MEMORY[0x277CCABB0] numberWithInt:v166];
            v146 = [v102 contextDictionary];
            [v146 setObject:v145 forKeyedSubscript:@"dateOnlyContainsTimeInformation"];

            v147 = [MEMORY[0x277CCABB0] numberWithBool:v181 == kCFCompareEqualTo];
            v148 = [v102 contextDictionary];
            [v148 setObject:v147 forKeyedSubscript:@"isDateRange"];

            v149 = [MEMORY[0x277CCABB0] numberWithBool:DDResultNeedsMeridianGuess() != 0];
            v150 = [v102 contextDictionary];
            [v150 setObject:v149 forKeyedSubscript:@"timeNeedsMeridianGuess"];

            *(*(*(v1 + 80) + 8) + 24) = 1;
            v30 = v182;
            v31 = v183;
            if (!v102)
            {
              goto LABEL_195;
            }

            goto LABEL_194;
          }

          v72 = v83;
        }

        goto LABEL_195;
      }

      v164 = v84;
      v158 = v86;
      if (!v157 || v77)
      {
        if (v157)
        {
LABEL_134:
          v72 = v83;
          v93 = v173;
        }

        else
        {
          v127 = *(v1 + 56);
          v72 = v83;
          v93 = v173;
          if (v127 != 0 && !v163)
          {
            v93 = [v127 dateByAddingTimeInterval:-86399.0];
          }
        }

        v92 = 0;
        v173 = v93;
        goto LABEL_136;
      }

      if ((DDResultHasType() & 1) == 0)
      {
        IsApprox = DDResultTimeIsApprox();
        v7 = IsApprox == DDResultTimeIsApprox();
        v31 = v183;
        if (v7)
        {
          goto LABEL_134;
        }
      }

      v205[0] = v74;
      v205[1] = v157;
      [MEMORY[0x277CBEA60] arrayWithObjects:v205 count:2];
      v74 = DDResultCreateFromDateTimeResults();
      CFAutorelease(v74);
      v92 = 1;
      v72 = v83;
LABEL_136:
      if (DDResultCopyExtractedDateFromReferenceDate())
      {
        v94 = 0;
        if (DDResultDateExtractionDependsOnContextTense())
        {
          v95 = 1;
        }

        else
        {
          v95 = v77 == kCFCompareEqualTo;
        }

        v96 = v95;
        v155 = v96;
        v97 = *(v1 + 56);
        if (!v97 || ([v97 timeIntervalSinceDate:v94], fabs(v98) >= 43200.0) || (*(v1 + 96) & 1) != 0 || (*(v1 + 97) & 1) != 0)
        {
          v99 = v94;
        }

        else
        {
          v99 = v94;
          if (v168)
          {
            v1 = v190;
            v151 = *(v190 + 56);

            v168 = 0;
            v99 = v151;
          }

          else
          {
            v168 = 0;
            v1 = v190;
          }
        }

        v156 = v94;
        if (v187)
        {
          [v99 timeIntervalSinceReferenceDate];
          v101 = [v99 dateByAddingTimeInterval:-(v100 + -round(v100 / 600.0) * 600.0)];

          v99 = v101;
        }

        v102 = [IPFeatureData featureDataWithType:1 value:v99 matchRange:v87, v158];
        v103 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:0];
        v104 = [v102 contextDictionary];
        [v104 setObject:v103 forKeyedSubscript:@"allDay"];

        v105 = [MEMORY[0x277CCABB0] numberWithBool:v168];
        v106 = [v102 contextDictionary];
        [v106 setObject:v105 forKeyedSubscript:@"timeIsApproximate"];

        v107 = [MEMORY[0x277CCABB0] numberWithBool:v187];
        v108 = [v102 contextDictionary];
        [v108 setObject:v107 forKeyedSubscript:@"isTimeOffset"];

        v109 = [MEMORY[0x277CCABB0] numberWithBool:v155];
        v110 = [v102 contextDictionary];
        [v110 setObject:v109 forKeyedSubscript:@"dateTimeIsTenseDependent"];

        v111 = [MEMORY[0x277CCABB0] numberWithBool:v166 & v164];
        v112 = [v102 contextDictionary];
        [v112 setObject:v111 forKeyedSubscript:@"dateIsTimeOnlyAndReferrengingToSentDate"];

        v113 = [MEMORY[0x277CCABB0] numberWithInt:(v166 | v187) & 1];
        v114 = [v102 contextDictionary];
        [v114 setObject:v113 forKeyedSubscript:@"dateOnlyContainsTimeInformation"];

        v115 = [MEMORY[0x277CCABB0] numberWithBool:v181 == kCFCompareEqualTo];
        v116 = [v102 contextDictionary];
        [v116 setObject:v115 forKeyedSubscript:@"isDateRange"];

        v117 = [MEMORY[0x277CCABB0] numberWithBool:DDResultNeedsMeridianGuess() != 0];
        v118 = [v102 contextDictionary];
        [v118 setObject:v117 forKeyedSubscript:@"timeNeedsMeridianGuess"];

        v119 = v171;
        if (v192 == kCFCompareEqualTo || v189)
        {
          v119 = 0;
        }

        v120 = v169;
        if (v192 == kCFCompareEqualTo || v189)
        {
          v120 = v73;
        }

        if (v181)
        {
          v121 = v119;
        }

        else
        {
          v121 = 0;
        }

        v122 = -3;
        if (v181)
        {
          v122 = v120;
        }

        v169 = v122;
        v171 = v121;
        *(*(*(v1 + 80) + 8) + 24) = 1;
        v31 = v183;
        v72 = v154;
        if ((v92 & 1) == 0)
        {
          if (v173)
          {
            v123 = CFRetain(v173);
            CFAutorelease(v123);
          }

          v157 = v74;
        }

        v30 = v182;
        if (!v102)
        {
          goto LABEL_195;
        }

LABEL_194:
        [v102 setTextUnit:*(v1 + 40)];
        [*(v1 + 48) addObject:v102];

        goto LABEL_195;
      }

      v30 = v182;
LABEL_195:
      ++v73;
      ++v177;
      ++v179;
      if (v73 == v72)
      {
        goto LABEL_202;
      }
    }

    v83 = v72;
LABEL_115:
    v173 = *(v1 + 64);
    v84 = 1;
    goto LABEL_118;
  }

LABEL_202:

  v152 = *MEMORY[0x277D85DE8];
}

- (void)standardizeTimezonesForDetectedFeatures:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  obj = v5;
  if (!v6)
  {
LABEL_20:

    goto LABEL_21;
  }

  v7 = v6;
  v5 = 0;
  v8 = *v22;
  do
  {
    v9 = 0;
    do
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      if (![v10 type] || objc_msgSend(v10, "type") == 1)
      {
        v11 = [v10 contextDictionary];
        v12 = [v11 objectForKeyedSubscript:@"startDateTimeZone"];

        v13 = [v10 contextDictionary];
        v14 = [v13 objectForKeyedSubscript:@"endDateTimeZone"];

        if (v12)
        {
          v15 = v12;
          goto LABEL_12;
        }

        if (v14)
        {
          v15 = v14;
LABEL_12:
          v16 = v15;

          [(IPDataDetectorsFeatureExtractor *)self setTimeZone:v16 forDateFeatures:v4];
          [v4 removeAllObjects];
          v5 = v16;
        }

        else
        {
          [v4 addObject:v10];
        }
      }

      ++v9;
    }

    while (v7 != v9);
    v17 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    v7 = v17;
  }

  while (v17);

  if (v5)
  {
    [(IPDataDetectorsFeatureExtractor *)self setTimeZone:v5 forDateFeatures:v4];
    goto LABEL_20;
  }

LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setTimeZone:(id)a3 forDateFeatures:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEBB0] localTimeZone];
  v8 = [v5 secondsFromGMT];
  v30 = v7;
  v9 = [v7 secondsFromGMT];
  v33 = v5;
  v10 = [v5 secondsFromGMT];
  v11 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
  v12 = [v11 secondsFromGMT];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v6;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v32 = v10 - v12 + 82800;
    v15 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        v18 = [v17 contextDictionary];
        v19 = [v18 objectForKeyedSubscript:@"allDay"];
        v20 = [v19 BOOLValue];

        v21 = v8 - v9;
        if (v20)
        {
          v21 = v32;
        }

        v22 = v21;
        v23 = [v17 value];
        v24 = [v23 dateByAddingTimeInterval:v22];
        [v17 setValue:v24];

        v25 = [v17 contextDictionary];
        [v25 setObject:v33 forKeyedSubscript:@"startDateTimeZone"];

        v26 = [v17 contextDictionary];
        v27 = [v26 objectForKeyedSubscript:@"endDate"];

        if (v27)
        {
          v28 = [v17 contextDictionary];
          [v28 setObject:0 forKeyedSubscript:@"endDate"];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)featureDataComplementingFeatureData:(id)a3 hour:(unint64_t)a4 minute:(unint64_t)a5 duration:(double)a6
{
  v9 = a3;
  v10 = [v9 value];
  if (IPGregorianCalendar_once_0 != -1)
  {
    [IPDataDetectorsFeatureExtractor featureDataComplementingFeatureData:hour:minute:duration:];
  }

  v11 = IPGregorianCalendar_calendar_0;
  v12 = [v11 components:2097182 fromDate:v10];
  v13 = objc_opt_new();
  [v13 setDay:{objc_msgSend(v12, "day")}];
  [v13 setMonth:{objc_msgSend(v12, "month")}];
  [v13 setYear:{objc_msgSend(v12, "year")}];
  [v13 setEra:{objc_msgSend(v12, "era")}];
  v14 = [v12 timeZone];
  [v13 setTimeZone:v14];

  [v13 setHour:a4];
  [v13 setMinute:a5];
  v15 = [v11 dateFromComponents:v13];

  v16 = [v9 matchRange];
  v18 = [IPFeatureData featureDataWithType:1 value:v15 matchRange:v16, v17];
  v19 = [v18 contextDictionary];
  [v19 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"allDay"];

  v20 = [v18 contextDictionary];
  v21 = MEMORY[0x277CBEC38];
  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"timeIsApproximate"];

  v22 = [v18 contextDictionary];
  [v22 setObject:v21 forKeyedSubscript:@"dateTimeComplement"];

  v23 = [v9 contextDictionary];

  v24 = [v23 objectForKeyedSubscript:@"dateTimeIsTenseDependent"];
  v25 = [v18 contextDictionary];
  [v25 setObject:v24 forKeyedSubscript:@"dateTimeIsTenseDependent"];

  if (a6 > 0.0)
  {
    v26 = [v15 dateByAddingTimeInterval:a6];
    v27 = [v18 contextDictionary];
    [v27 setObject:v26 forKeyedSubscript:@"endDate"];
  }

  return v18;
}

- (id)stringByReplacingDetectedDataWithNGramMarkersInString:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IPDataDetectorsFeatureExtractor *)self featuresForTextString:v4 inMessageUnit:0 context:0];
  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if ([v13 matchRange] >= v10 && v10 < objc_msgSend(v13, "matchRange"))
        {
          v14 = [v4 substringWithRange:{v10, objc_msgSend(v13, "matchRange") - v10}];
          [v6 appendString:v14];

          v15 = [v13 nGramMarker];
          [v6 appendString:v15];

          v16 = [v13 matchRange];
          v10 = v16 + v17;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v18 = [v4 substringWithRange:{v10, objc_msgSend(v4, "length") - v10}];
  [v6 appendString:v18];

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)thisSaturdayDateFromReferenceDate:(id)a3
{
  v3 = IPGregorianCalendar_once_0;
  v4 = a3;
  if (v3 != -1)
  {
    [IPDataDetectorsFeatureExtractor featureDataComplementingFeatureData:hour:minute:duration:];
  }

  v5 = IPGregorianCalendar_calendar_0;
  v6 = [v5 components:25088 fromDate:v4];

  [v6 setWeekday:7];
  v7 = [v5 dateFromComponents:v6];

  return v7;
}

- (id)tomorrowDateFromReferenceDate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDay:1];
  v5 = objc_alloc(MEMORY[0x277CBEA80]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [v6 dateByAddingComponents:v4 toDate:v3 options:0];

  v8 = [v6 components:28 fromDate:v7];
  v9 = [v6 dateFromComponents:v8];

  return v9;
}

- (id)valentineDayDateFromReferenceDate:(id)a3
{
  v3 = IPGregorianCalendar_once_0;
  v4 = a3;
  if (v3 != -1)
  {
    [IPDataDetectorsFeatureExtractor featureDataComplementingFeatureData:hour:minute:duration:];
  }

  v5 = IPGregorianCalendar_calendar_0;
  v6 = [v5 components:4 fromDate:v4];

  v7 = objc_opt_new();
  [v7 setDay:14];
  [v7 setMonth:2];
  [v7 setYear:{objc_msgSend(v6, "year")}];
  [v7 setHour:19];
  v8 = [v5 dateFromComponents:v7];

  return v8;
}

- (id)newYearsEveDayDateFromReferenceDate:(id)a3
{
  v3 = IPGregorianCalendar_once_0;
  v4 = a3;
  if (v3 != -1)
  {
    [IPDataDetectorsFeatureExtractor featureDataComplementingFeatureData:hour:minute:duration:];
  }

  v5 = IPGregorianCalendar_calendar_0;
  v6 = [v5 components:4 fromDate:v4];

  v7 = objc_opt_new();
  [v7 setDay:31];
  [v7 setMonth:12];
  [v7 setYear:{objc_msgSend(v6, "year")}];
  [v7 setHour:20];
  v8 = [v5 dateFromComponents:v7];

  return v8;
}

- (_NSRange)textRangeReferencingTomorrow:(id)a3
{
  v3 = a3;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingTomorrow" generator:&__block_literal_global_84];
  v5 = [v4 rangeOfFirstMatchInString:v3 options:2 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __64__IPDataDetectorsFeatureExtractor_textRangeReferencingTomorrow___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:tomorrow|demain|(?<!la)mañana|domani|morgen)" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingThisWeekEnd:(id)a3
{
  v3 = a3;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingThisWeekEnd" generator:&__block_literal_global_92];
  v5 = [v4 rangeOfFirstMatchInString:v3 options:2 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __67__IPDataDetectorsFeatureExtractor_textRangeReferencingThisWeekEnd___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:(?:this|(?<!de)ce) week-?end|(?:este|pr[óo]ximo) (?:finde|week-?end|fin de semana)|(?:quest|prossim)o (?:week- ?end|weekend|fine settimana)|(?:diese[sm]|kommende[sn]) w(?:eek-?end|ochenende))" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingNextWeekEnd:(id)a3
{
  v3 = a3;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingNextWeekEnd" generator:&__block_literal_global_100];
  v5 = [v4 rangeOfFirstMatchInString:v3 options:2 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __67__IPDataDetectorsFeatureExtractor_textRangeReferencingNextWeekEnd___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:next week-?end|le week-?end prochain|n(?:ae|ä)chste[sn] w(?:eek-?end|ochenende))" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingAllDay:(id)a3
{
  v3 = a3;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingAllDay" generator:&__block_literal_global_108];
  v5 = [v4 rangeOfFirstMatchInString:v3 options:2 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __62__IPDataDetectorsFeatureExtractor_textRangeReferencingAllDay___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:all day|toute la journée)" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingValentineDay:(id)a3
{
  v3 = a3;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingValentineDay" generator:&__block_literal_global_116];
  v5 = [v4 rangeOfFirstMatchInString:v3 options:2 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __68__IPDataDetectorsFeatureExtractor_textRangeReferencingValentineDay___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:valentine(?:['’]?s)? day|s(?:ain)?t[ \\-]valentin|san valent[ií]n|san valentino|valentinstag)" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingNewYearsEve:(id)a3
{
  v3 = a3;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingNewYearsEve" generator:&__block_literal_global_124];
  v5 = [v4 rangeOfFirstMatchInString:v3 options:2 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __67__IPDataDetectorsFeatureExtractor_textRangeReferencingNewYearsEve___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:new year(?:['’]s)? eve|le nouvel an|du jour de l['’]an|du nouvel an|nochevieja|año nuevo|capodanno|l['’]ultimo dell['’]anno|silvester)" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingMorning:(id)a3
{
  v3 = a3;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingMorning" generator:&__block_literal_global_132];
  v5 = [v4 rangeOfFirstMatchInString:v3 options:2 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __63__IPDataDetectorsFeatureExtractor_textRangeReferencingMorning___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:morning|matin|(début|fin) de matinée|la mañana|mattina|morgen früh|清晨|上午|朝)" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingNoon:(id)a3
{
  v3 = a3;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingNoon" generator:&__block_literal_global_140];
  v5 = [v4 rangeOfFirstMatchInString:v3 options:2 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __60__IPDataDetectorsFeatureExtractor_textRangeReferencingNoon___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:lunch|(?<!after)noon|(?<!petit( |-))déjeuner|(?<!après-)midi|migdia|mezzogiorno|alla mezza|mitta(?:g(?:essen)?|ch)|中午|正午)" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingAfternoon:(id)a3
{
  v3 = a3;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingAfternoon" generator:&__block_literal_global_148];
  v5 = [v4 rangeOfFirstMatchInString:v3 options:2 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __65__IPDataDetectorsFeatureExtractor_textRangeReferencingAfternoon___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:after(?:noon| lunch)|après(?:-midi| d[eé]jeuner)|tarde|después de comer|pomeriggio|nachmittag|下午|午後)" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingEvening:(id)a3
{
  v3 = a3;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingEvening" generator:&__block_literal_global_156];
  v5 = [v4 rangeOfFirstMatchInString:v3 options:2 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __63__IPDataDetectorsFeatureExtractor_textRangeReferencingEvening___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:evening|dinner|(?<!bonne)soirée|ce soir|tomar algo|cenar|(?:una |la |sta)sera|晚|夜)" options:65 error:&v2];

  return v0;
}

- (id)queue
{
  if (queue__onceToken_0 != -1)
  {
    [IPDataDetectorsFeatureExtractor queue];
  }

  v3 = queue__ipExprOnceResult_0;

  return v3;
}

void __40__IPDataDetectorsFeatureExtractor_queue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("IPDataDetectorsFeatureExtractor", v1);
  v3 = queue__ipExprOnceResult_0;
  queue__ipExprOnceResult_0 = v2;

  objc_autoreleasePoolPop(v0);
}

@end