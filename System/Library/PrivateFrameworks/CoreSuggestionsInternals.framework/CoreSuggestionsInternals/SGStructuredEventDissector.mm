@interface SGStructuredEventDissector
+ (BOOL)eventEnrichmentContainsReverseMappedTags:(id)tags;
+ (id)addressDictionaryForAddressComponents:(id)components;
+ (id)annotateContent:(id)content withLabel:(id)label forMatchingString:(id)string;
+ (id)annotationMatchingStringsForSubject:(id)subject;
+ (id)eventEnrichmentFromEntity:(id)entity;
+ (id)jsMessageLogsDictionaryForMailMessage:(id)message;
+ (id)jsMessageLogsDictionaryForPrivacyAwareLogs:(id)logs;
+ (id)labelsWithMatchingStringsForMailMessage:(id)message;
+ (id)mergeFallbackSchema:(id)schema parentEntity:(id)entity;
+ (id)nilEntities:(id)entities;
+ (id)outputLogsForClassification:(id)classification;
+ (id)plainTextStringsByLabelInTaggedCharacterRanges:(id)ranges inPlainText:(id)text;
+ (id)preprocessDomParserResult:(id)result subject:(id)subject epoch:(double)epoch category:(id)category labelsWithMatchingStrings:(id)strings;
+ (id)preprocessWithoutXPCForHTML:(id)l subject:(id)subject epoch:(double)epoch category:(id)category labelsWithMatchingStrings:(id)strings;
+ (id)schemaOrgAndMissingEntitiesForDUFoundInEvent:(id)event eventClassification:(id)classification fromSuggestTool:(BOOL)tool;
+ (id)schemaPostalAddressForPostalAddressExtraction:(id)extraction addressThreshold:(unint64_t)threshold;
+ (id)schemaStringForDateComponents:(id)components;
+ (id)schemaStringForEventStatus:(unsigned __int8)status;
+ (id)schemaStringForReservationStatus:(unsigned __int8)status;
+ (id)sharedInstance;
+ (id)tupleWithEntity:(id)entity label:(id)label;
+ (id)tupleWithError:(id)error label:(id)label;
+ (unint64_t)tokenCount:(id)count;
+ (unint64_t)tokenCountForPostalAddressComponents:(id)components;
+ (void)addSchemaAsEnrichment:(id)enrichment inMessage:(id)message parentEntity:(id)entity eventClassification:(id)classification mlDefaultExtraction:(BOOL)extraction;
+ (void)logFailedExtractionWithClassification:(id)classification missingEntities:(id)entities mlSummary:(id)summary shadowExtraction:(BOOL)extraction timingProcessingInMs:(unint64_t)ms forMessage:(id)message parentEntity:(id)entity;
+ (void)logMLExtractionForSchema:(id)schema mergedSchemaAndDiff:(id)diff parentEntity:(id)entity timingProcessingInMs:(unint64_t)ms eventClassification:(id)classification mailMessage:(id)message shadowExtraction:(BOOL)extraction mlDefaultExtraction:(BOOL)self0;
+ (void)logMLInteractions:(id)interactions context:(id)context mlDefaultExtraction:(BOOL)extraction;
- (id)preprocessHTML:(id)l subject:(id)subject epoch:(double)epoch category:(id)category labelsWithMatchingStrings:(id)strings;
- (id)tagsWithModelOutputFromEnrichedTaggedCharacterRanges:(id)ranges;
- (void)dissectMailMessage:(id)message entity:(id)entity context:(id)context;
@end

@implementation SGStructuredEventDissector

