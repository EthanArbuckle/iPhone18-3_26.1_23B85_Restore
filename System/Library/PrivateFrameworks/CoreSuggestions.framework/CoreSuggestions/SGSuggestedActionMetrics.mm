@interface SGSuggestedActionMetrics
+ (id)instance;
+ (void)recordBannerConfirmedWithContact:(id)contact proposedCNContact:(id)nContact confirmedCNContact:(id)cNContact inApp:(SGMBannerDisplayApp_)app confirmationUI:(int)i pet2Tracker:(id)tracker;
+ (void)recordBannerConfirmedWithEvent:(id)event proposedEKEvent:(id)kEvent confirmedEKEvent:(id)eKEvent inApp:(SGMBannerDisplayApp_)app;
+ (void)recordBannerRejectedWithEvent:(id)event inApp:(SGMBannerDisplayApp_)app;
+ (void)recordBannerShownWithContacts:(id)contacts events:(id)events inApp:(SGMBannerDisplayApp_)app;
+ (void)recordContactDetailUsage:(id)usage withApp:(id)app;
+ (void)recordConversationTurnWithContact:(id)contact received:(BOOL)received curated:(BOOL)curated throughApp:(id)app withDetailName:(id)name withDetailExtraction:(id)extraction;
+ (void)recordMaybeContactFrom:(unint64_t)from withVersion:(id)version;
+ (void)recordRejectedContact:(id)contact inApp:(SGMBannerDisplayApp_)app rejectionUI:(int)i pet2Tracker:(id)tracker;
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

+ (void)recordConversationTurnWithContact:(id)contact received:(BOOL)received curated:(BOOL)curated throughApp:(id)app withDetailName:(id)name withDetailExtraction:(id)extraction
{
  curatedCopy = curated;
  receivedCopy = received;
  contactCopy = contact;
  extractionCopy = extraction;
  nameCopy = name;
  v16 = contactDetailUsedAppFromBundle(app);
  instance = [self instance];
  contactDetailConversationTurn = [instance contactDetailConversationTurn];
  if (contactCopy)
  {
    v26 = mapDetailExtractionType([extractionCopy extractionType]);
    HasSelfIdPhrase = realTimeContactHasSelfIdPhrase(contactCopy);
    [extractionCopy modelVersion];
    v20 = v27 = extractionCopy;
    unsignedIntegerValue = [v20 unsignedIntegerValue];
    v22 = curatedCopy;
    v23 = contactDetailTypeFromDetailName(nameCopy);

    [contactDetailConversationTurn trackEventWithScalar:1 detailExtraction:v26 selfIdName:HasSelfIdPhrase extractionModelVersion:unsignedIntegerValue receivedConverstationTurn:receivedCopy knownSuggestedContactDetail:1 curatedContactDetail:v22 throughApp:v16 contactDetailUsed:v23];
    extractionCopy = v27;
  }

  else
  {
    v24 = curatedCopy;
    v25 = contactDetailTypeFromDetailName(nameCopy);

    [contactDetailConversationTurn trackEventWithScalar:1 detailExtraction:6 selfIdName:0 extractionModelVersion:0 receivedConverstationTurn:receivedCopy knownSuggestedContactDetail:0 curatedContactDetail:v24 throughApp:v16 contactDetailUsed:v25];
  }
}

+ (void)recordContactDetailUsage:(id)usage withApp:(id)app
{
  appCopy = app;
  v7 = contactDetailTypeFromDetailName(usage);
  v8 = contactDetailUsedAppFromBundle(appCopy);

  instance = [self instance];
  contactDetailUsed = [instance contactDetailUsed];
  [contactDetailUsed trackEventWithScalar:1 app:v8 type:v7];

  v16 = objc_opt_new();
  [v16 setApp:v8];
  [v16 setType:v7];
  mEMORY[0x1E69C5B48] = [MEMORY[0x1E69C5B48] sharedInstance];
  [mEMORY[0x1E69C5B48] trackScalarForMessage:v16];

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [v16 key];
  v14 = [v12 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v13];

  dictionaryRepresentation = [v16 dictionaryRepresentation];
  AnalyticsSendEvent();
}

