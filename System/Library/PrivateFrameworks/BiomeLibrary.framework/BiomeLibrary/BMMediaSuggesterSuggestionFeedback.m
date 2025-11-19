@interface BMMediaSuggesterSuggestionFeedback
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMediaSuggesterSuggestionFeedback)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMediaSuggesterSuggestionFeedback)initWithSessionIdentifier:(id)a3 numberOfVisibleSuggestions:(id)a4 indexSelected:(id)a5 intent:(id)a6 engagementType:(int)a7 suggestionsRequestDate:(id)a8 targetBundleID:(id)a9 workoutType:(id)a10 isNowPlaying:(id)a11 allowedBundleIDs:(id)a12;
- (BMMediaSuggesterSuggestionFeedback)initWithSessionIdentifier:(id)a3 numberOfVisibleSuggestions:(id)a4 indexSelected:(id)a5 intent:(id)a6 engagementType:(int)a7 suggestionsRequestDate:(id)a8 targetBundleID:(id)a9 workoutType:(id)a10 isNowPlaying:(id)a11 allowedBundleIDs:(id)a12 suggestionsIntent:(id)a13;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_allowedBundleIDsJSONArray;
- (id)_suggestionsIntentJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMediaSuggesterSuggestionFeedback

- (BMMediaSuggesterSuggestionFeedback)initWithSessionIdentifier:(id)a3 numberOfVisibleSuggestions:(id)a4 indexSelected:(id)a5 intent:(id)a6 engagementType:(int)a7 suggestionsRequestDate:(id)a8 targetBundleID:(id)a9 workoutType:(id)a10 isNowPlaying:(id)a11 allowedBundleIDs:(id)a12
{
  v16 = a12;
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = objc_opt_new();
  v30 = [(BMMediaSuggesterSuggestionFeedback *)self initWithSessionIdentifier:v24 numberOfVisibleSuggestions:v23 indexSelected:v22 intent:v21 engagementType:a7 suggestionsRequestDate:v20 targetBundleID:v19 workoutType:v18 isNowPlaying:v17 allowedBundleIDs:v16 suggestionsIntent:v25];

  return v30;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMediaSuggesterSuggestionFeedback *)self sessionIdentifier];
    v7 = [v5 sessionIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMediaSuggesterSuggestionFeedback *)self sessionIdentifier];
      v10 = [v5 sessionIdentifier];
      v11 = [v9 isEqual:v10];

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

      v16 = [(BMMediaSuggesterSuggestionFeedback *)self indexSelected];
      if (v16 != [v5 indexSelected])
      {
        goto LABEL_43;
      }
    }

    v17 = [(BMMediaSuggesterSuggestionFeedback *)self intent];
    v18 = [v5 intent];
    v19 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      v20 = [(BMMediaSuggesterSuggestionFeedback *)self intent];
      v21 = [v5 intent];
      v22 = [v20 isEqual:v21];

      if (!v22)
      {
        goto LABEL_43;
      }
    }

    v23 = [(BMMediaSuggesterSuggestionFeedback *)self engagementType];
    if (v23 != [v5 engagementType])
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

    v27 = [(BMMediaSuggesterSuggestionFeedback *)self targetBundleID];
    v28 = [v5 targetBundleID];
    v29 = v28;
    if (v27 == v28)
    {
    }

    else
    {
      v30 = [(BMMediaSuggesterSuggestionFeedback *)self targetBundleID];
      v31 = [v5 targetBundleID];
      v32 = [v30 isEqual:v31];

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

      v33 = [(BMMediaSuggesterSuggestionFeedback *)self workoutType];
      if (v33 != [v5 workoutType])
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

      v34 = [(BMMediaSuggesterSuggestionFeedback *)self isNowPlaying];
      if (v34 != [v5 isNowPlaying])
      {
        goto LABEL_43;
      }
    }

    v35 = [(BMMediaSuggesterSuggestionFeedback *)self allowedBundleIDs];
    v36 = [v5 allowedBundleIDs];
    v37 = v36;
    if (v35 == v36)
    {
    }

    else
    {
      v38 = [(BMMediaSuggesterSuggestionFeedback *)self allowedBundleIDs];
      v39 = [v5 allowedBundleIDs];
      v40 = [v38 isEqual:v39];

      if (!v40)
      {
LABEL_43:
        v12 = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    v42 = [(BMMediaSuggesterSuggestionFeedback *)self suggestionsIntent];
    v43 = [v5 suggestionsIntent];
    if (v42 == v43)
    {
      v12 = 1;
    }

    else
    {
      v44 = [(BMMediaSuggesterSuggestionFeedback *)self suggestionsIntent];
      v45 = [v5 suggestionsIntent];
      v12 = [v44 isEqual:v45];
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
  v3 = [(BMMediaSuggesterSuggestionFeedback *)self sessionIdentifier];
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

  v8 = [(BMMediaSuggesterSuggestionFeedback *)self intent];
  v9 = [v8 jsonDictionary];

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

  v43 = [(BMMediaSuggesterSuggestionFeedback *)self targetBundleID];
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

  v15 = [(BMMediaSuggesterSuggestionFeedback *)self _allowedBundleIDsJSONArray];
  v16 = [(BMMediaSuggesterSuggestionFeedback *)self _suggestionsIntentJSONArray];
  v44[0] = @"sessionIdentifier";
  v17 = v3;
  if (!v3)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v17;
  v45[0] = v17;
  v44[1] = @"numberOfVisibleSuggestions";
  v18 = v6;
  if (!v6)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v18;
  v45[1] = v18;
  v44[2] = @"indexSelected";
  v19 = v7;
  if (!v7)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v19;
  v45[2] = v19;
  v44[3] = @"intent";
  v20 = v9;
  if (!v9)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v6;
  v41 = v3;
  v32 = v20;
  v45[3] = v20;
  v44[4] = @"engagementType";
  v21 = v10;
  if (!v10)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v7;
  v31 = v21;
  v45[4] = v21;
  v44[5] = @"suggestionsRequestDate";
  v22 = v13;
  if (!v13)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v9;
  v45[5] = v22;
  v44[6] = @"targetBundleID";
  v23 = v43;
  if (!v43)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v10;
  v45[6] = v23;
  v44[7] = @"workoutType";
  v24 = v42;
  if (!v42)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v13;
  v45[7] = v24;
  v44[8] = @"isNowPlaying";
  v26 = v14;
  if (!v14)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v45[8] = v26;
  v44[9] = @"allowedBundleIDs";
  v27 = v15;
  if (!v15)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v45[9] = v27;
  v44[10] = @"suggestionsIntent";
  v28 = v16;
  if (!v16)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v45[10] = v28;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:11];
  if (v16)
  {
    if (v15)
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

  if (!v15)
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

  if (!v43)
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
  v4 = [(BMMediaSuggesterSuggestionFeedback *)self suggestionsIntent];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(BMMediaSuggesterSuggestionFeedback *)self allowedBundleIDs];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMediaSuggesterSuggestionFeedback)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v201[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"sessionIdentifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = a4;
        v24 = *MEMORY[0x1E698F240];
        v200 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionIdentifier"];
        v201[0] = v10;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v201 forKeys:&v200 count:1];
        v25 = [v22 initWithDomain:v24 code:2 userInfo:v9];
        v8 = 0;
        v19 = 0;
        *v23 = v25;
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

  v9 = [v6 objectForKeyedSubscript:@"numberOfVisibleSuggestions"];
  v158 = self;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v26 = v8;
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = a4;
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
        *v28 = [v31 initWithDomain:v29 code:2 userInfo:?];
        self = v158;
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

  v11 = [v6 objectForKeyedSubscript:@"indexSelected"];
  v159 = v10;
  v157 = v11;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v20 = 0;
        v19 = 0;
        goto LABEL_148;
      }

      v154 = v8;
      v32 = objc_alloc(MEMORY[0x1E696ABC0]);
      v33 = a4;
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
      *v33 = [v39 initWithDomain:v40 code:2 userInfo:v38];
