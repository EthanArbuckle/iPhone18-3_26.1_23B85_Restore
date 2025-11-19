@interface SGStructuredEventDissector
+ (BOOL)eventEnrichmentContainsReverseMappedTags:(id)a3;
+ (id)addressDictionaryForAddressComponents:(id)a3;
+ (id)annotateContent:(id)a3 withLabel:(id)a4 forMatchingString:(id)a5;
+ (id)annotationMatchingStringsForSubject:(id)a3;
+ (id)eventEnrichmentFromEntity:(id)a3;
+ (id)jsMessageLogsDictionaryForMailMessage:(id)a3;
+ (id)jsMessageLogsDictionaryForPrivacyAwareLogs:(id)a3;
+ (id)labelsWithMatchingStringsForMailMessage:(id)a3;
+ (id)mergeFallbackSchema:(id)a3 parentEntity:(id)a4;
+ (id)nilEntities:(id)a3;
+ (id)outputLogsForClassification:(id)a3;
+ (id)plainTextStringsByLabelInTaggedCharacterRanges:(id)a3 inPlainText:(id)a4;
+ (id)preprocessDomParserResult:(id)a3 subject:(id)a4 epoch:(double)a5 category:(id)a6 labelsWithMatchingStrings:(id)a7;
+ (id)preprocessWithoutXPCForHTML:(id)a3 subject:(id)a4 epoch:(double)a5 category:(id)a6 labelsWithMatchingStrings:(id)a7;
+ (id)schemaOrgAndMissingEntitiesForDUFoundInEvent:(id)a3 eventClassification:(id)a4 fromSuggestTool:(BOOL)a5;
+ (id)schemaPostalAddressForPostalAddressExtraction:(id)a3 addressThreshold:(unint64_t)a4;
+ (id)schemaStringForDateComponents:(id)a3;
+ (id)schemaStringForEventStatus:(unsigned __int8)a3;
+ (id)schemaStringForReservationStatus:(unsigned __int8)a3;
+ (id)sharedInstance;
+ (id)tupleWithEntity:(id)a3 label:(id)a4;
+ (id)tupleWithError:(id)a3 label:(id)a4;
+ (unint64_t)tokenCount:(id)a3;
+ (unint64_t)tokenCountForPostalAddressComponents:(id)a3;
+ (void)addSchemaAsEnrichment:(id)a3 inMessage:(id)a4 parentEntity:(id)a5 eventClassification:(id)a6 mlDefaultExtraction:(BOOL)a7;
+ (void)logFailedExtractionWithClassification:(id)a3 missingEntities:(id)a4 mlSummary:(id)a5 shadowExtraction:(BOOL)a6 timingProcessingInMs:(unint64_t)a7 forMessage:(id)a8 parentEntity:(id)a9;
+ (void)logMLExtractionForSchema:(id)a3 mergedSchemaAndDiff:(id)a4 parentEntity:(id)a5 timingProcessingInMs:(unint64_t)a6 eventClassification:(id)a7 mailMessage:(id)a8 shadowExtraction:(BOOL)a9 mlDefaultExtraction:(BOOL)a10;
+ (void)logMLInteractions:(id)a3 context:(id)a4 mlDefaultExtraction:(BOOL)a5;
- (id)preprocessHTML:(id)a3 subject:(id)a4 epoch:(double)a5 category:(id)a6 labelsWithMatchingStrings:(id)a7;
- (id)tagsWithModelOutputFromEnrichedTaggedCharacterRanges:(id)a3;
- (void)dissectMailMessage:(id)a3 entity:(id)a4 context:(id)a5;
@end

@implementation SGStructuredEventDissector

- (id)tagsWithModelOutputFromEnrichedTaggedCharacterRanges:(id)a3
{
  v3 = a3;
  v4 = +[SGStructuredEventExtractionModel sharedInstance];
  v5 = [v4 modelInferences:v3];

  if (v5)
  {
    v6 = [(SGExtractionModel *)SGStructuredEventExtractionModel enrichTaggedCharacterRangesWithModelOutput:v5 usingInputCharacterRanges:v3];
  }

  else
  {
    v7 = sgEventsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: no extraction model inferences.", v9, 2u);
    }

    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)preprocessHTML:(id)a3 subject:(id)a4 epoch:(double)a5 category:(id)a6 labelsWithMatchingStrings:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = objc_opt_new();
  v16 = [v15 parseHTML:v14];

  v17 = [objc_opt_class() preprocessDomParserResult:v16 subject:v13 epoch:v12 category:v11 labelsWithMatchingStrings:a5];

  return v17;
}