+ (void)recordBannerRejectedWithEvent:(id)event inApp:(SGMBannerDisplayApp_)app
{
  eventCopy = event;
  event = [eventCopy event];
  isNaturalLanguageEvent = [event isNaturalLanguageEvent];

  if ((isNaturalLanguageEvent & 1) == 0)
  {
    instance = [self instance];
    eventBannerRejected = [instance eventBannerRejected];
    event2 = [eventCopy event];
    tags = [event2 tags];
    v12 = tagsToEventCategory(tags);
    event3 = [eventCopy event];
    tags2 = [event3 tags];
    [eventBannerRejected trackEventWithScalar:1 app:app.var0 category:v12 extracted:tagsToEventExtraction(tags2)];

    v15 = objc_opt_new();
    [v15 setApp:app.var0];
    event4 = [eventCopy event];
    tags3 = [event4 tags];
    [v15 setCategory:tagsToEventCategory(tags3)];

    event5 = [eventCopy event];
    tags4 = [event5 tags];
    [v15 setExtracted:tagsToEventExtraction(tags4)];

    mEMORY[0x1E69C5B48] = [MEMORY[0x1E69C5B48] sharedInstance];
    [mEMORY[0x1E69C5B48] trackScalarForMessage:v15];

    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    v22 = [v15 key];
    v23 = [v21 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v22];

    dictionaryRepresentation = [v15 dictionaryRepresentation];
    AnalyticsSendEvent();
  }
}

+ (void)recordBannerConfirmedWithEvent:(id)event proposedEKEvent:(id)kEvent confirmedEKEvent:(id)eKEvent inApp:(SGMBannerDisplayApp_)app
{
  eventCopy = event;
  kEventCopy = kEvent;
  eKEventCopy = eKEvent;
  event = [eventCopy event];
  isNaturalLanguageEvent = [event isNaturalLanguageEvent];

  if ((isNaturalLanguageEvent & 1) == 0)
  {
    v14.var0 = 0;
    var0 = app.var0;
    if (kEventCopy)
    {
      v51.var0 = 0;
      v15.var0 = 0;
      if (eKEventCopy)
      {
        title = [kEventCopy title];
        title2 = [eKEventCopy title];
        v15.var0 = [SGNLEventSuggestionsMetrics diffEventTitleChangedFrom:title to:title2];

        startDate = [kEventCopy startDate];
        timeZone = [kEventCopy timeZone];
        startDate2 = [eKEventCopy startDate];
        timeZone2 = [eKEventCopy timeZone];
        v51.var0 = [SGNLEventSuggestionsMetrics diffEventStartDateChangedFrom:startDate oldTimeZone:timeZone to:startDate2 newTimeZone:timeZone2];

        [kEventCopy duration];
        v23 = v22;
        [eKEventCopy duration];
        v14.var0 = [SGNLEventSuggestionsMetrics diffEventDurationChangedFrom:v23 to:v24];
      }
    }

    else
    {
      v51.var0 = 0;
      v15.var0 = 0;
    }

    instance = [self instance];
    eventBannerConfirmed = [instance eventBannerConfirmed];
    event2 = [eventCopy event];
    tags = [event2 tags];
    v49 = v15.var0;
    v47 = tagsToEventCategory(tags);
    event3 = [eventCopy event];
    [event3 tags];
    v29 = kEventCopy;
    v31 = v30 = eKEventCopy;
    v32 = tagsToEventExtraction(v31);
    state = [eventCopy state];
    if (state == 3)
    {
      v34 = 1;
    }

    else
    {
      v34 = 2 * (state != 2);
    }

    [eventBannerConfirmed trackEventWithScalar:1 app:var0 category:v47 extracted:v32 state:v34 titleAdj:v15.var0 dateAdj:v51.var0 duraAdj:v14.var0];

    eKEventCopy = v30;
    kEventCopy = v29;

    v35 = objc_opt_new();
    [v35 setApp:var0];
    event4 = [eventCopy event];
    tags2 = [event4 tags];
    [v35 setCategory:tagsToEventCategory(tags2)];

    event5 = [eventCopy event];
    tags3 = [event5 tags];
    [v35 setExtracted:tagsToEventExtraction(tags3)];

    state2 = [eventCopy state];
    if (state2 == 3)
    {
      v41 = 1;
    }

    else
    {
      v41 = 2 * (state2 != 2);
    }

    [v35 setState:v41];
    [v35 setTitleAdj:v49];
    [v35 setDateAdj:v51.var0];
    [v35 setDuraAdj:v14.var0];
    mEMORY[0x1E69C5B48] = [MEMORY[0x1E69C5B48] sharedInstance];
    [mEMORY[0x1E69C5B48] trackScalarForMessage:v35];

    v43 = objc_alloc(MEMORY[0x1E696AEC0]);
    v44 = [v35 key];
    v45 = [v43 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v44];

    dictionaryRepresentation = [v35 dictionaryRepresentation];
    AnalyticsSendEvent();
  }
}

