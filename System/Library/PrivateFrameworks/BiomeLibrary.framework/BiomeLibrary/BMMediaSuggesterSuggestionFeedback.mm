@interface BMMediaSuggesterSuggestionFeedback
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMediaSuggesterSuggestionFeedback)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMediaSuggesterSuggestionFeedback)initWithSessionIdentifier:(id)identifier numberOfVisibleSuggestions:(id)suggestions indexSelected:(id)selected intent:(id)intent engagementType:(int)type suggestionsRequestDate:(id)date targetBundleID:(id)d workoutType:(id)self0 isNowPlaying:(id)self1 allowedBundleIDs:(id)self2;
- (BMMediaSuggesterSuggestionFeedback)initWithSessionIdentifier:(id)identifier numberOfVisibleSuggestions:(id)suggestions indexSelected:(id)selected intent:(id)intent engagementType:(int)type suggestionsRequestDate:(id)date targetBundleID:(id)d workoutType:(id)self0 isNowPlaying:(id)self1 allowedBundleIDs:(id)self2 suggestionsIntent:(id)self3;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_allowedBundleIDsJSONArray;
- (id)_suggestionsIntentJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMediaSuggesterSuggestionFeedback

- (BMMediaSuggesterSuggestionFeedback)initWithSessionIdentifier:(id)identifier numberOfVisibleSuggestions:(id)suggestions indexSelected:(id)selected intent:(id)intent engagementType:(int)type suggestionsRequestDate:(id)date targetBundleID:(id)d workoutType:(id)self0 isNowPlaying:(id)self1 allowedBundleIDs:(id)self2
{
  dsCopy = ds;
  playingCopy = playing;
  workoutTypeCopy = workoutType;
  dCopy = d;
  dateCopy = date;
  intentCopy = intent;
  selectedCopy = selected;
  suggestionsCopy = suggestions;
  identifierCopy = identifier;
  v25 = objc_opt_new();
  v30 = [(BMMediaSuggesterSuggestionFeedback *)self initWithSessionIdentifier:identifierCopy numberOfVisibleSuggestions:suggestionsCopy indexSelected:selectedCopy intent:intentCopy engagementType:type suggestionsRequestDate:dateCopy targetBundleID:dCopy workoutType:workoutTypeCopy isNowPlaying:playingCopy allowedBundleIDs:dsCopy suggestionsIntent:v25];

  return v30;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    sessionIdentifier = [(BMMediaSuggesterSuggestionFeedback *)self sessionIdentifier];
    sessionIdentifier2 = [v5 sessionIdentifier];
    v8 = sessionIdentifier2;
    if (sessionIdentifier == sessionIdentifier2)
    {
    }

    else
    {
      sessionIdentifier3 = [(BMMediaSuggesterSuggestionFeedback *)self sessionIdentifier];
      sessionIdentifier4 = [v5 sessionIdentifier];
      v11 = [sessionIdentifier3 isEqual:sessionIdentifier4];

      if (!v11)
      {
        goto LABEL_43;
      }
    }

    if (-[BMMediaSuggesterSuggestionFeedback hasNumberOfVisibleSuggestions](self, "hasNumberOfVisibleSuggestions") || [v5 hasNumberOfVisibleSuggestions])
    {
      if (![(BMMediaSuggesterSuggestionFeedback *)self hasNumberOfVisibleSuggestions])
      {
        goto LABEL_43;
      }

      if (![v5 hasNumberOfVisibleSuggestions])
      {
        goto LABEL_43;
      }

      [(BMMediaSuggesterSuggestionFeedback *)self numberOfVisibleSuggestions];
      v14 = v13;
      [v5 numberOfVisibleSuggestions];
      if (v14 != v15)
      {
        goto LABEL_43;
      }
    }

    if (-[BMMediaSuggesterSuggestionFeedback hasIndexSelected](self, "hasIndexSelected") || [v5 hasIndexSelected])
    {
      if (![(BMMediaSuggesterSuggestionFeedback *)self hasIndexSelected])
      {
        goto LABEL_43;
      }

      if (![v5 hasIndexSelected])
      {
        goto LABEL_43;
      }

      indexSelected = [(BMMediaSuggesterSuggestionFeedback *)self indexSelected];
      if (indexSelected != [v5 indexSelected])
      {
        goto LABEL_43;
      }
    }

    intent = [(BMMediaSuggesterSuggestionFeedback *)self intent];
    intent2 = [v5 intent];
    v19 = intent2;
    if (intent == intent2)
    {
    }

    else
    {
      intent3 = [(BMMediaSuggesterSuggestionFeedback *)self intent];
      intent4 = [v5 intent];
      v22 = [intent3 isEqual:intent4];

      if (!v22)
      {
        goto LABEL_43;
      }
    }

    engagementType = [(BMMediaSuggesterSuggestionFeedback *)self engagementType];
    if (engagementType != [v5 engagementType])
    {
      goto LABEL_43;
    }

    if (-[BMMediaSuggesterSuggestionFeedback hasSuggestionsRequestDate](self, "hasSuggestionsRequestDate") || [v5 hasSuggestionsRequestDate])
    {
      if (![(BMMediaSuggesterSuggestionFeedback *)self hasSuggestionsRequestDate])
      {
        goto LABEL_43;
      }

      if (![v5 hasSuggestionsRequestDate])
      {
        goto LABEL_43;
      }

      [(BMMediaSuggesterSuggestionFeedback *)self suggestionsRequestDate];
      v25 = v24;
      [v5 suggestionsRequestDate];
      if (v25 != v26)
      {
        goto LABEL_43;
      }
    }

    targetBundleID = [(BMMediaSuggesterSuggestionFeedback *)self targetBundleID];
    targetBundleID2 = [v5 targetBundleID];
    v29 = targetBundleID2;
    if (targetBundleID == targetBundleID2)
    {
    }

    else
    {
      targetBundleID3 = [(BMMediaSuggesterSuggestionFeedback *)self targetBundleID];
      targetBundleID4 = [v5 targetBundleID];
      v32 = [targetBundleID3 isEqual:targetBundleID4];

      if (!v32)
      {
        goto LABEL_43;
      }
    }

    if (-[BMMediaSuggesterSuggestionFeedback hasWorkoutType](self, "hasWorkoutType") || [v5 hasWorkoutType])
    {
      if (![(BMMediaSuggesterSuggestionFeedback *)self hasWorkoutType])
      {
        goto LABEL_43;
      }

      if (![v5 hasWorkoutType])
      {
        goto LABEL_43;
      }

      workoutType = [(BMMediaSuggesterSuggestionFeedback *)self workoutType];
      if (workoutType != [v5 workoutType])
      {
        goto LABEL_43;
      }
    }

    if (-[BMMediaSuggesterSuggestionFeedback hasIsNowPlaying](self, "hasIsNowPlaying") || [v5 hasIsNowPlaying])
    {
      if (![(BMMediaSuggesterSuggestionFeedback *)self hasIsNowPlaying])
      {
        goto LABEL_43;
      }

      if (![v5 hasIsNowPlaying])
      {
        goto LABEL_43;
      }

      isNowPlaying = [(BMMediaSuggesterSuggestionFeedback *)self isNowPlaying];
      if (isNowPlaying != [v5 isNowPlaying])
      {
        goto LABEL_43;
      }
    }

    allowedBundleIDs = [(BMMediaSuggesterSuggestionFeedback *)self allowedBundleIDs];
    allowedBundleIDs2 = [v5 allowedBundleIDs];
    v37 = allowedBundleIDs2;
    if (allowedBundleIDs == allowedBundleIDs2)
    {
    }

    else
    {
      allowedBundleIDs3 = [(BMMediaSuggesterSuggestionFeedback *)self allowedBundleIDs];
      allowedBundleIDs4 = [v5 allowedBundleIDs];
      v40 = [allowedBundleIDs3 isEqual:allowedBundleIDs4];

      if (!v40)
      {
LABEL_43:
        v12 = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    suggestionsIntent = [(BMMediaSuggesterSuggestionFeedback *)self suggestionsIntent];
    suggestionsIntent2 = [v5 suggestionsIntent];
    if (suggestionsIntent == suggestionsIntent2)
    {
      v12 = 1;
    }

    else
    {
      suggestionsIntent3 = [(BMMediaSuggesterSuggestionFeedback *)self suggestionsIntent];
      suggestionsIntent4 = [v5 suggestionsIntent];
      v12 = [suggestionsIntent3 isEqual:suggestionsIntent4];
    }

    goto LABEL_44;
  }

  v12 = 0;
LABEL_45:

  return v12;
}

- (id)jsonDictionary
{
  v45[11] = *MEMORY[0x1E69E9840];
  sessionIdentifier = [(BMMediaSuggesterSuggestionFeedback *)self sessionIdentifier];
  if (![(BMMediaSuggesterSuggestionFeedback *)self hasNumberOfVisibleSuggestions]|| ([(BMMediaSuggesterSuggestionFeedback *)self numberOfVisibleSuggestions], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMMediaSuggesterSuggestionFeedback *)self numberOfVisibleSuggestions];
    v5 = MEMORY[0x1E696AD98];
    [(BMMediaSuggesterSuggestionFeedback *)self numberOfVisibleSuggestions];
    v6 = [v5 numberWithDouble:?];
  }

  if ([(BMMediaSuggesterSuggestionFeedback *)self hasIndexSelected])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaSuggesterSuggestionFeedback indexSelected](self, "indexSelected")}];
  }

  else
  {
    v7 = 0;
  }

  intent = [(BMMediaSuggesterSuggestionFeedback *)self intent];
  jsonDictionary = [intent jsonDictionary];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaSuggesterSuggestionFeedback engagementType](self, "engagementType")}];
  if (![(BMMediaSuggesterSuggestionFeedback *)self hasSuggestionsRequestDate]|| ([(BMMediaSuggesterSuggestionFeedback *)self suggestionsRequestDate], fabs(v11) == INFINITY))
  {
    v13 = 0;
  }

  else
  {
    [(BMMediaSuggesterSuggestionFeedback *)self suggestionsRequestDate];
    v12 = MEMORY[0x1E696AD98];
    [(BMMediaSuggesterSuggestionFeedback *)self suggestionsRequestDate];
    v13 = [v12 numberWithDouble:?];
  }

  targetBundleID = [(BMMediaSuggesterSuggestionFeedback *)self targetBundleID];
  if ([(BMMediaSuggesterSuggestionFeedback *)self hasWorkoutType])
  {
    v42 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaSuggesterSuggestionFeedback workoutType](self, "workoutType")}];
  }

  else
  {
    v42 = 0;
  }

  if ([(BMMediaSuggesterSuggestionFeedback *)self hasIsNowPlaying])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaSuggesterSuggestionFeedback isNowPlaying](self, "isNowPlaying")}];
  }

  else
  {
    v14 = 0;
  }

  _allowedBundleIDsJSONArray = [(BMMediaSuggesterSuggestionFeedback *)self _allowedBundleIDsJSONArray];
  _suggestionsIntentJSONArray = [(BMMediaSuggesterSuggestionFeedback *)self _suggestionsIntentJSONArray];
  v44[0] = @"sessionIdentifier";
  null = sessionIdentifier;
  if (!sessionIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null;
  v45[0] = null;
  v44[1] = @"numberOfVisibleSuggestions";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null2;
  v45[1] = null2;
  v44[2] = @"indexSelected";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null3;
  v45[2] = null3;
  v44[3] = @"intent";
  null4 = jsonDictionary;
  if (!jsonDictionary)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v6;
  v41 = sessionIdentifier;
  v32 = null4;
  v45[3] = null4;
  v44[4] = @"engagementType";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v7;
  v31 = null5;
  v45[4] = null5;
  v44[5] = @"suggestionsRequestDate";
  null6 = v13;
  if (!v13)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = jsonDictionary;
  v45[5] = null6;
  v44[6] = @"targetBundleID";
  null7 = targetBundleID;
  if (!targetBundleID)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v10;
  v45[6] = null7;
  v44[7] = @"workoutType";
  null8 = v42;
  if (!v42)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v13;
  v45[7] = null8;
  v44[8] = @"isNowPlaying";
  null9 = v14;
  if (!v14)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v45[8] = null9;
  v44[9] = @"allowedBundleIDs";
  null10 = _allowedBundleIDsJSONArray;
  if (!_allowedBundleIDsJSONArray)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v45[9] = null10;
  v44[10] = @"suggestionsIntent";
  null11 = _suggestionsIntentJSONArray;
  if (!_suggestionsIntentJSONArray)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v45[10] = null11;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:11];
  if (_suggestionsIntentJSONArray)
  {
    if (_allowedBundleIDsJSONArray)
    {
      goto LABEL_42;
    }

LABEL_59:

    if (v14)
    {
      goto LABEL_43;
    }

    goto LABEL_60;
  }

  if (!_allowedBundleIDsJSONArray)
  {
    goto LABEL_59;
  }