LABEL_37:
      self = v158;
      goto LABEL_146;
    }

    v155 = v12;
  }

  else
  {
    v155 = 0;
  }

  v13 = [v6 objectForKeyedSubscript:@"intent"];
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
    if (!a4)
    {
      v19 = 0;
      v20 = v155;
      v17 = v41;
      self = v158;
      goto LABEL_147;
    }

    v152 = objc_alloc(MEMORY[0x1E696ABC0]);
    v42 = a4;
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
    *v42 = [v152 initWithDomain:v48 code:2 userInfo:v47];

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
    if (a4)
    {
      v18 = v18;
      *a4 = v18;
    }

    v19 = 0;
    v20 = v155;
    v21 = v151;
    goto LABEL_146;
  }

  v153 = v8;
LABEL_13:
  v14 = [v6 objectForKeyedSubscript:@"engagementType"];
  v156 = a4;
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
        if (a4)
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
          *a4 = v100;
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

  v49 = [v6 objectForKeyedSubscript:@"suggestionsRequestDate"];
  v149 = v49;
  if (v49 && (v50 = v49, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v67 = v14;
        v68 = objc_alloc(MEMORY[0x1E696ABC0]);
        v69 = a4;
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
        *v69 = [v74 initWithDomain:v70 code:2 userInfo:?];
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

  v51 = [v6 objectForKeyedSubscript:@"targetBundleID"];
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
        if (!a4)
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
        *v156 = v83;
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

  v52 = [v6 objectForKeyedSubscript:@"workoutType"];
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

      if (a4)
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
        *v156 = [v92 initWithDomain:v88 code:2 userInfo:?];
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
  v53 = [v6 objectForKeyedSubscript:@"isNowPlaying"];
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

      if (a4)
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
        *v156 = [v93 initWithDomain:v96 code:2 userInfo:v58];
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
  v55 = [v6 objectForKeyedSubscript:@"allowedBundleIDs"];
  v56 = [MEMORY[0x1E695DFB0] null];
  v57 = [v55 isEqual:v56];

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
        if (!v156)
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
        *v156 = [v116 initWithDomain:v120 code:2 userInfo:?];
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
        if (v156)
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
        if (v156)
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
          *v156 = [v79 initWithDomain:v80 code:2 userInfo:v78];

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

  v64 = [v6 objectForKeyedSubscript:@"suggestionsIntent"];
  v65 = [MEMORY[0x1E695DFB0] null];
  v66 = [v64 isEqual:v65];

  if (v66)
  {

    v64 = 0;
    goto LABEL_103;
  }

  if (v64)
  {
    objc_opt_class();
    v101 = v156;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v64;
      v7 = v137;
      v9 = v143;
      if (v156)
      {
        v102 = objc_alloc(MEMORY[0x1E696ABC0]);
        v103 = *MEMORY[0x1E698F240];
        v175 = *MEMORY[0x1E696A578];
        v140 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"suggestionsIntent"];
        v176 = v140;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
        v105 = v104 = v52;
        *v156 = [v102 initWithDomain:v103 code:2 userInfo:v105];

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
    v101 = v156;
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
          *v156 = [v121 initWithDomain:v122 code:2 userInfo:v126];
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
        if (v156)
        {
          v127 = v115;
          *v156 = v126;
        }

        v7 = v137;
        v9 = v143;
        v20 = v155;
        goto LABEL_134;
      }

      [v139 addObject:v114];

      ++v110;
      v101 = v156;
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
  v19 = -[BMMediaSuggesterSuggestionFeedback initWithSessionIdentifier:numberOfVisibleSuggestions:indexSelected:intent:engagementType:suggestionsRequestDate:targetBundleID:workoutType:isNowPlaying:allowedBundleIDs:suggestionsIntent:](v158, "initWithSessionIdentifier:numberOfVisibleSuggestions:indexSelected:intent:engagementType:suggestionsRequestDate:targetBundleID:workoutType:isNowPlaying:allowedBundleIDs:suggestionsIntent:", v153, v159, v155, v151, [v146 intValue], v147, v144, v141, v135, v58, v139);
  v158 = v19;
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
  self = v158;
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
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self->_intent writeTo:v4];
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
        [v22 writeTo:{v4, v24}];
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v70.receiver = self;
  v70.super_class = BMMediaSuggesterSuggestionFeedback;
  v5 = [(BMEventBase *)&v70 init];
  if (!v5)
  {
    goto LABEL_111;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [v4 position];
  if (v8 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_109;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v71) = 0;
        v12 = [v4 position] + 1;
        if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
        {
          v14 = [v4 data];
          [v14 getBytes:&v71 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v16 = [v4 hasError] ? 0 : v11;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v16 & 7) == 4)
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
          v34 = [v4 position] + 8;
          if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 8, v35 <= objc_msgSend(v4, "length")))
          {
            v58 = [v4 data];
            [v58 getBytes:&v71 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
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
          v45 = [v4 position] + 1;
          if (v45 >= [v4 position] && (v46 = objc_msgSend(v4, "position") + 1, v46 <= objc_msgSend(v4, "length")))
          {
            v47 = [v4 data];
            [v47 getBytes:&v71 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if ([v4 hasError])
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
            v28 = [v4 position] + 1;
            if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
            {
              v30 = [v4 data];
              [v30 getBytes:&v71 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if (([v4 hasError] & 1) != 0 || v27 > 3)
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
      if (!PBReaderPlaceMark() || (v38 = [[BMMediaSuggesterSuggestionFeedbackMediaIntent alloc] initByReadFrom:v4]) == 0)
      {
LABEL_113:

        goto LABEL_110;
      }

      intent = v5->_intent;
      v5->_intent = v38;

      PBReaderRecallMark();
LABEL_108:
      v62 = [v4 position];
      if (v62 >= [v4 length])
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
            v53 = [v4 position] + 1;
            if (v53 >= [v4 position] && (v54 = objc_msgSend(v4, "position") + 1, v54 <= objc_msgSend(v4, "length")))
            {
              v55 = [v4 data];
              [v55 getBytes:&v71 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          v56 = (v52 != 0) & ~[v4 hasError];
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

          v32 = [[BMMediaSuggesterSuggestionFeedbackMediaIntent alloc] initByReadFrom:v4];
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
          v48 = [v4 position] + 8;
          if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 8, v49 <= objc_msgSend(v4, "length")))
          {
            v61 = [v4 data];
            [v61 getBytes:&v71 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
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
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v71 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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

  v67 = [v4 hasError];
  if (v67)
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
  v15 = [(BMMediaSuggesterSuggestionFeedback *)self sessionIdentifier];
  v3 = MEMORY[0x1E696AD98];
  [(BMMediaSuggesterSuggestionFeedback *)self numberOfVisibleSuggestions];
  v18 = [v3 numberWithDouble:?];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaSuggesterSuggestionFeedback indexSelected](self, "indexSelected")}];
  v5 = [(BMMediaSuggesterSuggestionFeedback *)self intent];
  v6 = BMMediaSuggesterSuggestionFeedbackEngagementTypeAsString([(BMMediaSuggesterSuggestionFeedback *)self engagementType]);
  v7 = MEMORY[0x1E696AD98];
  [(BMMediaSuggesterSuggestionFeedback *)self suggestionsRequestDate];
  v8 = [v7 numberWithDouble:?];
  v9 = [(BMMediaSuggesterSuggestionFeedback *)self targetBundleID];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaSuggesterSuggestionFeedback workoutType](self, "workoutType")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaSuggesterSuggestionFeedback isNowPlaying](self, "isNowPlaying")}];
  v12 = [(BMMediaSuggesterSuggestionFeedback *)self allowedBundleIDs];
  v13 = [(BMMediaSuggesterSuggestionFeedback *)self suggestionsIntent];
  v17 = [v16 initWithFormat:@"BMMediaSuggesterSuggestionFeedback with sessionIdentifier: %@, numberOfVisibleSuggestions: %@, indexSelected: %@, intent: %@, engagementType: %@, suggestionsRequestDate: %@, targetBundleID: %@, workoutType: %@, isNowPlaying: %@, allowedBundleIDs: %@, suggestionsIntent: %@", v15, v18, v4, v5, v6, v8, v9, v10, v11, v12, v13];

  return v17;
}