- (void)dissectMailMessage:(id)a3 entity:(id)a4 context:(id)a5
{
  v89 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  context = objc_autoreleasePoolPush();
  v78 = mach_absolute_time();
  v10 = [v7 from];
  v11 = [v10 emailAddress];

  if (v11)
  {
    v12 = +[SGStructuredEventExtractionModel sharedInstance];
    v13 = [MEMORY[0x277D02098] detectStructuredEventsML];
    v14 = [v7 from];
    v15 = [v14 emailAddress];
    v16 = [v12 isSenderSupportedForExtraction:v15];

    v17 = [v7 from];
    v18 = [v17 emailAddress];
    LODWORD(v15) = [v12 isSenderSupportedForShadowExtraction:v18];

    v19 = [v7 from];
    v20 = [v19 emailAddress];
    v77 = [v12 isSenderSupportedForMLDefaultExtraction:v20];

    v21 = [v7 from];
    v22 = [v21 emailAddress];
    v23 = [v12 isSenderSupportedForPFLTraining:v22];

    v24 = sgEventsLogHandle();
    v25 = v15 & (v13 ^ 1);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = @"NO";
      if (v16)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      if (v25)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      *buf = 138412802;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v28;
      if (v23)
      {
        v26 = @"YES";
      }

      *&buf[22] = 2112;
      v86 = v26;
      _os_log_impl(&dword_231E60000, v24, OS_LOG_TYPE_DEFAULT, "SGStructuredEventDissector: extractionSupported: %@, shadowExtraction: %@, pflTraining: %@", buf, 0x20u);
    }

    if ((v13 | v16 | v25))
    {
      if ([SGExtractionDissector emailIsForwardOrReply:v7])
      {
        v29 = sgEventsLogHandle();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
LABEL_20:

          goto LABEL_21;
        }

        *buf = 0;
        v30 = "SGStructuredEventDissector: ignoring Forwarded / Reply email";
LABEL_16:
        _os_log_impl(&dword_231E60000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
        goto LABEL_20;
      }

      v32 = [v7 htmlBody];
      v33 = v32 == 0;

      if (v33)
      {
        v29 = sgEventsLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v29, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: Entity has no content", buf, 2u);
        }

        goto LABEL_20;
      }

      if (v25 & 1 | (([v8 hasEventEnrichment] & 1) == 0) | v77 & 1)
      {
        if ((([v9 backpressureHazard] == 1) & v25) == 1)
        {
          v29 = sgEventsLogHandle();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_20;
          }

          *buf = 0;
          v30 = "SGStructuredEventDissector: skipping shadowLogging extraction for realtime dissection";
          goto LABEL_16;
        }

        v35 = [v8 sourceKey];
        v75 = [v35 isEqualToString:@"suggest_tool"];

        if (v75)
        {
          v36 = objc_opt_new();
          v29 = [v36 eventClassificationWithoutXPCForMailMessage:v7];
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          v38 = objc_opt_new();
          v29 = [v38 eventClassificationForMailMessage:v7];

          objc_autoreleasePoolPop(v37);
        }

        if (!v29)
        {
          v39 = sgEventsLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_231E60000, v39, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: eventClassification is nil, bailing", buf, 2u);
          }

          goto LABEL_77;
        }

        if (![v29 useCase]|| [v29 useCase]== 1)
        {
          v39 = sgEventsLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_231E60000, v39, OS_LOG_TYPE_DEFAULT, "SGStructuredEventDissector: Not classified as event, bailing", buf, 2u);
          }

          goto LABEL_77;
        }

        v40 = sgEventsLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v29;
          _os_log_debug_impl(&dword_231E60000, v40, OS_LOG_TYPE_DEBUG, "SGStructuredEventDissector eventClassification: %@", buf, 0xCu);
        }

        v74 = [SGStructuredEventClassification describeCategory:[v29 category]];
        if (_os_feature_enabled_impl())
        {
          v41 = [SGSimpleMailMessage alloc];
          v42 = [(SGSimpleMailMessage *)v41 convertMailMessageToBMMailMessage:v7];

          v71 = [v42 encodeAsProto];
          v43 = objc_opt_new();
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v86 = __Block_byref_object_copy__16077;
          v87 = __Block_byref_object_dispose__16078;
          v88 = 0;
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __64__SGStructuredEventDissector_dissectMailMessage_entity_context___block_invoke;
          v82[3] = &unk_278950C80;
          v82[4] = buf;
          [v43 foundInEventResultWithSerializedDocument:v71 documentType:0 completion:v82];
          if (*(*&buf[8] + 40))
          {
            v44 = objc_autoreleasePoolPush();
            v76 = [objc_opt_class() schemaOrgAndMissingEntitiesForDUFoundInEvent:*(*&buf[8] + 40) eventClassification:v29 fromSuggestTool:v75];
            objc_autoreleasePoolPop(v44);
            v45 = [v76 objectForKeyedSubscript:@"schema"];
          }

          else
          {
            v45 = 0;
            v76 = 0;
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          if (v75)
          {
            v46 = objc_opt_class();
            v72 = [v7 htmlBody];
            v47 = [v7 subject];
            [v8 creationTimestamp];
            v49 = v48;
            v50 = [objc_opt_class() labelsWithMatchingStringsForMailMessage:v7];
            v42 = [v46 preprocessWithoutXPCForHTML:v72 subject:v47 epoch:v74 category:v50 labelsWithMatchingStrings:v49];
          }

          else
          {
            v69 = objc_autoreleasePoolPush();
            v73 = [v7 htmlBody];
            v51 = [v7 subject];
            [v8 creationTimestamp];
            v53 = v52;
            v54 = [objc_opt_class() labelsWithMatchingStringsForMailMessage:v7];
            v42 = [(SGStructuredEventDissector *)self preprocessHTML:v73 subject:v51 epoch:v74 category:v54 labelsWithMatchingStrings:v53];

            objc_autoreleasePoolPop(v69);
          }

          if (!v42)
          {
            v66 = sgEventsLogHandle();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_231E60000, v66, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: Preprocessed document is nil", buf, 2u);
            }

            goto LABEL_76;
          }

          v71 = [v42 objectForKeyedSubscript:@"crossTags"];
          if (![v71 count])
          {
            v67 = sgEventsLogHandle();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_231E60000, v67, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: Empty enrichedTaggedCharacterRanges", buf, 2u);
            }

            goto LABEL_76;
          }

          [v8 releaseDissectorLock];
          v55 = [v8 hasEventEnrichment];
          if ((v23 & v55) == 1)
          {
            v23 = [objc_opt_class() eventEnrichmentContainsReverseMappedTags:v8];
          }

          v70 = objc_autoreleasePoolPush();
          v76 = [objc_opt_class() schemaOrgAndMissingEntitiesForPreprocessed:v42 eventClassification:v29 fromSuggestTool:v75 addressThreshold:-[NSObject addressComponentThreshold](v12 pflTrainable:"addressComponentThreshold") hasEvent:{v23, v55}];
          objc_autoreleasePoolPop(v70);
          v45 = [v76 objectForKeyedSubscript:@"schema"];
        }

        [v8 acquireDissectorLock];
        v56 = mach_absolute_time();
        v57 = SGMachTimeToNanoseconds(v56 - v78);
        v79 = objc_autoreleasePoolPush();
        v58 = v57 / 0xF4240;
        if (v45)
        {
          v83[0] = @"mergedSchema";
          v83[1] = @"diff";
          v84[0] = v45;
          v84[1] = &stru_284703F00;
          v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
          v60 = sgEventsLogHandle();
          v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
          if (v25)
          {
            if (v61)
            {
              *buf = 0;
              _os_log_impl(&dword_231E60000, v60, OS_LOG_TYPE_DEFAULT, "SGStructuredEventDissector: Event found, adding shadow log", buf, 2u);
            }

            BYTE1(v68) = v77;
            LOBYTE(v68) = 1;
            [objc_opt_class() logMLExtractionForSchema:v45 mergedSchemaAndDiff:v59 parentEntity:v8 timingProcessingInMs:v58 eventClassification:v29 mailMessage:v7 shadowExtraction:v68 mlDefaultExtraction:?];
          }

          else
          {
            if (v61)
            {
              *buf = 0;
              _os_log_impl(&dword_231E60000, v60, OS_LOG_TYPE_DEFAULT, "SGStructuredEventDissector: Event found, adding ML log and enrichment", buf, 2u);
            }

            if (v77)
            {
              v65 = [objc_opt_class() mergeFallbackSchema:v45 parentEntity:v8];

              v59 = v65;
            }

            BYTE1(v68) = v77;
            LOBYTE(v68) = 0;
            [objc_opt_class() logMLExtractionForSchema:v45 mergedSchemaAndDiff:v59 parentEntity:v8 timingProcessingInMs:v58 eventClassification:v29 mailMessage:v7 shadowExtraction:v68 mlDefaultExtraction:?];
            [objc_opt_class() addSchemaAsEnrichment:v59 inMessage:v7 parentEntity:v8 eventClassification:v29 mlDefaultExtraction:v77];
            [objc_opt_class() logMLInteractions:v8 context:v9 mlDefaultExtraction:v77];
          }

          objc_autoreleasePoolPop(v79);
        }

        else
        {
          v62 = objc_opt_class();
          v63 = [v76 objectForKeyedSubscript:@"missingEntities"];
          v64 = [v76 objectForKeyedSubscript:@"ml_summary"];
          [v62 logFailedExtractionWithClassification:v29 missingEntities:v63 mlSummary:v64 shadowExtraction:v25 timingProcessingInMs:v58 forMessage:v7 parentEntity:v8];

          objc_autoreleasePoolPop(v79);
        }

LABEL_76:
        v39 = v74;
LABEL_77:

        goto LABEL_20;
      }

      v29 = sgEventsLogHandle();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v34 = "SGStructuredEventDissector: Previous dissector found event, bailing";
    }

    else
    {
      v29 = sgEventsLogHandle();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v34 = "SGStructuredEventDissector: Skipping reverse template dissector: detectStructuredEventsML is OFF and provider is not in whitelist";
    }

    _os_log_debug_impl(&dword_231E60000, v29, OS_LOG_TYPE_DEBUG, v34, buf, 2u);
    goto LABEL_20;
  }

  v12 = sgEventsLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEFAULT, "SGStructuredEventDissector: No sender for mailMessage, bailing", buf, 2u);
  }

LABEL_21:

  objc_autoreleasePoolPop(context);
  v31 = *MEMORY[0x277D85DE8];
}

void __64__SGStructuredEventDissector_dissectMailMessage_entity_context___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = sgEventsLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "SGStructuredEventsDissector: FoundInEvents DU XPC call error", v9, 2u);
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

+ (void)logMLInteractions:(id)a3 context:(id)a4 mlDefaultExtraction:(BOOL)a5
{
  v23 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v6 enrichments];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 duplicateKey];
        [v15 entityType];
        if (SGEntityTypeIsEvent())
        {
          v16 = [v13 isNaturalLanguageEvent];

          if (v16)
          {
            goto LABEL_18;
          }

          v17 = [v7 backpressureHazard];
          if (v17 == 1)
          {
            v18 = 12;
          }

          else
          {
            v18 = 0;
          }

          if (v17)
          {
            v19 = v18;
          }

          else
          {
            v19 = 13;
          }

          if (v23)
          {
            v20 = +[SGRTCLogging defaultLogger];
            [v20 resetInteractionsLogs];

            v21 = +[SGRTCLogging defaultLogger];
            [v21 resetInteractionsSummaryLogs];
          }

          v15 = +[SGRTCLogging defaultLogger];
          [v15 logEventInteractionForEntity:v13 interface:0 actionType:v19];
        }

