@interface BMMLSEShareSheetFeedback
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSEShareSheetFeedback)initWithIdentifier:(id)identifier engagementType:(int)type engagementIdentifier:(id)engagementIdentifier visiblePeopleSuggestionCount:(id)count visibleAppSuggestionCount:(id)suggestionCount airdropPeopleSuggestionShown:(id)shown inferenceSource:(int)source trialIdentifier:(id)self0 timeouts:(id)self1 productInsights:(id)self2;
- (BMMLSEShareSheetFeedback)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_timeoutsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSEShareSheetFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMMLSEShareSheetFeedback *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMMLSEShareSheetFeedback *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_34;
      }
    }

    engagementType = [(BMMLSEShareSheetFeedback *)self engagementType];
    if (engagementType == [v5 engagementType])
    {
      engagementIdentifier = [(BMMLSEShareSheetFeedback *)self engagementIdentifier];
      engagementIdentifier2 = [v5 engagementIdentifier];
      v16 = engagementIdentifier2;
      if (engagementIdentifier == engagementIdentifier2)
      {
      }

      else
      {
        engagementIdentifier3 = [(BMMLSEShareSheetFeedback *)self engagementIdentifier];
        engagementIdentifier4 = [v5 engagementIdentifier];
        v19 = [engagementIdentifier3 isEqual:engagementIdentifier4];

        if (!v19)
        {
          goto LABEL_34;
        }
      }

      if (-[BMMLSEShareSheetFeedback hasVisiblePeopleSuggestionCount](self, "hasVisiblePeopleSuggestionCount") || [v5 hasVisiblePeopleSuggestionCount])
      {
        if (![(BMMLSEShareSheetFeedback *)self hasVisiblePeopleSuggestionCount])
        {
          goto LABEL_34;
        }

        if (![v5 hasVisiblePeopleSuggestionCount])
        {
          goto LABEL_34;
        }

        visiblePeopleSuggestionCount = [(BMMLSEShareSheetFeedback *)self visiblePeopleSuggestionCount];
        if (visiblePeopleSuggestionCount != [v5 visiblePeopleSuggestionCount])
        {
          goto LABEL_34;
        }
      }

      if (-[BMMLSEShareSheetFeedback hasVisibleAppSuggestionCount](self, "hasVisibleAppSuggestionCount") || [v5 hasVisibleAppSuggestionCount])
      {
        if (![(BMMLSEShareSheetFeedback *)self hasVisibleAppSuggestionCount])
        {
          goto LABEL_34;
        }

        if (![v5 hasVisibleAppSuggestionCount])
        {
          goto LABEL_34;
        }

        visibleAppSuggestionCount = [(BMMLSEShareSheetFeedback *)self visibleAppSuggestionCount];
        if (visibleAppSuggestionCount != [v5 visibleAppSuggestionCount])
        {
          goto LABEL_34;
        }
      }

      if (-[BMMLSEShareSheetFeedback hasAirdropPeopleSuggestionShown](self, "hasAirdropPeopleSuggestionShown") || [v5 hasAirdropPeopleSuggestionShown])
      {
        if (![(BMMLSEShareSheetFeedback *)self hasAirdropPeopleSuggestionShown])
        {
          goto LABEL_34;
        }

        if (![v5 hasAirdropPeopleSuggestionShown])
        {
          goto LABEL_34;
        }

        airdropPeopleSuggestionShown = [(BMMLSEShareSheetFeedback *)self airdropPeopleSuggestionShown];
        if (airdropPeopleSuggestionShown != [v5 airdropPeopleSuggestionShown])
        {
          goto LABEL_34;
        }
      }

      inferenceSource = [(BMMLSEShareSheetFeedback *)self inferenceSource];
      if (inferenceSource != [v5 inferenceSource])
      {
        goto LABEL_34;
      }

      trialIdentifier = [(BMMLSEShareSheetFeedback *)self trialIdentifier];
      trialIdentifier2 = [v5 trialIdentifier];
      v26 = trialIdentifier2;
      if (trialIdentifier == trialIdentifier2)
      {
      }

      else
      {
        trialIdentifier3 = [(BMMLSEShareSheetFeedback *)self trialIdentifier];
        trialIdentifier4 = [v5 trialIdentifier];
        v29 = [trialIdentifier3 isEqual:trialIdentifier4];

        if (!v29)
        {
          goto LABEL_34;
        }
      }

      timeouts = [(BMMLSEShareSheetFeedback *)self timeouts];
      timeouts2 = [v5 timeouts];
      v32 = timeouts2;
      if (timeouts == timeouts2)
      {
      }

      else
      {
        timeouts3 = [(BMMLSEShareSheetFeedback *)self timeouts];
        timeouts4 = [v5 timeouts];
        v35 = [timeouts3 isEqual:timeouts4];

        if (!v35)
        {
          goto LABEL_34;
        }
      }

      productInsights = [(BMMLSEShareSheetFeedback *)self productInsights];
      productInsights2 = [v5 productInsights];
      if (productInsights == productInsights2)
      {
        v12 = 1;
      }

      else
      {
        productInsights3 = [(BMMLSEShareSheetFeedback *)self productInsights];
        productInsights4 = [v5 productInsights];
        v12 = [productInsights3 isEqual:productInsights4];
      }

      goto LABEL_35;
    }

