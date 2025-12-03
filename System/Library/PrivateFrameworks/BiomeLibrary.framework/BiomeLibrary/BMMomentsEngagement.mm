@interface BMMomentsEngagement
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEngagement)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMomentsEngagement)initWithSuggestionEvent:(id)event entryEvent:(id)entryEvent clientActivityEvent:(id)activityEvent onboardingFlowCompletionState:(int)state isJournalAppInstalled:(id)installed isJournalAppLocked:(id)locked isJournalSuggestionSkipped:(id)skipped isActivitySettingsSwitchEnabled:(id)self0 isCommunicationSettingsSwitchEnabled:(id)self1 isSignificantLocationSettingsSwitchEnabled:(id)self2 isMediaSettingsSwitchEnabled:(id)self3 isNearbyPeopleSettingsSwitchEnabled:(id)self4 isPhotoSettingsSwitchEnabled:(id)self5 isStateOfMindSettingsSwitchEnabled:(id)self6 isReflectionSettingsSwitchEnabled:(id)self7 isBroadSystemLocationSettingsSwitchEnabled:(id)self8 deviceType:(int)self9 isDiagnosticSubmissionAllowed:(id)allowed;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEngagement

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    suggestionEvent = [(BMMomentsEngagement *)self suggestionEvent];
    suggestionEvent2 = [v5 suggestionEvent];
    v8 = suggestionEvent2;
    if (suggestionEvent == suggestionEvent2)
    {
    }

    else
    {
      suggestionEvent3 = [(BMMomentsEngagement *)self suggestionEvent];
      suggestionEvent4 = [v5 suggestionEvent];
      v11 = [suggestionEvent3 isEqual:suggestionEvent4];

      if (!v11)
      {
        goto LABEL_82;
      }
    }

    entryEvent = [(BMMomentsEngagement *)self entryEvent];
    entryEvent2 = [v5 entryEvent];
    v15 = entryEvent2;
    if (entryEvent == entryEvent2)
    {
    }

    else
    {
      entryEvent3 = [(BMMomentsEngagement *)self entryEvent];
      entryEvent4 = [v5 entryEvent];
      v18 = [entryEvent3 isEqual:entryEvent4];

      if (!v18)
      {
        goto LABEL_82;
      }
    }

    clientActivityEvent = [(BMMomentsEngagement *)self clientActivityEvent];
    clientActivityEvent2 = [v5 clientActivityEvent];
    v21 = clientActivityEvent2;
    if (clientActivityEvent == clientActivityEvent2)
    {
    }

    else
    {
      clientActivityEvent3 = [(BMMomentsEngagement *)self clientActivityEvent];
      clientActivityEvent4 = [v5 clientActivityEvent];
      v24 = [clientActivityEvent3 isEqual:clientActivityEvent4];

      if (!v24)
      {
        goto LABEL_82;
      }
    }

    onboardingFlowCompletionState = [(BMMomentsEngagement *)self onboardingFlowCompletionState];
    if (onboardingFlowCompletionState == [v5 onboardingFlowCompletionState])
    {
      if (!-[BMMomentsEngagement hasIsJournalAppInstalled](self, "hasIsJournalAppInstalled") && ![v5 hasIsJournalAppInstalled] || -[BMMomentsEngagement hasIsJournalAppInstalled](self, "hasIsJournalAppInstalled") && objc_msgSend(v5, "hasIsJournalAppInstalled") && (v26 = -[BMMomentsEngagement isJournalAppInstalled](self, "isJournalAppInstalled"), v26 == objc_msgSend(v5, "isJournalAppInstalled")))
      {
        if (!-[BMMomentsEngagement hasIsJournalAppLocked](self, "hasIsJournalAppLocked") && ![v5 hasIsJournalAppLocked] || -[BMMomentsEngagement hasIsJournalAppLocked](self, "hasIsJournalAppLocked") && objc_msgSend(v5, "hasIsJournalAppLocked") && (v27 = -[BMMomentsEngagement isJournalAppLocked](self, "isJournalAppLocked"), v27 == objc_msgSend(v5, "isJournalAppLocked")))
        {
          if (!-[BMMomentsEngagement hasIsJournalSuggestionSkipped](self, "hasIsJournalSuggestionSkipped") && ![v5 hasIsJournalSuggestionSkipped] || -[BMMomentsEngagement hasIsJournalSuggestionSkipped](self, "hasIsJournalSuggestionSkipped") && objc_msgSend(v5, "hasIsJournalSuggestionSkipped") && (v28 = -[BMMomentsEngagement isJournalSuggestionSkipped](self, "isJournalSuggestionSkipped"), v28 == objc_msgSend(v5, "isJournalSuggestionSkipped")))
          {
            if (!-[BMMomentsEngagement hasIsActivitySettingsSwitchEnabled](self, "hasIsActivitySettingsSwitchEnabled") && ![v5 hasIsActivitySettingsSwitchEnabled] || -[BMMomentsEngagement hasIsActivitySettingsSwitchEnabled](self, "hasIsActivitySettingsSwitchEnabled") && objc_msgSend(v5, "hasIsActivitySettingsSwitchEnabled") && (v29 = -[BMMomentsEngagement isActivitySettingsSwitchEnabled](self, "isActivitySettingsSwitchEnabled"), v29 == objc_msgSend(v5, "isActivitySettingsSwitchEnabled")))
            {
              if (!-[BMMomentsEngagement hasIsCommunicationSettingsSwitchEnabled](self, "hasIsCommunicationSettingsSwitchEnabled") && ![v5 hasIsCommunicationSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsCommunicationSettingsSwitchEnabled](self, "hasIsCommunicationSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsCommunicationSettingsSwitchEnabled") && (v30 = -[BMMomentsEngagement isCommunicationSettingsSwitchEnabled](self, "isCommunicationSettingsSwitchEnabled"), v30 == objc_msgSend(v5, "isCommunicationSettingsSwitchEnabled")))
              {
                if (!-[BMMomentsEngagement hasIsSignificantLocationSettingsSwitchEnabled](self, "hasIsSignificantLocationSettingsSwitchEnabled") && ![v5 hasIsSignificantLocationSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsSignificantLocationSettingsSwitchEnabled](self, "hasIsSignificantLocationSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsSignificantLocationSettingsSwitchEnabled") && (v31 = -[BMMomentsEngagement isSignificantLocationSettingsSwitchEnabled](self, "isSignificantLocationSettingsSwitchEnabled"), v31 == objc_msgSend(v5, "isSignificantLocationSettingsSwitchEnabled")))
                {
                  if (!-[BMMomentsEngagement hasIsMediaSettingsSwitchEnabled](self, "hasIsMediaSettingsSwitchEnabled") && ![v5 hasIsMediaSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsMediaSettingsSwitchEnabled](self, "hasIsMediaSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsMediaSettingsSwitchEnabled") && (v32 = -[BMMomentsEngagement isMediaSettingsSwitchEnabled](self, "isMediaSettingsSwitchEnabled"), v32 == objc_msgSend(v5, "isMediaSettingsSwitchEnabled")))
                  {
                    if (!-[BMMomentsEngagement hasIsNearbyPeopleSettingsSwitchEnabled](self, "hasIsNearbyPeopleSettingsSwitchEnabled") && ![v5 hasIsNearbyPeopleSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsNearbyPeopleSettingsSwitchEnabled](self, "hasIsNearbyPeopleSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsNearbyPeopleSettingsSwitchEnabled") && (v33 = -[BMMomentsEngagement isNearbyPeopleSettingsSwitchEnabled](self, "isNearbyPeopleSettingsSwitchEnabled"), v33 == objc_msgSend(v5, "isNearbyPeopleSettingsSwitchEnabled")))
                    {
                      if (!-[BMMomentsEngagement hasIsPhotoSettingsSwitchEnabled](self, "hasIsPhotoSettingsSwitchEnabled") && ![v5 hasIsPhotoSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsPhotoSettingsSwitchEnabled](self, "hasIsPhotoSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsPhotoSettingsSwitchEnabled") && (v34 = -[BMMomentsEngagement isPhotoSettingsSwitchEnabled](self, "isPhotoSettingsSwitchEnabled"), v34 == objc_msgSend(v5, "isPhotoSettingsSwitchEnabled")))
                      {
                        if (!-[BMMomentsEngagement hasIsStateOfMindSettingsSwitchEnabled](self, "hasIsStateOfMindSettingsSwitchEnabled") && ![v5 hasIsStateOfMindSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsStateOfMindSettingsSwitchEnabled](self, "hasIsStateOfMindSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsStateOfMindSettingsSwitchEnabled") && (v35 = -[BMMomentsEngagement isStateOfMindSettingsSwitchEnabled](self, "isStateOfMindSettingsSwitchEnabled"), v35 == objc_msgSend(v5, "isStateOfMindSettingsSwitchEnabled")))
                        {
                          if (!-[BMMomentsEngagement hasIsReflectionSettingsSwitchEnabled](self, "hasIsReflectionSettingsSwitchEnabled") && ![v5 hasIsReflectionSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsReflectionSettingsSwitchEnabled](self, "hasIsReflectionSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsReflectionSettingsSwitchEnabled") && (v36 = -[BMMomentsEngagement isReflectionSettingsSwitchEnabled](self, "isReflectionSettingsSwitchEnabled"), v36 == objc_msgSend(v5, "isReflectionSettingsSwitchEnabled")))
                          {
                            if (!-[BMMomentsEngagement hasIsBroadSystemLocationSettingsSwitchEnabled](self, "hasIsBroadSystemLocationSettingsSwitchEnabled") && ![v5 hasIsBroadSystemLocationSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsBroadSystemLocationSettingsSwitchEnabled](self, "hasIsBroadSystemLocationSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsBroadSystemLocationSettingsSwitchEnabled") && (v37 = -[BMMomentsEngagement isBroadSystemLocationSettingsSwitchEnabled](self, "isBroadSystemLocationSettingsSwitchEnabled"), v37 == objc_msgSend(v5, "isBroadSystemLocationSettingsSwitchEnabled")))
                            {
                              deviceType = [(BMMomentsEngagement *)self deviceType];
                              if (deviceType == [v5 deviceType])
                              {
                                if (!-[BMMomentsEngagement hasIsDiagnosticSubmissionAllowed](self, "hasIsDiagnosticSubmissionAllowed") && ![v5 hasIsDiagnosticSubmissionAllowed])
                                {
                                  LOBYTE(v12) = 1;
                                  goto LABEL_83;
                                }

                                if (-[BMMomentsEngagement hasIsDiagnosticSubmissionAllowed](self, "hasIsDiagnosticSubmissionAllowed") && [v5 hasIsDiagnosticSubmissionAllowed])
                                {
                                  isDiagnosticSubmissionAllowed = [(BMMomentsEngagement *)self isDiagnosticSubmissionAllowed];
                                  v12 = isDiagnosticSubmissionAllowed ^ [v5 isDiagnosticSubmissionAllowed] ^ 1;
LABEL_83:

                                  goto LABEL_84;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_82:
    LOBYTE(v12) = 0;
    goto LABEL_83;
  }

  LOBYTE(v12) = 0;
LABEL_84:

  return v12;
}

- (id)jsonDictionary
{
  v65[18] = *MEMORY[0x1E69E9840];
  suggestionEvent = [(BMMomentsEngagement *)self suggestionEvent];
  jsonDictionary = [suggestionEvent jsonDictionary];

  entryEvent = [(BMMomentsEngagement *)self entryEvent];
  jsonDictionary2 = [entryEvent jsonDictionary];

  clientActivityEvent = [(BMMomentsEngagement *)self clientActivityEvent];
  jsonDictionary3 = [clientActivityEvent jsonDictionary];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagement onboardingFlowCompletionState](self, "onboardingFlowCompletionState")}];
  if ([(BMMomentsEngagement *)self hasIsJournalAppInstalled])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isJournalAppInstalled](self, "isJournalAppInstalled")}];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsJournalAppLocked])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isJournalAppLocked](self, "isJournalAppLocked")}];
  }

  else
  {
    v11 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsJournalSuggestionSkipped])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isJournalSuggestionSkipped](self, "isJournalSuggestionSkipped")}];
  }

  else
  {
    v12 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsActivitySettingsSwitchEnabled])
  {
    v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isActivitySettingsSwitchEnabled](self, "isActivitySettingsSwitchEnabled")}];
  }

  else
  {
    v63 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsCommunicationSettingsSwitchEnabled])
  {
    v62 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isCommunicationSettingsSwitchEnabled](self, "isCommunicationSettingsSwitchEnabled")}];
  }

  else
  {
    v62 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsSignificantLocationSettingsSwitchEnabled])
  {
    v61 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isSignificantLocationSettingsSwitchEnabled](self, "isSignificantLocationSettingsSwitchEnabled")}];
  }

  else
  {
    v61 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsMediaSettingsSwitchEnabled])
  {
    v60 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isMediaSettingsSwitchEnabled](self, "isMediaSettingsSwitchEnabled")}];
  }

  else
  {
    v60 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsNearbyPeopleSettingsSwitchEnabled])
  {
    v59 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isNearbyPeopleSettingsSwitchEnabled](self, "isNearbyPeopleSettingsSwitchEnabled")}];
  }

  else
  {
    v59 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsPhotoSettingsSwitchEnabled])
  {
    v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isPhotoSettingsSwitchEnabled](self, "isPhotoSettingsSwitchEnabled")}];
  }

  else
  {
    v58 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsStateOfMindSettingsSwitchEnabled])
  {
    v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isStateOfMindSettingsSwitchEnabled](self, "isStateOfMindSettingsSwitchEnabled")}];
  }

  else
  {
    v57 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsReflectionSettingsSwitchEnabled])
  {
    v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isReflectionSettingsSwitchEnabled](self, "isReflectionSettingsSwitchEnabled")}];
  }

  else
  {
    v56 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsBroadSystemLocationSettingsSwitchEnabled])
  {
    v55 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isBroadSystemLocationSettingsSwitchEnabled](self, "isBroadSystemLocationSettingsSwitchEnabled")}];
  }

  else
  {
    v55 = 0;
  }

  v54 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagement deviceType](self, "deviceType")}];
  if ([(BMMomentsEngagement *)self hasIsDiagnosticSubmissionAllowed])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isDiagnosticSubmissionAllowed](self, "isDiagnosticSubmissionAllowed")}];
  }

  else
  {
    v13 = 0;
  }

  v64[0] = @"suggestionEvent";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v47 = null;
  v65[0] = null;
  v64[1] = @"entryEvent";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = null2;
  v65[1] = null2;
  v64[2] = @"clientActivityEvent";
  null3 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = null3;
  v65[2] = null3;
  v64[3] = @"onboardingFlowCompletionState";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = null4;
  v65[3] = null4;
  v64[4] = @"isJournalAppInstalled";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null5;
  v65[4] = null5;
  v64[5] = @"isJournalAppLocked";
  null6 = v11;
  if (!v11)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null6;
  v65[5] = null6;
  v64[6] = @"isJournalSuggestionSkipped";
  null7 = v12;
  if (!v12)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null7;
  v65[6] = null7;
  v64[7] = @"isActivitySettingsSwitchEnabled";
  null8 = v63;
  if (!v63)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v65[7] = null8;
  v64[8] = @"isCommunicationSettingsSwitchEnabled";
  null9 = v62;
  if (!v62)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = jsonDictionary;
  v65[8] = null9;
  v64[9] = @"isSignificantLocationSettingsSwitchEnabled";
  null10 = v61;
  if (!v61)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = jsonDictionary2;
  v65[9] = null10;
  v64[10] = @"isMediaSettingsSwitchEnabled";
  null11 = v60;
  if (!v60)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null8;
  v36 = null11;
  v65[10] = null11;
  v64[11] = @"isNearbyPeopleSettingsSwitchEnabled";
  null12 = v59;
  if (!v59)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = v12;
  v51 = v11;
  v65[11] = null12;
  v64[12] = @"isPhotoSettingsSwitchEnabled";
  null13 = v58;
  if (!v58)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null9;
  v49 = jsonDictionary3;
  v65[12] = null13;
  v64[13] = @"isStateOfMindSettingsSwitchEnabled";
  null14 = v57;
  if (!v57)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null10;
  v28 = v9;
  v65[13] = null14;
  v64[14] = @"isReflectionSettingsSwitchEnabled";
  null15 = v56;
  if (!v56)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v10;
  v65[14] = null15;
  v64[15] = @"isBroadSystemLocationSettingsSwitchEnabled";
  null16 = v55;
  if (!v55)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v65[15] = null16;
  v64[16] = @"deviceType";
  null17 = v54;
  if (!v54)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v65[16] = null17;
  v64[17] = @"isDiagnosticSubmissionAllowed";
  null18 = v13;
  if (!v13)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v65[17] = null18;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:{18, v36}];
  if (!v13)
  {
  }

  if (!v54)
  {
  }

  if (!v55)
  {
  }

  if (!v56)
  {
  }

  if (!v57)
  {
  }

  if (!v58)
  {
  }

  if (!v59)
  {
  }

  if (!v60)
  {
  }

  if (!v61)
  {
  }

  if (!v62)
  {
  }

  if (v63)
  {
    if (v50)
    {
      goto LABEL_98;
    }
  }

  else
  {

    if (v50)
    {
LABEL_98:
      if (v51)
      {
        goto LABEL_99;
      }

      goto LABEL_109;
    }
  }

  if (v51)
  {
LABEL_99:
    if (v30)
    {
      goto LABEL_100;
    }

    goto LABEL_110;
  }