LABEL_18:
        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (id)outputLogsForClassification:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"category";
  v3 = a3;
  v4 = +[SGStructuredEventClassification describeCategory:](SGStructuredEventClassification, "describeCategory:", [v3 category]);
  v11[1] = @"usecase";
  v12[0] = v4;
  v5 = [v3 useCase];

  v6 = [SGStructuredEventClassification describeUseCase:v5];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v7 mutableCopy];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)jsMessageLogsDictionaryForPrivacyAwareLogs:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 privacyAwareLogsForMLExtractions:v3];

  v6 = [v5 mutableCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SGStructuredEventDissector_jsMessageLogsDictionaryForPrivacyAwareLogs___block_invoke;
  v9[3] = &unk_27894E2C0;
  v7 = v6;
  v10 = v7;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __73__SGStructuredEventDissector_jsMessageLogsDictionaryForPrivacyAwareLogs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((os_variant_has_internal_diagnostics() & 1) == 0 && [v3 rangeOfString:@"privacyAwareSubject"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) removeObjectForKey:v3];
  }
}

+ (id)jsMessageLogsDictionaryForMailMessage:(id)a3
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13[0] = @"domain";
  v3 = [a3 from];
  v4 = [v3 emailAddress];
  v5 = emailAddressDomain(v4);
  v14[0] = v5;
  v13[1] = @"assetVersion";
  v6 = MEMORY[0x277CCABB0];
  v7 = +[SGAsset localeAsset];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "assetVersion")}];
  v14[1] = v8;
  v13[2] = @"assetIdentifier";
  v9 = +[SGAsset localeAssetIdentifier];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (void)logFailedExtractionWithClassification:(id)a3 missingEntities:(id)a4 mlSummary:(id)a5 shadowExtraction:(BOOL)a6 timingProcessingInMs:(unint64_t)a7 forMessage:(id)a8 parentEntity:(id)a9
{
  v38 = a6;
  v57 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v43 = a4;
  v14 = a5;
  v15 = a8;
  v40 = a9;
  v41 = v15;
  v39 = [a1 jsMessageLogsDictionaryForMailMessage:v15];
  v44 = v13;
  v16 = [a1 outputLogsForClassification:v13];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v52;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v52 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v51 + 1) + 8 * i);
        v23 = [v17 objectForKeyedSubscript:v22];
        v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"M_%@", v22];
        [v16 setObject:v23 forKeyedSubscript:v24];
      }

      v19 = [v17 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v19);
  }

  v25 = [MEMORY[0x277CCABB0] numberWithBool:v38];
  [v16 setObject:v25 forKeyedSubscript:@"shadowExtraction"];

  v26 = [a1 eventEnrichmentFromEntity:v40];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v27 = [v26 tags];
  v28 = [v27 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v48;
LABEL_10:
    v31 = 0;
    while (1)
    {
      if (*v48 != v30)
      {
        objc_enumerationMutation(v27);
      }

      v32 = *(*(&v47 + 1) + 8 * v31);
      if ([v32 isTemplateName])
      {
        break;
      }

      if (v29 == ++v31)
      {
        v29 = [v27 countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v29)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    v33 = [v32 value];

    v34 = v41;
    if (!v33)
    {
      goto LABEL_22;
    }

    [v16 setObject:v33 forKeyedSubscript:@"extractionTemplate"];
    v35 = [a1 jsMessageLogsDictionaryForPrivacyAwareLogs:v41];
    if (v35)
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __156__SGStructuredEventDissector_logFailedExtractionWithClassification_missingEntities_mlSummary_shadowExtraction_timingProcessingInMs_forMessage_parentEntity___block_invoke;
      v45[3] = &unk_27894E2C0;
      v46 = v16;
      [v35 enumerateKeysAndObjectsUsingBlock:v45];
    }
  }

  else
  {
LABEL_16:
    v33 = v27;
    v34 = v41;
  }

LABEL_22:
  v36 = +[SGRTCLogging defaultLogger];
  [v36 logEventExtractionForTemplateName:@"ML" extractionStatus:3 outputExceptions:v43 outputInfos:MEMORY[0x277CBEBF8] jsMessageLogs:v39 jsOutputLogs:v16 timingProcessing:a7];

  v37 = *MEMORY[0x277D85DE8];
}

+ (void)logMLExtractionForSchema:(id)a3 mergedSchemaAndDiff:(id)a4 parentEntity:(id)a5 timingProcessingInMs:(unint64_t)a6 eventClassification:(id)a7 mailMessage:(id)a8 shadowExtraction:(BOOL)a9 mlDefaultExtraction:(BOOL)a10
{
  v101 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v77 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = [a1 jsMessageLogsDictionaryForMailMessage:v18];
  v20 = [a1 outputLogsForClassification:v17];
  v21 = @"fallbackExtraction";
  if (a10)
  {
    v21 = @"mlDefaultExtraction";
  }

  v22 = v20;
  if (a9)
  {
    v23 = @"shadowExtraction";
  }

  else
  {
    v23 = v21;
  }

  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v23];
  v24 = [a1 jsMessageLogsDictionaryForPrivacyAwareLogs:v18];
  if (v24)
  {
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __178__SGStructuredEventDissector_logMLExtractionForSchema_mergedSchemaAndDiff_parentEntity_timingProcessingInMs_eventClassification_mailMessage_shadowExtraction_mlDefaultExtraction___block_invoke;
    v94[3] = &unk_27894E2C0;
    v95 = v22;
    [v24 enumerateKeysAndObjectsUsingBlock:v94];
  }

  v25 = [a1 eventEnrichmentFromEntity:v16];
  v74 = v25;
  v75 = v24;
  if (!v25)
  {
    v60 = [v16 tags];
    v61 = [MEMORY[0x277D01FA0] templateException];
    v62 = [v60 containsObject:v61];

    if (v62)
    {
      v63 = @"Exception";
    }

    else
    {
      v63 = @"No Event";
    }

    [v22 setObject:v63 forKeyedSubscript:@"templateExtractionOutput"];
    v64 = a6;
    v40 = v77;
    goto LABEL_53;
  }

  v80 = v22;
  v73 = v19;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v26 = [v25 tags];
  v27 = [v26 countByEnumeratingWithState:&v90 objects:v100 count:16];
  if (!v27)
  {
    v29 = 0;
    v30 = 0;
    v40 = v77;
    goto LABEL_51;
  }

  v28 = v27;
  v70 = v18;
  v71 = v17;
  v29 = 0;
  v30 = 0;
  v31 = *v91;
  do
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v91 != v31)
      {
        objc_enumerationMutation(v26);
      }

      v33 = *(*(&v90 + 1) + 8 * i);
      if ([v33 isSchemaOrg])
      {
        v34 = [v33 value];
        v35 = v30;
        v30 = v34;
      }

      else
      {
        if (![v33 isTemplateName])
        {
          continue;
        }

        v36 = [v33 value];
        v35 = v29;
        v29 = v36;
      }
    }

    v28 = [v26 countByEnumeratingWithState:&v90 objects:v100 count:16];
  }

  while (v28);

  v22 = v80;
  if (v29)
  {
    [v80 setObject:v29 forKeyedSubscript:@"extractionTemplate"];
  }

  v18 = v70;
  v17 = v71;
  if (v30)
  {
    v37 = MEMORY[0x277CCAAA0];
    v38 = [v30 dataUsingEncoding:4];
    v89 = 0;
    v39 = [v37 JSONObjectWithData:v38 options:0 error:&v89];
    v26 = v89;

    v40 = v77;
    if (v39 && [v39 count])
    {
      v68 = v16;
      v41 = objc_opt_new();
      v42 = [v39 firstObject];
      v99 = v42;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
      v69 = v15;
      v98 = v15;
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
      v45 = [v41 diffSchemas:v43 withExpectedSchemas:v44];

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v67 = v45;
      obj = [v45 allKeys];
      v46 = [obj countByEnumeratingWithState:&v85 objects:v97 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v86;
        v49 = MEMORY[0x277CBEC38];
        do
        {
          for (j = 0; j != v47; ++j)
          {
            if (*v86 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"schemaDiff_%@", *(*(&v85 + 1) + 8 * j)];
            [v80 setObject:v49 forKeyedSubscript:v51];
          }

          v47 = [obj countByEnumeratingWithState:&v85 objects:v97 count:16];
        }

        while (v47);
      }

      if (a10)
      {
        v52 = [v77 objectForKeyedSubscript:@"diff"];

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v72 = v52;
        obja = [v52 allKeys];
        v53 = [obja countByEnumeratingWithState:&v81 objects:v96 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v82;
          v56 = MEMORY[0x277CBEC38];
          do
          {
            for (k = 0; k != v54; ++k)
            {
              if (*v82 != v55)
              {
                objc_enumerationMutation(obja);
              }

              v58 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"schemaFromTemplate_%@", *(*(&v81 + 1) + 8 * k)];
              [v80 setObject:v56 forKeyedSubscript:v58];
            }

            v54 = [obja countByEnumeratingWithState:&v81 objects:v96 count:16];
          }

          while (v54);
        }

        v59 = v72;
        v15 = v69;
      }

      else
      {
        v15 = v69;
        v59 = v67;
      }

      v40 = v77;
      v16 = v68;
      v18 = v70;
      v17 = v71;
    }

    v19 = v73;