- (id)tagsWithModelOutputFromEnrichedTaggedCharacterRanges:(id)ranges
{
  rangesCopy = ranges;
  v4 = +[SGStructuredEventExtractionModel sharedInstance];
  v5 = [v4 modelInferences:rangesCopy];

  if (v5)
  {
    v6 = [(SGExtractionModel *)SGStructuredEventExtractionModel enrichTaggedCharacterRangesWithModelOutput:v5 usingInputCharacterRanges:rangesCopy];
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

- (id)preprocessHTML:(id)l subject:(id)subject epoch:(double)epoch category:(id)category labelsWithMatchingStrings:(id)strings
{
  stringsCopy = strings;
  categoryCopy = category;
  subjectCopy = subject;
  lCopy = l;
  v15 = objc_opt_new();
  v16 = [v15 parseHTML:lCopy];

  v17 = [objc_opt_class() preprocessDomParserResult:v16 subject:subjectCopy epoch:categoryCopy category:stringsCopy labelsWithMatchingStrings:epoch];

  return v17;
}

- (void)dissectMailMessage:(id)message entity:(id)entity context:(id)context
{
  v89 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  entityCopy = entity;
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  v78 = mach_absolute_time();
  from = [messageCopy from];
  emailAddress = [from emailAddress];

  if (emailAddress)
  {
    v12 = +[SGStructuredEventExtractionModel sharedInstance];
    detectStructuredEventsML = [MEMORY[0x277D02098] detectStructuredEventsML];
    from2 = [messageCopy from];
    emailAddress2 = [from2 emailAddress];
    v16 = [v12 isSenderSupportedForExtraction:emailAddress2];

    from3 = [messageCopy from];
    emailAddress3 = [from3 emailAddress];
    LODWORD(emailAddress2) = [v12 isSenderSupportedForShadowExtraction:emailAddress3];

    from4 = [messageCopy from];
    emailAddress4 = [from4 emailAddress];
    v77 = [v12 isSenderSupportedForMLDefaultExtraction:emailAddress4];

    from5 = [messageCopy from];
    emailAddress5 = [from5 emailAddress];
    v23 = [v12 isSenderSupportedForPFLTraining:emailAddress5];

    v24 = sgEventsLogHandle();
    v25 = emailAddress2 & (detectStructuredEventsML ^ 1);
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

    if ((detectStructuredEventsML | v16 | v25))
    {
      if ([SGExtractionDissector emailIsForwardOrReply:messageCopy])
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

      htmlBody = [messageCopy htmlBody];
      v33 = htmlBody == 0;

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

      if (v25 & 1 | (([entityCopy hasEventEnrichment] & 1) == 0) | v77 & 1)
      {
        if ((([contextCopy backpressureHazard] == 1) & v25) == 1)
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

        sourceKey = [entityCopy sourceKey];
        v75 = [sourceKey isEqualToString:@"suggest_tool"];

        if (v75)
        {
          v36 = objc_opt_new();
          v29 = [v36 eventClassificationWithoutXPCForMailMessage:messageCopy];
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          v38 = objc_opt_new();
          v29 = [v38 eventClassificationForMailMessage:messageCopy];

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
          v42 = [(SGSimpleMailMessage *)v41 convertMailMessageToBMMailMessage:messageCopy];

          encodeAsProto = [v42 encodeAsProto];
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
          [v43 foundInEventResultWithSerializedDocument:encodeAsProto documentType:0 completion:v82];
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
            htmlBody2 = [messageCopy htmlBody];
            subject = [messageCopy subject];
            [entityCopy creationTimestamp];
            v49 = v48;
            v50 = [objc_opt_class() labelsWithMatchingStringsForMailMessage:messageCopy];
            v42 = [v46 preprocessWithoutXPCForHTML:htmlBody2 subject:subject epoch:v74 category:v50 labelsWithMatchingStrings:v49];
          }

          else
          {
            v69 = objc_autoreleasePoolPush();
            htmlBody3 = [messageCopy htmlBody];
            subject2 = [messageCopy subject];
            [entityCopy creationTimestamp];
            v53 = v52;
            v54 = [objc_opt_class() labelsWithMatchingStringsForMailMessage:messageCopy];
            v42 = [(SGStructuredEventDissector *)self preprocessHTML:htmlBody3 subject:subject2 epoch:v74 category:v54 labelsWithMatchingStrings:v53];

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

          encodeAsProto = [v42 objectForKeyedSubscript:@"crossTags"];
          if (![encodeAsProto count])
          {
            v67 = sgEventsLogHandle();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_231E60000, v67, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: Empty enrichedTaggedCharacterRanges", buf, 2u);
            }

            goto LABEL_76;
          }

          [entityCopy releaseDissectorLock];
          hasEventEnrichment = [entityCopy hasEventEnrichment];
          if ((v23 & hasEventEnrichment) == 1)
          {
            v23 = [objc_opt_class() eventEnrichmentContainsReverseMappedTags:entityCopy];
          }

          v70 = objc_autoreleasePoolPush();
          v76 = [objc_opt_class() schemaOrgAndMissingEntitiesForPreprocessed:v42 eventClassification:v29 fromSuggestTool:v75 addressThreshold:-[NSObject addressComponentThreshold](v12 pflTrainable:"addressComponentThreshold") hasEvent:{v23, hasEventEnrichment}];
          objc_autoreleasePoolPop(v70);
          v45 = [v76 objectForKeyedSubscript:@"schema"];
        }

        [entityCopy acquireDissectorLock];
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
            [objc_opt_class() logMLExtractionForSchema:v45 mergedSchemaAndDiff:v59 parentEntity:entityCopy timingProcessingInMs:v58 eventClassification:v29 mailMessage:messageCopy shadowExtraction:v68 mlDefaultExtraction:?];
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
              v65 = [objc_opt_class() mergeFallbackSchema:v45 parentEntity:entityCopy];

              v59 = v65;
            }

            BYTE1(v68) = v77;
            LOBYTE(v68) = 0;
            [objc_opt_class() logMLExtractionForSchema:v45 mergedSchemaAndDiff:v59 parentEntity:entityCopy timingProcessingInMs:v58 eventClassification:v29 mailMessage:messageCopy shadowExtraction:v68 mlDefaultExtraction:?];
            [objc_opt_class() addSchemaAsEnrichment:v59 inMessage:messageCopy parentEntity:entityCopy eventClassification:v29 mlDefaultExtraction:v77];
            [objc_opt_class() logMLInteractions:entityCopy context:contextCopy mlDefaultExtraction:v77];
          }

          objc_autoreleasePoolPop(v79);
        }

        else
        {
          v62 = objc_opt_class();
          v63 = [v76 objectForKeyedSubscript:@"missingEntities"];
          v64 = [v76 objectForKeyedSubscript:@"ml_summary"];
          [v62 logFailedExtractionWithClassification:v29 missingEntities:v63 mlSummary:v64 shadowExtraction:v25 timingProcessingInMs:v58 forMessage:messageCopy parentEntity:entityCopy];

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

+ (void)logMLInteractions:(id)interactions context:(id)context mlDefaultExtraction:(BOOL)extraction
{
  extractionCopy = extraction;
  v29 = *MEMORY[0x277D85DE8];
  interactionsCopy = interactions;
  contextCopy = context;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  enrichments = [interactionsCopy enrichments];
  v9 = [enrichments countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(enrichments);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        duplicateKey = [v13 duplicateKey];
        [duplicateKey entityType];
        if (SGEntityTypeIsEvent())
        {
          isNaturalLanguageEvent = [v13 isNaturalLanguageEvent];

          if (isNaturalLanguageEvent)
          {
            goto LABEL_18;
          }

          backpressureHazard = [contextCopy backpressureHazard];
          if (backpressureHazard == 1)
          {
            v18 = 12;
          }

          else
          {
            v18 = 0;
          }

          if (backpressureHazard)
          {
            v19 = v18;
          }

          else
          {
            v19 = 13;
          }

          if (extractionCopy)
          {
            v20 = +[SGRTCLogging defaultLogger];
            [v20 resetInteractionsLogs];

            v21 = +[SGRTCLogging defaultLogger];
            [v21 resetInteractionsSummaryLogs];
          }

          duplicateKey = +[SGRTCLogging defaultLogger];
          [duplicateKey logEventInteractionForEntity:v13 interface:0 actionType:v19];
        }

LABEL_18:
        objc_autoreleasePoolPop(v14);
      }

      v10 = [enrichments countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (id)outputLogsForClassification:(id)classification
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"category";
  classificationCopy = classification;
  v4 = +[SGStructuredEventClassification describeCategory:](SGStructuredEventClassification, "describeCategory:", [classificationCopy category]);
  v11[1] = @"usecase";
  v12[0] = v4;
  useCase = [classificationCopy useCase];

  v6 = [SGStructuredEventClassification describeUseCase:useCase];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v7 mutableCopy];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)jsMessageLogsDictionaryForPrivacyAwareLogs:(id)logs
{
  logsCopy = logs;
  v4 = objc_opt_new();
  v5 = [v4 privacyAwareLogsForMLExtractions:logsCopy];

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

+ (id)jsMessageLogsDictionaryForMailMessage:(id)message
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13[0] = @"domain";
  from = [message from];
  emailAddress = [from emailAddress];
  v5 = emailAddressDomain(emailAddress);
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

+ (void)logFailedExtractionWithClassification:(id)classification missingEntities:(id)entities mlSummary:(id)summary shadowExtraction:(BOOL)extraction timingProcessingInMs:(unint64_t)ms forMessage:(id)message parentEntity:(id)entity
{
  extractionCopy = extraction;
  v57 = *MEMORY[0x277D85DE8];
  classificationCopy = classification;
  entitiesCopy = entities;
  summaryCopy = summary;
  messageCopy = message;
  entityCopy = entity;
  v41 = messageCopy;
  v39 = [self jsMessageLogsDictionaryForMailMessage:messageCopy];
  v44 = classificationCopy;
  v16 = [self outputLogsForClassification:classificationCopy];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v17 = summaryCopy;
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

  v25 = [MEMORY[0x277CCABB0] numberWithBool:extractionCopy];
  [v16 setObject:v25 forKeyedSubscript:@"shadowExtraction"];

  v26 = [self eventEnrichmentFromEntity:entityCopy];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  tags = [v26 tags];
  v28 = [tags countByEnumeratingWithState:&v47 objects:v55 count:16];
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
        objc_enumerationMutation(tags);
      }

      v32 = *(*(&v47 + 1) + 8 * v31);
      if ([v32 isTemplateName])
      {
        break;
      }

      if (v29 == ++v31)
      {
        v29 = [tags countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v29)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    value = [v32 value];

    v34 = v41;
    if (!value)
    {
      goto LABEL_22;
    }

    [v16 setObject:value forKeyedSubscript:@"extractionTemplate"];
    v35 = [self jsMessageLogsDictionaryForPrivacyAwareLogs:v41];
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
    value = tags;
    v34 = v41;
  }

LABEL_22:
  v36 = +[SGRTCLogging defaultLogger];
  [v36 logEventExtractionForTemplateName:@"ML" extractionStatus:3 outputExceptions:entitiesCopy outputInfos:MEMORY[0x277CBEBF8] jsMessageLogs:v39 jsOutputLogs:v16 timingProcessing:ms];

  v37 = *MEMORY[0x277D85DE8];
}

+ (void)logMLExtractionForSchema:(id)schema mergedSchemaAndDiff:(id)diff parentEntity:(id)entity timingProcessingInMs:(unint64_t)ms eventClassification:(id)classification mailMessage:(id)message shadowExtraction:(BOOL)extraction mlDefaultExtraction:(BOOL)self0
{
  v101 = *MEMORY[0x277D85DE8];
  schemaCopy = schema;
  diffCopy = diff;
  entityCopy = entity;
  classificationCopy = classification;
  messageCopy = message;
  v19 = [self jsMessageLogsDictionaryForMailMessage:messageCopy];
  v20 = [self outputLogsForClassification:classificationCopy];
  v21 = @"fallbackExtraction";
  if (defaultExtraction)
  {
    v21 = @"mlDefaultExtraction";
  }

  v22 = v20;
  if (extraction)
  {
    v23 = @"shadowExtraction";
  }

  else
  {
    v23 = v21;
  }

  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v23];
  v24 = [self jsMessageLogsDictionaryForPrivacyAwareLogs:messageCopy];
  if (v24)
  {
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __178__SGStructuredEventDissector_logMLExtractionForSchema_mergedSchemaAndDiff_parentEntity_timingProcessingInMs_eventClassification_mailMessage_shadowExtraction_mlDefaultExtraction___block_invoke;
    v94[3] = &unk_27894E2C0;
    v95 = v22;
    [v24 enumerateKeysAndObjectsUsingBlock:v94];
  }

  v25 = [self eventEnrichmentFromEntity:entityCopy];
  v74 = v25;
  v75 = v24;
  if (!v25)
  {
    tags = [entityCopy tags];
    templateException = [MEMORY[0x277D01FA0] templateException];
    v62 = [tags containsObject:templateException];

    if (v62)
    {
      v63 = @"Exception";
    }

    else
    {
      v63 = @"No Event";
    }

    [v22 setObject:v63 forKeyedSubscript:@"templateExtractionOutput"];
    msCopy2 = ms;
    v40 = diffCopy;
    goto LABEL_53;
  }

  v80 = v22;
  v73 = v19;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  tags2 = [v25 tags];
  v27 = [tags2 countByEnumeratingWithState:&v90 objects:v100 count:16];
  if (!v27)
  {
    v29 = 0;
    v30 = 0;
    v40 = diffCopy;
    goto LABEL_51;
  }

  v28 = v27;
  v70 = messageCopy;
  v71 = classificationCopy;
  v29 = 0;
  v30 = 0;
  v31 = *v91;
  do
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v91 != v31)
      {
        objc_enumerationMutation(tags2);
      }

      v33 = *(*(&v90 + 1) + 8 * i);
      if ([v33 isSchemaOrg])
      {
        value = [v33 value];
        v35 = v30;
        v30 = value;
      }

      else
      {
        if (![v33 isTemplateName])
        {
          continue;
        }

        value2 = [v33 value];
        v35 = v29;
        v29 = value2;
      }
    }

    v28 = [tags2 countByEnumeratingWithState:&v90 objects:v100 count:16];
  }

  while (v28);

  v22 = v80;
  if (v29)
  {
    [v80 setObject:v29 forKeyedSubscript:@"extractionTemplate"];
  }

  messageCopy = v70;
  classificationCopy = v71;
  if (v30)
  {
    v37 = MEMORY[0x277CCAAA0];
    v38 = [v30 dataUsingEncoding:4];
    v89 = 0;
    v39 = [v37 JSONObjectWithData:v38 options:0 error:&v89];
    tags2 = v89;

    v40 = diffCopy;
    if (v39 && [v39 count])
    {
      v68 = entityCopy;
      v41 = objc_opt_new();
      firstObject = [v39 firstObject];
      v99 = firstObject;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
      v69 = schemaCopy;
      v98 = schemaCopy;
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

      if (defaultExtraction)
      {
        v52 = [diffCopy objectForKeyedSubscript:@"diff"];

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
        schemaCopy = v69;
      }

      else
      {
        schemaCopy = v69;
        v59 = v67;
      }

      v40 = diffCopy;
      entityCopy = v68;
      messageCopy = v70;
      classificationCopy = v71;
    }

    v19 = v73;
LABEL_51:

    v22 = v80;
  }

  else
  {
    v19 = v73;
    v40 = diffCopy;
  }

  msCopy2 = ms;
