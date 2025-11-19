@interface SGSuggestedActionMetrics
+ (id)instance;
+ (void)recordBannerConfirmedWithContact:(id)a3 proposedCNContact:(id)a4 confirmedCNContact:(id)a5 inApp:(SGMBannerDisplayApp_)a6 confirmationUI:(int)a7 pet2Tracker:(id)a8;
+ (void)recordBannerConfirmedWithEvent:(id)a3 proposedEKEvent:(id)a4 confirmedEKEvent:(id)a5 inApp:(SGMBannerDisplayApp_)a6;
+ (void)recordBannerRejectedWithEvent:(id)a3 inApp:(SGMBannerDisplayApp_)a4;
+ (void)recordBannerShownWithContacts:(id)a3 events:(id)a4 inApp:(SGMBannerDisplayApp_)a5;
+ (void)recordContactDetailUsage:(id)a3 withApp:(id)a4;
+ (void)recordConversationTurnWithContact:(id)a3 received:(BOOL)a4 curated:(BOOL)a5 throughApp:(id)a6 withDetailName:(id)a7 withDetailExtraction:(id)a8;
+ (void)recordMaybeContactFrom:(unint64_t)a3 withVersion:(id)a4;
+ (void)recordRejectedContact:(id)a3 inApp:(SGMBannerDisplayApp_)a4 rejectionUI:(int)a5 pet2Tracker:(id)a6;
- (SGSuggestedActionMetrics)init;
@end

@implementation SGSuggestedActionMetrics

- (SGSuggestedActionMetrics)init
{
  v15.receiver = self;
  v15.super_class = SGSuggestedActionMetrics;
  v2 = [(SGSuggestedActionMetrics *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SGSuggestedActionMetrics *)v2 setContactInBanner:v3];

    v4 = objc_opt_new();
    [(SGSuggestedActionMetrics *)v2 setContactConfirmed:v4];

    v5 = objc_opt_new();
    [(SGSuggestedActionMetrics *)v2 setContactRejected:v5];

    v6 = objc_opt_new();
    [(SGSuggestedActionMetrics *)v2 setContactDetailConfirmed:v6];

    v7 = objc_opt_new();
    [(SGSuggestedActionMetrics *)v2 setContactDetailRejected:v7];

    v8 = objc_opt_new();
    [(SGSuggestedActionMetrics *)v2 setEventInBanner:v8];

    v9 = objc_opt_new();
    [(SGSuggestedActionMetrics *)v2 setEventBannerConfirmed:v9];

    v10 = objc_opt_new();
    [(SGSuggestedActionMetrics *)v2 setEventBannerRejected:v10];

    v11 = objc_opt_new();
    [(SGSuggestedActionMetrics *)v2 setMaybeInformationShown:v11];

    v12 = objc_opt_new();
    [(SGSuggestedActionMetrics *)v2 setContactDetailUsed:v12];

    v13 = objc_opt_new();
    [(SGSuggestedActionMetrics *)v2 setContactDetailConversationTurn:v13];
  }

  return v2;
}

+ (void)recordConversationTurnWithContact:(id)a3 received:(BOOL)a4 curated:(BOOL)a5 throughApp:(id)a6 withDetailName:(id)a7 withDetailExtraction:(id)a8
{
  v11 = a5;
  v12 = a4;
  v28 = a3;
  v14 = a8;
  v15 = a7;
  v16 = contactDetailUsedAppFromBundle(a6);
  v17 = [a1 instance];
  v18 = [v17 contactDetailConversationTurn];
  if (v28)
  {
    v26 = mapDetailExtractionType([v14 extractionType]);
    HasSelfIdPhrase = realTimeContactHasSelfIdPhrase(v28);
    [v14 modelVersion];
    v20 = v27 = v14;
    v21 = [v20 unsignedIntegerValue];
    v22 = v11;
    v23 = contactDetailTypeFromDetailName(v15);

    [v18 trackEventWithScalar:1 detailExtraction:v26 selfIdName:HasSelfIdPhrase extractionModelVersion:v21 receivedConverstationTurn:v12 knownSuggestedContactDetail:1 curatedContactDetail:v22 throughApp:v16 contactDetailUsed:v23];
    v14 = v27;
  }

  else
  {
    v24 = v11;
    v25 = contactDetailTypeFromDetailName(v15);

    [v18 trackEventWithScalar:1 detailExtraction:6 selfIdName:0 extractionModelVersion:0 receivedConverstationTurn:v12 knownSuggestedContactDetail:0 curatedContactDetail:v24 throughApp:v16 contactDetailUsed:v25];
  }
}