- (BMMediaSuggesterSuggestionFeedback)initWithSessionIdentifier:(id)a3 numberOfVisibleSuggestions:(id)a4 indexSelected:(id)a5 intent:(id)a6 engagementType:(int)a7 suggestionsRequestDate:(id)a8 targetBundleID:(id)a9 workoutType:(id)a10 isNowPlaying:(id)a11 allowedBundleIDs:(id)a12 suggestionsIntent:(id)a13
{
  v36 = a3;
  v17 = a4;
  v18 = a5;
  v30 = a6;
  v35 = a6;
  v19 = a8;
  v34 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v33 = a13;
  v37.receiver = self;
  v37.super_class = BMMediaSuggesterSuggestionFeedback;
  v23 = [(BMEventBase *)&v37 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_sessionIdentifier, a3);
    if (v17)
    {
      v23->_hasNumberOfVisibleSuggestions = 1;
      [v17 doubleValue];
    }

    else
    {
      v23->_hasNumberOfVisibleSuggestions = 0;
      v24 = -1.0;
    }

    v23->_numberOfVisibleSuggestions = v24;
    if (v18)
    {
      v23->_hasIndexSelected = 1;
      v25 = [v18 intValue];
    }

    else
    {
      v23->_hasIndexSelected = 0;
      v25 = -1;
    }

    v23->_indexSelected = v25;
    objc_storeStrong(&v23->_intent, v30);
    v23->_engagementType = a7;
    if (v19)
    {
      v23->_hasSuggestionsRequestDate = 1;
      [v19 doubleValue];
    }

    else
    {
      v23->_hasSuggestionsRequestDate = 0;
      v26 = -1.0;
    }

    v23->_suggestionsRequestDate = v26;
    objc_storeStrong(&v23->_targetBundleID, a9);
    if (v20)
    {
      v23->_hasWorkoutType = 1;
      v27 = [v20 intValue];
    }

    else
    {
      v23->_hasWorkoutType = 0;
      v27 = -1;
    }

    v23->_workoutType = v27;
    if (v21)
    {
      v23->_hasIsNowPlaying = 1;
      v23->_isNowPlaying = [v21 BOOLValue];
    }

    else
    {
      v23->_hasIsNowPlaying = 0;
      v23->_isNowPlaying = 0;
    }

    objc_storeStrong(&v23->_allowedBundleIDs, a12);
    objc_storeStrong(&v23->_suggestionsIntent, a13);
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

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