LABEL_51:

    v22 = v80;
  }

  else
  {
    v19 = v73;
    v40 = v77;
  }

  v64 = a6;
LABEL_53:
  v65 = +[SGRTCLogging defaultLogger];
  [v65 logEventExtractionForTemplateName:@"ML" extractionStatus:0 outputExceptions:MEMORY[0x277CBEBF8] outputInfos:MEMORY[0x277CBEBF8] jsMessageLogs:v19 jsOutputLogs:v22 timingProcessing:v64];

  v66 = *MEMORY[0x277D85DE8];
}

+ (BOOL)eventEnrichmentContainsReverseMappedTags:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [a1 eventEnrichmentFromEntity:a3];
  v4 = v3;
  if (v3)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = [v3 tags];
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = 0;
      v26 = 0;
      v25 = 0;
      v8 = 0;
      v9 = *v28;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          if ([v11 isFieldReverseMapped] && (objc_msgSend(v11, "value"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"reverseMapped_EVENT_TIME__START_DATETIME"), v12, (v13 & 1) != 0))
          {
            v7 = 1;
          }

          else if ([v11 isFieldReverseMapped] && (objc_msgSend(v11, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"reverseMapped_EVENT_LOCATION__START_ADDRESS"), v14, (v15 & 1) != 0))
          {
            BYTE4(v26) = 1;
          }

          else if ([v11 isFieldReverseMapped] && (objc_msgSend(v11, "value"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"reverseMapped_EVENT_LOCATION__START_PLACE"), v16, (v17 & 1) != 0))
          {
            LOBYTE(v26) = 1;
          }

          else if ([v11 isFieldReverseMapped] && (objc_msgSend(v11, "value"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"reverseMapped_TITLE__HOTEL_RESTAURANT_NAME"), v18, (v19 & 1) != 0))
          {
            v25 = 1;
          }

          else if ([v11 isFieldReverseMapped])
          {
            v20 = [v11 value];
            v21 = [v20 isEqualToString:@"reverseMapped_TITLE__MOVIE_TICKET_NAME"];

            v8 |= v21;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v6);
      LOBYTE(v6) = v26;
      v22 = BYTE4(v26) | v25 | v8;
    }

    else
    {
      v7 = 0;
      v22 = 0;
    }

    if (v6 & 1 | ((v7 & 1) == 0))
    {
      v22 = v7;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

+ (id)eventEnrichmentFromEntity:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 enrichments];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 duplicateKey];
        [v8 entityType];
        IsEvent = SGEntityTypeIsEvent();

        if (IsEvent)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)addressDictionaryForAddressComponents:(id)a3
{
  v22[6] = *MEMORY[0x277D85DE8];
  v22[0] = @"http://schema.org/PostalAddress";
  v21[0] = @"@type";
  v21[1] = @"streetAddress";
  v3 = a3;
  v4 = [v3 street];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_284703F00;
  }

  v22[1] = v6;
  v21[2] = @"addressLocality";
  v7 = [v3 city];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_284703F00;
  }

  v22[2] = v9;
  v21[3] = @"addressRegion";
  v10 = [v3 state];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_284703F00;
  }

  v22[3] = v12;
  v21[4] = @"postalCode";
  v13 = [v3 postalCode];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_284703F00;
  }

  v22[4] = v15;
  v21[5] = @"addressCountry";
  v16 = [v3 country];

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &stru_284703F00;
  }

  v22[5] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (unint64_t)tokenCount:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[SGPOSTagger sharedInstance];
    v5 = [v4 tokenizeTextContent:v3 languageHint:0];

    if ([v5 count])
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:v6];
        v9 = [v8 annotationType];

        if (v9 == 3)
        {
          ++v7;
        }

        ++v6;
      }

      while ([v5 count] > v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)tokenCountForPostalAddressComponents:(id)a3
{
  v4 = a3;
  v5 = [v4 street];

  if (v5)
  {
    v6 = [v4 street];
    v5 = [a1 tokenCount:v6];
  }

  v7 = [v4 city];

  if (v7)
  {
    v8 = [v4 city];
    v5 += [a1 tokenCount:v8];
  }

  v9 = [v4 state];

  if (v9)
  {
    v10 = [v4 state];
    v5 += [a1 tokenCount:v10];
  }

  v11 = [v4 postalCode];

  if (v11)
  {
    v12 = [v4 postalCode];
    v5 += [a1 tokenCount:v12];
  }

  v13 = [v4 country];

  if (v13)
  {
    v14 = [v4 country];
    v5 += [a1 tokenCount:v14];
  }

  return v5;
}

+ (id)schemaPostalAddressForPostalAddressExtraction:(id)a3 addressThreshold:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 components];

  v8 = [v6 plainText];

  if (v7)
  {
    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = [v6 components];
    v10 = [a1 tokenCountForPostalAddressComponents:v9];

    v11 = [v6 plainText];
    v12 = [a1 tokenCount:v11];

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:a4 / 100.0 * v12];
    LODWORD(v11) = [v13 intValue];

    if (v10 >= v11)
    {
LABEL_4:
      v14 = [v6 components];
      v15 = [a1 addressDictionaryForAddressComponents:v14];

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v8)
  {
LABEL_6:
    v15 = [v6 plainText];
    goto LABEL_8;
  }

  v15 = &stru_284703F00;
LABEL_8:

  return v15;
}

+ (id)schemaStringForEventStatus:(unsigned __int8)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = @"Cancelled";
  if (!v3)
  {
    v5 = @"Confirmed";
  }

  v6 = [v4 initWithFormat:@"%@%@", @"http://schema.org/Event", v5];

  return v6;
}

+ (id)schemaStringForReservationStatus:(unsigned __int8)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = @"Cancelled";
  if (!v3)
  {
    v5 = @"Confirmed";
  }

  v6 = [v4 initWithFormat:@"%@%@", @"http://schema.org/Reservation", v5];

  return v6;
}

+ (id)schemaStringForDateComponents:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 date], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 timeZone];

    if (v6)
    {
      v7 = objc_opt_new();
      v8 = [v4 timeZone];
      [v7 setTimeZone:v8];
    }

    else
    {
      v7 = objc_opt_new();
      if ([v4 hour] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "minute") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "second") == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = @"yyyy-MM-dd";
      }

      else
      {
        v10 = @"yyyy-MM-dd'T'HH:mm:ss";
      }

      [v7 setDateFormat:v10];
    }

    v11 = [v4 date];
    v9 = [v7 stringFromDate:v11];
  }

  else
  {
    v9 = &stru_284703F00;
  }

  return v9;
}