LABEL_34:
    v12 = 0;
LABEL_35:

    goto LABEL_36;
  }

  v12 = 0;
LABEL_36:

  return v12;
}

- (id)jsonDictionary
{
  v40[10] = *MEMORY[0x1E69E9840];
  identifier = [(BMMLSEShareSheetFeedback *)self identifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSEShareSheetFeedback engagementType](self, "engagementType")}];
  engagementIdentifier = [(BMMLSEShareSheetFeedback *)self engagementIdentifier];
  if ([(BMMLSEShareSheetFeedback *)self hasVisiblePeopleSuggestionCount])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEShareSheetFeedback visiblePeopleSuggestionCount](self, "visiblePeopleSuggestionCount")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMMLSEShareSheetFeedback *)self hasVisibleAppSuggestionCount])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEShareSheetFeedback visibleAppSuggestionCount](self, "visibleAppSuggestionCount")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMMLSEShareSheetFeedback *)self hasAirdropPeopleSuggestionShown])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSEShareSheetFeedback airdropPeopleSuggestionShown](self, "airdropPeopleSuggestionShown")}];
  }

  else
  {
    v8 = 0;
  }

  v38 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSEShareSheetFeedback inferenceSource](self, "inferenceSource")}];
  trialIdentifier = [(BMMLSEShareSheetFeedback *)self trialIdentifier];
  jsonDictionary = [trialIdentifier jsonDictionary];

  _timeoutsJSONArray = [(BMMLSEShareSheetFeedback *)self _timeoutsJSONArray];
  productInsights = [(BMMLSEShareSheetFeedback *)self productInsights];
  jsonDictionary2 = [productInsights jsonDictionary];

  v39[0] = @"identifier";
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null;
  v40[0] = null;
  v39[1] = @"engagementType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null2;
  v40[1] = null2;
  v39[2] = @"engagementIdentifier";
  null3 = engagementIdentifier;
  if (!engagementIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = identifier;
  v30 = null3;
  v40[2] = null3;
  v39[3] = @"visiblePeopleSuggestionCount";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v4;
  v29 = null4;
  v40[3] = null4;
  v39[4] = @"visibleAppSuggestionCount";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = engagementIdentifier;
  v28 = null5;
  v40[4] = null5;
  v39[5] = @"airdropPeopleSuggestionShown";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v6;
  v40[5] = null6;
  v39[6] = @"inferenceSource";
  null7 = v38;
  if (!v38)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v7;
  v40[6] = null7;
  v39[7] = @"trialIdentifier";
  null8 = jsonDictionary;
  if (!jsonDictionary)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v8;
  v40[7] = null8;
  v39[8] = @"timeouts";
  null9 = _timeoutsJSONArray;
  if (!_timeoutsJSONArray)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v40[8] = null9;
  v39[9] = @"productInsights";
  null10 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v40[9] = null10;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:10];
  if (jsonDictionary2)
  {
    if (_timeoutsJSONArray)
    {
      goto LABEL_32;
    }
  }

  else
  {

    if (_timeoutsJSONArray)
    {
      goto LABEL_32;
    }
  }

LABEL_32:
  if (!jsonDictionary)
  {
  }

  if (!v38)
  {
  }

  if (!v23)
  {
  }

  if (!v21)
  {
  }

  if (!v34)
  {
  }

  if (v35)
  {
    if (v36)
    {
      goto LABEL_44;
    }

LABEL_51:

    if (v37)
    {
      goto LABEL_45;
    }

    goto LABEL_52;
  }

  if (!v36)
  {
    goto LABEL_51;
  }

LABEL_44:
  if (v37)
  {
    goto LABEL_45;
  }

LABEL_52:

LABEL_45:
  v26 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)_timeoutsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  timeouts = [(BMMLSEShareSheetFeedback *)self timeouts];
  v5 = [timeouts countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(timeouts);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [timeouts countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMLSEShareSheetFeedback)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v172[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  selfCopy = self;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v15 = objc_alloc(MEMORY[0x1E696ABC0]);
        v16 = *MEMORY[0x1E698F240];
        v171 = *MEMORY[0x1E696A578];
        v17 = v7;
        v18 = objc_alloc(MEMORY[0x1E696AEC0]);
        v113 = objc_opt_class();
        v19 = v18;
        v7 = v17;
        v20 = [v19 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v113, @"identifier"];
        v172[0] = v20;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v172 forKeys:&v171 count:1];
        v22 = v15;
        v9 = v21;
        v23 = [v22 initWithDomain:v16 code:2 userInfo:v21];
        v8 = 0;
        v24 = 0;
        *error = v23;
        goto LABEL_108;
      }

      v8 = 0;
      v24 = 0;
      goto LABEL_109;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"engagementType"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v135 = v9;
    }

    else
    {
      v27 = v9;
      v28 = v7;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v57 = objc_alloc(MEMORY[0x1E696ABC0]);
          v58 = v8;
          v59 = *MEMORY[0x1E698F240];
          v169 = *MEMORY[0x1E696A578];
          errorCopy = error;
          error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"engagementType"];
          errorCopy2 = error;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy2 forKeys:&v169 count:1];
          v62 = v59;
          v8 = v58;
          v63 = [v57 initWithDomain:v62 code:2 userInfo:v61];
          v20 = 0;
          v24 = 0;
          *errorCopy = v63;
          v7 = v28;
          v9 = v27;
          v10 = v61;
          goto LABEL_107;
        }

        v20 = 0;
        v24 = 0;
        v9 = v27;
        goto LABEL_108;
      }

      v135 = [MEMORY[0x1E696AD98] numberWithInt:BMMLSEShareSheetFeedbackEngagementTypeFromString(v27)];
      v9 = v27;
    }
  }

  else
  {
    v135 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"engagementIdentifier"];
  v136 = v8;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v29 = v9;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v167 = *MEMORY[0x1E696A578];
        errorCopy3 = error;
        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"engagementIdentifier"];
        v168 = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
        v35 = v30;
        v9 = v29;
        v36 = v31;
        v12 = v33;
        error = 0;
        v24 = 0;
        *errorCopy3 = [v35 initWithDomain:v36 code:2 userInfo:v34];
        v20 = v135;
        goto LABEL_106;
      }

      v24 = 0;
      v20 = v135;
      goto LABEL_107;
    }

    errorCopy5 = error;
    error = v10;
  }

  else
  {
    errorCopy5 = error;
    error = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"visiblePeopleSuggestionCount"];
  v132 = v9;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = errorCopy5;
      if (errorCopy5)
      {
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v124 = v10;
        v38 = *MEMORY[0x1E698F240];
        v165 = *MEMORY[0x1E696A578];
        v34 = v11;
        v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"visiblePeopleSuggestionCount"];
        v166 = v134;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
        v39 = v37;
        v9 = v132;
        v40 = v38;
        v10 = v124;
        v24 = 0;
        *errorCopy5 = [v39 initWithDomain:v40 code:2 userInfo:v13];
        v12 = 0;
        v20 = v135;
        goto LABEL_105;
      }

      v24 = 0;
      v20 = v135;
      v34 = v11;
      goto LABEL_106;
    }

    v130 = v11;
    v12 = v11;
  }

  else
  {
    v130 = v11;
    v12 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"visibleAppSuggestionCount"];
  v140 = v13;
  errorCopy6 = error;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!errorCopy5)
      {
        v134 = 0;
        v24 = 0;
        v20 = v135;
        v34 = v130;
        goto LABEL_105;
      }

      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = v12;
      v43 = *MEMORY[0x1E698F240];
      v163 = *MEMORY[0x1E696A578];
      v44 = objc_alloc(MEMORY[0x1E696AEC0]);
      v114 = objc_opt_class();
      v45 = v44;
      v13 = v140;
      v14 = [v45 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v114, @"visibleAppSuggestionCount"];
      v164 = v14;
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
      v47 = v41;
      v9 = v132;
      v48 = v43;
      v12 = v42;
      v129 = v46;
      v134 = 0;
      v24 = 0;
      *errorCopy5 = [v47 initWithDomain:v48 code:2 userInfo:?];