LABEL_53:
  v65 = +[SGRTCLogging defaultLogger];
  [v65 logEventExtractionForTemplateName:@"ML" extractionStatus:0 outputExceptions:MEMORY[0x277CBEBF8] outputInfos:MEMORY[0x277CBEBF8] jsMessageLogs:v19 jsOutputLogs:v22 timingProcessing:msCopy2];

  v66 = *MEMORY[0x277D85DE8];
}

+ (BOOL)eventEnrichmentContainsReverseMappedTags:(id)tags
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [self eventEnrichmentFromEntity:tags];
  v4 = v3;
  if (v3)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    tags = [v3 tags];
    v6 = [tags countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(tags);
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
            value = [v11 value];
            v21 = [value isEqualToString:@"reverseMapped_TITLE__MOVIE_TICKET_NAME"];

            v8 |= v21;
          }
        }

        v6 = [tags countByEnumeratingWithState:&v27 objects:v31 count:16];
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

+ (id)eventEnrichmentFromEntity:(id)entity
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  enrichments = [entity enrichments];
  v4 = [enrichments countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(enrichments);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        duplicateKey = [v7 duplicateKey];
        [duplicateKey entityType];
        IsEvent = SGEntityTypeIsEvent();

        if (IsEvent)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [enrichments countByEnumeratingWithState:&v12 objects:v16 count:16];
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

+ (id)addressDictionaryForAddressComponents:(id)components
{
  v22[6] = *MEMORY[0x277D85DE8];
  v22[0] = @"http://schema.org/PostalAddress";
  v21[0] = @"@type";
  v21[1] = @"streetAddress";
  componentsCopy = components;
  street = [componentsCopy street];
  v5 = street;
  if (street)
  {
    v6 = street;
  }

  else
  {
    v6 = &stru_284703F00;
  }

  v22[1] = v6;
  v21[2] = @"addressLocality";
  city = [componentsCopy city];
  v8 = city;
  if (city)
  {
    v9 = city;
  }

  else
  {
    v9 = &stru_284703F00;
  }

  v22[2] = v9;
  v21[3] = @"addressRegion";
  state = [componentsCopy state];
  v11 = state;
  if (state)
  {
    v12 = state;
  }

  else
  {
    v12 = &stru_284703F00;
  }

  v22[3] = v12;
  v21[4] = @"postalCode";
  postalCode = [componentsCopy postalCode];
  v14 = postalCode;
  if (postalCode)
  {
    v15 = postalCode;
  }

  else
  {
    v15 = &stru_284703F00;
  }

  v22[4] = v15;
  v21[5] = @"addressCountry";
  country = [componentsCopy country];

  if (country)
  {
    v17 = country;
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

+ (unint64_t)tokenCount:(id)count
{
  countCopy = count;
  if (countCopy)
  {
    v4 = +[SGPOSTagger sharedInstance];
    v5 = [v4 tokenizeTextContent:countCopy languageHint:0];

    if ([v5 count])
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:v6];
        annotationType = [v8 annotationType];

        if (annotationType == 3)
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

+ (unint64_t)tokenCountForPostalAddressComponents:(id)components
{
  componentsCopy = components;
  street = [componentsCopy street];

  if (street)
  {
    street2 = [componentsCopy street];
    street = [self tokenCount:street2];
  }

  city = [componentsCopy city];

  if (city)
  {
    city2 = [componentsCopy city];
    street += [self tokenCount:city2];
  }

  state = [componentsCopy state];

  if (state)
  {
    state2 = [componentsCopy state];
    street += [self tokenCount:state2];
  }

  postalCode = [componentsCopy postalCode];

  if (postalCode)
  {
    postalCode2 = [componentsCopy postalCode];
    street += [self tokenCount:postalCode2];
  }

  country = [componentsCopy country];

  if (country)
  {
    country2 = [componentsCopy country];
    street += [self tokenCount:country2];
  }

  return street;
}

+ (id)schemaPostalAddressForPostalAddressExtraction:(id)extraction addressThreshold:(unint64_t)threshold
{
  extractionCopy = extraction;
  components = [extractionCopy components];

  plainText = [extractionCopy plainText];

  if (components)
  {
    if (!plainText)
    {
      goto LABEL_4;
    }

    components2 = [extractionCopy components];
    v10 = [self tokenCountForPostalAddressComponents:components2];

    plainText2 = [extractionCopy plainText];
    v12 = [self tokenCount:plainText2];

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:threshold / 100.0 * v12];
    LODWORD(plainText2) = [v13 intValue];

    if (v10 >= plainText2)
    {
LABEL_4:
      components3 = [extractionCopy components];
      plainText3 = [self addressDictionaryForAddressComponents:components3];

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (plainText)
  {
LABEL_6:
    plainText3 = [extractionCopy plainText];
    goto LABEL_8;
  }

  plainText3 = &stru_284703F00;
LABEL_8:

  return plainText3;
}

+ (id)schemaStringForEventStatus:(unsigned __int8)status
{
  statusCopy = status;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = @"Cancelled";
  if (!statusCopy)
  {
    v5 = @"Confirmed";
  }

  v6 = [v4 initWithFormat:@"%@%@", @"http://schema.org/Event", v5];

  return v6;
}

+ (id)schemaStringForReservationStatus:(unsigned __int8)status
{
  statusCopy = status;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = @"Cancelled";
  if (!statusCopy)
  {
    v5 = @"Confirmed";
  }

  v6 = [v4 initWithFormat:@"%@%@", @"http://schema.org/Reservation", v5];

  return v6;
}

+ (id)schemaStringForDateComponents:(id)components
{
  componentsCopy = components;
  v4 = componentsCopy;
  if (componentsCopy && ([componentsCopy date], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    timeZone = [v4 timeZone];

    if (timeZone)
    {
      v7 = objc_opt_new();
      timeZone2 = [v4 timeZone];
      [v7 setTimeZone:timeZone2];
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

    date = [v4 date];
    v9 = [v7 stringFromDate:date];
  }

  else
  {
    v9 = &stru_284703F00;
  }

  return v9;
}

+ (id)plainTextStringsByLabelInTaggedCharacterRanges:(id)ranges inPlainText:(id)text
{
  v34 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  textCopy = text;
  v6 = objc_opt_new();
  if ([rangesCopy count])
  {
    v7 = 0;
    v27 = rangesCopy;
    do
    {
      v28 = v7;
      v8 = [rangesCopy objectAtIndexedSubscript:v7];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      tags = [v8 tags];
      v10 = [tags countByEnumeratingWithState:&v29 objects:v33 count:16];
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
              objc_enumerationMutation(tags);
            }

            v14 = *(*(&v29 + 1) + 8 * i);
            v15 = objc_alloc(MEMORY[0x277CCACA8]);
            annotationTypeUniqueIdentifier = [v8 annotationTypeUniqueIdentifier];
            v17 = [v15 initWithFormat:@"%@_%@", annotationTypeUniqueIdentifier, v14];

            v18 = [v6 objectForKeyedSubscript:v17];

            if (!v18)
            {
              v19 = objc_opt_new();
              [v6 setObject:v19 forKeyedSubscript:v17];
            }

            v20 = [v6 objectForKeyedSubscript:v17];
            range = [v8 range];
            [v20 addIndexesInRange:{range, v22}];
          }

          v11 = [tags countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v11);
      }

      rangesCopy = v27;
      v7 = v28 + 1;
    }

    while ([v27 count] > (v28 + 1));
  }

  v23 = [(SGExtractionDocument *)SGStructuredEventDocument candidatesForLabelsWithPlainTextIndexSets:v6 inPlainText:textCopy];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)annotateContent:(id)content withLabel:(id)label forMatchingString:(id)string
{
  v28[1] = *MEMORY[0x277D85DE8];
  contentCopy = content;
  labelCopy = label;
  stringCopy = string;
  v10 = objc_opt_new();
  if (![contentCopy length] || !objc_msgSend(stringCopy, "length"))
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

  if (!labelCopy)
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

  v11 = [contentCopy rangeOfString:stringCopy options:1 range:{0, objc_msgSend(contentCopy, "length")}];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v11;
    v14 = v12;
    do
    {
      v15 = [SGTaggedCharacterRange alloc];
      v28[0] = labelCopy;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      v17 = [contentCopy substringWithRange:{v13, v14}];
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
      v21 = [contentCopy length] - (v13 + v14);

      v13 = [contentCopy rangeOfString:stringCopy options:1 range:{v20, v21}];
      v14 = v22;
    }

    while (v13 != 0x7FFFFFFFFFFFFFFFLL);
  }

LABEL_15:

  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)labelsWithMatchingStringsForMailMessage:(id)message
{
  v33[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_opt_new();
  from = [messageCopy from];
  name = [from name];

  if (name)
  {
    name2 = [from name];
    v33[0] = name2;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [v5 setObject:v9 forKeyedSubscript:@"is_sender_name"];
  }

  emailAddress = [from emailAddress];

  if (emailAddress)
  {
    emailAddress2 = [from emailAddress];
    v32 = emailAddress2;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [v5 setObject:v12 forKeyedSubscript:@"is_sender_email"];

    emailAddress3 = [from emailAddress];
    v14 = emailAddressDomain(emailAddress3);

    if (v14)
    {
      v31 = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      [v5 setObject:v15 forKeyedSubscript:@"is_sender_domain"];
    }
  }

  v16 = [messageCopy to];
  firstObject = [v16 firstObject];

  name3 = [firstObject name];

  if (name3)
  {
    name4 = [firstObject name];
    v30 = name4;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    [v5 setObject:v20 forKeyedSubscript:@"is_recipient_name"];
  }

  emailAddress4 = [firstObject emailAddress];

  if (emailAddress4)
  {
    emailAddress5 = [firstObject emailAddress];
    v29 = emailAddress5;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [v5 setObject:v23 forKeyedSubscript:@"is_recipient_email"];
  }

  subject = [messageCopy subject];

  if (subject)
  {
    subject2 = [messageCopy subject];
    v26 = [self annotationMatchingStringsForSubject:subject2];

    if ([v26 count])
    {
      [v5 setObject:v26 forKeyedSubscript:@"is_present_in_subject"];
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)annotationMatchingStringsForSubject:(id)subject
{
  subjectCopy = subject;
  v4 = objc_opt_new();
  v5 = +[SGPOSTagger sharedInstance];
  v6 = [v5 tokenizeTextContent:subjectCopy languageHint:0];

  v7 = objc_opt_new();
  if ([v6 count])
  {
    v8 = 0;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:v8];
      annotationType = [v9 annotationType];

      if (annotationType == 2)
      {
        v11 = [v6 objectAtIndexedSubscript:v8];
        tags = [v11 tags];
        firstObject = [tags firstObject];

        if (firstObject && (([firstObject isEqualToString:@"NN"] & 1) != 0 || objc_msgSend(firstObject, "isEqualToString:", @"NNP")))
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
  v22 = subjectCopy;
  v14 = v4;
  v23 = v14;
  v15 = subjectCopy;
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

+ (id)tupleWithError:(id)error label:(id)label
{
  v5 = MEMORY[0x277D42648];
  labelCopy = label;
  v7 = [v5 alloc];
  if (error)
  {
    v8 = 0;
  }

  else
  {
    v8 = MEMORY[0x277CBEC38];
  }

  v9 = [v7 initWithFirst:v8 second:labelCopy];

  return v9;
}

+ (id)tupleWithEntity:(id)entity label:(id)label
{
  v5 = MEMORY[0x277D42648];
  labelCopy = label;
  entityCopy = entity;
  v8 = [[v5 alloc] initWithFirst:entityCopy second:labelCopy];

  return v8;
}

+ (id)nilEntities:(id)entities
{
  v25 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v18 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = entitiesCopy;
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
        first = [v9 first];
        if (!first)
        {
          goto LABEL_9;
        }

        second2 = first;
        first2 = [v9 first];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          first3 = [v9 first];
          hasExtraction = [first3 hasExtraction];

          if (hasExtraction)
          {
            continue;
          }

LABEL_9:
          second = [v9 second];

          if (second)
          {
            second2 = [v9 second];
            [v18 addObject:second2];
          }

          else
          {
            second2 = sgEventsLogHandle();
            if (os_log_type_enabled(second2, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_231E60000, second2, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: No name for missing entity", buf, 2u);
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

+ (id)preprocessWithoutXPCForHTML:(id)l subject:(id)subject epoch:(double)epoch category:(id)category labelsWithMatchingStrings:(id)strings
{
  stringsCopy = strings;
  categoryCopy = category;
  subjectCopy = subject;
  lCopy = l;
  v16 = objc_opt_new();
  v17 = [v16 parseHTML:lCopy];

  v18 = [self preprocessDomParserResult:v17 subject:subjectCopy epoch:categoryCopy category:stringsCopy labelsWithMatchingStrings:epoch];

  return v18;
}

+ (id)preprocessDomParserResult:(id)result subject:(id)subject epoch:(double)epoch category:(id)category labelsWithMatchingStrings:(id)strings
{
  v106 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  subjectCopy = subject;
  categoryCopy = category;
  stringsCopy = strings;
  v15 = stringsCopy;
  if (resultCopy)
  {
    v71 = stringsCopy;
    v72 = categoryCopy;
    v69 = subjectCopy;
    [resultCopy insertSubject:subjectCopy];
    plainText = [resultCopy plainText];
    v17 = objc_opt_new();
    v70 = resultCopy;
    taggedCharacterRanges = [resultCopy taggedCharacterRanges];
    [v17 addObjectsFromArray:taggedCharacterRanges];

    v19 = [MEMORY[0x277D02548] detectLanguageFromText:plainText];
    v20 = +[SGPOSTagger sharedInstance];
    v21 = +[SGStructuredEventExtractionModel sharedInstance];
    gazetteer = [v21 gazetteer];
    v68 = v19;
    v23 = [v20 tokenizeTextContent:plainText languageHint:v19 gazetteer:gazetteer];

    context = v17;
    v67 = v23;
    [v17 addObjectsFromArray:v23];
    v24 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:epoch];
    v25 = [SGDataDetectorMatch detectionsInPlainText:plainText baseDate:v24];

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
          valueRange = [v29 valueRange];
          v33 = [plainText substringWithRange:valueRange, v32];
          v34 = [SGTaggedCharacterRange alloc];
          matchType = [v29 matchType];
          v36 = @"SGDDMatchOther";
          if (matchType <= 8)
          {
            v36 = off_27894F1C0[matchType];
          }

          v37 = v36;
          v104 = v37;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
          valueRange2 = [v29 valueRange];
          v41 = [(SGTaggedCharacterRange *)v34 initWithAnnotationType:1 tags:v38 range:valueRange2 text:v40, v33];

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

                v60 = [objc_opt_class() annotateContent:plainText withLabel:v54 forMatchingString:*(*(&v80 + 1) + 8 * m)];
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
    v98[0] = plainText;
    v98[1] = v61;
    v97[2] = @"tags";
    v97[3] = @"ddSGDetections";
    v98[2] = v43;
    v98[3] = obj;
    v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:4];

    subjectCopy = v69;
    resultCopy = v70;
    v15 = v71;
    categoryCopy = v72;
  }

  else
  {
    plainText = sgEventsLogHandle();
    if (os_log_type_enabled(plainText, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, plainText, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: nil domParserResult", buf, 2u);
    }

    v62 = 0;
  }

  v63 = *MEMORY[0x277D85DE8];

  return v62;
}

+ (id)schemaOrgAndMissingEntitiesForDUFoundInEvent:(id)event eventClassification:(id)classification fromSuggestTool:(BOOL)tool
{
  v173[7] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  classificationCopy = classification;
  v9 = objc_opt_new();
  if (([eventCopy detectedEventPolarity] & 1) == 0)
  {
    [v9 setObject:&unk_28474A660 forKeyedSubscript:@"missingEntities"];
    goto LABEL_152;
  }

  reservationIdError = [eventCopy reservationIdError];
  reservationId = [eventCopy reservationId];
  hotelName = [eventCopy hotelName];
  movieName = [eventCopy movieName];
  startAddressError = [eventCopy startAddressError];
  startAddressComponents = [eventCopy startAddressComponents];
  startAddress = [eventCopy startAddress];
  endAddressError = [eventCopy endAddressError];
  endAddressComponents = [eventCopy endAddressComponents];
  endAddress = [eventCopy endAddress];
  startPlaceError = [eventCopy startPlaceError];
  startPlace = [eventCopy startPlace];
  endPlaceError = [eventCopy endPlaceError];
  endPlace = [eventCopy endPlace];
  startDate = [eventCopy startDate];
  endDate = [eventCopy endDate];
  guestName = [eventCopy guestName];
  category = [classificationCopy category];
  v16 = 0;
  v122 = startAddressError;
  v115 = movieName;
  if (category > 5)
  {
    if (category == 6)
    {
      v114 = hotelName;
      v112 = reservationId;
      if ((![classificationCopy isCancelled] || !movieName || reservationIdError && !startDate) && (!movieName || !startDate || reservationIdError || startAddressError || startPlaceError))
      {
        v113 = reservationIdError;
        v110 = [self tupleWithError:reservationIdError label:@"reservationId"];
        v149[0] = v110;
        v83 = [self tupleWithEntity:movieName label:@"movieName"];
        v149[1] = v83;
        v84 = [self tupleWithError:startPlaceError label:@"place"];
        v149[2] = v84;
        v85 = [self tupleWithError:startAddressError label:@"address"];
        v149[3] = v85;
        v86 = [self tupleWithEntity:startDate label:@"startDate"];
        v149[4] = v86;
        v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:5];
        v16 = [self nilEntities:v87];

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
      v36 = [self schemaStringForReservationStatus:{objc_msgSend(classificationCopy, "isCancelled")}];
      v108 = v36;
      if (reservationId)
      {
        v37 = reservationId;
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
      v155[1] = movieName;
      v38 = startDate;
      if (!startDate)
      {
        v38 = &stru_284703F00;
      }

      v154[2] = @"startDate";
      v154[3] = @"endDate";
      v39 = endDate;
      if (!endDate)
      {
        v39 = &stru_284703F00;
      }

      v155[2] = v38;
      v155[3] = v39;
      v154[4] = @"location";
      v152[0] = @"@type";
      v152[1] = @"name";
      v40 = startPlace;
      if (!startPlace)
      {
        v40 = &stru_284703F00;
      }

      v153[0] = @"http://schema.org/Place";
      v153[1] = v40;
      v152[2] = @"address";
      v41 = startAddress;
      if (!startAddress)
      {
        v41 = &stru_284703F00;
      }

      if (startAddressComponents)
      {
        v41 = startAddressComponents;
      }

      v153[2] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v153 forKeys:v152 count:3];
      v155[4] = v42;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v155 forKeys:v154 count:5];
      v44 = v43 = reservationIdError;
      v157[4] = v44;
      v156[5] = @"underName";
      v150[0] = @"@type";
      v150[1] = @"name";
      v45 = guestName;
      if (!guestName)
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
      if (category != 7)
      {
        sg_deepCopyWithoutEmptySchemaObjects = 0;
        if (category == 8)
        {
          v113 = reservationIdError;
          if ([classificationCopy isCancelled] && hotelName)
          {
            if (!(reservationId | startDate))
            {
              goto LABEL_135;
            }
          }

          else if (!hotelName || !startDate || reservationIdError || startAddressError)
          {
LABEL_135:
            v112 = reservationId;
            v114 = hotelName;
            v71 = [self tupleWithEntity:hotelName label:@"hotelName"];
            v167[0] = v71;
            v72 = [self tupleWithError:v122 label:@"address"];
            v167[1] = v72;
            v73 = [self tupleWithError:reservationIdError label:@"reservationId"];
            v167[2] = v73;
            v74 = [self tupleWithEntity:startDate label:@"startDate"];
            v167[3] = v74;
            v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:4];
            v16 = [self nilEntities:v75];

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
          v64 = hotelName;
          if (reservationId)
          {
            v65 = reservationId;
          }

          else
          {
            v65 = &stru_284703F00;
          }

          v173[2] = v65;
          v172[2] = @"reservationId";
          v172[3] = @"reservationStatus";
          v58 = [self schemaStringForReservationStatus:{objc_msgSend(classificationCopy, "isCancelled")}];
          v173[3] = v58;
          v172[4] = @"reservationFor";
          v170[0] = @"@type";
          v170[1] = @"name";
          v171[0] = @"http://schema.org/FoodEstablishment";
          v171[1] = hotelName;
          v170[2] = @"address";
          v66 = startAddress;
          if (!startAddress)
          {
            v66 = &stru_284703F00;
          }

          if (startAddressComponents)
          {
            v66 = startAddressComponents;
          }

          v171[2] = v66;
          v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v170 count:3];
          v61 = v67;
          v68 = startDate;
          if (!startDate)
          {
            v68 = &stru_284703F00;
          }

          v173[4] = v67;
          v173[5] = v68;
          v172[5] = @"startTime";
          v172[6] = @"underName";
          v168[0] = @"@type";
          v168[1] = @"name";
          v69 = guestName;
          if (!guestName)
          {
            v69 = &stru_284703F00;
          }

          v169[0] = @"http://schema.org/Person";
          v169[1] = v69;
          v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v169 forKeys:v168 count:2];
          v173[6] = v70;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:7];

          hotelName = v64;
LABEL_134:

          sg_deepCopyWithoutEmptySchemaObjects = [v35 sg_deepCopyWithoutEmptySchemaObjects];
          v16 = 0;
LABEL_148:

          goto LABEL_149;
        }

        goto LABEL_149;
      }

      v114 = hotelName;
      if ((![classificationCopy isCancelled] || !movieName || reservationIdError && !startDate) && (!movieName || !startDate || reservationIdError || startAddressError || startPlaceError))
      {
        v112 = reservationId;
        v88 = objc_opt_class();
        v113 = reservationIdError;
        [self tupleWithError:reservationIdError label:@"reservationId"];
        v90 = v89 = startAddressError;
        v129[0] = v90;
        v91 = [self tupleWithEntity:movieName label:@"movieName"];
        v129[1] = v91;
        v92 = [self tupleWithError:v89 label:@"address"];
        v129[2] = v92;
        v93 = [self tupleWithError:startPlaceError label:@"place"];
        v129[3] = v93;
        v94 = [self tupleWithEntity:startDate label:@"startDate"];
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
      if (reservationId)
      {
        v50 = reservationId;
      }

      else
      {
        v50 = &stru_284703F00;
      }

      v137[2] = v50;
      v136[2] = @"reservationId";
      v136[3] = @"reservationStatus";
      v108 = [self schemaStringForEventStatus:{objc_msgSend(classificationCopy, "isCancelled")}];
      v137[3] = v108;
      v136[4] = @"reservationFor";
      v134[0] = @"@type";
      v134[1] = @"name";
      v135[0] = @"http://schema.org/ScreeningEvent";
      v135[1] = movieName;
      v51 = startDate;
      if (!startDate)
      {
        v51 = &stru_284703F00;
      }

      v135[2] = v51;
      v134[2] = @"startDate";
      v134[3] = @"location";
      v132[0] = @"@type";
      v132[1] = @"name";
      v52 = startPlace;
      if (!startPlace)
      {
        v52 = &stru_284703F00;
      }

      v133[0] = @"http://schema.org/Place";
      v133[1] = v52;
      v132[2] = @"address";
      v53 = startAddress;
      if (!startAddress)
      {
        v53 = &stru_284703F00;
      }

      if (startAddressComponents)
      {
        v53 = startAddressComponents;
      }

      v133[2] = v53;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:3];
      v135[3] = v42;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:4];
      v44 = v43 = reservationIdError;
      v137[4] = v44;
      v136[5] = @"underName";
      v130[0] = @"@type";
      v130[1] = @"name";
      v54 = guestName;
      if (!guestName)
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

    reservationIdError = v43;
LABEL_95:

    sg_deepCopyWithoutEmptySchemaObjects = [v35 sg_deepCopyWithoutEmptySchemaObjects];
    v16 = 0;
LABEL_147:
    hotelName = v114;
    goto LABEL_148;
  }

  if (category == 4)
  {
    v113 = reservationIdError;
    if ((![classificationCopy isCancelled] || !hotelName || !(reservationId | startDate)) && (!hotelName || !startDate || !endDate || reservationIdError || startAddressError))
    {
      v112 = reservationId;
      v111 = [self tupleWithError:reservationIdError label:@"reservationId"];
      v158[0] = v111;
      v114 = hotelName;
      v96 = [self tupleWithEntity:hotelName label:@"hotelName"];
      v158[1] = v96;
      v97 = [self tupleWithError:startAddressError label:@"address"];
      v158[2] = v97;
      v98 = [self tupleWithEntity:startDate label:@"startDate"];
      v158[3] = v98;
      v99 = [self tupleWithEntity:endDate label:@"endDate"];
      v158[4] = v99;
      v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:5];
      v16 = [self nilEntities:v100];

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
    v55 = startDate;
    if (!startDate)
    {
      v55 = &stru_284703F00;
    }

    v163[2] = @"checkinTime";
    v163[3] = @"checkoutTime";
    v56 = endDate;
    if (!endDate)
    {
      v56 = &stru_284703F00;
    }

    v164[2] = v55;
    v164[3] = v56;
    v163[4] = @"reservationStatus";
    v57 = [self schemaStringForReservationStatus:{objc_msgSend(classificationCopy, "isCancelled")}];
    v58 = v57;
    if (reservationId)
    {
      v59 = reservationId;
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
    v162[1] = hotelName;
    v161[2] = @"address";
    v60 = startAddress;
    if (!startAddress)
    {
      v60 = &stru_284703F00;
    }

    if (startAddressComponents)
    {
      v60 = startAddressComponents;
    }

    v162[2] = v60;
    v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v162 forKeys:v161 count:3];
    v164[6] = v61;
    v163[7] = @"underName";
    v159[0] = @"@type";
    v159[1] = @"name";
    v62 = guestName;
    if (!guestName)
    {
      v62 = &stru_284703F00;
    }

    v160[0] = @"http://schema.org/Person";
    v160[1] = v62;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v160 forKeys:v159 count:2];
    v164[7] = v63;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v163 count:8];

    reservationIdError = v113;
    goto LABEL_134;
  }

  sg_deepCopyWithoutEmptySchemaObjects = 0;
  if (category == 5)
  {
    v114 = hotelName;
    v112 = reservationId;
    v113 = reservationIdError;
    if (![classificationCopy isCancelled] || (objc_msgSend(classificationCopy, "providerName"), (v18 = objc_claimAutoreleasedReturnValue()) == 0) || (v18, reservationIdError) && !startDate)
    {
      providerName = [classificationCopy providerName];

      if (!providerName || !startDate || !endDate || reservationIdError || startAddressError || startPlaceError || endPlaceError || endAddressError)
      {
        v109 = [self tupleWithError:reservationIdError label:@"reservationId"];
        v138[0] = v109;
        v107 = [self tupleWithError:startAddressError label:@"address"];
        v138[1] = v107;
        v106 = [self tupleWithError:endAddressError label:@"endAddress"];
        v138[2] = v106;
        v105 = [self tupleWithError:startPlaceError label:@"place"];
        v138[3] = v105;
        v104 = [self tupleWithError:endPlaceError label:@"endPlace"];
        v138[4] = v104;
        v78 = [self tupleWithEntity:startDate label:@"startDate"];
        v138[5] = v78;
        v79 = [self tupleWithEntity:endDate label:@"endDate"];
        v138[6] = v79;
        providerName2 = [classificationCopy providerName];
        v81 = [self tupleWithEntity:providerName2 label:@"providerName"];
        v138[7] = v81;
        v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:8];
        v16 = [self nilEntities:v82];

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
        sg_deepCopyWithoutEmptySchemaObjects = 0;
        reservationId = v112;
        reservationIdError = v113;
        goto LABEL_147;
      }
    }

    v147[0] = @"@context";
    v147[1] = @"@type";
    v148[0] = @"http://schema.org";
    v148[1] = @"http://schema.org/RentalCarReservation";
    v20 = reservationId;
    if (!reservationId)
    {
      v20 = &stru_284703F00;
    }

    v148[2] = v20;
    v147[2] = @"reservationId";
    v147[3] = @"reservationStatus";
    v21 = [self schemaStringForReservationStatus:{objc_msgSend(classificationCopy, "isCancelled")}];
    v108 = v21;
    v22 = startDate;
    if (!startDate)
    {
      v22 = &stru_284703F00;
    }

    v148[3] = v21;
    v148[4] = v22;
    v147[4] = @"pickupTime";
    v147[5] = @"pickupLocation";
    v145[0] = @"@type";
    v145[1] = @"address";
    v23 = startAddress;
    if (!startAddress)
    {
      v23 = &stru_284703F00;
    }

    if (startAddressComponents)
    {
      v23 = startAddressComponents;
    }

    v146[0] = @"http://schema.org/Place";
    v146[1] = v23;
    v145[2] = @"name";
    v24 = startPlace;
    if (!startPlace)
    {
      v24 = &stru_284703F00;
    }

    v146[2] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:3];
    v26 = v25;
    v27 = endDate;
    if (!endDate)
    {
      v27 = &stru_284703F00;
    }

    v148[5] = v25;
    v148[6] = v27;
    v147[6] = @"dropoffTime";
    v147[7] = @"dropoffLocation";
    v143[0] = @"@type";
    v143[1] = @"address";
    v28 = endAddress;
    if (!endAddress)
    {
      v28 = &stru_284703F00;
    }

    if (endAddressComponents)
    {
      v28 = endAddressComponents;
    }

    v144[0] = @"http://schema.org/Place";
    v144[1] = v28;
    v143[2] = @"name";
    v29 = endPlace;
    if (!endPlace)
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
    providerName3 = [classificationCopy providerName];
    v142[1] = providerName3;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:2];
    v148[8] = v32;
    v147[9] = @"underName";
    v139[0] = @"@type";
    v139[1] = @"name";
    v33 = guestName;
    if (!guestName)
    {
      v33 = &stru_284703F00;
    }

    v140[0] = @"http://schema.org/Person";
    v140[1] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:v139 count:2];
    v148[9] = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:10];

    reservationId = v112;
    reservationIdError = v113;

    goto LABEL_95;
  }

LABEL_149:
  [v9 setObject:sg_deepCopyWithoutEmptySchemaObjects forKeyedSubscript:@"schema"];
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

+ (void)addSchemaAsEnrichment:(id)enrichment inMessage:(id)message parentEntity:(id)entity eventClassification:(id)classification mlDefaultExtraction:(BOOL)extraction
{
  extractionCopy = extraction;
  v52[1] = *MEMORY[0x277D85DE8];
  enrichmentCopy = enrichment;
  messageCopy = message;
  entityCopy = entity;
  classificationCopy = classification;
  v13 = objc_opt_new();
  v36 = enrichmentCopy;
  v40 = [enrichmentCopy objectForKeyedSubscript:@"mergedSchema"];
  v52[0] = v40;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
  v35 = v13;
  v42 = messageCopy;
  v15 = [v13 enrichmentsFromSchemas:v14 inMessage:messageCopy parentEntity:entityCopy];

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

        from = [v42 from];
        emailAddress = [from emailAddress];
        v23 = emailAddressDomain(emailAddress);

        if (v23)
        {
          v24 = [MEMORY[0x277D01FA0] domain:v23];
          [v17 addTag:v24];
        }

        duplicateKey = [entityCopy duplicateKey];
        bundleId = [duplicateKey bundleId];

        v27 = objc_alloc(MEMORY[0x277D01FC8]);
        v28 = +[SGStructuredEventClassification describeCategory:](SGStructuredEventClassification, "describeCategory:", [classificationCopy category]);
        v50 = v40;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
        v30 = [v27 initWithType:1 categoryDescription:v28 originBundleId:bundleId confidence:v29 schemaOrg:0 participants:0 eventActivities:1.0];

        toJsonString = [v30 toJsonString];
        if (toJsonString)
        {
          v32 = [MEMORY[0x277D01FA0] eventMetadata:toJsonString];
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

        if (extractionCopy)
        {
          [entityCopy addOrReplaceEventEnrichment:v17];
        }

        else
        {
          [entityCopy addEnrichment:v17];
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

+ (id)mergeFallbackSchema:(id)schema parentEntity:(id)entity
{
  v39[2] = *MEMORY[0x277D85DE8];
  schemaCopy = schema;
  entityCopy = entity;
  v38[0] = @"mergedSchema";
  v38[1] = @"diff";
  v39[0] = schemaCopy;
  v39[1] = &stru_284703F00;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  if ([entityCopy hasEventEnrichment])
  {
    v9 = [self eventEnrichmentFromEntity:entityCopy];
    v10 = v9;
    if (v9)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      tags = [v9 tags];
      v12 = [tags countByEnumeratingWithState:&v31 objects:v37 count:16];
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
            objc_enumerationMutation(tags);
          }

          v16 = *(*(&v31 + 1) + 8 * v15);
          if ([v16 isSchemaOrg])
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [tags countByEnumeratingWithState:&v31 objects:v37 count:16];
            if (v13)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        value = [v16 value];

        if (!value)
        {
          goto LABEL_18;
        }

        v18 = MEMORY[0x277CCAAA0];
        v19 = [value dataUsingEncoding:4];
        v30 = 0;
        v20 = [v18 JSONObjectWithData:v19 options:0 error:&v30];
        v21 = v30;

        if (v20 && [v20 count])
        {
          v29 = v21;
          v22 = objc_opt_new();
          v36 = schemaCopy;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
          firstObject = [v20 firstObject];
          v35 = firstObject;
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
          v28 = [v22 mergeSchemas:v23 withExpectedSchemas:v25];

          v8 = v28;
          v21 = v29;
        }
      }

      else
      {
LABEL_11:
        value = tags;
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