+ (id)plainTextStringsByLabelInTaggedCharacterRanges:(id)a3 inPlainText:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = a4;
  v6 = objc_opt_new();
  if ([v5 count])
  {
    v7 = 0;
    v27 = v5;
    do
    {
      v28 = v7;
      v8 = [v5 objectAtIndexedSubscript:v7];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v9 = [v8 tags];
      v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v30;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v29 + 1) + 8 * i);
            v15 = objc_alloc(MEMORY[0x277CCACA8]);
            v16 = [v8 annotationTypeUniqueIdentifier];
            v17 = [v15 initWithFormat:@"%@_%@", v16, v14];

            v18 = [v6 objectForKeyedSubscript:v17];

            if (!v18)
            {
              v19 = objc_opt_new();
              [v6 setObject:v19 forKeyedSubscript:v17];
            }

            v20 = [v6 objectForKeyedSubscript:v17];
            v21 = [v8 range];
            [v20 addIndexesInRange:{v21, v22}];
          }

          v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v11);
      }

      v5 = v27;
      v7 = v28 + 1;
    }

    while ([v27 count] > (v28 + 1));
  }

  v23 = [(SGExtractionDocument *)SGStructuredEventDocument candidatesForLabelsWithPlainTextIndexSets:v6 inPlainText:v26];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)annotateContent:(id)a3 withLabel:(id)a4 forMatchingString:(id)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  if (![v7 length] || !objc_msgSend(v9, "length"))
  {
    v23 = sgEventsLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      v26 = "SGStructuredEventDissector: annotateContent: empty content or string passed";
      goto LABEL_21;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!v8)
  {
    v23 = sgEventsLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      v26 = "SGStructuredEventDissector: annotateContent: nil label passed";
LABEL_21:
      _os_log_error_impl(&dword_231E60000, v23, OS_LOG_TYPE_ERROR, v26, v27, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v11 = [v7 rangeOfString:v9 options:1 range:{0, objc_msgSend(v7, "length")}];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v11;
    v14 = v12;
    do
    {
      v15 = [SGTaggedCharacterRange alloc];
      v28[0] = v8;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      v17 = [v7 substringWithRange:{v13, v14}];
      v18 = [(SGTaggedCharacterRange *)v15 initWithAnnotationType:6 tags:v16 range:v13 text:v14, v17];

      if (v18)
      {
        [v10 addObject:v18];
      }

      else
      {
        v19 = sgEventsLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v27 = 0;
          _os_log_error_impl(&dword_231E60000, v19, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: annotateContent: Unable to create taggedCharacterRange from result", v27, 2u);
        }
      }

      v20 = v13 + v14;
      v21 = [v7 length] - (v13 + v14);

      v13 = [v7 rangeOfString:v9 options:1 range:{v20, v21}];
      v14 = v22;
    }

    while (v13 != 0x7FFFFFFFFFFFFFFFLL);
  }

LABEL_15:

  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)labelsWithMatchingStringsForMailMessage:(id)a3
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 from];
  v7 = [v6 name];

  if (v7)
  {
    v8 = [v6 name];
    v33[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [v5 setObject:v9 forKeyedSubscript:@"is_sender_name"];
  }

  v10 = [v6 emailAddress];

  if (v10)
  {
    v11 = [v6 emailAddress];
    v32 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [v5 setObject:v12 forKeyedSubscript:@"is_sender_email"];

    v13 = [v6 emailAddress];
    v14 = emailAddressDomain(v13);

    if (v14)
    {
      v31 = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      [v5 setObject:v15 forKeyedSubscript:@"is_sender_domain"];
    }
  }

  v16 = [v4 to];
  v17 = [v16 firstObject];

  v18 = [v17 name];

  if (v18)
  {
    v19 = [v17 name];
    v30 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    [v5 setObject:v20 forKeyedSubscript:@"is_recipient_name"];
  }

  v21 = [v17 emailAddress];

  if (v21)
  {
    v22 = [v17 emailAddress];
    v29 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [v5 setObject:v23 forKeyedSubscript:@"is_recipient_email"];
  }

  v24 = [v4 subject];

  if (v24)
  {
    v25 = [v4 subject];
    v26 = [a1 annotationMatchingStringsForSubject:v25];

    if ([v26 count])
    {
      [v5 setObject:v26 forKeyedSubscript:@"is_present_in_subject"];
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)annotationMatchingStringsForSubject:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = +[SGPOSTagger sharedInstance];
  v6 = [v5 tokenizeTextContent:v3 languageHint:0];

  v7 = objc_opt_new();
  if ([v6 count])
  {
    v8 = 0;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:v8];
      v10 = [v9 annotationType];

      if (v10 == 2)
      {
        v11 = [v6 objectAtIndexedSubscript:v8];
        v12 = [v11 tags];
        v13 = [v12 firstObject];

        if (v13 && (([v13 isEqualToString:@"NN"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"NNP")))
        {
          [v7 addIndex:v8];
        }
      }

      ++v8;
    }

    while ([v6 count] > v8);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__SGStructuredEventDissector_annotationMatchingStringsForSubject___block_invoke;
  v20[3] = &unk_278954548;
  v21 = v6;
  v22 = v3;
  v14 = v4;
  v23 = v14;
  v15 = v3;
  v16 = v6;
  [v7 enumerateRangesUsingBlock:v20];
  v17 = v23;
  v18 = v14;

  return v14;
}

uint64_t __66__SGStructuredEventDissector_annotationMatchingStringsForSubject___block_invoke(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v4 = result;
    v5 = [SGExtractionDocument textRangeForIndexRange:a2 inTaggedCharacterRanges:a3, *(result + 32)];
    v7 = [*(v4 + 40) substringWithRange:{v5, v6}];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      v7 = [*(v4 + 48) addObject:v7];
      v8 = v9;
    }

    return MEMORY[0x2821F96F8](v7, v8);
  }

  return result;
}

+ (id)tupleWithError:(id)a3 label:(id)a4
{
  v5 = MEMORY[0x277D42648];
  v6 = a4;
  v7 = [v5 alloc];
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = MEMORY[0x277CBEC38];
  }

  v9 = [v7 initWithFirst:v8 second:v6];

  return v9;
}

+ (id)tupleWithEntity:(id)a3 label:(id)a4
{
  v5 = MEMORY[0x277D42648];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithFirst:v7 second:v6];

  return v8;
}

+ (id)nilEntities:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 first];
        if (!v10)
        {
          goto LABEL_9;
        }

        v11 = v10;
        v12 = [v9 first];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v9 first];
          v14 = [v13 hasExtraction];

          if (v14)
          {
            continue;
          }

LABEL_9:
          v15 = [v9 second];

          if (v15)
          {
            v11 = [v9 second];
            [v18 addObject:v11];
          }

          else
          {
            v11 = sgEventsLogHandle();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_231E60000, v11, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: No name for missing entity", buf, 2u);
            }
          }

          goto LABEL_14;
        }

LABEL_14:
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)preprocessWithoutXPCForHTML:(id)a3 subject:(id)a4 epoch:(double)a5 category:(id)a6 labelsWithMatchingStrings:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_new();
  v17 = [v16 parseHTML:v15];

  v18 = [a1 preprocessDomParserResult:v17 subject:v14 epoch:v13 category:v12 labelsWithMatchingStrings:a5];

  return v18;
}