+ (void)recordContactDetailUsage:(id)a3 withApp:(id)a4
{
  v6 = a4;
  v7 = contactDetailTypeFromDetailName(a3);
  v8 = contactDetailUsedAppFromBundle(v6);

  v9 = [a1 instance];
  v10 = [v9 contactDetailUsed];
  [v10 trackEventWithScalar:1 app:v8 type:v7];

  v16 = objc_opt_new();
  [v16 setApp:v8];
  [v16 setType:v7];
  v11 = [MEMORY[0x1E69C5B48] sharedInstance];
  [v11 trackScalarForMessage:v16];

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [v16 key];
  v14 = [v12 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v13];

  v15 = [v16 dictionaryRepresentation];
  AnalyticsSendEvent();
}

+ (void)recordBannerRejectedWithEvent:(id)a3 inApp:(SGMBannerDisplayApp_)a4
{
  v25 = a3;
  v6 = [v25 event];
  v7 = [v6 isNaturalLanguageEvent];

  if ((v7 & 1) == 0)
  {
    v8 = [a1 instance];
    v9 = [v8 eventBannerRejected];
    v10 = [v25 event];
    v11 = [v10 tags];
    v12 = tagsToEventCategory(v11);
    v13 = [v25 event];
    v14 = [v13 tags];
    [v9 trackEventWithScalar:1 app:a4.var0 category:v12 extracted:tagsToEventExtraction(v14)];

    v15 = objc_opt_new();
    [v15 setApp:a4.var0];
    v16 = [v25 event];
    v17 = [v16 tags];
    [v15 setCategory:tagsToEventCategory(v17)];

    v18 = [v25 event];
    v19 = [v18 tags];
    [v15 setExtracted:tagsToEventExtraction(v19)];

    v20 = [MEMORY[0x1E69C5B48] sharedInstance];
    [v20 trackScalarForMessage:v15];

    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    v22 = [v15 key];
    v23 = [v21 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v22];

    v24 = [v15 dictionaryRepresentation];
    AnalyticsSendEvent();
  }
}

+ (void)recordBannerConfirmedWithEvent:(id)a3 proposedEKEvent:(id)a4 confirmedEKEvent:(id)a5 inApp:(SGMBannerDisplayApp_)a6
{
  v52 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v52 event];
  v13 = [v12 isNaturalLanguageEvent];

  if ((v13 & 1) == 0)
  {
    v14.var0 = 0;
    var0 = a6.var0;
    if (v10)
    {
      v51.var0 = 0;
      v15.var0 = 0;
      if (v11)
      {
        v16 = [v10 title];
        v17 = [v11 title];
        v15.var0 = [SGNLEventSuggestionsMetrics diffEventTitleChangedFrom:v16 to:v17];

        v18 = [v10 startDate];
        v19 = [v10 timeZone];
        v20 = [v11 startDate];
        v21 = [v11 timeZone];
        v51.var0 = [SGNLEventSuggestionsMetrics diffEventStartDateChangedFrom:v18 oldTimeZone:v19 to:v20 newTimeZone:v21];

        [v10 duration];
        v23 = v22;
        [v11 duration];
        v14.var0 = [SGNLEventSuggestionsMetrics diffEventDurationChangedFrom:v23 to:v24];
      }
    }

    else
    {
      v51.var0 = 0;
      v15.var0 = 0;
    }

    v48 = [a1 instance];
    v25 = [v48 eventBannerConfirmed];
    v26 = [v52 event];
    v27 = [v26 tags];
    v49 = v15.var0;
    v47 = tagsToEventCategory(v27);
    v28 = [v52 event];
    [v28 tags];
    v29 = v10;
    v31 = v30 = v11;
    v32 = tagsToEventExtraction(v31);
    v33 = [v52 state];
    if (v33 == 3)
    {
      v34 = 1;
    }

    else
    {
      v34 = 2 * (v33 != 2);
    }

    [v25 trackEventWithScalar:1 app:var0 category:v47 extracted:v32 state:v34 titleAdj:v15.var0 dateAdj:v51.var0 duraAdj:v14.var0];

    v11 = v30;
    v10 = v29;

    v35 = objc_opt_new();
    [v35 setApp:var0];
    v36 = [v52 event];
    v37 = [v36 tags];
    [v35 setCategory:tagsToEventCategory(v37)];

    v38 = [v52 event];
    v39 = [v38 tags];
    [v35 setExtracted:tagsToEventExtraction(v39)];

    v40 = [v52 state];
    if (v40 == 3)
    {
      v41 = 1;
    }

    else
    {
      v41 = 2 * (v40 != 2);
    }

    [v35 setState:v41];
    [v35 setTitleAdj:v49];
    [v35 setDateAdj:v51.var0];
    [v35 setDuraAdj:v14.var0];
    v42 = [MEMORY[0x1E69C5B48] sharedInstance];
    [v42 trackScalarForMessage:v35];

    v43 = objc_alloc(MEMORY[0x1E696AEC0]);
    v44 = [v35 key];
    v45 = [v43 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v44];

    v46 = [v35 dictionaryRepresentation];
    AnalyticsSendEvent();
  }
}