LABEL_42:
  if (v14)
  {
    goto LABEL_43;
  }

LABEL_60:

LABEL_43:
  if (!v42)
  {
  }

  if (!targetBundleID)
  {
  }

  if (!v25)
  {
  }

  if (!v37)
  {
  }

  if (v38)
  {
    if (v39)
    {
      goto LABEL_53;
    }
  }

  else
  {

    if (v39)
    {
LABEL_53:
      if (v40)
      {
        goto LABEL_54;
      }

LABEL_63:

      if (v41)
      {
        goto LABEL_55;
      }

      goto LABEL_64;
    }
  }

  if (!v40)
  {
    goto LABEL_63;
  }

LABEL_54:
  if (v41)
  {
    goto LABEL_55;
  }

LABEL_64:

LABEL_55:
  v29 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)_suggestionsIntentJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  suggestionsIntent = [(BMMediaSuggesterSuggestionFeedback *)self suggestionsIntent];
  v5 = [suggestionsIntent countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(suggestionsIntent);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [suggestionsIntent countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_allowedBundleIDsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allowedBundleIDs = [(BMMediaSuggesterSuggestionFeedback *)self allowedBundleIDs];
  v5 = [allowedBundleIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allowedBundleIDs);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [allowedBundleIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMediaSuggesterSuggestionFeedback)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v201[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"sessionIdentifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v24 = *MEMORY[0x1E698F240];
        v200 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionIdentifier"];
        v201[0] = v10;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v201 forKeys:&v200 count:1];
        v25 = [v22 initWithDomain:v24 code:2 userInfo:v9];
        v8 = 0;
        v19 = 0;
        *errorCopy = v25;
        goto LABEL_149;
      }

      v8 = 0;
      v19 = 0;
      goto LABEL_150;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"numberOfVisibleSuggestions"];
  selfCopy = self;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v26 = v8;
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v29 = *MEMORY[0x1E698F240];
        v198 = *MEMORY[0x1E696A578];
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberOfVisibleSuggestions"];
        v199 = v20;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v199 forKeys:&v198 count:1];
        v31 = v27;
        v8 = v26;
        v157 = v30;
        v10 = 0;
        v19 = 0;
        *errorCopy2 = [v31 initWithDomain:v29 code:2 userInfo:?];
        self = selfCopy;
        goto LABEL_148;
      }

      v10 = 0;
      v19 = 0;
      goto LABEL_149;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"indexSelected"];
  v159 = v10;
  v157 = v11;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v20 = 0;
        v19 = 0;
        goto LABEL_148;
      }

      v154 = v8;
      v32 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy3 = error;
      v34 = *MEMORY[0x1E698F240];
      v196 = *MEMORY[0x1E696A578];
      v35 = v10;
      v36 = objc_alloc(MEMORY[0x1E696AEC0]);
      v130 = objc_opt_class();
      v37 = v36;
      v10 = v35;
      v17 = [v37 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v130, @"indexSelected"];
      v197 = v17;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v197 forKeys:&v196 count:1];
      v39 = v32;
      v8 = v154;
      v40 = v34;
      v21 = v38;
      v20 = 0;
      v19 = 0;
      *errorCopy3 = [v39 initWithDomain:v40 code:2 userInfo:v38];