+ (void)recordRejectedContact:(id)contact inApp:(SGMBannerDisplayApp_)app rejectionUI:(int)i pet2Tracker:(id)tracker
{
  trackerCopy = tracker;
  contactCopy = contact;
  extractionInfo = [contactCopy extractionInfo];
  extractionType = [extractionInfo extractionType];
  if ((extractionType - 1) > 2)
  {
    v13 = &SGMBannerExtractionTypeOther;
  }

  else
  {
    v13 = *(&off_1E7EFCCF0 + extractionType - 1);
  }

  v14 = *v13;

  HasSelfIdPhrase = realTimeContactHasSelfIdPhrase(contactCopy);
  instance = [self instance];
  contactRejected = [instance contactRejected];
  extractionInfo2 = [contactCopy extractionInfo];
  modelVersion = [extractionInfo2 modelVersion];
  [contactRejected trackEventWithScalar:1 app:app.var0 extracted:v14 selfId:HasSelfIdPhrase extractionModelVersion:objc_msgSend(modelVersion contactDetail:{"unsignedIntegerValue"), detailTypeFromSGContact(contactCopy)}];

  v28 = objc_opt_new();
  [v28 setApp:app.var0];
  [v28 setExtracted:v14];
  [v28 setSelfId:HasSelfIdPhrase != 0];
  extractionInfo3 = [contactCopy extractionInfo];
  modelVersion2 = [extractionInfo3 modelVersion];
  [v28 setExtractionModelVersion:{objc_msgSend(modelVersion2, "unsignedIntValue")}];

  v22 = detailTypeFromSGContact(contactCopy);
  [v28 setType:v22];
  [v28 setUiType:i];
  [trackerCopy trackScalarForMessage:v28];

  v23 = objc_alloc(MEMORY[0x1E696AEC0]);
  v24 = [v28 key];
  v25 = [v23 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v24];

  dictionaryRepresentation = [v28 dictionaryRepresentation];
  AnalyticsSendEvent();
}