LABEL_109:

  if (v30)
  {
LABEL_100:
    if (v28)
    {
      goto LABEL_101;
    }

    goto LABEL_111;
  }

LABEL_110:

  if (v28)
  {
LABEL_101:
    if (v49)
    {
      goto LABEL_102;
    }

    goto LABEL_112;
  }

LABEL_111:

  if (v49)
  {
LABEL_102:
    if (v52)
    {
      goto LABEL_103;
    }

LABEL_113:

    if (v53)
    {
      goto LABEL_104;
    }

    goto LABEL_114;
  }

LABEL_112:

  if (!v52)
  {
    goto LABEL_113;
  }

LABEL_103:
  if (v53)
  {
    goto LABEL_104;
  }

LABEL_114:

LABEL_104:
  v34 = *MEMORY[0x1E69E9840];

  return v48;
}

- (BMMomentsEngagement)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v249[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionEvent"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v213 = 0;
    v7 = [[BMMomentsEngagementSuggestionEvent alloc] initWithJSONDictionary:v8 error:&v213];
    v12 = v213;
    if (v12)
    {
      if (error)
      {
        v12 = v12;
        *error = v12;
      }

LABEL_46:
      v25 = 0;
      goto LABEL_149;
    }

LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"entryEvent"];
    if (!v8)
    {
      v9 = v7;
      v10 = v6;
      v11 = 0;
LABEL_13:
      v13 = [dictionaryCopy objectForKeyedSubscript:@"clientActivityEvent"];
      if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v208 = 0;
        goto LABEL_16;
      }

      v192 = v10;
      v177 = v11;
      v27 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v13;
        v211 = 0;
        v208 = [[BMMomentsEngagementClientActivityEvent alloc] initWithJSONDictionary:v28 error:&v211];
        v29 = v211;
        if (v29)
        {
          errorCopy = error;
          error = v28;
          if (errorCopy)
          {
            v29 = v29;
            *errorCopy = v29;
          }

          v25 = 0;
          v7 = v9;
          v6 = v192;
          v31 = v208;
          v26 = v8;
          v8 = v177;
          goto LABEL_147;
        }

        v11 = v177;