LABEL_114:
      v20 = v135;
      v34 = v130;
      goto LABEL_104;
    }

    v134 = v13;
  }

  else
  {
    v134 = 0;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"airdropPeopleSuggestionShown"];
  v127 = v12;
  v129 = v14;
  if (!v14)
  {
    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0;
    goto LABEL_33;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy5)
    {
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = v12;
      v51 = *MEMORY[0x1E698F240];
      v161 = *MEMORY[0x1E696A578];
      v52 = objc_alloc(MEMORY[0x1E696AEC0]);
      v115 = objc_opt_class();
      v53 = v52;
      v13 = v140;
      v128 = [v53 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v115, @"airdropPeopleSuggestionShown"];
      v162 = v128;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
      v55 = v49;
      v9 = v132;
      v56 = v51;
      v12 = v50;
      v126 = v54;
      v14 = 0;
      v24 = 0;
      *errorCopy5 = [v55 initWithDomain:v56 code:2 userInfo:?];
      v20 = v135;
      v34 = v130;
      goto LABEL_103;
    }

    v14 = 0;
    v24 = 0;
    goto LABEL_114;
  }

  v14 = v14;
LABEL_33:
  v25 = [dictionaryCopy objectForKeyedSubscript:@"inferenceSource"];
  v126 = v25;
  if (v25 && (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v128 = v26;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy5)
        {
          v104 = objc_alloc(MEMORY[0x1E696ABC0]);
          v105 = *MEMORY[0x1E698F240];
          v159 = *MEMORY[0x1E696A578];
          v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"inferenceSource"];
          v160 = v82;
          v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
          v107 = v105;
          v64 = v106;
          v108 = [v104 initWithDomain:v107 code:2 userInfo:v106];
          v128 = 0;
          v24 = 0;
          *errorCopy5 = v108;
          v20 = v135;
          goto LABEL_100;
        }

        v128 = 0;
        v24 = 0;
        v20 = v135;
        v34 = v130;
        goto LABEL_102;
      }

      v128 = [MEMORY[0x1E696AD98] numberWithInt:BMMLSEShareSheetFeedbackInferenceSourceFromString(v26)];
    }
  }

  else
  {
    v128 = 0;
  }

  v64 = [dictionaryCopy objectForKeyedSubscript:@"trialIdentifier"];
  if (v64)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v119 = v64;
      v122 = v14;
      v64 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy5)
        {
          v84 = objc_alloc(MEMORY[0x1E696ABC0]);
          v138 = *MEMORY[0x1E698F240];
          v157 = *MEMORY[0x1E696A578];
          v85 = v64;
          v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trialIdentifier"];
          v158 = v64;
          v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
          v87 = v84;
          v9 = v132;
          *errorCopy5 = [v87 initWithDomain:v138 code:2 userInfo:v86];

          v24 = 0;
          v82 = v85;
          v20 = v135;
          goto LABEL_100;
        }

        v24 = 0;
        v20 = v135;
        v82 = v64;
        goto LABEL_101;
      }

      v82 = v64;
      v147 = 0;
      v121 = [[BMMLSEShareSheetFeedbackTrialIdentifier alloc] initWithJSONDictionary:v82 error:&v147];
      v83 = v147;
      if (v83)
      {
        if (errorCopy5)
        {
          v83 = v83;
          *errorCopy5 = v83;
        }

        v24 = 0;
        v20 = v135;
        v64 = v121;
        goto LABEL_100;
      }

      v119 = v64;
      v122 = v14;

      v64 = v121;
    }
  }

  else
  {
    v119 = 0;
    v122 = v14;
  }

  v65 = [dictionaryCopy objectForKeyedSubscript:@"timeouts"];
  null = [MEMORY[0x1E695DFB0] null];
  v67 = [v65 isEqual:null];

  v123 = dictionaryCopy;
  if (v67)
  {
    v120 = v64;
    v118 = v7;

    v65 = 0;
  }

  else
  {
    if (v65)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy5)
        {
          v98 = objc_alloc(MEMORY[0x1E696ABC0]);
          v99 = *MEMORY[0x1E698F240];
          v155 = *MEMORY[0x1E696A578];
          v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"timeouts"];
          v156 = v137;
          v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
          v100 = v99;
          v13 = v140;
          v24 = 0;
          *errorCopy5 = [v98 initWithDomain:v100 code:2 userInfo:v92];
          v20 = v135;
          v82 = v119;
          goto LABEL_98;
        }

        v24 = 0;
        v9 = v132;
        v20 = v135;
        v82 = v119;
        goto LABEL_99;
      }
    }

    v120 = v64;
    v118 = v7;
  }

  v137 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v65, "count")}];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v65 = v65;
  v68 = [v65 countByEnumeratingWithState:&v143 objects:v154 count:16];
  if (!v68)
  {
    goto LABEL_71;
  }

  v69 = v68;
  v70 = *v144;
  v125 = v10;
  while (2)
  {
    for (i = 0; i != v69; ++i)
    {
      if (*v144 != v70)
      {
        objc_enumerationMutation(v65);
      }

      v72 = *(*(&v143 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy5)
        {
          v88 = objc_alloc(MEMORY[0x1E696ABC0]);
          v89 = *MEMORY[0x1E698F240];
          v152 = *MEMORY[0x1E696A578];
          v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"timeouts"];
          v153 = v73;
          v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
          v91 = v88;
          v13 = v140;
          *errorCopy5 = [v91 initWithDomain:v89 code:2 userInfo:v90];

          v24 = 0;
          v92 = v65;
          v7 = v118;
          v20 = v135;
          v10 = v125;
          goto LABEL_90;
        }

        v24 = 0;
        v92 = v65;
        v7 = v118;
        v20 = v135;
        v10 = v125;
LABEL_125:
        v82 = v119;
        v64 = v120;
        goto LABEL_98;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy5)
        {
          v93 = objc_alloc(MEMORY[0x1E696ABC0]);
          v94 = *MEMORY[0x1E698F240];
          v150 = *MEMORY[0x1E696A578];
          v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeouts"];
          v151 = v73;
          v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
          *errorCopy5 = [v93 initWithDomain:v94 code:2 userInfo:v95];

          v24 = 0;
          v92 = v65;
          v7 = v118;
          v20 = v135;
          v10 = v125;
          goto LABEL_89;
        }

        v24 = 0;
        v92 = v65;
        v7 = v118;
        v20 = v135;
        v10 = v125;
        v13 = v140;
        goto LABEL_125;
      }

      v73 = v72;
      v74 = [BMMLSEShareSheetFeedbackTimeout alloc];
      v142 = 0;
      v75 = [(BMMLSEShareSheetFeedbackTimeout *)v74 initWithJSONDictionary:v73 error:&v142];
      v76 = v142;
      if (v76)
      {
        v96 = v76;
        v10 = v125;
        if (errorCopy5)
        {
          v97 = v76;
          *errorCopy5 = v96;
        }

        v24 = 0;
        v92 = v65;
        v7 = v118;
        v20 = v135;
LABEL_89:
        v13 = v140;
LABEL_90:
        v82 = v119;
        v64 = v120;
LABEL_97:

        goto LABEL_98;
      }

      [v137 addObject:v75];

      v13 = v140;
    }

    v69 = [v65 countByEnumeratingWithState:&v143 objects:v154 count:16];
    v10 = v125;
    if (v69)
    {
      continue;
    }

    break;
  }