LABEL_37:
      self = selfCopy;
      goto LABEL_146;
    }

    v155 = v12;
  }

  else
  {
    v155 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"intent"];
  if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v151 = 0;
    v153 = v8;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v41 = v13;
    if (!error)
    {
      v19 = 0;
      v20 = v155;
      v17 = v41;
      self = selfCopy;
      goto LABEL_147;
    }

    v152 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy4 = error;
    v43 = *MEMORY[0x1E698F240];
    v194 = *MEMORY[0x1E696A578];
    v44 = objc_alloc(MEMORY[0x1E696AEC0]);
    v131 = objc_opt_class();
    v45 = v44;
    v10 = v159;
    v46 = [v45 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v131, @"intent"];
    v195 = v46;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
    v48 = v43;
    v21 = v46;
    *errorCopy4 = [v152 initWithDomain:v48 code:2 userInfo:v47];

    v19 = 0;
    v17 = v13;
    v20 = v155;
    goto LABEL_37;
  }

  v17 = v13;
  v169 = 0;
  v151 = [[BMMediaSuggesterSuggestionFeedbackMediaIntent alloc] initWithJSONDictionary:v17 error:&v169];
  v18 = v169;
  if (v18)
  {
    if (error)
    {
      v18 = v18;
      *error = v18;
    }

    v19 = 0;
    v20 = v155;
    v21 = v151;
    goto LABEL_146;
  }

  v153 = v8;