+ (void)recordRejectedContact:(id)a3 inApp:(SGMBannerDisplayApp_)a4 rejectionUI:(int)a5 pet2Tracker:(id)a6
{
  v9 = a6;
  v10 = a3;
  v11 = [v10 extractionInfo];
  v12 = [v11 extractionType];
  if ((v12 - 1) > 2)
  {
    v13 = &SGMBannerExtractionTypeOther;
  }

  else
  {
    v13 = *(&off_1E7EFCCF0 + v12 - 1);
  }

  v14 = *v13;

  HasSelfIdPhrase = realTimeContactHasSelfIdPhrase(v10);
  v16 = [a1 instance];
  v17 = [v16 contactRejected];
  v18 = [v10 extractionInfo];
  v19 = [v18 modelVersion];
  [v17 trackEventWithScalar:1 app:a4.var0 extracted:v14 selfId:HasSelfIdPhrase extractionModelVersion:objc_msgSend(v19 contactDetail:{"unsignedIntegerValue"), detailTypeFromSGContact(v10)}];

  v28 = objc_opt_new();
  [v28 setApp:a4.var0];
  [v28 setExtracted:v14];
  [v28 setSelfId:HasSelfIdPhrase != 0];
  v20 = [v10 extractionInfo];
  v21 = [v20 modelVersion];
  [v28 setExtractionModelVersion:{objc_msgSend(v21, "unsignedIntValue")}];

  v22 = detailTypeFromSGContact(v10);
  [v28 setType:v22];
  [v28 setUiType:a5];
  [v9 trackScalarForMessage:v28];

  v23 = objc_alloc(MEMORY[0x1E696AEC0]);
  v24 = [v28 key];
  v25 = [v23 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v24];

  v26 = [v28 dictionaryRepresentation];
  AnalyticsSendEvent();
}