LABEL_71:

  v77 = [v123 objectForKeyedSubscript:@"productInsights"];
  v117 = v77;
  if (!v77)
  {
    v73 = 0;
    v7 = v118;
    v20 = v135;
    v80 = v136;
    v81 = v127;
    v79 = v128;
    v64 = v120;
    goto LABEL_96;
  }

  v78 = v77;
  objc_opt_class();
  v7 = v118;
  v79 = v128;
  v64 = v120;
  if (objc_opt_isKindOfClass())
  {
    v73 = 0;
    v20 = v135;
    v80 = v136;
    v81 = v127;
    goto LABEL_96;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v92 = v78;
    v141 = 0;
    v73 = [[BMPeopleSuggesterEventLevelMetrics alloc] initWithJSONDictionary:v92 error:&v141];
    v109 = v141;
    v20 = v135;
    if (v109)
    {
      if (errorCopy5)
      {
        v109 = v109;
        *errorCopy5 = v109;
      }

      v24 = 0;
      v13 = v140;
      v82 = v119;
      goto LABEL_97;
    }

    v80 = v136;
    v81 = v127;
    v79 = v128;
LABEL_96:
    intValue = [v20 intValue];
    v128 = v79;
    LODWORD(v112) = [v79 intValue];
    v24 = [(BMMLSEShareSheetFeedback *)selfCopy initWithIdentifier:v80 engagementType:intValue engagementIdentifier:errorCopy6 visiblePeopleSuggestionCount:v81 visibleAppSuggestionCount:v134 airdropPeopleSuggestionShown:v122 inferenceSource:v112 trialIdentifier:v64 timeouts:v137 productInsights:v73];
    selfCopy = v24;
    v13 = v140;
    v82 = v119;
    v92 = v117;
    goto LABEL_97;
  }

  v20 = v135;
  if (errorCopy5)
  {
    v116 = objc_alloc(MEMORY[0x1E696ABC0]);
    v110 = *MEMORY[0x1E698F240];
    v148 = *MEMORY[0x1E696A578];
    v92 = v117;
    v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"productInsights"];
    v149 = v73;
    v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
    *errorCopy5 = [v116 initWithDomain:v110 code:2 userInfo:v111];

    v24 = 0;
    goto LABEL_89;
  }

  v24 = 0;
  v13 = v140;
  v82 = v119;
  v64 = v120;
  v92 = v117;