LABEL_13:
  v14 = [dictionaryCopy objectForKeyedSubscript:@"engagementType"];
  errorCopy5 = error;
  v148 = v13;
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v9;
      v146 = v14;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v150 = objc_alloc(MEMORY[0x1E696ABC0]);
          v97 = *MEMORY[0x1E698F240];
          v192 = *MEMORY[0x1E696A578];
          v147 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"engagementType"];
          v193 = v147;
          v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
          v99 = v150;
          v149 = v98;
          v100 = [v99 initWithDomain:v97 code:2 userInfo:?];
          v75 = 0;
          v19 = 0;
          *error = v100;
          v20 = v155;
          v21 = v151;
          goto LABEL_144;
        }

        v75 = 0;
        v19 = 0;
        v20 = v155;
        v21 = v151;
        goto LABEL_145;
      }

      v15 = v9;
      v146 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaSuggesterSuggestionFeedbackEngagementTypeFromString(v14)];
    }

    v16 = v7;
  }

  else
  {
    v15 = v9;
    v16 = v7;
    v146 = 0;
  }

  v49 = [dictionaryCopy objectForKeyedSubscript:@"suggestionsRequestDate"];
  v149 = v49;
  if (v49 && (v50 = v49, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v67 = v14;
        v68 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy6 = error;
        v70 = *MEMORY[0x1E698F240];
        v190 = *MEMORY[0x1E696A578];
        v71 = objc_alloc(MEMORY[0x1E696AEC0]);
        v132 = objc_opt_class();
        v72 = v71;
        v10 = v159;
        v144 = [v72 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v132, @"suggestionsRequestDate"];
        v191 = v144;
        v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v191 forKeys:&v190 count:1];
        v74 = v68;
        v14 = v67;
        v145 = v73;
        v147 = 0;
        v19 = 0;
        *errorCopy6 = [v74 initWithDomain:v70 code:2 userInfo:?];
        v20 = v155;
        v21 = v151;
        v75 = v146;
        v7 = v16;
        v9 = v15;
        goto LABEL_143;
      }

      v147 = 0;
      v19 = 0;
      v20 = v155;
      v21 = v151;
      v75 = v146;
      v7 = v16;
      v9 = v15;
      goto LABEL_144;
    }

    v147 = v50;
  }

  else
  {
    v147 = 0;
  }

  v51 = [dictionaryCopy objectForKeyedSubscript:@"targetBundleID"];
  v7 = v16;
  v142 = v14;
  v145 = v51;
  if (v51)
  {
    objc_opt_class();
    v9 = v15;
    if (objc_opt_isKindOfClass())
    {
      v51 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v144 = 0;
          v19 = 0;
          v20 = v155;
          v21 = v151;
          v75 = v146;
          goto LABEL_143;
        }

        v81 = objc_alloc(MEMORY[0x1E696ABC0]);
        v82 = *MEMORY[0x1E698F240];
        v188 = *MEMORY[0x1E696A578];
        v141 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"targetBundleID"];
        v189 = v141;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
        v83 = [v81 initWithDomain:v82 code:2 userInfo:v52];
        v144 = 0;
        v19 = 0;
        v20 = v155;
        *errorCopy5 = v83;
        v21 = v151;
        goto LABEL_121;
      }

      v51 = v51;
    }
  }

  else
  {
    v9 = v15;
  }

  v52 = [dictionaryCopy objectForKeyedSubscript:@"workoutType"];
  v144 = v51;
  if (v52)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v141 = v52;
        goto LABEL_55;
      }

      if (error)
      {
        v86 = v14;
        v87 = objc_alloc(MEMORY[0x1E696ABC0]);
        v88 = *MEMORY[0x1E698F240];
        v186 = *MEMORY[0x1E696A578];
        v89 = objc_alloc(MEMORY[0x1E696AEC0]);
        v133 = objc_opt_class();
        v90 = v89;
        v10 = v159;
        v135 = [v90 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v133, @"workoutType"];
        v187 = v135;
        v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
        v92 = v87;
        v14 = v86;
        v136 = v91;
        v141 = 0;
        v19 = 0;
        *errorCopy5 = [v92 initWithDomain:v88 code:2 userInfo:?];
        goto LABEL_123;
      }

      v141 = 0;
      v19 = 0;
      v20 = v155;
      v21 = v151;