+ (void)recordBannerConfirmedWithContact:(id)a3 proposedCNContact:(id)a4 confirmedCNContact:(id)a5 inApp:(SGMBannerDisplayApp_)a6 confirmationUI:(int)a7 pet2Tracker:(id)a8
{
  v12 = a3;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __131__SGSuggestedActionMetrics_recordBannerConfirmedWithContact_proposedCNContact_confirmedCNContact_inApp_confirmationUI_pet2Tracker___block_invoke_2;
  v53[3] = &unk_1E7EFCC98;
  v54 = &__block_literal_global_121;
  v48 = a8;
  v13 = a5;
  v14 = a4;
  v15 = MEMORY[0x1BFAF7240](v53);
  HasSelfIdPhrase = realTimeContactHasSelfIdPhrase(v12);
  v16 = [v12 extractionInfo];
  v17 = [v16 extractionType];
  if ((v17 - 1) > 2)
  {
    v18 = &SGMBannerExtractionTypeOther;
  }

  else
  {
    v18 = *(&off_1E7EFCCF0 + v17 - 1);
  }

  v51 = *v18;

  v50 = [v12 state] == 2;
  v46 = [a1 instance];
  v42 = [v46 contactConfirmed];
  v45 = [v14 givenName];
  v43 = [v13 givenName];
  v19 = (v15 + 16);
  v39 = (*(v15 + 16))(v15, v45, v43);
  v41 = [v14 familyName];
  v40 = [v13 familyName];
  v44 = v15;
  v38 = (*(v15 + 16))(v15, v41, v40);
  v20 = [v14 middleName];
  v21 = [v13 middleName];
  v22 = (*v19)(v44, v20, v21);
  v23 = [v12 extractionInfo];
  v24 = [v23 modelVersion];
  [v42 trackEventWithScalar:1 app:a6.var0 firstNameAdj:v39 lastNameAdj:v38 middleNameAdj:v22 isUpdate:v50 extracted:v51 extractionModelVersion:objc_msgSend(v24 selfId:"unsignedIntegerValue") contactDetail:{HasSelfIdPhrase, detailTypeFromSGContact(v12)}];

  v25 = objc_opt_new();
  [v25 setApp:a6.var0];
  v26 = [v14 givenName];
  v27 = [v13 givenName];
  [v25 setFirstNameAdj:{(*v19)(v44, v26, v27) != 0}];

  v28 = [v14 familyName];
  v29 = [v13 familyName];
  [v25 setLastNameAdj:{(*v19)(v44, v28, v29) != 0}];

  v30 = [v14 middleName];

  v31 = [v13 middleName];

  [v25 setMiddleNameAdj:{(*v19)(v44, v30, v31) != 0}];
  [v25 setIsUpdate:v50];
  [v25 setExtracted:v51];
  v32 = [v12 extractionInfo];
  v33 = [v32 modelVersion];
  [v25 setExtractionModelVersion:{objc_msgSend(v33, "unsignedIntValue")}];

  [v25 setSelfId:HasSelfIdPhrase != 0];
  [v25 setType:detailTypeFromSGContact(v12)];
  [v25 setUiType:a7];
  [v48 trackScalarForMessage:v25];

  v34 = objc_alloc(MEMORY[0x1E696AEC0]);
  v35 = [v25 key];
  v36 = [v34 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v35];

  v37 = [v25 dictionaryRepresentation];
  AnalyticsSendEvent();
}

uint64_t __131__SGSuggestedActionMetrics_recordBannerConfirmedWithContact_proposedCNContact_confirmedCNContact_inApp_confirmationUI_pet2Tracker___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 | a3)
  {
    return [a2 isEqualToString:?];
  }

  else
  {
    return 1;
  }
}

