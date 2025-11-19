@interface BMMLSEShareSheetFeedback
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMLSEShareSheetFeedback)initWithIdentifier:(id)a3 engagementType:(int)a4 engagementIdentifier:(id)a5 visiblePeopleSuggestionCount:(id)a6 visibleAppSuggestionCount:(id)a7 airdropPeopleSuggestionShown:(id)a8 inferenceSource:(int)a9 trialIdentifier:(id)a10 timeouts:(id)a11 productInsights:(id)a12;
- (BMMLSEShareSheetFeedback)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_timeoutsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMLSEShareSheetFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMLSEShareSheetFeedback *)self identifier];
    v7 = [v5 identifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMLSEShareSheetFeedback *)self identifier];
      v10 = [v5 identifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_34;
      }
    }

    v13 = [(BMMLSEShareSheetFeedback *)self engagementType];
    if (v13 == [v5 engagementType])
    {
      v14 = [(BMMLSEShareSheetFeedback *)self engagementIdentifier];
      v15 = [v5 engagementIdentifier];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMMLSEShareSheetFeedback *)self engagementIdentifier];
        v18 = [v5 engagementIdentifier];
        v19 = [v17 isEqual:v18];

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

        v20 = [(BMMLSEShareSheetFeedback *)self visiblePeopleSuggestionCount];
        if (v20 != [v5 visiblePeopleSuggestionCount])
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

        v21 = [(BMMLSEShareSheetFeedback *)self visibleAppSuggestionCount];
        if (v21 != [v5 visibleAppSuggestionCount])
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

        v22 = [(BMMLSEShareSheetFeedback *)self airdropPeopleSuggestionShown];
        if (v22 != [v5 airdropPeopleSuggestionShown])
        {
          goto LABEL_34;
        }
      }

      v23 = [(BMMLSEShareSheetFeedback *)self inferenceSource];
      if (v23 != [v5 inferenceSource])
      {
        goto LABEL_34;
      }

      v24 = [(BMMLSEShareSheetFeedback *)self trialIdentifier];
      v25 = [v5 trialIdentifier];
      v26 = v25;
      if (v24 == v25)
      {
      }

      else
      {
        v27 = [(BMMLSEShareSheetFeedback *)self trialIdentifier];
        v28 = [v5 trialIdentifier];
        v29 = [v27 isEqual:v28];

        if (!v29)
        {
          goto LABEL_34;
        }
      }

      v30 = [(BMMLSEShareSheetFeedback *)self timeouts];
      v31 = [v5 timeouts];
      v32 = v31;
      if (v30 == v31)
      {
      }

      else
      {
        v33 = [(BMMLSEShareSheetFeedback *)self timeouts];
        v34 = [v5 timeouts];
        v35 = [v33 isEqual:v34];

        if (!v35)
        {
          goto LABEL_34;
        }
      }

      v37 = [(BMMLSEShareSheetFeedback *)self productInsights];
      v38 = [v5 productInsights];
      if (v37 == v38)
      {
        v12 = 1;
      }

      else
      {
        v39 = [(BMMLSEShareSheetFeedback *)self productInsights];
        v40 = [v5 productInsights];
        v12 = [v39 isEqual:v40];
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
  v3 = [(BMMLSEShareSheetFeedback *)self identifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSEShareSheetFeedback engagementType](self, "engagementType")}];
  v5 = [(BMMLSEShareSheetFeedback *)self engagementIdentifier];
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
  v9 = [(BMMLSEShareSheetFeedback *)self trialIdentifier];
  v10 = [v9 jsonDictionary];

  v11 = [(BMMLSEShareSheetFeedback *)self _timeoutsJSONArray];
  v12 = [(BMMLSEShareSheetFeedback *)self productInsights];
  v13 = [v12 jsonDictionary];

  v39[0] = @"identifier";
  v14 = v3;
  if (!v3)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v14;
  v40[0] = v14;
  v39[1] = @"engagementType";
  v15 = v4;
  if (!v4)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v15;
  v40[1] = v15;
  v39[2] = @"engagementIdentifier";
  v16 = v5;
  if (!v5)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v3;
  v30 = v16;
  v40[2] = v16;
  v39[3] = @"visiblePeopleSuggestionCount";
  v17 = v6;
  if (!v6)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v4;
  v29 = v17;
  v40[3] = v17;
  v39[4] = @"visibleAppSuggestionCount";
  v18 = v7;
  if (!v7)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v5;
  v28 = v18;
  v40[4] = v18;
  v39[5] = @"airdropPeopleSuggestionShown";
  v19 = v8;
  if (!v8)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v6;
  v40[5] = v19;
  v39[6] = @"inferenceSource";
  v20 = v38;
  if (!v38)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v7;
  v40[6] = v20;
  v39[7] = @"trialIdentifier";
  v22 = v10;
  if (!v10)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v8;
  v40[7] = v22;
  v39[8] = @"timeouts";
  v24 = v11;
  if (!v11)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v40[8] = v24;
  v39[9] = @"productInsights";
  v25 = v13;
  if (!v13)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v40[9] = v25;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:10];
  if (v13)
  {
    if (v11)
    {
      goto LABEL_32;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_32;
    }
  }