LABEL_16:
        v14 = [dictionaryCopy objectForKeyedSubscript:@"onboardingFlowCompletionState"];
        v201 = v13;
        v203 = v14;
        errorCopy2 = error;
        if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v202 = v15;
          }

          else
          {
            v193 = v10;
            v179 = v11;
            v7 = v9;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v25 = 0;
                v23 = v8;
                v8 = v11;
                v6 = v193;
                v31 = v208;
                goto LABEL_146;
              }

              v78 = objc_alloc(MEMORY[0x1E696ABC0]);
              v79 = *MEMORY[0x1E698F240];
              v242 = *MEMORY[0x1E696A578];
              v205 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"onboardingFlowCompletionState"];
              v243 = v205;
              v204 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v243 forKeys:&v242 count:1];
              error = 0;
              v25 = 0;
              *errorCopy2 = [v78 initWithDomain:v79 code:2 userInfo:?];
              v23 = v8;
              v8 = v179;
              v6 = v193;
              v31 = v208;
              goto LABEL_145;
            }

            v202 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataOnboardingFlowCompletionFromString(v15)];
            v10 = v193;
          }
        }

        else
        {
          v202 = 0;
        }

        v16 = [dictionaryCopy objectForKeyedSubscript:@"isJournalAppInstalled"];
        v204 = v16;
        if (!v16 || (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v205 = 0;
LABEL_22:
          v18 = [dictionaryCopy objectForKeyedSubscript:@"isJournalAppLocked"];
          v197 = v18;
          if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v68 = v13;
              v69 = v9;
              if (!errorCopy2)
              {
                v199 = 0;
                v25 = 0;
                v31 = v208;
                v23 = v8;
                v8 = v11;
                v6 = v10;
                v7 = v69;
                v13 = v68;
                goto LABEL_143;
              }

              v200 = objc_alloc(MEMORY[0x1E696ABC0]);
              v189 = *MEMORY[0x1E698F240];
              v238 = *MEMORY[0x1E696A578];
              v194 = v10;
              v7 = v9;
              v70 = objc_alloc(MEMORY[0x1E696AEC0]);
              v138 = objc_opt_class();
              v71 = v70;
              v23 = v8;
              v8 = v11;
              v6 = v194;
              v13 = v201;
              v72 = [v71 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v138, @"isJournalAppLocked"];
              v239 = v72;
              v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v239 forKeys:&v238 count:1];
              v73 = [v200 initWithDomain:v189 code:2 userInfo:v22];
              v199 = 0;
              v25 = 0;
              v31 = v208;
              *errorCopy2 = v73;
LABEL_142:

LABEL_143:
              error = v202;
              goto LABEL_144;
            }

            v199 = v19;
          }

          else
          {
            v199 = 0;
          }

          v20 = v9;
          v21 = [dictionaryCopy objectForKeyedSubscript:@"isJournalSuggestionSkipped"];
          v187 = v21;
          v191 = v8;
          if (v21)
          {
            v22 = v21;
            v23 = v8;
            objc_opt_class();
            v8 = v11;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              v6 = v10;
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v72 = errorCopy2;
                v7 = v20;
                if (!errorCopy2)
                {
                  v25 = 0;
                  v31 = v208;
                  goto LABEL_142;
                }

                v195 = objc_alloc(MEMORY[0x1E696ABC0]);
                v190 = *MEMORY[0x1E698F240];
                v236 = *MEMORY[0x1E696A578];
                v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isJournalSuggestionSkipped"];
                v237 = v42;
                v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v237 forKeys:&v236 count:1];
                v74 = [v195 initWithDomain:v190 code:2 userInfo:v41];
                v188 = 0;
                v25 = 0;
                *errorCopy2 = v74;
                goto LABEL_166;
              }

              v188 = v22;