LABEL_98:

  dictionaryCopy = v123;
  v9 = v132;
LABEL_99:

  v14 = v122;
LABEL_100:

LABEL_101:
  v34 = v130;
LABEL_102:
  v12 = v127;
LABEL_103:

LABEL_104:
  error = errorCopy6;
LABEL_105:

LABEL_106:
  v8 = v136;
LABEL_107:

LABEL_108:
LABEL_109:

  v102 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEShareSheetFeedback *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  engagementType = self->_engagementType;
  PBDataWriterWriteUint32Field();
  if (self->_engagementIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasVisiblePeopleSuggestionCount)
  {
    visiblePeopleSuggestionCount = self->_visiblePeopleSuggestionCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasVisibleAppSuggestionCount)
  {
    visibleAppSuggestionCount = self->_visibleAppSuggestionCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasAirdropPeopleSuggestionShown)
  {
    airdropPeopleSuggestionShown = self->_airdropPeopleSuggestionShown;
    PBDataWriterWriteBOOLField();
  }

  inferenceSource = self->_inferenceSource;
  PBDataWriterWriteUint32Field();
  if (self->_trialIdentifier)
  {
    v21 = 0;
    PBDataWriterPlaceMark();
    [(BMMLSEShareSheetFeedbackTrialIdentifier *)self->_trialIdentifier writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_timeouts;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        v21 = 0;
        PBDataWriterPlaceMark();
        [v15 writeTo:{toCopy, v17}];
        PBDataWriterRecallMark();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v12);
  }

  if (self->_productInsights)
  {
    v21 = 0;
    PBDataWriterPlaceMark();
    [(BMPeopleSuggesterEventLevelMetrics *)self->_productInsights writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v65.receiver = self;
  v65.super_class = BMMLSEShareSheetFeedback;
  v5 = [(BMEventBase *)&v65 init];
  if (!v5)
  {
    goto LABEL_114;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_112;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v66) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v66 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v66 & 0x7F) << v8;
        if ((v66 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_112;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 5)
      {
        if (v16 <= 2)
        {
          if (v16 == 1)
          {
            v38 = PBReaderReadString();
            v39 = 40;
LABEL_72:
            v47 = *(&v5->super.super.isa + v39);
            *(&v5->super.super.isa + v39) = v38;

            goto LABEL_111;
          }

          if (v16 == 2)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v29 = [fromCopy position] + 1;
              if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 1, v30 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v66 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v28 |= (v66 & 0x7F) << v26;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v32 = v27++ > 8;
              if (v32)
              {
                goto LABEL_93;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v28 > 7)
            {
LABEL_93:
              LODWORD(v28) = 0;
            }

            v57 = 24;
LABEL_99:
            *(&v5->super.super.isa + v57) = v28;
            goto LABEL_111;
          }
        }

        else
        {
          switch(v16)
          {
            case 3:
              v38 = PBReaderReadString();
              v39 = 48;
              goto LABEL_72;
            case 4:
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v5->_hasVisiblePeopleSuggestionCount = 1;
              while (1)
              {
                LOBYTE(v66) = 0;
                v52 = [fromCopy position] + 1;
                if (v52 >= [fromCopy position] && (v53 = objc_msgSend(fromCopy, "position") + 1, v53 <= objc_msgSend(fromCopy, "length")))
                {
                  data3 = [fromCopy data];
                  [data3 getBytes:&v66 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v51 |= (v66 & 0x7F) << v49;
                if ((v66 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v14 = v50++ >= 9;
                if (v14)
                {
                  v23 = 0;
                  goto LABEL_109;
                }
              }

              if ([fromCopy hasError])
              {
                v23 = 0;
              }

              else
              {
                v23 = v51;
              }

LABEL_109:
              v58 = 28;
              goto LABEL_110;
            case 5:
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v5->_hasVisibleAppSuggestionCount = 1;
              while (1)
              {
                LOBYTE(v66) = 0;
                v20 = [fromCopy position] + 1;
                if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
                {
                  data4 = [fromCopy data];
                  [data4 getBytes:&v66 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v19 |= (v66 & 0x7F) << v17;
                if ((v66 & 0x80) == 0)
                {
                  break;
                }

                v17 += 7;
                v14 = v18++ >= 9;
                if (v14)
                {
                  v23 = 0;
                  goto LABEL_105;
                }
              }

              if ([fromCopy hasError])
              {
                v23 = 0;
              }

              else
              {
                v23 = v19;
              }

LABEL_105:
              v58 = 32;
LABEL_110:
              *(&v5->super.super.isa + v58) = v23;
              goto LABEL_111;
          }
        }

        goto LABEL_89;
      }

      if (v16 <= 7)
      {
        break;
      }

      if (v16 == 8)
      {
        v66 = 0;
        v67 = 0;
        if (!PBReaderPlaceMark() || (v24 = [[BMMLSEShareSheetFeedbackTrialIdentifier alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_116:

          goto LABEL_113;
        }

        v25 = 56;
        goto LABEL_76;
      }

      if (v16 != 9)
      {
        if (v16 == 10)
        {
          v66 = 0;
          v67 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_116;
          }

          v24 = [[BMPeopleSuggesterEventLevelMetrics alloc] initByReadFrom:fromCopy];
          if (!v24)
          {
            goto LABEL_116;
          }

          v25 = 72;
LABEL_76:
          v48 = *(&v5->super.super.isa + v25);
          *(&v5->super.super.isa + v25) = v24;

          PBReaderRecallMark();
          goto LABEL_111;
        }

        goto LABEL_89;
      }

      v66 = 0;
      v67 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_116;
      }

      v55 = [[BMMLSEShareSheetFeedbackTimeout alloc] initByReadFrom:fromCopy];
      if (!v55)
      {
        goto LABEL_116;
      }

      v56 = v55;
      [v6 addObject:v55];
      PBReaderRecallMark();

LABEL_111:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_112;
      }
    }

    if (v16 == 6)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v5->_hasAirdropPeopleSuggestionShown = 1;
      while (1)
      {
        LOBYTE(v66) = 0;
        v43 = [fromCopy position] + 1;
        if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
        {
          data5 = [fromCopy data];
          [data5 getBytes:&v66 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v42 |= (v66 & 0x7F) << v40;
        if ((v66 & 0x80) == 0)
        {
          break;
        }

        v40 += 7;
        v14 = v41++ >= 9;
        if (v14)
        {
          LOBYTE(v46) = 0;
          goto LABEL_101;
        }
      }

      v46 = (v42 != 0) & ~[fromCopy hasError];
LABEL_101:
      v5->_airdropPeopleSuggestionShown = v46;
      goto LABEL_111;
    }

    if (v16 == 7)
    {
      v33 = 0;
      v34 = 0;
      v28 = 0;
      while (1)
      {
        LOBYTE(v66) = 0;
        v35 = [fromCopy position] + 1;
        if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:&v66 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v28 |= (v66 & 0x7F) << v33;
        if ((v66 & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v32 = v34++ > 8;
        if (v32)
        {
          goto LABEL_97;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v28 > 2)
      {
LABEL_97:
        LODWORD(v28) = 0;
      }

      v57 = 36;
      goto LABEL_99;
    }

LABEL_89:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_111;
  }

LABEL_112:
  v60 = [v6 copy];
  timeouts = v5->_timeouts;
  v5->_timeouts = v60;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_113:
    v63 = 0;
  }

  else
  {
LABEL_114:
    v63 = v5;
  }

  return v63;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMMLSEShareSheetFeedback *)self identifier];
  v3 = BMMLSEShareSheetFeedbackEngagementTypeAsString([(BMMLSEShareSheetFeedback *)self engagementType]);
  engagementIdentifier = [(BMMLSEShareSheetFeedback *)self engagementIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEShareSheetFeedback visiblePeopleSuggestionCount](self, "visiblePeopleSuggestionCount")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEShareSheetFeedback visibleAppSuggestionCount](self, "visibleAppSuggestionCount")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSEShareSheetFeedback airdropPeopleSuggestionShown](self, "airdropPeopleSuggestionShown")}];
  v8 = BMMLSEShareSheetFeedbackInferenceSourceAsString([(BMMLSEShareSheetFeedback *)self inferenceSource]);
  trialIdentifier = [(BMMLSEShareSheetFeedback *)self trialIdentifier];
  timeouts = [(BMMLSEShareSheetFeedback *)self timeouts];
  productInsights = [(BMMLSEShareSheetFeedback *)self productInsights];
  v15 = [v14 initWithFormat:@"BMMLSEShareSheetFeedback with identifier: %@, engagementType: %@, engagementIdentifier: %@, visiblePeopleSuggestionCount: %@, visibleAppSuggestionCount: %@, airdropPeopleSuggestionShown: %@, inferenceSource: %@, trialIdentifier: %@, timeouts: %@, productInsights: %@", identifier, v3, engagementIdentifier, v5, v6, v7, v8, trialIdentifier, timeouts, productInsights];

  return v15;
}

- (BMMLSEShareSheetFeedback)initWithIdentifier:(id)identifier engagementType:(int)type engagementIdentifier:(id)engagementIdentifier visiblePeopleSuggestionCount:(id)count visibleAppSuggestionCount:(id)suggestionCount airdropPeopleSuggestionShown:(id)shown inferenceSource:(int)source trialIdentifier:(id)self0 timeouts:(id)self1 productInsights:(id)self2
{
  identifierCopy = identifier;
  engagementIdentifierCopy = engagementIdentifier;
  countCopy = count;
  suggestionCountCopy = suggestionCount;
  shownCopy = shown;
  trialIdentifierCopy = trialIdentifier;
  timeoutsCopy = timeouts;
  insightsCopy = insights;
  v31.receiver = self;
  v31.super_class = BMMLSEShareSheetFeedback;
  v22 = [(BMEventBase *)&v31 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_identifier, identifier);
    v22->_engagementType = type;
    objc_storeStrong(&v22->_engagementIdentifier, engagementIdentifier);
    if (countCopy)
    {
      v22->_hasVisiblePeopleSuggestionCount = 1;
      unsignedIntValue = [countCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v22->_hasVisiblePeopleSuggestionCount = 0;
    }

    v22->_visiblePeopleSuggestionCount = unsignedIntValue;
    if (suggestionCountCopy)
    {
      v22->_hasVisibleAppSuggestionCount = 1;
      unsignedIntValue2 = [suggestionCountCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v22->_hasVisibleAppSuggestionCount = 0;
    }

    v22->_visibleAppSuggestionCount = unsignedIntValue2;
    if (shownCopy)
    {
      v22->_hasAirdropPeopleSuggestionShown = 1;
      v22->_airdropPeopleSuggestionShown = [shownCopy BOOLValue];
    }

    else
    {
      v22->_hasAirdropPeopleSuggestionShown = 0;
      v22->_airdropPeopleSuggestionShown = 0;
    }

    v22->_inferenceSource = source;
    objc_storeStrong(&v22->_trialIdentifier, trialIdentifier);
    objc_storeStrong(&v22->_timeouts, timeouts);
    objc_storeStrong(&v22->_productInsights, insights);
  }

  return v22;
}

+ (id)protoFields
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v15[0] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagementType" number:2 type:4 subMessageClass:0];
  v15[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagementIdentifier" number:3 type:13 subMessageClass:0];
  v15[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visiblePeopleSuggestionCount" number:4 type:4 subMessageClass:0];
  v15[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visibleAppSuggestionCount" number:5 type:4 subMessageClass:0];
  v15[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"airdropPeopleSuggestionShown" number:6 type:12 subMessageClass:0];
  v15[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inferenceSource" number:7 type:4 subMessageClass:0];
  v15[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialIdentifier" number:8 type:14 subMessageClass:objc_opt_class()];
  v15[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeouts" number:9 type:14 subMessageClass:objc_opt_class()];
  v15[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productInsights" number:10 type:14 subMessageClass:objc_opt_class()];
  v15[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagementType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagementIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visiblePeopleSuggestionCount" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visibleAppSuggestionCount" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"airdropPeopleSuggestionShown" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inferenceSource" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trialIdentifier_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_242];
  v10 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeouts_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_244];
  v11 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"productInsights_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_246];
  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v6;
  v15[5] = v7;
  v15[6] = v8;
  v15[7] = v9;
  v15[8] = v10;
  v15[9] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

id __35__BMMLSEShareSheetFeedback_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 productInsights];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __35__BMMLSEShareSheetFeedback_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _timeoutsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __35__BMMLSEShareSheetFeedback_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 trialIdentifier];
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

    v8 = [[BMMLSEShareSheetFeedback alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end