LABEL_121:
      v75 = v146;
      goto LABEL_142;
    }
  }

  v141 = 0;
LABEL_55:
  v53 = [dictionaryCopy objectForKeyedSubscript:@"isNowPlaying"];
  v136 = v53;
  if (v53)
  {
    v54 = v53;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v135 = v54;
        goto LABEL_58;
      }

      if (error)
      {
        v93 = objc_alloc(MEMORY[0x1E696ABC0]);
        v94 = v52;
        v95 = *MEMORY[0x1E698F240];
        v184 = *MEMORY[0x1E696A578];
        v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isNowPlaying"];
        v185 = v55;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
        v96 = v95;
        v52 = v94;
        v135 = 0;
        v19 = 0;
        v20 = v155;
        *errorCopy5 = [v93 initWithDomain:v96 code:2 userInfo:v58];
        v21 = v151;
        v75 = v146;
        goto LABEL_139;
      }

      v135 = 0;
      v19 = 0;
LABEL_123:
      v20 = v155;
      v21 = v151;
      v75 = v146;
      goto LABEL_141;
    }
  }

  v135 = 0;
LABEL_58:
  v55 = [dictionaryCopy objectForKeyedSubscript:@"allowedBundleIDs"];
  null = [MEMORY[0x1E695DFB0] null];
  v57 = [v55 isEqual:null];

  if (v57)
  {
    v143 = v9;
    v137 = v7;

    v55 = 0;
  }

  else
  {
    if (v55)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy5)
        {
          v19 = 0;
          v20 = v155;
          v21 = v151;
          v75 = v146;
          goto LABEL_140;
        }

        v116 = objc_alloc(MEMORY[0x1E696ABC0]);
        v117 = v52;
        v118 = *MEMORY[0x1E698F240];
        v182 = *MEMORY[0x1E696A578];
        v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"allowedBundleIDs"];
        v183 = v58;
        v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
        v120 = v118;
        v52 = v117;
        obj = v119;
        v19 = 0;
        *errorCopy5 = [v116 initWithDomain:v120 code:2 userInfo:?];
LABEL_117:
        v20 = v155;
        v21 = v151;
        v75 = v146;
        goto LABEL_138;
      }
    }

    v143 = v9;
    v137 = v7;
  }

  v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v55, "count")}];
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v55 = v55;
  v59 = [v55 countByEnumeratingWithState:&v165 objects:v181 count:16];
  if (!v59)
  {
    goto LABEL_72;
  }

  v60 = v59;
  v61 = *v166;
  v134 = v52;
  do
  {
    for (i = 0; i != v60; ++i)
    {
      if (*v166 != v61)
      {
        objc_enumerationMutation(v55);
      }

      v63 = *(*(&v165 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy5)
        {
          v76 = objc_alloc(MEMORY[0x1E696ABC0]);
          v77 = *MEMORY[0x1E698F240];
          v179 = *MEMORY[0x1E696A578];
          v139 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"allowedBundleIDs"];
          v180 = v139;
          v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
          v79 = v76;
          v80 = v77;
          goto LABEL_87;
        }

LABEL_92:
        v19 = 0;
        v7 = v137;
        v9 = v143;
        v20 = v155;
        v21 = v151;
        v75 = v146;
        v52 = v134;

        goto LABEL_139;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy5)
        {
          v84 = objc_alloc(MEMORY[0x1E696ABC0]);
          v85 = *MEMORY[0x1E698F240];
          v177 = *MEMORY[0x1E696A578];
          v139 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"allowedBundleIDs"];
          v178 = v139;
          v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
          v79 = v84;
          v80 = v85;
LABEL_87:
          v9 = v143;
          v20 = v155;
          *errorCopy5 = [v79 initWithDomain:v80 code:2 userInfo:v78];

          v19 = 0;
          obj = v55;
          v7 = v137;
LABEL_136:
          v21 = v151;
          v75 = v146;
          v52 = v134;
          goto LABEL_137;
        }

        goto LABEL_92;
      }

      [v58 addObject:v63];
    }

    v60 = [v55 countByEnumeratingWithState:&v165 objects:v181 count:16];
    v52 = v134;
  }

  while (v60);