+ (id)preprocessDomParserResult:(id)a3 subject:(id)a4 epoch:(double)a5 category:(id)a6 labelsWithMatchingStrings:(id)a7
{
  v106 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (v11)
  {
    v71 = v14;
    v72 = v13;
    v69 = v12;
    [v11 insertSubject:v12];
    v16 = [v11 plainText];
    v17 = objc_opt_new();
    v70 = v11;
    v18 = [v11 taggedCharacterRanges];
    [v17 addObjectsFromArray:v18];

    v19 = [MEMORY[0x277D02548] detectLanguageFromText:v16];
    v20 = +[SGPOSTagger sharedInstance];
    v21 = +[SGStructuredEventExtractionModel sharedInstance];
    v22 = [v21 gazetteer];
    v68 = v19;
    v23 = [v20 tokenizeTextContent:v16 languageHint:v19 gazetteer:v22];

    context = v17;
    v67 = v23;
    [v17 addObjectsFromArray:v23];
    v24 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:a5];
    v25 = [SGDataDetectorMatch detectionsInPlainText:v16 baseDate:v24];

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = v25;
    v26 = [obj countByEnumeratingWithState:&v92 objects:v105 count:16];
    if (v26)
    {
      v27 = v26;
      v76 = *v93;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v93 != v76)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v92 + 1) + 8 * i);
          v30 = objc_autoreleasePoolPush();
          v31 = [v29 valueRange];
          v33 = [v16 substringWithRange:v31, v32];
          v34 = [SGTaggedCharacterRange alloc];
          v35 = [v29 matchType];
          v36 = @"SGDDMatchOther";
          if (v35 <= 8)
          {
            v36 = off_27894F1C0[v35];
          }

          v37 = v36;
          v104 = v37;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
          v39 = [v29 valueRange];
          v41 = [(SGTaggedCharacterRange *)v34 initWithAnnotationType:1 tags:v38 range:v39 text:v40, v33];

          [context addObject:v41];
          objc_autoreleasePoolPop(v30);
        }

        v27 = [obj countByEnumeratingWithState:&v92 objects:v105 count:16];
      }

      while (v27);
    }

    v42 = objc_opt_new();
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v43 = context;
    v44 = [v43 countByEnumeratingWithState:&v88 objects:v103 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v89;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v89 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v88 + 1) + 8 * j);
          if ([v48 annotationType] == 3)
          {
            [v42 addObject:v48];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v88 objects:v103 count:16];
      }

      while (v45);
    }

    v66 = v42;

    v49 = [SGTaggedCharacterRange alloc];
    v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"cat_%@", v72];
    v101 = v50;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
    v52 = [(SGTaggedCharacterRange *)v49 initWithAnnotationType:5 tags:v51 range:0 text:0, &stru_284703F00];
    v102 = v52;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v77 = v71;
    v75 = [v77 countByEnumeratingWithState:&v84 objects:v100 count:16];
    if (v75)
    {
      v74 = *v85;
      do
      {
        for (k = 0; k != v75; ++k)
        {
          if (*v85 != v74)
          {
            objc_enumerationMutation(v77);
          }

          v54 = *(*(&v84 + 1) + 8 * k);
          contexta = objc_autoreleasePoolPush();
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v55 = [v77 objectForKeyedSubscript:v54];
          v56 = [v55 countByEnumeratingWithState:&v80 objects:v99 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v81;
            do
            {
              for (m = 0; m != v57; ++m)
              {
                if (*v81 != v58)
                {
                  objc_enumerationMutation(v55);
                }

                v60 = [objc_opt_class() annotateContent:v16 withLabel:v54 forMatchingString:*(*(&v80 + 1) + 8 * m)];
                if ([v60 count])
                {
                  [v43 addObjectsFromArray:v60];
                }
              }

              v57 = [v55 countByEnumeratingWithState:&v80 objects:v99 count:16];
            }

            while (v57);
          }

          objc_autoreleasePoolPop(contexta);
        }

        v75 = [v77 countByEnumeratingWithState:&v84 objects:v100 count:16];
      }

      while (v75);
    }

    v61 = [SGTaggedCharacterRange mergeTaggedCharacterRanges:v43 usingBaseTaggedCharacterRanges:v66 extraTags:v65 tagOverrides:0 alignWithGroundTruth:0];
    v97[0] = @"plainText";
    v97[1] = @"crossTags";
    v98[0] = v16;
    v98[1] = v61;
    v97[2] = @"tags";
    v97[3] = @"ddSGDetections";
    v98[2] = v43;
    v98[3] = obj;
    v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:4];

    v12 = v69;
    v11 = v70;
    v15 = v71;
    v13 = v72;
  }

  else
  {
    v16 = sgEventsLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v16, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: nil domParserResult", buf, 2u);
    }

    v62 = 0;
  }

  v63 = *MEMORY[0x277D85DE8];

  return v62;
}

+ (id)schemaOrgAndMissingEntitiesForDUFoundInEvent:(id)a3 eventClassification:(id)a4 fromSuggestTool:(BOOL)a5
{
  v173[7] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  if (([v7 detectedEventPolarity] & 1) == 0)
  {
    [v9 setObject:&unk_28474A660 forKeyedSubscript:@"missingEntities"];
    goto LABEL_152;
  }

  v10 = [v7 reservationIdError];
  v11 = [v7 reservationId];
  v12 = [v7 hotelName];
  v13 = [v7 movieName];
  v14 = [v7 startAddressError];
  v125 = [v7 startAddressComponents];
  v124 = [v7 startAddress];
  v119 = [v7 endAddressError];
  v118 = [v7 endAddressComponents];
  v117 = [v7 endAddress];
  v126 = [v7 startPlaceError];
  v121 = [v7 startPlace];
  v120 = [v7 endPlaceError];
  v116 = [v7 endPlace];
  v128 = [v7 startDate];
  v127 = [v7 endDate];
  v123 = [v7 guestName];
  v15 = [v8 category];
  v16 = 0;
  v122 = v14;
  v115 = v13;
  if (v15 > 5)
  {
    if (v15 == 6)
    {
      v114 = v12;
      v112 = v11;
      if ((![v8 isCancelled] || !v13 || v10 && !v128) && (!v13 || !v128 || v10 || v14 || v126))
      {
        v113 = v10;
        v110 = [a1 tupleWithError:v10 label:@"reservationId"];
        v149[0] = v110;
        v83 = [a1 tupleWithEntity:v13 label:@"movieName"];
        v149[1] = v83;
        v84 = [a1 tupleWithError:v126 label:@"place"];
        v149[2] = v84;
        v85 = [a1 tupleWithError:v14 label:@"address"];
        v149[3] = v85;
        v86 = [a1 tupleWithEntity:v128 label:@"startDate"];
        v149[4] = v86;
        v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:5];
        v16 = [a1 nilEntities:v87];

        v35 = sgEventsLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v76 = [v16 _pas_componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v166 = v76;
          v77 = "SGStructuredEventDissector: Missing entities for ticket extraction: %@";
          goto LABEL_145;
        }

        goto LABEL_146;
      }

      v156[0] = @"@context";
      v156[1] = @"@type";
      v157[0] = @"http://schema.org";
      v157[1] = @"http://schema.org/EventReservation";
      v156[2] = @"reservationStatus";
      v36 = [a1 schemaStringForReservationStatus:{objc_msgSend(v8, "isCancelled")}];
      v108 = v36;
      if (v11)
      {
        v37 = v11;
      }

      else
      {
        v37 = &stru_284703F00;
      }

      v157[2] = v36;
      v157[3] = v37;
      v156[3] = @"reservationId";
      v156[4] = @"reservationFor";
      v154[0] = @"@type";
      v154[1] = @"name";
      v155[0] = @"http://schema.org/Event";
      v155[1] = v13;
      v38 = v128;
      if (!v128)
      {
        v38 = &stru_284703F00;
      }

      v154[2] = @"startDate";
      v154[3] = @"endDate";
      v39 = v127;
      if (!v127)
      {
        v39 = &stru_284703F00;
      }

      v155[2] = v38;
      v155[3] = v39;
      v154[4] = @"location";
      v152[0] = @"@type";
      v152[1] = @"name";
      v40 = v121;
      if (!v121)
      {
        v40 = &stru_284703F00;
      }

      v153[0] = @"http://schema.org/Place";
      v153[1] = v40;
      v152[2] = @"address";
      v41 = v124;
      if (!v124)
      {
        v41 = &stru_284703F00;
      }

      if (v125)
      {
        v41 = v125;
      }

      v153[2] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v153 forKeys:v152 count:3];
      v155[4] = v42;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v155 forKeys:v154 count:5];
      v44 = v43 = v10;
      v157[4] = v44;
      v156[5] = @"underName";
      v150[0] = @"@type";
      v150[1] = @"name";
      v45 = v123;
      if (!v123)
      {
        v45 = &stru_284703F00;
      }

      v151[0] = @"http://schema.org/Person";
      v151[1] = v45;
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v151 forKeys:v150 count:2];
      v157[5] = v46;
      v47 = MEMORY[0x277CBEAC0];
      v48 = v157;
      v49 = v156;
    }

    else
    {
      if (v15 != 7)
      {
        v17 = 0;
        if (v15 == 8)
        {
          v113 = v10;
          if ([v8 isCancelled] && v12)
          {
            if (!(v11 | v128))
            {
              goto LABEL_135;
            }
          }

          else if (!v12 || !v128 || v10 || v14)
          {
LABEL_135:
            v112 = v11;
            v114 = v12;
            v71 = [a1 tupleWithEntity:v12 label:@"hotelName"];
            v167[0] = v71;
            v72 = [a1 tupleWithError:v122 label:@"address"];
            v167[1] = v72;
            v73 = [a1 tupleWithError:v10 label:@"reservationId"];
            v167[2] = v73;
            v74 = [a1 tupleWithEntity:v128 label:@"startDate"];
            v167[3] = v74;
            v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:4];
            v16 = [a1 nilEntities:v75];

            v35 = sgEventsLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v76 = [v16 _pas_componentsJoinedByString:{@", "}];
              *buf = 138412290;
              v166 = v76;
              v77 = "SGStructuredEventDissector: Missing entities for restaurant extraction: %@";
LABEL_145:
              _os_log_error_impl(&dword_231E60000, v35, OS_LOG_TYPE_ERROR, v77, buf, 0xCu);

              goto LABEL_146;
            }

            goto LABEL_146;
          }

          v172[0] = @"@context";
          v172[1] = @"@type";
          v173[0] = @"http://schema.org";
          v173[1] = @"http://schema.org/FoodEstablishmentReservation";
          v64 = v12;
          if (v11)
          {
            v65 = v11;
          }

          else
          {
            v65 = &stru_284703F00;
          }

          v173[2] = v65;
          v172[2] = @"reservationId";
          v172[3] = @"reservationStatus";
          v58 = [a1 schemaStringForReservationStatus:{objc_msgSend(v8, "isCancelled")}];
          v173[3] = v58;
          v172[4] = @"reservationFor";
          v170[0] = @"@type";
          v170[1] = @"name";
          v171[0] = @"http://schema.org/FoodEstablishment";
          v171[1] = v12;
          v170[2] = @"address";
          v66 = v124;
          if (!v124)
          {
            v66 = &stru_284703F00;
          }

          if (v125)
          {
            v66 = v125;
          }

          v171[2] = v66;
          v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v170 count:3];
          v61 = v67;
          v68 = v128;
          if (!v128)
          {
            v68 = &stru_284703F00;
          }

          v173[4] = v67;
          v173[5] = v68;
          v172[5] = @"startTime";
          v172[6] = @"underName";
          v168[0] = @"@type";
          v168[1] = @"name";
          v69 = v123;
          if (!v123)
          {
            v69 = &stru_284703F00;
          }

          v169[0] = @"http://schema.org/Person";
          v169[1] = v69;
          v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v169 forKeys:v168 count:2];
          v173[6] = v70;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:7];

          v12 = v64;