LABEL_49:
              v7 = v20;
              v41 = [dictionaryCopy objectForKeyedSubscript:@"isActivitySettingsSwitchEnabled"];
              if (!v41 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v42 = 0;
LABEL_52:
                v43 = [dictionaryCopy objectForKeyedSubscript:@"isCommunicationSettingsSwitchEnabled"];
                v174 = v43;
                if (v43 && (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!errorCopy2)
                    {
                      v175 = 0;
                      v25 = 0;
                      v31 = v208;
                      goto LABEL_140;
                    }

                    v181 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v176 = *MEMORY[0x1E698F240];
                    v232 = *MEMORY[0x1E696A578];
                    v80 = v42;
                    v81 = v41;
                    v82 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v140 = objc_opt_class();
                    v83 = v82;
                    v41 = v81;
                    v42 = v80;
                    v13 = v201;
                    v172 = [v83 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v140, @"isCommunicationSettingsSwitchEnabled"];
                    v233 = v172;
                    v171 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v233 forKeys:&v232 count:1];
                    v84 = [v181 initWithDomain:v176 code:2 userInfo:?];
                    v175 = 0;
                    v25 = 0;
                    *errorCopy2 = v84;
                    v31 = v208;
                    goto LABEL_139;
                  }

                  v178 = v7;
                  v45 = v41;
                  v46 = v13;
                  v47 = v42;
                  v175 = v44;
                }

                else
                {
                  v175 = 0;
                  v178 = v7;
                  v45 = v41;
                  v46 = v13;
                  v47 = v42;
                }

                v48 = [dictionaryCopy objectForKeyedSubscript:@"isSignificantLocationSettingsSwitchEnabled"];
                v171 = v48;
                if (v48 && (v49 = v48, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!errorCopy2)
                    {
                      v172 = 0;
                      v25 = 0;
                      v31 = v208;
                      v42 = v47;
                      v13 = v46;
                      v41 = v45;
                      v7 = v178;
                      goto LABEL_139;
                    }

                    v173 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v167 = *MEMORY[0x1E698F240];
                    v230 = *MEMORY[0x1E696A578];
                    v85 = v45;
                    v86 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v141 = objc_opt_class();
                    v87 = v86;
                    v7 = v178;
                    v41 = v85;
                    v42 = v47;
                    v13 = v201;
                    v169 = [v87 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v141, @"isSignificantLocationSettingsSwitchEnabled"];
                    v231 = v169;
                    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v231 forKeys:&v230 count:1];
                    v88 = [v173 initWithDomain:v167 code:2 userInfo:v51];
                    v172 = 0;
                    v25 = 0;
                    *errorCopy2 = v88;
                    v31 = v208;
LABEL_138:

LABEL_139:
                    goto LABEL_140;
                  }

                  v172 = v49;
                }

                else
                {
                  v172 = 0;
                }

                v50 = [dictionaryCopy objectForKeyedSubscript:@"isMediaSettingsSwitchEnabled"];
                v166 = v47;
                v163 = v50;
                if (v50)
                {
                  v51 = v50;
                  objc_opt_class();
                  v13 = v46;
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    v41 = v45;
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v7 = v178;
                      if (!errorCopy2)
                      {
                        v169 = 0;
                        v25 = 0;
                        v31 = v208;
                        v42 = v166;
                        goto LABEL_138;
                      }

                      v170 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v165 = *MEMORY[0x1E698F240];
                      v228 = *MEMORY[0x1E696A578];
                      v102 = v41;
                      v103 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v142 = objc_opt_class();
                      v104 = v103;
                      v41 = v102;
                      v42 = v166;
                      v13 = v201;
                      v98 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v142, @"isMediaSettingsSwitchEnabled"];
                      v229 = v98;
                      v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v229 forKeys:&v228 count:1];
                      v106 = v165;
                      v164 = v105;
                      v107 = [v170 initWithDomain:v106 code:2 userInfo:?];
                      v169 = 0;
                      v25 = 0;
                      v31 = v208;
                      *errorCopy2 = v107;
                      goto LABEL_137;
                    }

                    v169 = v51;
LABEL_79:
                    v7 = v178;
                    v60 = [dictionaryCopy objectForKeyedSubscript:@"isNearbyPeopleSettingsSwitchEnabled"];
                    v164 = v60;
                    if (v60 && (v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!errorCopy2)
                        {
                          v98 = 0;
                          v25 = 0;
                          v31 = v208;
                          v42 = v166;
                          goto LABEL_137;
                        }

                        v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v182 = *MEMORY[0x1E698F240];
                        v226 = *MEMORY[0x1E696A578];
                        v109 = v41;
                        v110 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v143 = objc_opt_class();
                        v111 = v110;
                        v41 = v109;
                        v42 = v166;
                        v13 = v201;
                        v161 = [v111 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v143, @"isNearbyPeopleSettingsSwitchEnabled"];
                        v227 = v161;
                        v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v227 forKeys:&v226 count:1];
                        v112 = [v108 initWithDomain:v182 code:2 userInfo:?];
                        v98 = 0;
                        v25 = 0;
                        v31 = v208;
                        *errorCopy2 = v112;
LABEL_136:

LABEL_137:
                        v51 = v163;
                        goto LABEL_138;
                      }

                      v160 = v61;
                    }

                    else
                    {
                      v160 = 0;
                    }

                    v62 = [dictionaryCopy objectForKeyedSubscript:@"isPhotoSettingsSwitchEnabled"];
                    v159 = v62;
                    if (v62 && (v63 = v62, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!errorCopy2)
                        {
                          v161 = 0;
                          v25 = 0;
                          v31 = v208;
                          v42 = v166;
                          v98 = v160;
                          goto LABEL_136;
                        }

                        v183 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v162 = *MEMORY[0x1E698F240];
                        v224 = *MEMORY[0x1E696A578];
                        v113 = v41;
                        v114 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v144 = objc_opt_class();
                        v115 = v114;
                        v41 = v113;
                        v42 = v166;
                        v13 = v201;
                        v157 = [v115 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v144, @"isPhotoSettingsSwitchEnabled"];
                        v225 = v157;
                        v155 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v225 forKeys:&v224 count:1];
                        v116 = [v183 initWithDomain:v162 code:2 userInfo:?];
                        v161 = 0;
                        v25 = 0;
                        *errorCopy2 = v116;
                        v31 = v208;
                        v98 = v160;
                        goto LABEL_135;
                      }

                      v161 = v63;
                    }

                    else
                    {
                      v161 = 0;
                    }

                    v64 = [dictionaryCopy objectForKeyedSubscript:@"isStateOfMindSettingsSwitchEnabled"];
                    v155 = v64;
                    if (v64 && (v65 = v64, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!errorCopy2)
                        {
                          v157 = 0;
                          v25 = 0;
                          v31 = v208;
                          v98 = v160;
                          v42 = v166;
                          v13 = v201;
                          goto LABEL_135;
                        }

                        v184 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v158 = *MEMORY[0x1E698F240];
                        v222 = *MEMORY[0x1E696A578];
                        v117 = v41;
                        v118 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v145 = objc_opt_class();
                        v119 = v118;
                        v41 = v117;
                        v42 = v166;
                        v13 = v201;
                        v156 = [v119 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v145, @"isStateOfMindSettingsSwitchEnabled"];
                        v223 = v156;
                        v153 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v223 forKeys:&v222 count:1];
                        v120 = [v184 initWithDomain:v158 code:2 userInfo:?];
                        v157 = 0;
                        v25 = 0;
                        *errorCopy2 = v120;
                        goto LABEL_186;
                      }

                      v157 = v65;
                    }

                    else
                    {
                      v157 = 0;
                    }

                    v66 = [dictionaryCopy objectForKeyedSubscript:@"isReflectionSettingsSwitchEnabled"];
                    v42 = v166;
                    v153 = v66;
                    if (!v66)
                    {
                      v156 = 0;
                      v13 = v201;
                      goto LABEL_120;
                    }

                    v67 = v66;
                    objc_opt_class();
                    v13 = v201;
                    if (objc_opt_isKindOfClass())
                    {
                      v156 = 0;
                      goto LABEL_120;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v156 = v67;
LABEL_120:
                      v90 = [dictionaryCopy objectForKeyedSubscript:@"isBroadSystemLocationSettingsSwitchEnabled"];
                      v151 = v90;
                      if (!v90 || (v91 = v90, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v154 = 0;
LABEL_123:
                        v92 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
                        v149 = v41;
                        v150 = v92;
                        if (v92 && (v93 = v92, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v152 = v93;
                          }

                          else
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              if (!errorCopy2)
                              {
                                v152 = 0;
                                v25 = 0;
                                v42 = v166;
                                goto LABEL_131;
                              }

                              v134 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v135 = *MEMORY[0x1E698F240];
                              v216 = *MEMORY[0x1E696A578];
                              v96 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"deviceType"];
                              v217 = v96;
                              v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v217 forKeys:&v216 count:1];
                              v136 = [v134 initWithDomain:v135 code:2 userInfo:v94];
                              v152 = 0;
                              v25 = 0;
                              *errorCopy2 = v136;
                              v42 = v166;
                              goto LABEL_130;
                            }

                            v152 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEngagementLightDeviceTypeFromString(v93)];
                            v42 = v166;
                          }
                        }

                        else
                        {
                          v152 = 0;
                        }

                        v94 = [dictionaryCopy objectForKeyedSubscript:@"isDiagnosticSubmissionAllowed"];
                        if (v94 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            if (errorCopy2)
                            {
                              v168 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v131 = *MEMORY[0x1E698F240];
                              v214 = *MEMORY[0x1E696A578];
                              v132 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDiagnosticSubmissionAllowed"];
                              v215 = v132;
                              v133 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v215 forKeys:&v214 count:1];
                              v13 = v201;
                              *errorCopy2 = [v168 initWithDomain:v131 code:2 userInfo:v133];
                            }

                            v96 = 0;
                            v25 = 0;
                            goto LABEL_130;
                          }

                          v95 = v191;
                          v96 = v94;
                        }

                        else
                        {
                          v95 = v191;
                          v96 = 0;
                        }

                        intValue = [v202 intValue];
                        LODWORD(v148) = [v152 intValue];
                        v25 = [(BMMomentsEngagement *)self initWithSuggestionEvent:v178 entryEvent:v95 clientActivityEvent:v208 onboardingFlowCompletionState:intValue isJournalAppInstalled:v205 isJournalAppLocked:v199 isJournalSuggestionSkipped:v188 isActivitySettingsSwitchEnabled:v42 isCommunicationSettingsSwitchEnabled:v175 isSignificantLocationSettingsSwitchEnabled:v172 isMediaSettingsSwitchEnabled:v169 isNearbyPeopleSettingsSwitchEnabled:v160 isPhotoSettingsSwitchEnabled:v161 isStateOfMindSettingsSwitchEnabled:v157 isReflectionSettingsSwitchEnabled:v156 isBroadSystemLocationSettingsSwitchEnabled:v154 deviceType:v148 isDiagnosticSubmissionAllowed:v96];
                        self = v25;