LABEL_72:

  v64 = [dictionaryCopy objectForKeyedSubscript:@"suggestionsIntent"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v66 = [v64 isEqual:null2];

  if (v66)
  {

    v64 = 0;
    goto LABEL_103;
  }

  if (v64)
  {
    objc_opt_class();
    v101 = errorCopy5;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v64;
      v7 = v137;
      v9 = v143;
      if (errorCopy5)
      {
        v102 = objc_alloc(MEMORY[0x1E696ABC0]);
        v103 = *MEMORY[0x1E698F240];
        v175 = *MEMORY[0x1E696A578];
        v140 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"suggestionsIntent"];
        v176 = v140;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
        v105 = v104 = v52;
        *errorCopy5 = [v102 initWithDomain:v103 code:2 userInfo:v105];

        v52 = v104;
        v19 = 0;
        v20 = v155;
        v21 = v151;
        v75 = v146;

        goto LABEL_138;
      }

      v19 = 0;
      goto LABEL_117;
    }
  }

  else
  {
LABEL_103:
    v101 = errorCopy5;
  }

  v139 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v64, "count")}];
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v106 = v64;
  v107 = [v106 countByEnumeratingWithState:&v161 objects:v174 count:16];
  obj = v106;
  if (!v107)
  {
    goto LABEL_114;
  }

  v108 = v107;
  v109 = *v162;
  v134 = v52;
  while (2)
  {
    v110 = 0;
    while (2)
    {
      if (*v162 != v109)
      {
        objc_enumerationMutation(obj);
      }

      v111 = *(*(&v161 + 1) + 8 * v110);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v137;
        v9 = v143;
        v20 = v155;
        if (v101)
        {
          v121 = objc_alloc(MEMORY[0x1E696ABC0]);
          v122 = *MEMORY[0x1E698F240];
          v172 = *MEMORY[0x1E696A578];
          v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"suggestionsIntent"];
          v173 = v112;
          v123 = MEMORY[0x1E695DF20];
          v124 = &v173;
          v125 = &v172;
LABEL_130:
          v126 = [v123 dictionaryWithObjects:v124 forKeys:v125 count:1];
          *errorCopy5 = [v121 initWithDomain:v122 code:2 userInfo:v126];
LABEL_134:
        }

LABEL_135:

        v19 = 0;
        goto LABEL_136;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = v137;
        v9 = v143;
        v20 = v155;
        if (v101)
        {
          v121 = objc_alloc(MEMORY[0x1E696ABC0]);
          v122 = *MEMORY[0x1E698F240];
          v170 = *MEMORY[0x1E696A578];
          v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"suggestionsIntent"];
          v171 = v112;
          v123 = MEMORY[0x1E695DF20];
          v124 = &v171;
          v125 = &v170;
          goto LABEL_130;
        }

        goto LABEL_135;
      }

      v112 = v111;
      v113 = [BMMediaSuggesterSuggestionFeedbackMediaIntent alloc];
      v160 = 0;
      v114 = [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)v113 initWithJSONDictionary:v112 error:&v160];
      v115 = v160;
      if (v115)
      {
        v126 = v115;
        if (errorCopy5)
        {
          v127 = v115;
          *errorCopy5 = v126;
        }

        v7 = v137;
        v9 = v143;
        v20 = v155;
        goto LABEL_134;
      }

      [v139 addObject:v114];

      ++v110;
      v101 = errorCopy5;
      if (v108 != v110)
      {
        continue;
      }

      break;
    }

    v106 = obj;
    v108 = [obj countByEnumeratingWithState:&v161 objects:v174 count:16];
    v52 = v134;
    if (v108)
    {
      continue;
    }

    break;
  }

LABEL_114:

  v75 = v146;
  v20 = v155;
  v21 = v151;
  v19 = -[BMMediaSuggesterSuggestionFeedback initWithSessionIdentifier:numberOfVisibleSuggestions:indexSelected:intent:engagementType:suggestionsRequestDate:targetBundleID:workoutType:isNowPlaying:allowedBundleIDs:suggestionsIntent:](selfCopy, "initWithSessionIdentifier:numberOfVisibleSuggestions:indexSelected:intent:engagementType:suggestionsRequestDate:targetBundleID:workoutType:isNowPlaying:allowedBundleIDs:suggestionsIntent:", v153, v159, v155, v151, [v146 intValue], v147, v144, v141, v135, v58, v139);
  selfCopy = v19;
  v7 = v137;
  v9 = v143;
LABEL_137:

LABEL_138:
LABEL_139:

LABEL_140:
  v10 = v159;
  v14 = v142;
LABEL_141:

LABEL_142:
LABEL_143:

LABEL_144:
LABEL_145:

  v17 = v148;
  self = selfCopy;
  v8 = v153;
LABEL_146:

LABEL_147:
LABEL_148:

LABEL_149:
LABEL_150:

  v128 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaSuggesterSuggestionFeedback *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasNumberOfVisibleSuggestions)
  {
    numberOfVisibleSuggestions = self->_numberOfVisibleSuggestions;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIndexSelected)
  {
    indexSelected = self->_indexSelected;
    PBDataWriterWriteInt32Field();
  }

  if (self->_intent)
  {
    v32 = 0;
    PBDataWriterPlaceMark();
    [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self->_intent writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  engagementType = self->_engagementType;
  PBDataWriterWriteUint32Field();
  if (self->_hasSuggestionsRequestDate)
  {
    suggestionsRequestDate = self->_suggestionsRequestDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_targetBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasWorkoutType)
  {
    workoutType = self->_workoutType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasIsNowPlaying)
  {
    isNowPlaying = self->_isNowPlaying;
    PBDataWriterWriteBOOLField();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_allowedBundleIDs;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_suggestionsIntent;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        v32 = 0;
        PBDataWriterPlaceMark();
        [v22 writeTo:{toCopy, v24}];
        PBDataWriterRecallMark();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v70.receiver = self;
  v70.super_class = BMMediaSuggesterSuggestionFeedback;
  v5 = [(BMEventBase *)&v70 init];
  if (!v5)
  {
    goto LABEL_111;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_109;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v71) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (v71 & 0x7F) << v9;
        if ((v71 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        goto LABEL_109;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) > 5)
      {
        break;
      }

      if (v17 <= 2)
      {
        if (v17 == 1)
        {
          v36 = PBReaderReadString();
          v37 = 40;
LABEL_61:
          v40 = *(&v5->super.super.isa + v37);
          *(&v5->super.super.isa + v37) = v36;

          goto LABEL_108;
        }

        if (v17 == 2)
        {
          v5->_hasNumberOfVisibleSuggestions = 1;
          v71 = 0;
          v34 = [fromCopy position] + 8;
          if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 8, v35 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v59 = v71;
          v60 = 48;
          goto LABEL_107;
        }

        goto LABEL_86;
      }

      if (v17 == 3)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v5->_hasIndexSelected = 1;
        while (1)
        {
          LOBYTE(v71) = 0;
          v45 = [fromCopy position] + 1;
          if (v45 >= [fromCopy position] && (v46 = objc_msgSend(fromCopy, "position") + 1, v46 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v44 |= (v71 & 0x7F) << v42;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v15 = v43++ >= 9;
          if (v15)
          {
            v24 = 0;
            goto LABEL_95;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v44;
        }

LABEL_95:
        v57 = 28;
        goto LABEL_100;
      }

      if (v17 != 4)
      {
        if (v17 == 5)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          while (1)
          {
            LOBYTE(v71) = 0;
            v28 = [fromCopy position] + 1;
            if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v27 |= (v71 & 0x7F) << v25;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            if (v26++ > 8)
            {
              goto LABEL_90;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v27 > 3)
          {
LABEL_90:
            LODWORD(v27) = 0;
          }

          v5->_engagementType = v27;
          goto LABEL_108;
        }

LABEL_86:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_113;
        }

        goto LABEL_108;
      }

      v71 = 0;
      v72 = 0;
      if (!PBReaderPlaceMark() || (v38 = [[BMMediaSuggesterSuggestionFeedbackMediaIntent alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_113:

        goto LABEL_110;
      }

      intent = v5->_intent;
      v5->_intent = v38;

      PBReaderRecallMark();
LABEL_108:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_109;
      }
    }

    if (v17 > 8)
    {
      switch(v17)
      {
        case 9:
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v5->_hasIsNowPlaying = 1;
          while (1)
          {
            LOBYTE(v71) = 0;
            v53 = [fromCopy position] + 1;
            if (v53 >= [fromCopy position] && (v54 = objc_msgSend(fromCopy, "position") + 1, v54 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v52 |= (v71 & 0x7F) << v50;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v15 = v51++ >= 9;
            if (v15)
            {
              LOBYTE(v56) = 0;
              goto LABEL_102;
            }
          }

          v56 = (v52 != 0) & ~[fromCopy hasError];
LABEL_102:
          v5->_isNowPlaying = v56;
          goto LABEL_108;
        case 0xA:
          v41 = PBReaderReadString();
          if (!v41)
          {
            goto LABEL_113;
          }

          v33 = v41;
          [v6 addObject:v41];
LABEL_64:

          goto LABEL_108;
        case 0xB:
          v71 = 0;
          v72 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_113;
          }

          v32 = [[BMMediaSuggesterSuggestionFeedbackMediaIntent alloc] initByReadFrom:fromCopy];
          if (!v32)
          {
            goto LABEL_113;
          }

          v33 = v32;
          [v7 addObject:v32];
          PBReaderRecallMark();
          goto LABEL_64;
      }
    }

    else
    {
      switch(v17)
      {
        case 6:
          v5->_hasSuggestionsRequestDate = 1;
          v71 = 0;
          v48 = [fromCopy position] + 8;
          if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 8, v49 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v59 = v71;
          v60 = 64;
LABEL_107:
          *(&v5->super.super.isa + v60) = v59;
          goto LABEL_108;
        case 7:
          v36 = PBReaderReadString();
          v37 = 72;
          goto LABEL_61;
        case 8:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v5->_hasWorkoutType = 1;
          while (1)
          {
            LOBYTE(v71) = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v71 & 0x7F) << v18;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v15 = v19++ >= 9;
            if (v15)
            {
              v24 = 0;
              goto LABEL_99;
            }
          }

          if ([fromCopy hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_99:
          v57 = 36;
LABEL_100:
          *(&v5->super.super.isa + v57) = v24;
          goto LABEL_108;
      }
    }

    goto LABEL_86;
  }

LABEL_109:
  v63 = [v6 copy];
  allowedBundleIDs = v5->_allowedBundleIDs;
  v5->_allowedBundleIDs = v63;

  v65 = [v7 copy];
  suggestionsIntent = v5->_suggestionsIntent;
  v5->_suggestionsIntent = v65;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_110:
    v68 = 0;
  }

  else
  {
LABEL_111:
    v68 = v5;
  }

  return v68;
}

- (NSString)description
{
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  sessionIdentifier = [(BMMediaSuggesterSuggestionFeedback *)self sessionIdentifier];
  v3 = MEMORY[0x1E696AD98];
  [(BMMediaSuggesterSuggestionFeedback *)self numberOfVisibleSuggestions];
  v18 = [v3 numberWithDouble:?];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaSuggesterSuggestionFeedback indexSelected](self, "indexSelected")}];
  intent = [(BMMediaSuggesterSuggestionFeedback *)self intent];
  v6 = BMMediaSuggesterSuggestionFeedbackEngagementTypeAsString([(BMMediaSuggesterSuggestionFeedback *)self engagementType]);
  v7 = MEMORY[0x1E696AD98];
  [(BMMediaSuggesterSuggestionFeedback *)self suggestionsRequestDate];
  v8 = [v7 numberWithDouble:?];
  targetBundleID = [(BMMediaSuggesterSuggestionFeedback *)self targetBundleID];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaSuggesterSuggestionFeedback workoutType](self, "workoutType")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaSuggesterSuggestionFeedback isNowPlaying](self, "isNowPlaying")}];
  allowedBundleIDs = [(BMMediaSuggesterSuggestionFeedback *)self allowedBundleIDs];
  suggestionsIntent = [(BMMediaSuggesterSuggestionFeedback *)self suggestionsIntent];
  v17 = [v16 initWithFormat:@"BMMediaSuggesterSuggestionFeedback with sessionIdentifier: %@, numberOfVisibleSuggestions: %@, indexSelected: %@, intent: %@, engagementType: %@, suggestionsRequestDate: %@, targetBundleID: %@, workoutType: %@, isNowPlaying: %@, allowedBundleIDs: %@, suggestionsIntent: %@", sessionIdentifier, v18, v4, intent, v6, v8, targetBundleID, v10, v11, allowedBundleIDs, suggestionsIntent];

  return v17;
}