LABEL_134:

          v17 = [v35 sg_deepCopyWithoutEmptySchemaObjects];
          v16 = 0;
LABEL_148:

          goto LABEL_149;
        }

        goto LABEL_149;
      }

      v114 = v12;
      if ((![v8 isCancelled] || !v13 || v10 && !v128) && (!v13 || !v128 || v10 || v14 || v126))
      {
        v112 = v11;
        v88 = objc_opt_class();
        v113 = v10;
        [a1 tupleWithError:v10 label:@"reservationId"];
        v90 = v89 = v14;
        v129[0] = v90;
        v91 = [a1 tupleWithEntity:v13 label:@"movieName"];
        v129[1] = v91;
        v92 = [a1 tupleWithError:v89 label:@"address"];
        v129[2] = v92;
        v93 = [a1 tupleWithError:v126 label:@"place"];
        v129[3] = v93;
        v94 = [a1 tupleWithEntity:v128 label:@"startDate"];
        v129[4] = v94;
        v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:5];
        v16 = [v88 nilEntities:v95];

        v35 = sgEventsLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v76 = [v16 _pas_componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v166 = v76;
          v77 = "SGStructuredEventDissector: Missing entities for movie extraction: %@";
          goto LABEL_145;
        }

        goto LABEL_146;
      }

      v136[0] = @"@context";
      v136[1] = @"@type";
      v137[0] = @"http://schema.org";
      v137[1] = @"http://schema.org/EventReservation";
      if (v11)
      {
        v50 = v11;
      }

      else
      {
        v50 = &stru_284703F00;
      }

      v137[2] = v50;
      v136[2] = @"reservationId";
      v136[3] = @"reservationStatus";
      v108 = [a1 schemaStringForEventStatus:{objc_msgSend(v8, "isCancelled")}];
      v137[3] = v108;
      v136[4] = @"reservationFor";
      v134[0] = @"@type";
      v134[1] = @"name";
      v135[0] = @"http://schema.org/ScreeningEvent";
      v135[1] = v13;
      v51 = v128;
      if (!v128)
      {
        v51 = &stru_284703F00;
      }

      v135[2] = v51;
      v134[2] = @"startDate";
      v134[3] = @"location";
      v132[0] = @"@type";
      v132[1] = @"name";
      v52 = v121;
      if (!v121)
      {
        v52 = &stru_284703F00;
      }

      v133[0] = @"http://schema.org/Place";
      v133[1] = v52;
      v132[2] = @"address";
      v53 = v124;
      if (!v124)
      {
        v53 = &stru_284703F00;
      }

      if (v125)
      {
        v53 = v125;
      }

      v133[2] = v53;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:3];
      v135[3] = v42;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:4];
      v44 = v43 = v10;
      v137[4] = v44;
      v136[5] = @"underName";
      v130[0] = @"@type";
      v130[1] = @"name";
      v54 = v123;
      if (!v123)
      {
        v54 = &stru_284703F00;
      }

      v131[0] = @"http://schema.org/Person";
      v131[1] = v54;
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:2];
      v137[5] = v46;
      v47 = MEMORY[0x277CBEAC0];
      v48 = v137;
      v49 = v136;
    }

    v35 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:6];

    v10 = v43;
LABEL_95:

    v17 = [v35 sg_deepCopyWithoutEmptySchemaObjects];
    v16 = 0;
LABEL_147:
    v12 = v114;
    goto LABEL_148;
  }

  if (v15 == 4)
  {
    v113 = v10;
    if ((![v8 isCancelled] || !v12 || !(v11 | v128)) && (!v12 || !v128 || !v127 || v10 || v14))
    {
      v112 = v11;
      v111 = [a1 tupleWithError:v10 label:@"reservationId"];
      v158[0] = v111;
      v114 = v12;
      v96 = [a1 tupleWithEntity:v12 label:@"hotelName"];
      v158[1] = v96;
      v97 = [a1 tupleWithError:v14 label:@"address"];
      v158[2] = v97;
      v98 = [a1 tupleWithEntity:v128 label:@"startDate"];
      v158[3] = v98;
      v99 = [a1 tupleWithEntity:v127 label:@"endDate"];
      v158[4] = v99;
      v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:5];
      v16 = [a1 nilEntities:v100];

      v35 = sgEventsLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v76 = [v16 _pas_componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v166 = v76;
        v77 = "SGStructuredEventDissector: Missing entities for hotel extraction: %@";
        goto LABEL_145;
      }

      goto LABEL_146;
    }

    v163[0] = @"@context";
    v163[1] = @"@type";
    v164[0] = @"http://schema.org";
    v164[1] = @"http://schema.org/LodgingReservation";
    v55 = v128;
    if (!v128)
    {
      v55 = &stru_284703F00;
    }

    v163[2] = @"checkinTime";
    v163[3] = @"checkoutTime";
    v56 = v127;
    if (!v127)
    {
      v56 = &stru_284703F00;
    }

    v164[2] = v55;
    v164[3] = v56;
    v163[4] = @"reservationStatus";
    v57 = [a1 schemaStringForReservationStatus:{objc_msgSend(v8, "isCancelled")}];
    v58 = v57;
    if (v11)
    {
      v59 = v11;
    }

    else
    {
      v59 = &stru_284703F00;
    }

    v164[4] = v57;
    v164[5] = v59;
    v163[5] = @"reservationId";
    v163[6] = @"reservationFor";
    v161[0] = @"@type";
    v161[1] = @"name";
    v162[0] = @"http://schema.org/LodgingBusiness";
    v162[1] = v12;
    v161[2] = @"address";
    v60 = v124;
    if (!v124)
    {
      v60 = &stru_284703F00;
    }

    if (v125)
    {
      v60 = v125;
    }

    v162[2] = v60;
    v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v162 forKeys:v161 count:3];
    v164[6] = v61;
    v163[7] = @"underName";
    v159[0] = @"@type";
    v159[1] = @"name";
    v62 = v123;
    if (!v123)
    {
      v62 = &stru_284703F00;
    }

    v160[0] = @"http://schema.org/Person";
    v160[1] = v62;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v160 forKeys:v159 count:2];
    v164[7] = v63;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v163 count:8];

    v10 = v113;
    goto LABEL_134;
  }

  v17 = 0;
  if (v15 == 5)
  {
    v114 = v12;
    v112 = v11;
    v113 = v10;
    if (![v8 isCancelled] || (objc_msgSend(v8, "providerName"), (v18 = objc_claimAutoreleasedReturnValue()) == 0) || (v18, v10) && !v128)
    {
      v19 = [v8 providerName];

      if (!v19 || !v128 || !v127 || v10 || v14 || v126 || v120 || v119)
      {
        v109 = [a1 tupleWithError:v10 label:@"reservationId"];
        v138[0] = v109;
        v107 = [a1 tupleWithError:v14 label:@"address"];
        v138[1] = v107;
        v106 = [a1 tupleWithError:v119 label:@"endAddress"];
        v138[2] = v106;
        v105 = [a1 tupleWithError:v126 label:@"place"];
        v138[3] = v105;
        v104 = [a1 tupleWithError:v120 label:@"endPlace"];
        v138[4] = v104;
        v78 = [a1 tupleWithEntity:v128 label:@"startDate"];
        v138[5] = v78;
        v79 = [a1 tupleWithEntity:v127 label:@"endDate"];
        v138[6] = v79;
        v80 = [v8 providerName];
        v81 = [a1 tupleWithEntity:v80 label:@"providerName"];
        v138[7] = v81;
        v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:8];
        v16 = [a1 nilEntities:v82];

        v35 = sgEventsLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v76 = [v16 _pas_componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v166 = v76;
          v77 = "SGStructuredEventDissector: Missing entities for car extraction: %@";
          goto LABEL_145;
        }

LABEL_146:
        v17 = 0;
        v11 = v112;
        v10 = v113;
        goto LABEL_147;
      }
    }

    v147[0] = @"@context";
    v147[1] = @"@type";
    v148[0] = @"http://schema.org";
    v148[1] = @"http://schema.org/RentalCarReservation";
    v20 = v11;
    if (!v11)
    {
      v20 = &stru_284703F00;
    }

    v148[2] = v20;
    v147[2] = @"reservationId";
    v147[3] = @"reservationStatus";
    v21 = [a1 schemaStringForReservationStatus:{objc_msgSend(v8, "isCancelled")}];
    v108 = v21;
    v22 = v128;
    if (!v128)
    {
      v22 = &stru_284703F00;
    }

    v148[3] = v21;
    v148[4] = v22;
    v147[4] = @"pickupTime";
    v147[5] = @"pickupLocation";
    v145[0] = @"@type";
    v145[1] = @"address";
    v23 = v124;
    if (!v124)
    {
      v23 = &stru_284703F00;
    }

    if (v125)
    {
      v23 = v125;
    }

    v146[0] = @"http://schema.org/Place";
    v146[1] = v23;
    v145[2] = @"name";
    v24 = v121;
    if (!v121)
    {
      v24 = &stru_284703F00;
    }

    v146[2] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:3];
    v26 = v25;
    v27 = v127;
    if (!v127)
    {
      v27 = &stru_284703F00;
    }

    v148[5] = v25;
    v148[6] = v27;
    v147[6] = @"dropoffTime";
    v147[7] = @"dropoffLocation";
    v143[0] = @"@type";
    v143[1] = @"address";
    v28 = v117;
    if (!v117)
    {
      v28 = &stru_284703F00;
    }

    if (v118)
    {
      v28 = v118;
    }

    v144[0] = @"http://schema.org/Place";
    v144[1] = v28;
    v143[2] = @"name";
    v29 = v116;
    if (!v116)
    {
      v29 = &stru_284703F00;
    }

    v144[2] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v143 count:3];
    v148[7] = v30;
    v147[8] = @"provider";
    v142[0] = @"http://schema.org/Organization";
    v141[0] = @"type";
    v141[1] = @"name";
    v31 = [v8 providerName];
    v142[1] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:2];
    v148[8] = v32;
    v147[9] = @"underName";
    v139[0] = @"@type";
    v139[1] = @"name";
    v33 = v123;
    if (!v123)
    {
      v33 = &stru_284703F00;
    }

    v140[0] = @"http://schema.org/Person";
    v140[1] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:v139 count:2];
    v148[9] = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:10];

    v11 = v112;
    v10 = v113;

    goto LABEL_95;
  }