+ (void)recordBannerConfirmedWithContact:(id)contact proposedCNContact:(id)nContact confirmedCNContact:(id)cNContact inApp:(SGMBannerDisplayApp_)app confirmationUI:(int)i pet2Tracker:(id)tracker
{
  contactCopy = contact;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __131__SGSuggestedActionMetrics_recordBannerConfirmedWithContact_proposedCNContact_confirmedCNContact_inApp_confirmationUI_pet2Tracker___block_invoke_2;
  v53[3] = &unk_1E7EFCC98;
  v54 = &__block_literal_global_121;
  trackerCopy = tracker;
  cNContactCopy = cNContact;
  nContactCopy = nContact;
  v15 = MEMORY[0x1BFAF7240](v53);
  HasSelfIdPhrase = realTimeContactHasSelfIdPhrase(contactCopy);
  extractionInfo = [contactCopy extractionInfo];
  extractionType = [extractionInfo extractionType];
  if ((extractionType - 1) > 2)
  {
    v18 = &SGMBannerExtractionTypeOther;
  }

  else
  {
    v18 = *(&off_1E7EFCCF0 + extractionType - 1);
  }

  v51 = *v18;

  v50 = [contactCopy state] == 2;
  instance = [self instance];
  contactConfirmed = [instance contactConfirmed];
  givenName = [nContactCopy givenName];
  givenName2 = [cNContactCopy givenName];
  v19 = (v15 + 16);
  v39 = (*(v15 + 16))(v15, givenName, givenName2);
  familyName = [nContactCopy familyName];
  familyName2 = [cNContactCopy familyName];
  v44 = v15;
  v38 = (*(v15 + 16))(v15, familyName, familyName2);
  middleName = [nContactCopy middleName];
  middleName2 = [cNContactCopy middleName];
  v22 = (*v19)(v44, middleName, middleName2);
  extractionInfo2 = [contactCopy extractionInfo];
  modelVersion = [extractionInfo2 modelVersion];
  [contactConfirmed trackEventWithScalar:1 app:app.var0 firstNameAdj:v39 lastNameAdj:v38 middleNameAdj:v22 isUpdate:v50 extracted:v51 extractionModelVersion:objc_msgSend(modelVersion selfId:"unsignedIntegerValue") contactDetail:{HasSelfIdPhrase, detailTypeFromSGContact(contactCopy)}];

  v25 = objc_opt_new();
  [v25 setApp:app.var0];
  givenName3 = [nContactCopy givenName];
  givenName4 = [cNContactCopy givenName];
  [v25 setFirstNameAdj:{(*v19)(v44, givenName3, givenName4) != 0}];

  familyName3 = [nContactCopy familyName];
  familyName4 = [cNContactCopy familyName];
  [v25 setLastNameAdj:{(*v19)(v44, familyName3, familyName4) != 0}];

  middleName3 = [nContactCopy middleName];

  middleName4 = [cNContactCopy middleName];

  [v25 setMiddleNameAdj:{(*v19)(v44, middleName3, middleName4) != 0}];
  [v25 setIsUpdate:v50];
  [v25 setExtracted:v51];
  extractionInfo3 = [contactCopy extractionInfo];
  modelVersion2 = [extractionInfo3 modelVersion];
  [v25 setExtractionModelVersion:{objc_msgSend(modelVersion2, "unsignedIntValue")}];

  [v25 setSelfId:HasSelfIdPhrase != 0];
  [v25 setType:detailTypeFromSGContact(contactCopy)];
  [v25 setUiType:i];
  [trackerCopy trackScalarForMessage:v25];

  v34 = objc_alloc(MEMORY[0x1E696AEC0]);
  v35 = [v25 key];
  v36 = [v34 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v35];

  dictionaryRepresentation = [v25 dictionaryRepresentation];
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

+ (void)recordBannerShownWithContacts:(id)contacts events:(id)events inApp:(SGMBannerDisplayApp_)app
{
  v73 = *MEMORY[0x1E69E9840];
  obj = contacts;
  eventsCopy = events;
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
        extractionInfo = [v7 extractionInfo];
        extractionType = [extractionInfo extractionType];
        v10 = &SGMBannerExtractionTypeOther;
        if ((extractionType - 1) <= 2)
        {
          v10 = *(&off_1E7EFCCF0 + extractionType - 1);
        }

        v11 = *v10;

        HasSelfIdPhrase = realTimeContactHasSelfIdPhrase(v7);
        instance = [self instance];
        contactInBanner = [instance contactInBanner];
        extractionInfo2 = [v7 extractionInfo];
        modelVersion = [extractionInfo2 modelVersion];
        [contactInBanner trackEventWithScalar:1 app:app.var0 extracted:v11 selfId:HasSelfIdPhrase extractionModelVersion:objc_msgSend(modelVersion contactDetail:{"unsignedIntegerValue"), detailTypeFromSGContact(v7)}];

        v17 = objc_opt_new();
        [v17 setApp:app.var0];
        [v17 setExtracted:v11];
        [v17 setSelfId:HasSelfIdPhrase != 0];
        [v17 setType:v11];
        extractionInfo3 = [v7 extractionInfo];
        modelVersion2 = [extractionInfo3 modelVersion];
        [v17 setExtractionModelVersion:{objc_msgSend(modelVersion2, "unsignedIntValue")}];

        mEMORY[0x1E69C5B48] = [MEMORY[0x1E69C5B48] sharedInstance];
        [mEMORY[0x1E69C5B48] trackScalarForMessage:v17];

        v21 = objc_alloc(MEMORY[0x1E696AEC0]);
        v22 = [v17 key];
        v23 = [v21 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v22];

        dictionaryRepresentation = [v17 dictionaryRepresentation];
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
  v53 = eventsCopy;
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
        event = [v29 event];
        isNaturalLanguageEvent = [event isNaturalLanguageEvent];

        if ((isNaturalLanguageEvent & 1) == 0)
        {
          instance2 = [self instance];
          eventInBanner = [instance2 eventInBanner];
          event2 = [v29 event];
          tags = [event2 tags];
          v56 = tagsToEventCategory(tags);
          event3 = [v29 event];
          [event3 tags];
          v36 = v35 = v27;
          v37 = tagsToEventExtraction(v36);
          state = [v29 state];
          if (state == 3)
          {
            v39 = 1;
          }

          else
          {
            v39 = 2 * (state != 2);
          }

          [eventInBanner trackEventWithScalar:1 app:app.var0 category:v56 extracted:v37 state:v39];

          v27 = v35;
          v40 = objc_opt_new();
          [v40 setApp:app.var0];
          event4 = [v29 event];
          tags2 = [event4 tags];
          [v40 setCategory:tagsToEventCategory(tags2)];

          event5 = [v29 event];
          tags3 = [event5 tags];
          [v40 setExtracted:tagsToEventExtraction(tags3)];

          state2 = [v29 state];
          if (state2 == 3)
          {
            v46 = 1;
          }

          else
          {
            v46 = 2 * (state2 != 2);
          }

          [v40 setState:v46];
          mEMORY[0x1E69C5B48]2 = [MEMORY[0x1E69C5B48] sharedInstance];
          [mEMORY[0x1E69C5B48]2 trackScalarForMessage:v40];

          v48 = objc_alloc(MEMORY[0x1E696AEC0]);
          v49 = [v40 key];
          v50 = [v48 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v49];

          dictionaryRepresentation2 = [v40 dictionaryRepresentation];
          AnalyticsSendEvent();
        }
      }

      v26 = [v53 countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v26);
  }

  v52 = *MEMORY[0x1E69E9840];
}

+ (void)recordMaybeContactFrom:(unint64_t)from withVersion:(id)version
{
  versionCopy = version;
  instance = [self instance];
  maybeInformationShown = [instance maybeInformationShown];
  v8 = from - 1;
  if (from - 1 > 2)
  {
    v9 = &SGMBannerExtractionTypeOther;
  }

  else
  {
    v9 = *(&off_1E7EFCCF0 + v8);
  }

  [maybeInformationShown trackEventWithScalar:1 extracted:*v9 extractionModelVersion:{objc_msgSend(versionCopy, "unsignedIntegerValue")}];

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
  [v11 setExtractionModelVersion:{objc_msgSend(versionCopy, "unsignedIntValue")}];
  mEMORY[0x1E69C5B48] = [MEMORY[0x1E69C5B48] sharedInstance];
  [mEMORY[0x1E69C5B48] trackScalarForMessage:v11];

  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [v11 key];
  v16 = [v14 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v15];

  dictionaryRepresentation = [v11 dictionaryRepresentation];
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