LABEL_32:
  if (!v10)
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
  v4 = [(BMMLSEShareSheetFeedback *)self timeouts];
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

- (BMMLSEShareSheetFeedback)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v172[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  v139 = self;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
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
        *a4 = v23;
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

  v9 = [v6 objectForKeyedSubscript:@"engagementType"];
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
        if (a4)
        {
          v57 = objc_alloc(MEMORY[0x1E696ABC0]);
          v58 = v8;
          v59 = *MEMORY[0x1E698F240];
          v169 = *MEMORY[0x1E696A578];
          v60 = a4;
          a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"engagementType"];
          v170 = a4;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
          v62 = v59;
          v8 = v58;
          v63 = [v57 initWithDomain:v62 code:2 userInfo:v61];
          v20 = 0;
          v24 = 0;
          *v60 = v63;
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

  v10 = [v6 objectForKeyedSubscript:@"engagementIdentifier"];
  v136 = v8;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v29 = v9;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v167 = *MEMORY[0x1E696A578];
        v32 = a4;
        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"engagementIdentifier"];
        v168 = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
        v35 = v30;
        v9 = v29;
        v36 = v31;
        v12 = v33;
        a4 = 0;
        v24 = 0;
        *v32 = [v35 initWithDomain:v36 code:2 userInfo:v34];
        v20 = v135;
        goto LABEL_106;
      }

      v24 = 0;
      v20 = v135;
      goto LABEL_107;
    }

    v133 = a4;
    a4 = v10;
  }

  else
  {
    v133 = a4;
    a4 = 0;
  }

  v11 = [v6 objectForKeyedSubscript:@"visiblePeopleSuggestionCount"];
  v132 = v9;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = v133;
      if (v133)
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
        *v133 = [v39 initWithDomain:v40 code:2 userInfo:v13];
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

  v13 = [v6 objectForKeyedSubscript:@"visibleAppSuggestionCount"];
  v140 = v13;
  v131 = a4;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!v133)
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
      *v133 = [v47 initWithDomain:v48 code:2 userInfo:?];
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

  v14 = [v6 objectForKeyedSubscript:@"airdropPeopleSuggestionShown"];
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
    if (v133)
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
      *v133 = [v55 initWithDomain:v56 code:2 userInfo:?];
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
  v25 = [v6 objectForKeyedSubscript:@"inferenceSource"];
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
        if (v133)
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
          *v133 = v108;
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

  v64 = [v6 objectForKeyedSubscript:@"trialIdentifier"];
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
        if (v133)
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
          *v133 = [v87 initWithDomain:v138 code:2 userInfo:v86];

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
        if (v133)
        {
          v83 = v83;
          *v133 = v83;
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

  v65 = [v6 objectForKeyedSubscript:@"timeouts"];
  v66 = [MEMORY[0x1E695DFB0] null];
  v67 = [v65 isEqual:v66];

  v123 = v6;
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
        if (v133)
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
          *v133 = [v98 initWithDomain:v100 code:2 userInfo:v92];
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
        if (v133)
        {
          v88 = objc_alloc(MEMORY[0x1E696ABC0]);
          v89 = *MEMORY[0x1E698F240];
          v152 = *MEMORY[0x1E696A578];
          v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"timeouts"];
          v153 = v73;
          v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
          v91 = v88;
          v13 = v140;
          *v133 = [v91 initWithDomain:v89 code:2 userInfo:v90];

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
        if (v133)
        {
          v93 = objc_alloc(MEMORY[0x1E696ABC0]);
          v94 = *MEMORY[0x1E698F240];
          v150 = *MEMORY[0x1E696A578];
          v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeouts"];
          v151 = v73;
          v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
          *v133 = [v93 initWithDomain:v94 code:2 userInfo:v95];

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
        if (v133)
        {
          v97 = v76;
          *v133 = v96;
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
      if (v133)
      {
        v109 = v109;
        *v133 = v109;
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
    v101 = [v20 intValue];
    v128 = v79;
    LODWORD(v112) = [v79 intValue];
    v24 = [(BMMLSEShareSheetFeedback *)v139 initWithIdentifier:v80 engagementType:v101 engagementIdentifier:v131 visiblePeopleSuggestionCount:v81 visibleAppSuggestionCount:v134 airdropPeopleSuggestionShown:v122 inferenceSource:v112 trialIdentifier:v64 timeouts:v137 productInsights:v73];
    v139 = v24;
    v13 = v140;
    v82 = v119;
    v92 = v117;
    goto LABEL_97;
  }

  v20 = v135;
  if (v133)
  {
    v116 = objc_alloc(MEMORY[0x1E696ABC0]);
    v110 = *MEMORY[0x1E698F240];
    v148 = *MEMORY[0x1E696A578];
    v92 = v117;
    v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"productInsights"];
    v149 = v73;
    v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
    *v133 = [v116 initWithDomain:v110 code:2 userInfo:v111];

    v24 = 0;
    goto LABEL_89;
  }

  v24 = 0;
  v13 = v140;
  v82 = v119;
  v64 = v120;
  v92 = v117;
LABEL_98:

  v6 = v123;
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
  a4 = v131;
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
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    [(BMMLSEShareSheetFeedbackTrialIdentifier *)self->_trialIdentifier writeTo:v4];
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
        [v15 writeTo:{v4, v17}];
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
    [(BMPeopleSuggesterEventLevelMetrics *)self->_productInsights writeTo:v4];
    PBDataWriterRecallMark();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v65.receiver = self;
  v65.super_class = BMMLSEShareSheetFeedback;
  v5 = [(BMEventBase *)&v65 init];
  if (!v5)
  {
    goto LABEL_114;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_112;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v66) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
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
              v29 = [v4 position] + 1;
              if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
              {
                v31 = [v4 data];
                [v31 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if (([v4 hasError] & 1) != 0 || v28 > 7)
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
                v52 = [v4 position] + 1;
                if (v52 >= [v4 position] && (v53 = objc_msgSend(v4, "position") + 1, v53 <= objc_msgSend(v4, "length")))
                {
                  v54 = [v4 data];
                  [v54 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
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

              if ([v4 hasError])
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
                v20 = [v4 position] + 1;
                if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
                {
                  v22 = [v4 data];
                  [v22 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
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

              if ([v4 hasError])
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
        if (!PBReaderPlaceMark() || (v24 = [[BMMLSEShareSheetFeedbackTrialIdentifier alloc] initByReadFrom:v4]) == 0)
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

          v24 = [[BMPeopleSuggesterEventLevelMetrics alloc] initByReadFrom:v4];
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

      v55 = [[BMMLSEShareSheetFeedbackTimeout alloc] initByReadFrom:v4];
      if (!v55)
      {
        goto LABEL_116;
      }

      v56 = v55;
      [v6 addObject:v55];
      PBReaderRecallMark();

LABEL_111:
      v59 = [v4 position];
      if (v59 >= [v4 length])
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
        v43 = [v4 position] + 1;
        if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 1, v44 <= objc_msgSend(v4, "length")))
        {
          v45 = [v4 data];
          [v45 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v46 = (v42 != 0) & ~[v4 hasError];
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
        v35 = [v4 position] + 1;
        if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
        {
          v37 = [v4 data];
          [v37 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      if (([v4 hasError] & 1) != 0 || v28 > 2)
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

  v62 = [v4 hasError];
  if (v62)
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
  v13 = [(BMMLSEShareSheetFeedback *)self identifier];
  v3 = BMMLSEShareSheetFeedbackEngagementTypeAsString([(BMMLSEShareSheetFeedback *)self engagementType]);
  v4 = [(BMMLSEShareSheetFeedback *)self engagementIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEShareSheetFeedback visiblePeopleSuggestionCount](self, "visiblePeopleSuggestionCount")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEShareSheetFeedback visibleAppSuggestionCount](self, "visibleAppSuggestionCount")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSEShareSheetFeedback airdropPeopleSuggestionShown](self, "airdropPeopleSuggestionShown")}];
  v8 = BMMLSEShareSheetFeedbackInferenceSourceAsString([(BMMLSEShareSheetFeedback *)self inferenceSource]);
  v9 = [(BMMLSEShareSheetFeedback *)self trialIdentifier];
  v10 = [(BMMLSEShareSheetFeedback *)self timeouts];
  v11 = [(BMMLSEShareSheetFeedback *)self productInsights];
  v15 = [v14 initWithFormat:@"BMMLSEShareSheetFeedback with identifier: %@, engagementType: %@, engagementIdentifier: %@, visiblePeopleSuggestionCount: %@, visibleAppSuggestionCount: %@, airdropPeopleSuggestionShown: %@, inferenceSource: %@, trialIdentifier: %@, timeouts: %@, productInsights: %@", v13, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v15;
}

- (BMMLSEShareSheetFeedback)initWithIdentifier:(id)a3 engagementType:(int)a4 engagementIdentifier:(id)a5 visiblePeopleSuggestionCount:(id)a6 visibleAppSuggestionCount:(id)a7 airdropPeopleSuggestionShown:(id)a8 inferenceSource:(int)a9 trialIdentifier:(id)a10 timeouts:(id)a11 productInsights:(id)a12
{
  v30 = a3;
  v29 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v28 = a10;
  v27 = a11;
  v26 = a12;
  v31.receiver = self;
  v31.super_class = BMMLSEShareSheetFeedback;
  v22 = [(BMEventBase *)&v31 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_identifier, a3);
    v22->_engagementType = a4;
    objc_storeStrong(&v22->_engagementIdentifier, a5);
    if (v19)
    {
      v22->_hasVisiblePeopleSuggestionCount = 1;
      v23 = [v19 unsignedIntValue];
    }

    else
    {
      v23 = 0;
      v22->_hasVisiblePeopleSuggestionCount = 0;
    }

    v22->_visiblePeopleSuggestionCount = v23;
    if (v20)
    {
      v22->_hasVisibleAppSuggestionCount = 1;
      v24 = [v20 unsignedIntValue];
    }

    else
    {
      v24 = 0;
      v22->_hasVisibleAppSuggestionCount = 0;
    }

    v22->_visibleAppSuggestionCount = v24;
    if (v21)
    {
      v22->_hasAirdropPeopleSuggestionShown = 1;
      v22->_airdropPeopleSuggestionShown = [v21 BOOLValue];
    }

    else
    {
      v22->_hasAirdropPeopleSuggestionShown = 0;
      v22->_airdropPeopleSuggestionShown = 0;
    }

    v22->_inferenceSource = a9;
    objc_storeStrong(&v22->_trialIdentifier, a10);
    objc_storeStrong(&v22->_timeouts, a11);
    objc_storeStrong(&v22->_productInsights, a12);
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