+ (void)recordBannerShownWithContacts:(id)a3 events:(id)a4 inApp:(SGMBannerDisplayApp_)a5
{
  v73 = *MEMORY[0x1E69E9840];
  obj = a3;
  v55 = a4;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v59 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v59)
  {
    v57 = *v68;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v68 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v67 + 1) + 8 * i);
        v8 = [v7 extractionInfo];
        v9 = [v8 extractionType];
        v10 = &SGMBannerExtractionTypeOther;
        if ((v9 - 1) <= 2)
        {
          v10 = *(&off_1E7EFCCF0 + v9 - 1);
        }

        v11 = *v10;

        HasSelfIdPhrase = realTimeContactHasSelfIdPhrase(v7);
        v13 = [a1 instance];
        v14 = [v13 contactInBanner];
        v15 = [v7 extractionInfo];
        v16 = [v15 modelVersion];
        [v14 trackEventWithScalar:1 app:a5.var0 extracted:v11 selfId:HasSelfIdPhrase extractionModelVersion:objc_msgSend(v16 contactDetail:{"unsignedIntegerValue"), detailTypeFromSGContact(v7)}];

        v17 = objc_opt_new();
        [v17 setApp:a5.var0];
        [v17 setExtracted:v11];
        [v17 setSelfId:HasSelfIdPhrase != 0];
        [v17 setType:v11];
        v18 = [v7 extractionInfo];
        v19 = [v18 modelVersion];
        [v17 setExtractionModelVersion:{objc_msgSend(v19, "unsignedIntValue")}];

        v20 = [MEMORY[0x1E69C5B48] sharedInstance];
        [v20 trackScalarForMessage:v17];

        v21 = objc_alloc(MEMORY[0x1E696AEC0]);
        v22 = [v17 key];
        v23 = [v21 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v22];

        v24 = [v17 dictionaryRepresentation];
        AnalyticsSendEvent();
      }

      v59 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v59);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v53 = v55;
  v25 = [v53 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v64;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v64 != v27)
        {
          objc_enumerationMutation(v53);
        }

        v29 = *(*(&v63 + 1) + 8 * j);
        v30 = [v29 event];
        v31 = [v30 isNaturalLanguageEvent];

        if ((v31 & 1) == 0)
        {
          v60 = [a1 instance];
          v32 = [v60 eventInBanner];
          v58 = [v29 event];
          v33 = [v58 tags];
          v56 = tagsToEventCategory(v33);
          v34 = [v29 event];
          [v34 tags];
          v36 = v35 = v27;
          v37 = tagsToEventExtraction(v36);
          v38 = [v29 state];
          if (v38 == 3)
          {
            v39 = 1;
          }

          else
          {
            v39 = 2 * (v38 != 2);
          }

          [v32 trackEventWithScalar:1 app:a5.var0 category:v56 extracted:v37 state:v39];

          v27 = v35;
          v40 = objc_opt_new();
          [v40 setApp:a5.var0];
          v41 = [v29 event];
          v42 = [v41 tags];
          [v40 setCategory:tagsToEventCategory(v42)];

          v43 = [v29 event];
          v44 = [v43 tags];
          [v40 setExtracted:tagsToEventExtraction(v44)];

          v45 = [v29 state];
          if (v45 == 3)
          {
            v46 = 1;
          }

          else
          {
            v46 = 2 * (v45 != 2);
          }

          [v40 setState:v46];
          v47 = [MEMORY[0x1E69C5B48] sharedInstance];
          [v47 trackScalarForMessage:v40];

          v48 = objc_alloc(MEMORY[0x1E696AEC0]);
          v49 = [v40 key];
          v50 = [v48 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v49];

          v51 = [v40 dictionaryRepresentation];
          AnalyticsSendEvent();
        }
      }

      v26 = [v53 countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v26);
  }

  v52 = *MEMORY[0x1E69E9840];
}

+ (void)recordMaybeContactFrom:(unint64_t)a3 withVersion:(id)a4
{
  v18 = a4;
  v6 = [a1 instance];
  v7 = [v6 maybeInformationShown];
  v8 = a3 - 1;
  if (a3 - 1 > 2)
  {
    v9 = &SGMBannerExtractionTypeOther;
  }

  else
  {
    v9 = *(&off_1E7EFCCF0 + v8);
  }

  [v7 trackEventWithScalar:1 extracted:*v9 extractionModelVersion:{objc_msgSend(v18, "unsignedIntegerValue")}];

  v10 = objc_opt_new();
  v11 = v10;
  if (v8 > 2)
  {
    v12 = &SGMBannerExtractionTypeOther;
  }

  else
  {
    v12 = *(&off_1E7EFCCF0 + v8);
  }

  [v10 setExtracted:*v12];
  [v11 setExtractionModelVersion:{objc_msgSend(v18, "unsignedIntValue")}];
  v13 = [MEMORY[0x1E69C5B48] sharedInstance];
  [v13 trackScalarForMessage:v11];

  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [v11 key];
  v16 = [v14 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v15];

  v17 = [v11 dictionaryRepresentation];
  AnalyticsSendEvent();
}

+ (id)instance
{
  if (instance_onceToken_100 != -1)
  {
    dispatch_once(&instance_onceToken_100, &__block_literal_global_102);
  }

  v3 = instance__instance_99;

  return v3;
}

uint64_t __36__SGSuggestedActionMetrics_instance__block_invoke()
{
  instance__instance_99 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end