LABEL_130:

                        v41 = v149;
LABEL_131:
                        v98 = v160;
                        v99 = v150;
LABEL_132:

                        v31 = v208;
LABEL_133:

LABEL_134:
LABEL_135:

                        goto LABEL_136;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v154 = v91;
                        goto LABEL_123;
                      }

                      if (errorCopy2)
                      {
                        v126 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v186 = *MEMORY[0x1E698F240];
                        v218 = *MEMORY[0x1E696A578];
                        v127 = v41;
                        v128 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v147 = objc_opt_class();
                        v129 = v128;
                        v41 = v127;
                        v42 = v166;
                        v13 = v201;
                        v152 = [v129 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v147, @"isBroadSystemLocationSettingsSwitchEnabled"];
                        v219 = v152;
                        v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v219 forKeys:&v218 count:1];
                        v130 = [v126 initWithDomain:v186 code:2 userInfo:v99];
                        v154 = 0;
                        v25 = 0;
                        *errorCopy2 = v130;
                        v98 = v160;
                        goto LABEL_132;
                      }

                      v154 = 0;
                      v25 = 0;
LABEL_190:
                      v31 = v208;
                      v98 = v160;
                      goto LABEL_133;
                    }

                    if (errorCopy2)
                    {
                      v121 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v185 = *MEMORY[0x1E698F240];
                      v220 = *MEMORY[0x1E696A578];
                      v122 = v41;
                      v123 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v146 = objc_opt_class();
                      v124 = v123;
                      v41 = v122;
                      v42 = v166;
                      v13 = v201;
                      v154 = [v124 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v146, @"isReflectionSettingsSwitchEnabled"];
                      v221 = v154;
                      v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v221 forKeys:&v220 count:1];
                      v125 = [v121 initWithDomain:v185 code:2 userInfo:?];
                      v156 = 0;
                      v25 = 0;
                      *errorCopy2 = v125;
                      goto LABEL_190;
                    }

                    v156 = 0;
                    v25 = 0;
LABEL_186:
                    v31 = v208;
                    v98 = v160;
                    goto LABEL_134;
                  }

                  v169 = 0;
                }

                else
                {
                  v169 = 0;
                  v13 = v46;
                }

                v41 = v45;
                goto LABEL_79;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = v41;
                goto LABEL_52;
              }

              if (errorCopy2)
              {
                v196 = objc_alloc(MEMORY[0x1E696ABC0]);
                v180 = *MEMORY[0x1E698F240];
                v234 = *MEMORY[0x1E696A578];
                v75 = v41;
                v76 = objc_alloc(MEMORY[0x1E696AEC0]);
                v139 = objc_opt_class();
                v77 = v76;
                v41 = v75;
                v175 = [v77 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v139, @"isActivitySettingsSwitchEnabled"];
                v235 = v175;
                v174 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v235 forKeys:&v234 count:1];
                v42 = 0;
                v25 = 0;
                v31 = v208;
                *errorCopy2 = [v196 initWithDomain:v180 code:2 userInfo:?];
LABEL_140:

LABEL_141:
                v22 = v187;
                v72 = v188;
                v23 = v191;
                goto LABEL_142;
              }

              v42 = 0;
              v25 = 0;
LABEL_166:
              v31 = v208;
              goto LABEL_141;
            }

            v188 = 0;
          }

          else
          {
            v188 = 0;
            v8 = v11;
          }

          v6 = v10;
          goto LABEL_49;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v205 = v17;
          goto LABEL_22;
        }

        if (errorCopy2)
        {
          v206 = objc_alloc(MEMORY[0x1E696ABC0]);
          v198 = *MEMORY[0x1E698F240];
          v240 = *MEMORY[0x1E696A578];
          v54 = v10;
          v7 = v9;
          v55 = objc_alloc(MEMORY[0x1E696AEC0]);
          v137 = objc_opt_class();
          v56 = v55;
          v23 = v8;
          v8 = v11;
          v6 = v54;
          v13 = v201;
          error = v202;
          v199 = [v56 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v137, @"isJournalAppInstalled"];
          v241 = v199;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v241 forKeys:&v240 count:1];
          v58 = v198;
          v197 = v57;
          v59 = [v206 initWithDomain:v58 code:2 userInfo:?];
          v205 = 0;
          v25 = 0;
          *errorCopy2 = v59;
          v31 = v208;
LABEL_144:

          goto LABEL_145;
        }

        v205 = 0;
        v25 = 0;
        v31 = v208;
        v89 = v9;
        v23 = v8;
        v8 = v11;
        v6 = v10;
        v7 = v89;
        error = v202;
LABEL_145:

LABEL_146:
        v26 = v23;
        goto LABEL_147;
      }

      if (error)
      {
        v52 = objc_alloc(MEMORY[0x1E696ABC0]);
        v209 = *MEMORY[0x1E698F240];
        v244 = *MEMORY[0x1E696A578];
        v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"clientActivityEvent"];
        v245 = v31;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v245 forKeys:&v244 count:1];
        error = v53 = error;
        v25 = 0;
        *v53 = [v52 initWithDomain:v209 code:2 userInfo:error];
        v7 = v27;
        v26 = v8;
        v8 = v177;
        v6 = v192;
LABEL_147:

        goto LABEL_148;
      }

      v25 = 0;
      v7 = v9;
      v26 = v8;
      v8 = v177;
      v6 = v192;
LABEL_148:

      goto LABEL_149;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      v10 = v6;
      v11 = v8;
      v8 = 0;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      v10 = v6;
      v11 = v8;
      v13 = v8;
      v212 = 0;
      v8 = [[BMMomentsEngagementAppEntryEvent alloc] initWithJSONDictionary:v13 error:&v212];
      v24 = v212;
      if (v24)
      {
        if (error)
        {
          v24 = v24;
          *error = v24;
        }

        v25 = 0;
        v26 = v8;
        v8 = v11;
        v6 = v10;
        v7 = v9;
        goto LABEL_148;
      }

      goto LABEL_13;
    }

    if (error)
    {
      v34 = objc_alloc(MEMORY[0x1E696ABC0]);
      v35 = *MEMORY[0x1E698F240];
      v246 = *MEMORY[0x1E696A578];
      errorCopy3 = error;
      v37 = v7;
      v38 = v6;
      v39 = v8;
      v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"entryEvent"];
      v247 = v40;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v247 forKeys:&v246 count:1];
      v25 = 0;
      *errorCopy3 = [v34 initWithDomain:v35 code:2 userInfo:v13];
      v26 = v40;
      v8 = v39;
      v6 = v38;
      v7 = v37;
      goto LABEL_148;
    }

    goto LABEL_46;
  }

  if (error)
  {
    v32 = objc_alloc(MEMORY[0x1E696ABC0]);
    v33 = *MEMORY[0x1E698F240];
    v248 = *MEMORY[0x1E696A578];
    v249[0] = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"suggestionEvent"];
    v7 = v249[0];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v249 forKeys:&v248 count:1];
    v25 = 0;
    *error = [v32 initWithDomain:v33 code:2 userInfo:v8];