- (BMMediaSuggesterSuggestionFeedback)initWithSessionIdentifier:(id)identifier numberOfVisibleSuggestions:(id)suggestions indexSelected:(id)selected intent:(id)intent engagementType:(int)type suggestionsRequestDate:(id)date targetBundleID:(id)d workoutType:(id)self0 isNowPlaying:(id)self1 allowedBundleIDs:(id)self2 suggestionsIntent:(id)self3
{
  identifierCopy = identifier;
  suggestionsCopy = suggestions;
  selectedCopy = selected;
  intentCopy = intent;
  intentCopy2 = intent;
  dateCopy = date;
  dCopy = d;
  workoutTypeCopy = workoutType;
  playingCopy = playing;
  dsCopy = ds;
  suggestionsIntentCopy = suggestionsIntent;
  v37.receiver = self;
  v37.super_class = BMMediaSuggesterSuggestionFeedback;
  v23 = [(BMEventBase *)&v37 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_sessionIdentifier, identifier);
    if (suggestionsCopy)
    {
      v23->_hasNumberOfVisibleSuggestions = 1;
      [suggestionsCopy doubleValue];
    }

    else
    {
      v23->_hasNumberOfVisibleSuggestions = 0;
      v24 = -1.0;
    }

    v23->_numberOfVisibleSuggestions = v24;
    if (selectedCopy)
    {
      v23->_hasIndexSelected = 1;
      intValue = [selectedCopy intValue];
    }

    else
    {
      v23->_hasIndexSelected = 0;
      intValue = -1;
    }

    v23->_indexSelected = intValue;
    objc_storeStrong(&v23->_intent, intentCopy);
    v23->_engagementType = type;
    if (dateCopy)
    {
      v23->_hasSuggestionsRequestDate = 1;
      [dateCopy doubleValue];
    }

    else
    {
      v23->_hasSuggestionsRequestDate = 0;
      v26 = -1.0;
    }

    v23->_suggestionsRequestDate = v26;
    objc_storeStrong(&v23->_targetBundleID, d);
    if (workoutTypeCopy)
    {
      v23->_hasWorkoutType = 1;
      intValue2 = [workoutTypeCopy intValue];
    }

    else
    {
      v23->_hasWorkoutType = 0;
      intValue2 = -1;
    }

    v23->_workoutType = intValue2;
    if (playingCopy)
    {
      v23->_hasIsNowPlaying = 1;
      v23->_isNowPlaying = [playingCopy BOOLValue];
    }

    else
    {
      v23->_hasIsNowPlaying = 0;
      v23->_isNowPlaying = 0;
    }

    objc_storeStrong(&v23->_allowedBundleIDs, ds);
    objc_storeStrong(&v23->_suggestionsIntent, suggestionsIntent);
  }

  return v23;
}

+ (id)protoFields
{
  v16[11] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionIdentifier" number:1 type:13 subMessageClass:0];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfVisibleSuggestions" number:2 type:0 subMessageClass:0];
  v16[1] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"indexSelected" number:3 type:2 subMessageClass:0];
  v16[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intent" number:4 type:14 subMessageClass:objc_opt_class()];
  v16[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagementType" number:5 type:4 subMessageClass:0];
  v16[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionsRequestDate" number:6 type:0 subMessageClass:0];
  v16[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"targetBundleID" number:7 type:13 subMessageClass:0];
  v16[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"workoutType" number:8 type:2 subMessageClass:0];
  v16[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNowPlaying" number:9 type:12 subMessageClass:0];
  v16[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"allowedBundleIDs" number:10 type:13 subMessageClass:0];
  v16[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionsIntent" number:11 type:14 subMessageClass:objc_opt_class()];
  v16[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v16[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfVisibleSuggestions" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"indexSelected" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"intent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_226_103829];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagementType" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionsRequestDate" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"targetBundleID" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"workoutType" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNowPlaying" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"allowedBundleIDs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_228_103830];
  v10 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"suggestionsIntent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_230_103831];
  v16[0] = v2;
  v16[1] = v3;
  v16[2] = v4;
  v16[3] = v5;
  v16[4] = v6;
  v16[5] = v14;
  v16[6] = v7;
  v16[7] = v15;
  v16[8] = v8;
  v16[9] = v9;
  v16[10] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

id __45__BMMediaSuggesterSuggestionFeedback_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _suggestionsIntentJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __45__BMMediaSuggesterSuggestionFeedback_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _allowedBundleIDsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __45__BMMediaSuggesterSuggestionFeedback_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 intent];
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

    v8 = [[BMMediaSuggesterSuggestionFeedback alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end