LABEL_149:
  [v9 setObject:v17 forKeyedSubscript:@"schema"];
  [v9 setObject:v16 forKeyedSubscript:@"missingEntities"];
  v101 = sgEventsLogHandle();
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v166 = v9;
    _os_log_impl(&dword_231E60000, v101, OS_LOG_TYPE_DEFAULT, "SGStructuredEventDissector: foundInEventResult result schema %{private}@", buf, 0xCu);
  }

LABEL_152:
  v102 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)addSchemaAsEnrichment:(id)a3 inMessage:(id)a4 parentEntity:(id)a5 eventClassification:(id)a6 mlDefaultExtraction:(BOOL)a7
{
  v39 = a7;
  v52[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v41 = a6;
  v13 = objc_opt_new();
  v36 = v10;
  v40 = [v10 objectForKeyedSubscript:@"mergedSchema"];
  v52[0] = v40;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
  v35 = v13;
  v42 = v11;
  v15 = [v13 enrichmentsFromSchemas:v14 inMessage:v11 parentEntity:v12];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v15;
  v43 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v43)
  {
    v38 = *v45;
    do
    {
      v16 = 0;
      do
      {
        if (*v45 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v44 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        v19 = [MEMORY[0x277D01FA0] extractedFromTemplateWithName:@"ML"];
        [v17 addTag:v19];

        v20 = [MEMORY[0x277D01FA0] extractedFromTemplateWithShortName:@"ML"];
        [v17 addTag:v20];

        v21 = [v42 from];
        v22 = [v21 emailAddress];
        v23 = emailAddressDomain(v22);

        if (v23)
        {
          v24 = [MEMORY[0x277D01FA0] domain:v23];
          [v17 addTag:v24];
        }

        v25 = [v12 duplicateKey];
        v26 = [v25 bundleId];

        v27 = objc_alloc(MEMORY[0x277D01FC8]);
        v28 = +[SGStructuredEventClassification describeCategory:](SGStructuredEventClassification, "describeCategory:", [v41 category]);
        v50 = v40;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
        v30 = [v27 initWithType:1 categoryDescription:v28 originBundleId:v26 confidence:v29 schemaOrg:0 participants:0 eventActivities:1.0];

        v31 = [v30 toJsonString];
        if (v31)
        {
          v32 = [MEMORY[0x277D01FA0] eventMetadata:v31];
          [v17 addTag:v32];
        }

        else
        {
          v32 = sgLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v49 = v30;
            _os_log_error_impl(&dword_231E60000, v32, OS_LOG_TYPE_ERROR, "Failed to convert object to JSON: %@", buf, 0xCu);
          }
        }

        if (v39)
        {
          [v12 addOrReplaceEventEnrichment:v17];
        }

        else
        {
          [v12 addEnrichment:v17];
        }

        v33 = sgEventsLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231E60000, v33, OS_LOG_TYPE_DEFAULT, "SGStructuredEventDissector: Added enrichment", buf, 2u);
        }

        objc_autoreleasePoolPop(v18);
        ++v16;
      }

      while (v43 != v16);
      v43 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v43);
  }

  v34 = *MEMORY[0x277D85DE8];
}

+ (id)mergeFallbackSchema:(id)a3 parentEntity:(id)a4
{
  v39[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v38[0] = @"mergedSchema";
  v38[1] = @"diff";
  v39[0] = v6;
  v39[1] = &stru_284703F00;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  if ([v7 hasEventEnrichment])
  {
    v9 = [a1 eventEnrichmentFromEntity:v7];
    v10 = v9;
    if (v9)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v11 = [v9 tags];
      v12 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v32;
LABEL_5:
        v15 = 0;
        while (1)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * v15);
          if ([v16 isSchemaOrg])
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
            if (v13)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v17 = [v16 value];

        if (!v17)
        {
          goto LABEL_18;
        }

        v18 = MEMORY[0x277CCAAA0];
        v19 = [v17 dataUsingEncoding:4];
        v30 = 0;
        v20 = [v18 JSONObjectWithData:v19 options:0 error:&v30];
        v21 = v30;

        if (v20 && [v20 count])
        {
          v29 = v21;
          v22 = objc_opt_new();
          v36 = v6;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
          v24 = [v20 firstObject];
          v35 = v24;
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
          v28 = [v22 mergeSchemas:v23 withExpectedSchemas:v25];

          v8 = v28;
          v21 = v29;
        }
      }

      else
      {
LABEL_11:
        v17 = v11;
      }
    }

LABEL_18:
  }

  v26 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken3 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken3, &__block_literal_global_45);
  }

  v3 = sharedInstance__pasExprOnceResult_16428;

  return v3;
}

void __44__SGStructuredEventDissector_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_16428;
  sharedInstance__pasExprOnceResult_16428 = v1;

  objc_autoreleasePoolPop(v0);
}

@end