LABEL_149:

    goto LABEL_150;
  }

  v25 = 0;
LABEL_150:

  v100 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEngagement *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_suggestionEvent)
  {
    PBDataWriterPlaceMark();
    [(BMMomentsEngagementSuggestionEvent *)self->_suggestionEvent writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_entryEvent)
  {
    PBDataWriterPlaceMark();
    [(BMMomentsEngagementAppEntryEvent *)self->_entryEvent writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_clientActivityEvent)
  {
    PBDataWriterPlaceMark();
    [(BMMomentsEngagementClientActivityEvent *)self->_clientActivityEvent writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  onboardingFlowCompletionState = self->_onboardingFlowCompletionState;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsJournalAppInstalled)
  {
    isJournalAppInstalled = self->_isJournalAppInstalled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsJournalAppLocked)
  {
    isJournalAppLocked = self->_isJournalAppLocked;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsJournalSuggestionSkipped)
  {
    isJournalSuggestionSkipped = self->_isJournalSuggestionSkipped;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsActivitySettingsSwitchEnabled)
  {
    isActivitySettingsSwitchEnabled = self->_isActivitySettingsSwitchEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCommunicationSettingsSwitchEnabled)
  {
    isCommunicationSettingsSwitchEnabled = self->_isCommunicationSettingsSwitchEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSignificantLocationSettingsSwitchEnabled)
  {
    isSignificantLocationSettingsSwitchEnabled = self->_isSignificantLocationSettingsSwitchEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsMediaSettingsSwitchEnabled)
  {
    isMediaSettingsSwitchEnabled = self->_isMediaSettingsSwitchEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsNearbyPeopleSettingsSwitchEnabled)
  {
    isNearbyPeopleSettingsSwitchEnabled = self->_isNearbyPeopleSettingsSwitchEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsPhotoSettingsSwitchEnabled)
  {
    isPhotoSettingsSwitchEnabled = self->_isPhotoSettingsSwitchEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsStateOfMindSettingsSwitchEnabled)
  {
    isStateOfMindSettingsSwitchEnabled = self->_isStateOfMindSettingsSwitchEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsReflectionSettingsSwitchEnabled)
  {
    isReflectionSettingsSwitchEnabled = self->_isReflectionSettingsSwitchEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsBroadSystemLocationSettingsSwitchEnabled)
  {
    isBroadSystemLocationSettingsSwitchEnabled = self->_isBroadSystemLocationSettingsSwitchEnabled;
    PBDataWriterWriteBOOLField();
  }

  deviceType = self->_deviceType;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsDiagnosticSubmissionAllowed)
  {
    isDiagnosticSubmissionAllowed = self->_isDiagnosticSubmissionAllowed;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v114.receiver = self;
  v114.super_class = BMMomentsEngagement;
  v5 = [(BMEventBase *)&v114 init];
  if (!v5)
  {
    goto LABEL_205;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v115) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v115 & 0x7F) << v7;
        if ((v115 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      switch((v14 >> 3))
      {
        case 1u:
          v115 = 0;
          v116 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_204;
          }

          v15 = [[BMMomentsEngagementSuggestionEvent alloc] initByReadFrom:fromCopy];
          if (!v15)
          {
            goto LABEL_204;
          }

          v16 = 56;
          goto LABEL_109;
        case 2u:
          v115 = 0;
          v116 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_204;
          }

          v15 = [[BMMomentsEngagementAppEntryEvent alloc] initByReadFrom:fromCopy];
          if (!v15)
          {
            goto LABEL_204;
          }

          v16 = 64;
          goto LABEL_109;
        case 3u:
          v115 = 0;
          v116 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_204;
          }

          v15 = [[BMMomentsEngagementClientActivityEvent alloc] initByReadFrom:fromCopy];
          if (!v15)
          {
            goto LABEL_204;
          }

          v16 = 72;
LABEL_109:
          v72 = *(&v5->super.super.isa + v16);
          *(&v5->super.super.isa + v16) = v15;

          PBReaderRecallMark();
          goto LABEL_202;
        case 4u:
          v61 = 0;
          v62 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v115) = 0;
            v63 = [fromCopy position] + 1;
            if (v63 >= [fromCopy position] && (v64 = objc_msgSend(fromCopy, "position") + 1, v64 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v19 |= (v115 & 0x7F) << v61;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v23 = v62++ > 8;
            if (v23)
            {
              goto LABEL_184;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v19 > 5)
          {
LABEL_184:
            LODWORD(v19) = 0;
          }

          v109 = 48;
          goto LABEL_186;
        case 5u:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v5->_hasIsJournalAppInstalled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v40 = [fromCopy position] + 1;
            if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v39 |= (v115 & 0x7F) << v37;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v13 = v38++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_175;
            }
          }

          v30 = (v39 != 0) & ~[fromCopy hasError];
LABEL_175:
          v110 = 16;
          goto LABEL_201;
        case 6u:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v5->_hasIsJournalAppLocked = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v82 = [fromCopy position] + 1;
            if (v82 >= [fromCopy position] && (v83 = objc_msgSend(fromCopy, "position") + 1, v83 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v81 |= (v115 & 0x7F) << v79;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v13 = v80++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_192;
            }
          }

          v30 = (v81 != 0) & ~[fromCopy hasError];
LABEL_192:
          v110 = 18;
          goto LABEL_201;
        case 7u:
          v91 = 0;
          v92 = 0;
          v93 = 0;
          v5->_hasIsJournalSuggestionSkipped = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v94 = [fromCopy position] + 1;
            if (v94 >= [fromCopy position] && (v95 = objc_msgSend(fromCopy, "position") + 1, v95 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v93 |= (v115 & 0x7F) << v91;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v91 += 7;
            v13 = v92++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_196;
            }
          }

          v30 = (v93 != 0) & ~[fromCopy hasError];
LABEL_196:
          v110 = 20;
          goto LABEL_201;
        case 8u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          v5->_hasIsActivitySettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v69 = [fromCopy position] + 1;
            if (v69 >= [fromCopy position] && (v70 = objc_msgSend(fromCopy, "position") + 1, v70 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v68 |= (v115 & 0x7F) << v66;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v13 = v67++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_188;
            }
          }

          v30 = (v68 != 0) & ~[fromCopy hasError];
LABEL_188:
          v110 = 22;
          goto LABEL_201;
        case 9u:
          v103 = 0;
          v104 = 0;
          v105 = 0;
          v5->_hasIsCommunicationSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v106 = [fromCopy position] + 1;
            if (v106 >= [fromCopy position] && (v107 = objc_msgSend(fromCopy, "position") + 1, v107 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v105 |= (v115 & 0x7F) << v103;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v103 += 7;
            v13 = v104++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_200;
            }
          }

          v30 = (v105 != 0) & ~[fromCopy hasError];
LABEL_200:
          v110 = 24;
          goto LABEL_201;
        case 0xAu:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v5->_hasIsSignificantLocationSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v52 = [fromCopy position] + 1;
            if (v52 >= [fromCopy position] && (v53 = objc_msgSend(fromCopy, "position") + 1, v53 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v51 |= (v115 & 0x7F) << v49;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v13 = v50++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_179;
            }
          }

          v30 = (v51 != 0) & ~[fromCopy hasError];
LABEL_179:
          v110 = 26;
          goto LABEL_201;
        case 0xBu:
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v5->_hasIsMediaSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v100 = [fromCopy position] + 1;
            if (v100 >= [fromCopy position] && (v101 = objc_msgSend(fromCopy, "position") + 1, v101 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v99 |= (v115 & 0x7F) << v97;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v97 += 7;
            v13 = v98++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_198;
            }
          }

          v30 = (v99 != 0) & ~[fromCopy hasError];
LABEL_198:
          v110 = 28;
          goto LABEL_201;
        case 0xCu:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v5->_hasIsNearbyPeopleSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v34 = [fromCopy position] + 1;
            if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v33 |= (v115 & 0x7F) << v31;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v13 = v32++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_173;
            }
          }

          v30 = (v33 != 0) & ~[fromCopy hasError];
LABEL_173:
          v110 = 30;
          goto LABEL_201;
        case 0xDu:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v5->_hasIsPhotoSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v46 = [fromCopy position] + 1;
            if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 1, v47 <= objc_msgSend(fromCopy, "length")))
            {
              data11 = [fromCopy data];
              [data11 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v45 |= (v115 & 0x7F) << v43;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v13 = v44++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_177;
            }
          }

          v30 = (v45 != 0) & ~[fromCopy hasError];
LABEL_177:
          v110 = 32;
          goto LABEL_201;
        case 0xEu:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v5->_hasIsStateOfMindSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v88 = [fromCopy position] + 1;
            if (v88 >= [fromCopy position] && (v89 = objc_msgSend(fromCopy, "position") + 1, v89 <= objc_msgSend(fromCopy, "length")))
            {
              data12 = [fromCopy data];
              [data12 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v87 |= (v115 & 0x7F) << v85;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v13 = v86++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_194;
            }
          }

          v30 = (v87 != 0) & ~[fromCopy hasError];
LABEL_194:
          v110 = 34;
          goto LABEL_201;
        case 0xFu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v5->_hasIsReflectionSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data13 = [fromCopy data];
              [data13 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v26 |= (v115 & 0x7F) << v24;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v13 = v25++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_171;
            }
          }

          v30 = (v26 != 0) & ~[fromCopy hasError];
LABEL_171:
          v110 = 36;
          goto LABEL_201;
        case 0x10u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v5->_hasIsBroadSystemLocationSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v58 = [fromCopy position] + 1;
            if (v58 >= [fromCopy position] && (v59 = objc_msgSend(fromCopy, "position") + 1, v59 <= objc_msgSend(fromCopy, "length")))
            {
              data14 = [fromCopy data];
              [data14 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v57 |= (v115 & 0x7F) << v55;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v13 = v56++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_181;
            }
          }

          v30 = (v57 != 0) & ~[fromCopy hasError];
LABEL_181:
          v110 = 38;
          goto LABEL_201;
        case 0x11u:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v115) = 0;
            v20 = [fromCopy position] + 1;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data15 = [fromCopy data];
              [data15 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v19 |= (v115 & 0x7F) << v17;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v23 = v18++ > 8;
            if (v23)
            {
              goto LABEL_168;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v19 > 5)
          {
LABEL_168:
            LODWORD(v19) = 0;
          }

          v109 = 52;
LABEL_186:
          *(&v5->super.super.isa + v109) = v19;
          goto LABEL_202;
        case 0x12u:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v5->_hasIsDiagnosticSubmissionAllowed = 1;
          break;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_204;
          }

          goto LABEL_202;
      }

      while (1)
      {
        LOBYTE(v115) = 0;
        v76 = [fromCopy position] + 1;
        if (v76 >= [fromCopy position] && (v77 = objc_msgSend(fromCopy, "position") + 1, v77 <= objc_msgSend(fromCopy, "length")))
        {
          data16 = [fromCopy data];
          [data16 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v75 |= (v115 & 0x7F) << v73;
        if ((v115 & 0x80) == 0)
        {
          break;
        }

        v73 += 7;
        v13 = v74++ >= 9;
        if (v13)
        {
          LOBYTE(v30) = 0;
          goto LABEL_190;
        }
      }

      v30 = (v75 != 0) & ~[fromCopy hasError];
LABEL_190:
      v110 = 40;
LABEL_201:
      *(&v5->super.super.isa + v110) = v30;
LABEL_202:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_204:
    v112 = 0;
  }

  else
  {
LABEL_205:
    v112 = v5;
  }

  return v112;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  suggestionEvent = [(BMMomentsEngagement *)self suggestionEvent];
  entryEvent = [(BMMomentsEngagement *)self entryEvent];
  clientActivityEvent = [(BMMomentsEngagement *)self clientActivityEvent];
  v17 = BMMomentsEventDataOnboardingFlowCompletionAsString([(BMMomentsEngagement *)self onboardingFlowCompletionState]);
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isJournalAppInstalled](self, "isJournalAppInstalled")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isJournalAppLocked](self, "isJournalAppLocked")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isJournalSuggestionSkipped](self, "isJournalSuggestionSkipped")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isActivitySettingsSwitchEnabled](self, "isActivitySettingsSwitchEnabled")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isCommunicationSettingsSwitchEnabled](self, "isCommunicationSettingsSwitchEnabled")}];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isSignificantLocationSettingsSwitchEnabled](self, "isSignificantLocationSettingsSwitchEnabled")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isMediaSettingsSwitchEnabled](self, "isMediaSettingsSwitchEnabled")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isNearbyPeopleSettingsSwitchEnabled](self, "isNearbyPeopleSettingsSwitchEnabled")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isPhotoSettingsSwitchEnabled](self, "isPhotoSettingsSwitchEnabled")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isStateOfMindSettingsSwitchEnabled](self, "isStateOfMindSettingsSwitchEnabled")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isReflectionSettingsSwitchEnabled](self, "isReflectionSettingsSwitchEnabled")}];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isBroadSystemLocationSettingsSwitchEnabled](self, "isBroadSystemLocationSettingsSwitchEnabled")}];
  v5 = BMMomentsEngagementLightDeviceTypeAsString([(BMMomentsEngagement *)self deviceType]);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isDiagnosticSubmissionAllowed](self, "isDiagnosticSubmissionAllowed")}];
  v19 = [v18 initWithFormat:@"BMMomentsEngagement with suggestionEvent: %@, entryEvent: %@, clientActivityEvent: %@, onboardingFlowCompletionState: %@, isJournalAppInstalled: %@, isJournalAppLocked: %@, isJournalSuggestionSkipped: %@, isActivitySettingsSwitchEnabled: %@, isCommunicationSettingsSwitchEnabled: %@, isSignificantLocationSettingsSwitchEnabled: %@, isMediaSettingsSwitchEnabled: %@, isNearbyPeopleSettingsSwitchEnabled: %@, isPhotoSettingsSwitchEnabled: %@, isStateOfMindSettingsSwitchEnabled: %@, isReflectionSettingsSwitchEnabled: %@, isBroadSystemLocationSettingsSwitchEnabled: %@, deviceType: %@, isDiagnosticSubmissionAllowed: %@", suggestionEvent, entryEvent, clientActivityEvent, v17, v16, v15, v14, v13, v12, v20, v11, v10, v9, v8, v3, v4, v5, v6];

  return v19;
}

- (BMMomentsEngagement)initWithSuggestionEvent:(id)event entryEvent:(id)entryEvent clientActivityEvent:(id)activityEvent onboardingFlowCompletionState:(int)state isJournalAppInstalled:(id)installed isJournalAppLocked:(id)locked isJournalSuggestionSkipped:(id)skipped isActivitySettingsSwitchEnabled:(id)self0 isCommunicationSettingsSwitchEnabled:(id)self1 isSignificantLocationSettingsSwitchEnabled:(id)self2 isMediaSettingsSwitchEnabled:(id)self3 isNearbyPeopleSettingsSwitchEnabled:(id)self4 isPhotoSettingsSwitchEnabled:(id)self5 isStateOfMindSettingsSwitchEnabled:(id)self6 isReflectionSettingsSwitchEnabled:(id)self7 isBroadSystemLocationSettingsSwitchEnabled:(id)self8 deviceType:(int)self9 isDiagnosticSubmissionAllowed:(id)allowed
{
  eventCopy = event;
  entryEventCopy = entryEvent;
  entryEventCopy2 = entryEvent;
  activityEventCopy = activityEvent;
  activityEventCopy2 = activityEvent;
  installedCopy = installed;
  lockedCopy = locked;
  skippedCopy = skipped;
  enabledCopy = enabled;
  switchEnabledCopy = switchEnabled;
  settingsSwitchEnabledCopy = settingsSwitchEnabled;
  mediaSettingsSwitchEnabledCopy = mediaSettingsSwitchEnabled;
  v28 = skippedCopy;
  peopleSettingsSwitchEnabledCopy = peopleSettingsSwitchEnabled;
  photoSettingsSwitchEnabledCopy = photoSettingsSwitchEnabled;
  mindSettingsSwitchEnabledCopy = mindSettingsSwitchEnabled;
  reflectionSettingsSwitchEnabledCopy = reflectionSettingsSwitchEnabled;
  locationSettingsSwitchEnabledCopy = locationSettingsSwitchEnabled;
  allowedCopy = allowed;
  v48.receiver = self;
  v48.super_class = BMMomentsEngagement;
  v34 = [(BMEventBase *)&v48 init];
  if (v34)
  {
    v34->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v34->_suggestionEvent, event);
    objc_storeStrong(&v34->_entryEvent, entryEventCopy);
    objc_storeStrong(&v34->_clientActivityEvent, activityEventCopy);
    v34->_onboardingFlowCompletionState = state;
    if (installedCopy)
    {
      v34->_hasIsJournalAppInstalled = 1;
      v34->_isJournalAppInstalled = [installedCopy BOOLValue];
    }

    else
    {
      v34->_hasIsJournalAppInstalled = 0;
      v34->_isJournalAppInstalled = 0;
    }

    if (lockedCopy)
    {
      v34->_hasIsJournalAppLocked = 1;
      v34->_isJournalAppLocked = [lockedCopy BOOLValue];
    }

    else
    {
      v34->_hasIsJournalAppLocked = 0;
      v34->_isJournalAppLocked = 0;
    }

    if (v28)
    {
      v34->_hasIsJournalSuggestionSkipped = 1;
      v34->_isJournalSuggestionSkipped = [v28 BOOLValue];
    }

    else
    {
      v34->_hasIsJournalSuggestionSkipped = 0;
      v34->_isJournalSuggestionSkipped = 0;
    }

    if (enabledCopy)
    {
      v34->_hasIsActivitySettingsSwitchEnabled = 1;
      v34->_isActivitySettingsSwitchEnabled = [enabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsActivitySettingsSwitchEnabled = 0;
      v34->_isActivitySettingsSwitchEnabled = 0;
    }

    if (switchEnabledCopy)
    {
      v34->_hasIsCommunicationSettingsSwitchEnabled = 1;
      v34->_isCommunicationSettingsSwitchEnabled = [switchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsCommunicationSettingsSwitchEnabled = 0;
      v34->_isCommunicationSettingsSwitchEnabled = 0;
    }

    if (settingsSwitchEnabledCopy)
    {
      v34->_hasIsSignificantLocationSettingsSwitchEnabled = 1;
      v34->_isSignificantLocationSettingsSwitchEnabled = [settingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsSignificantLocationSettingsSwitchEnabled = 0;
      v34->_isSignificantLocationSettingsSwitchEnabled = 0;
    }

    if (mediaSettingsSwitchEnabledCopy)
    {
      v34->_hasIsMediaSettingsSwitchEnabled = 1;
      v34->_isMediaSettingsSwitchEnabled = [mediaSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsMediaSettingsSwitchEnabled = 0;
      v34->_isMediaSettingsSwitchEnabled = 0;
    }

    if (peopleSettingsSwitchEnabledCopy)
    {
      v34->_hasIsNearbyPeopleSettingsSwitchEnabled = 1;
      v34->_isNearbyPeopleSettingsSwitchEnabled = [peopleSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsNearbyPeopleSettingsSwitchEnabled = 0;
      v34->_isNearbyPeopleSettingsSwitchEnabled = 0;
    }

    if (photoSettingsSwitchEnabledCopy)
    {
      v34->_hasIsPhotoSettingsSwitchEnabled = 1;
      v34->_isPhotoSettingsSwitchEnabled = [photoSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsPhotoSettingsSwitchEnabled = 0;
      v34->_isPhotoSettingsSwitchEnabled = 0;
    }

    if (mindSettingsSwitchEnabledCopy)
    {
      v34->_hasIsStateOfMindSettingsSwitchEnabled = 1;
      v34->_isStateOfMindSettingsSwitchEnabled = [mindSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsStateOfMindSettingsSwitchEnabled = 0;
      v34->_isStateOfMindSettingsSwitchEnabled = 0;
    }

    if (reflectionSettingsSwitchEnabledCopy)
    {
      v34->_hasIsReflectionSettingsSwitchEnabled = 1;
      v34->_isReflectionSettingsSwitchEnabled = [reflectionSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsReflectionSettingsSwitchEnabled = 0;
      v34->_isReflectionSettingsSwitchEnabled = 0;
    }

    if (locationSettingsSwitchEnabledCopy)
    {
      v34->_hasIsBroadSystemLocationSettingsSwitchEnabled = 1;
      v34->_isBroadSystemLocationSettingsSwitchEnabled = [locationSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsBroadSystemLocationSettingsSwitchEnabled = 0;
      v34->_isBroadSystemLocationSettingsSwitchEnabled = 0;
    }

    v34->_deviceType = type;
    if (allowedCopy)
    {
      v34->_hasIsDiagnosticSubmissionAllowed = 1;
      v34->_isDiagnosticSubmissionAllowed = [allowedCopy BOOLValue];
    }

    else
    {
      v34->_hasIsDiagnosticSubmissionAllowed = 0;
      v34->_isDiagnosticSubmissionAllowed = 0;
    }
  }

  return v34;
}

+ (id)protoFields
{
  v23[18] = *MEMORY[0x1E69E9840];
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionEvent" number:1 type:14 subMessageClass:objc_opt_class()];
  v23[0] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entryEvent" number:2 type:14 subMessageClass:objc_opt_class()];
  v23[1] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientActivityEvent" number:3 type:14 subMessageClass:objc_opt_class()];
  v23[2] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"onboardingFlowCompletionState" number:4 type:4 subMessageClass:0];
  v23[3] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isJournalAppInstalled" number:5 type:12 subMessageClass:0];
  v23[4] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isJournalAppLocked" number:6 type:12 subMessageClass:0];
  v23[5] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isJournalSuggestionSkipped" number:7 type:12 subMessageClass:0];
  v23[6] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isActivitySettingsSwitchEnabled" number:8 type:12 subMessageClass:0];
  v23[7] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCommunicationSettingsSwitchEnabled" number:9 type:12 subMessageClass:0];
  v23[8] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSignificantLocationSettingsSwitchEnabled" number:10 type:12 subMessageClass:0];
  v23[9] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMediaSettingsSwitchEnabled" number:11 type:12 subMessageClass:0];
  v23[10] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNearbyPeopleSettingsSwitchEnabled" number:12 type:12 subMessageClass:0];
  v23[11] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPhotoSettingsSwitchEnabled" number:13 type:12 subMessageClass:0];
  v23[12] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isStateOfMindSettingsSwitchEnabled" number:14 type:12 subMessageClass:0];
  v23[13] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isReflectionSettingsSwitchEnabled" number:15 type:12 subMessageClass:0];
  v23[14] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBroadSystemLocationSettingsSwitchEnabled" number:16 type:12 subMessageClass:0];
  v23[15] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:17 type:4 subMessageClass:0];
  v23[16] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDiagnosticSubmissionAllowed" number:18 type:12 subMessageClass:0];
  v23[17] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:18];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v23[18] = *MEMORY[0x1E69E9840];
  v22 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"suggestionEvent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_917];
  v21 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"entryEvent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_919];
  v20 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"clientActivityEvent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_921];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"onboardingFlowCompletionState" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isJournalAppInstalled" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isJournalAppLocked" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isJournalSuggestionSkipped" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isActivitySettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCommunicationSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSignificantLocationSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMediaSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNearbyPeopleSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPhotoSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isStateOfMindSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isReflectionSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBroadSystemLocationSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDiagnosticSubmissionAllowed" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:12 convertedType:0];
  v23[0] = v22;
  v23[1] = v21;
  v23[2] = v20;
  v23[3] = v19;
  v23[4] = v18;
  v23[5] = v17;
  v23[6] = v16;
  v23[7] = v15;
  v23[8] = v2;
  v23[9] = v3;
  v23[10] = v14;
  v23[11] = v13;
  v23[12] = v4;
  v23[13] = v5;
  v23[14] = v6;
  v23[15] = v12;
  v23[16] = v7;
  v23[17] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:18];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

id __30__BMMomentsEngagement_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 clientActivityEvent];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __30__BMMomentsEngagement_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 entryEvent];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __30__BMMomentsEngagement_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 suggestionEvent];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMMomentsEngagement alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[11] = 0;
    }
  }

  return v4;
}

@end