@interface BMSensitiveContentAnalysisUIInteraction
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSensitiveContentAnalysisUIInteraction)initWithAgeGroup:(int)a3 eventDirection:(int)a4 action:(int)a5 contentType:(id)a6 clientBundleID:(id)a7 trackingVersion:(id)a8 harms:(id)a9 subContentType:(int)a10 options:(id)a11 currentStep:(int)a12 previousStep:(int)a13 path:(id)a14 region:(id)a15 userOptedToShow:(id)a16;
- (BMSensitiveContentAnalysisUIInteraction)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_pathJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSensitiveContentAnalysisUIInteraction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSensitiveContentAnalysisUIInteraction *)self ageGroup];
    if (v6 != [v5 ageGroup])
    {
      goto LABEL_45;
    }

    v7 = [(BMSensitiveContentAnalysisUIInteraction *)self eventDirection];
    if (v7 != [v5 eventDirection])
    {
      goto LABEL_45;
    }

    v8 = [(BMSensitiveContentAnalysisUIInteraction *)self action];
    if (v8 != [v5 action])
    {
      goto LABEL_45;
    }

    if (-[BMSensitiveContentAnalysisUIInteraction hasContentType](self, "hasContentType") || [v5 hasContentType])
    {
      if (![(BMSensitiveContentAnalysisUIInteraction *)self hasContentType])
      {
        goto LABEL_45;
      }

      if (![v5 hasContentType])
      {
        goto LABEL_45;
      }

      v9 = [(BMSensitiveContentAnalysisUIInteraction *)self contentType];
      if (v9 != [v5 contentType])
      {
        goto LABEL_45;
      }
    }

    v10 = [(BMSensitiveContentAnalysisUIInteraction *)self clientBundleID];
    v11 = [v5 clientBundleID];
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      v13 = [(BMSensitiveContentAnalysisUIInteraction *)self clientBundleID];
      v14 = [v5 clientBundleID];
      v15 = [v13 isEqual:v14];

      if (!v15)
      {
        goto LABEL_45;
      }
    }

    v17 = [(BMSensitiveContentAnalysisUIInteraction *)self trackingVersion];
    v18 = [v5 trackingVersion];
    v19 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      v20 = [(BMSensitiveContentAnalysisUIInteraction *)self trackingVersion];
      v21 = [v5 trackingVersion];
      v22 = [v20 isEqual:v21];

      if (!v22)
      {
        goto LABEL_45;
      }
    }

    if (-[BMSensitiveContentAnalysisUIInteraction hasHarms](self, "hasHarms") || [v5 hasHarms])
    {
      if (![(BMSensitiveContentAnalysisUIInteraction *)self hasHarms])
      {
        goto LABEL_45;
      }

      if (![v5 hasHarms])
      {
        goto LABEL_45;
      }

      v23 = [(BMSensitiveContentAnalysisUIInteraction *)self harms];
      if (v23 != [v5 harms])
      {
        goto LABEL_45;
      }
    }

    v24 = [(BMSensitiveContentAnalysisUIInteraction *)self subContentType];
    if (v24 != [v5 subContentType])
    {
      goto LABEL_45;
    }

    if (-[BMSensitiveContentAnalysisUIInteraction hasOptions](self, "hasOptions") || [v5 hasOptions])
    {
      if (![(BMSensitiveContentAnalysisUIInteraction *)self hasOptions])
      {
        goto LABEL_45;
      }

      if (![v5 hasOptions])
      {
        goto LABEL_45;
      }

      v25 = [(BMSensitiveContentAnalysisUIInteraction *)self options];
      if (v25 != [v5 options])
      {
        goto LABEL_45;
      }
    }

    v26 = [(BMSensitiveContentAnalysisUIInteraction *)self currentStep];
    if (v26 != [v5 currentStep])
    {
      goto LABEL_45;
    }

    v27 = [(BMSensitiveContentAnalysisUIInteraction *)self previousStep];
    if (v27 != [v5 previousStep])
    {
      goto LABEL_45;
    }

    v28 = [(BMSensitiveContentAnalysisUIInteraction *)self path];
    v29 = [v5 path];
    v30 = v29;
    if (v28 == v29)
    {
    }

    else
    {
      v31 = [(BMSensitiveContentAnalysisUIInteraction *)self path];
      v32 = [v5 path];
      v33 = [v31 isEqual:v32];

      if (!v33)
      {
        goto LABEL_45;
      }
    }

    v34 = [(BMSensitiveContentAnalysisUIInteraction *)self region];
    v35 = [v5 region];
    v36 = v35;
    if (v34 == v35)
    {
    }

    else
    {
      v37 = [(BMSensitiveContentAnalysisUIInteraction *)self region];
      v38 = [v5 region];
      v39 = [v37 isEqual:v38];

      if (!v39)
      {
        goto LABEL_45;
      }
    }

    if (!-[BMSensitiveContentAnalysisUIInteraction hasUserOptedToShow](self, "hasUserOptedToShow") && ![v5 hasUserOptedToShow])
    {
      LOBYTE(v16) = 1;
      goto LABEL_46;
    }

    if (-[BMSensitiveContentAnalysisUIInteraction hasUserOptedToShow](self, "hasUserOptedToShow") && [v5 hasUserOptedToShow])
    {
      v40 = [(BMSensitiveContentAnalysisUIInteraction *)self userOptedToShow];
      v16 = v40 ^ [v5 userOptedToShow] ^ 1;
LABEL_46:

      goto LABEL_47;
    }

LABEL_45:
    LOBYTE(v16) = 0;
    goto LABEL_46;
  }

  LOBYTE(v16) = 0;
LABEL_47:

  return v16;
}

- (id)jsonDictionary
{
  v48[14] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisUIInteraction ageGroup](self, "ageGroup")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisUIInteraction eventDirection](self, "eventDirection")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisUIInteraction action](self, "action")}];
  if ([(BMSensitiveContentAnalysisUIInteraction *)self hasContentType])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisUIInteraction contentType](self, "contentType")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMSensitiveContentAnalysisUIInteraction *)self clientBundleID];
  v8 = [(BMSensitiveContentAnalysisUIInteraction *)self trackingVersion];
  if ([(BMSensitiveContentAnalysisUIInteraction *)self hasHarms])
  {
    v46 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisUIInteraction harms](self, "harms")}];
  }

  else
  {
    v46 = 0;
  }

  v45 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisUIInteraction subContentType](self, "subContentType")}];
  if ([(BMSensitiveContentAnalysisUIInteraction *)self hasOptions])
  {
    v44 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisUIInteraction options](self, "options")}];
  }

  else
  {
    v44 = 0;
  }

  v43 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisUIInteraction currentStep](self, "currentStep")}];
  v42 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisUIInteraction previousStep](self, "previousStep")}];
  v41 = [(BMSensitiveContentAnalysisUIInteraction *)self _pathJSONArray];
  v40 = [(BMSensitiveContentAnalysisUIInteraction *)self region];
  if ([(BMSensitiveContentAnalysisUIInteraction *)self hasUserOptedToShow])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSensitiveContentAnalysisUIInteraction userOptedToShow](self, "userOptedToShow")}];
  }

  else
  {
    v9 = 0;
  }

  v47[0] = @"ageGroup";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v10;
  v48[0] = v10;
  v47[1] = @"eventDirection";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v11;
  v48[1] = v11;
  v47[2] = @"action";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v12;
  v48[2] = v12;
  v47[3] = @"contentType";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v13;
  v48[3] = v13;
  v47[4] = @"clientBundleID";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v14;
  v48[4] = v14;
  v47[5] = @"trackingVersion";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v6;
  v39 = v5;
  v29 = v15;
  v48[5] = v15;
  v47[6] = @"harms";
  v16 = v46;
  if (!v46)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v7;
  v48[6] = v16;
  v47[7] = @"subContentType";
  v17 = v45;
  if (!v45)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v8;
  v48[7] = v17;
  v47[8] = @"options";
  v18 = v44;
  if (!v44)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v48[8] = v18;
  v47[9] = @"currentStep";
  v19 = v43;
  if (!v43)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v16;
  v20 = v4;
  v48[9] = v19;
  v47[10] = @"previousStep";
  v21 = v42;
  if (!v42)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v3;
  v48[10] = v21;
  v47[11] = @"path";
  v23 = v41;
  if (!v41)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v48[11] = v23;
  v47[12] = @"region";
  v24 = v40;
  if (!v40)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v48[12] = v24;
  v47[13] = @"userOptedToShow";
  v25 = v9;
  if (!v9)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v48[13] = v25;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:14];
  if (!v9)
  {
  }

  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  if (!v44)
  {
  }

  if (!v45)
  {
  }

  if (!v46)
  {
  }

  if (v36)
  {
    if (v37)
    {
      goto LABEL_59;
    }
  }

  else
  {

    if (v37)
    {
LABEL_59:
      if (v38)
      {
        goto LABEL_60;
      }

      goto LABEL_68;
    }
  }

  if (v38)
  {
LABEL_60:
    if (v39)
    {
      goto LABEL_61;
    }

    goto LABEL_69;
  }

LABEL_68:

  if (v39)
  {
LABEL_61:
    if (v20)
    {
      goto LABEL_62;
    }

LABEL_70:

    if (v22)
    {
      goto LABEL_63;
    }

    goto LABEL_71;
  }

LABEL_69:

  if (!v20)
  {
    goto LABEL_70;
  }

LABEL_62:
  if (v22)
  {
    goto LABEL_63;
  }

LABEL_71:

LABEL_63:
  v26 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)_pathJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMSensitiveContentAnalysisUIInteraction *)self path];
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

- (BMSensitiveContentAnalysisUIInteraction)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v195[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"ageGroup"];
  v157 = self;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v68 = *MEMORY[0x1E698F240];
          v194 = *MEMORY[0x1E696A578];
          v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ageGroup"];
          v195[0] = v10;
          v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v195 forKeys:&v194 count:1];
          v70 = v68;
          v9 = v69;
          v7 = 0;
          v51 = 0;
          *a4 = [v67 initWithDomain:v70 code:2 userInfo:v69];
          goto LABEL_146;
        }

        v7 = 0;
        v51 = 0;
        goto LABEL_147;
      }

      v8 = [MEMORY[0x1E696AD98] numberWithInt:BMSensitiveContentAnalysisUIInteractionAgeGroupFromString(v6)];
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = [v5 objectForKeyedSubscript:@"eventDirection"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v76 = objc_alloc(MEMORY[0x1E696ABC0]);
          v77 = v9;
          v78 = *MEMORY[0x1E698F240];
          v192 = *MEMORY[0x1E696A578];
          v79 = v6;
          v80 = objc_alloc(MEMORY[0x1E696AEC0]);
          v125 = objc_opt_class();
          v81 = v80;
          v6 = v79;
          v52 = [v81 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v125, @"eventDirection"];
          v193 = v52;
          v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
          v83 = v78;
          v9 = v77;
          v156 = v82;
          v51 = 0;
          *a4 = [v76 initWithDomain:v83 code:2 userInfo:?];
          v10 = 0;
          goto LABEL_145;
        }

        v51 = 0;
        v10 = 0;
        goto LABEL_146;
      }

      v11 = [MEMORY[0x1E696AD98] numberWithInt:BMSensitiveContentAnalysisUIInteractionEventDirectionFromString(v9)];
    }

    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = [v5 objectForKeyedSubscript:@"action"];
  v156 = v12;
  if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v154 = v13;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v52 = a4;
        if (a4)
        {
          v84 = objc_alloc(MEMORY[0x1E696ABC0]);
          v85 = v9;
          v86 = *MEMORY[0x1E698F240];
          v190 = *MEMORY[0x1E696A578];
          v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"action"];
          v191 = v50;
          v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v191 forKeys:&v190 count:1];
          v88 = v86;
          v9 = v85;
          v155 = v87;
          v52 = 0;
          v51 = 0;
          *a4 = [v84 initWithDomain:v88 code:2 userInfo:?];
          goto LABEL_144;
        }

        v51 = 0;
        goto LABEL_145;
      }

      v154 = [MEMORY[0x1E696AD98] numberWithInt:BMSensitiveContentAnalysisUIInteractionActionFromString(v13)];
    }
  }

  else
  {
    v154 = 0;
  }

  v14 = [v5 objectForKeyedSubscript:@"contentType"];
  v155 = v14;
  if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v153 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = v9;
        v45 = *MEMORY[0x1E698F240];
        v188 = *MEMORY[0x1E696A578];
        v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"contentType"];
        v189 = v46;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
        v48 = v153;
        v49 = v45;
        v9 = v44;
        v152 = v47;
        v50 = 0;
        v51 = 0;
        *a4 = [v48 initWithDomain:v49 code:2 userInfo:?];
        v52 = v154;
        goto LABEL_143;
      }

      v50 = 0;
      v51 = 0;
      v52 = v154;
      goto LABEL_144;
    }

    v151 = v15;
  }

  else
  {
    v151 = 0;
  }

  v16 = [v5 objectForKeyedSubscript:@"clientBundleID"];
  v152 = v16;
  v150 = v7;
  if (v16 && (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v46 = a4;
      if (a4)
      {
        v53 = objc_alloc(MEMORY[0x1E696ABC0]);
        v54 = v9;
        v55 = *MEMORY[0x1E698F240];
        v186 = *MEMORY[0x1E696A578];
        v149 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientBundleID"];
        v187 = v149;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
        v56 = v55;
        v9 = v54;
        v46 = 0;
        v51 = 0;
        *a4 = [v53 initWithDomain:v56 code:2 userInfo:v18];
        v52 = v154;
        v50 = v151;
        goto LABEL_142;
      }

      v51 = 0;
      v52 = v154;
      v50 = v151;
      goto LABEL_143;
    }

    v148 = v17;
  }

  else
  {
    v148 = 0;
  }

  v18 = [v5 objectForKeyedSubscript:@"trackingVersion"];
  if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v149 = 0;
        v51 = 0;
        v52 = v154;
        v50 = v151;
        v46 = v148;
        goto LABEL_142;
      }

      v62 = objc_alloc(MEMORY[0x1E696ABC0]);
      v63 = v9;
      v64 = *MEMORY[0x1E698F240];
      v184 = *MEMORY[0x1E696A578];
      v147 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trackingVersion"];
      v185 = v147;
      v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
      v66 = v64;
      v9 = v63;
      v146 = v65;
      v149 = 0;
      v51 = 0;
      *a4 = [v62 initWithDomain:v66 code:2 userInfo:?];
      goto LABEL_122;
    }

    v149 = v18;
  }

  else
  {
    v149 = 0;
  }

  v19 = [v5 objectForKeyedSubscript:@"harms"];
  v146 = v19;
  if (v19)
  {
    v20 = v19;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v147 = v20;
        goto LABEL_32;
      }

      if (a4)
      {
        v71 = objc_alloc(MEMORY[0x1E696ABC0]);
        v72 = v9;
        v73 = *MEMORY[0x1E698F240];
        v182 = *MEMORY[0x1E696A578];
        v145 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"harms"];
        v183 = v145;
        v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
        v75 = v73;
        v9 = v72;
        v144 = v74;
        v147 = 0;
        v51 = 0;
        *a4 = [v71 initWithDomain:v75 code:2 userInfo:?];
        v52 = v154;
        v50 = v151;
        v46 = v148;
        goto LABEL_140;
      }

      v147 = 0;
      v51 = 0;
LABEL_122:
      v52 = v154;
      v50 = v151;
      v46 = v148;
      goto LABEL_141;
    }
  }

  v147 = 0;
LABEL_32:
  v21 = [v5 objectForKeyedSubscript:@"subContentType"];
  v144 = v21;
  v141 = v18;
  if (v21 && (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v145 = v22;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v98 = objc_alloc(MEMORY[0x1E696ABC0]);
          v99 = v9;
          v100 = *MEMORY[0x1E698F240];
          v180 = *MEMORY[0x1E696A578];
          v143 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"subContentType"];
          v181 = v143;
          v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
          v102 = v100;
          v9 = v99;
          v142 = v101;
          v145 = 0;
          v51 = 0;
          *a4 = [v98 initWithDomain:v102 code:2 userInfo:?];
          v52 = v154;
          v50 = v151;
          v46 = v148;
          goto LABEL_139;
        }

        v145 = 0;
        v51 = 0;
        v52 = v154;
        v50 = v151;
        v46 = v148;
        goto LABEL_140;
      }

      v145 = [MEMORY[0x1E696AD98] numberWithInt:BMSensitiveContentAnalysisUIInteractionSubContentTypeFromString(v22)];
    }
  }

  else
  {
    v145 = 0;
  }

  v23 = [v5 objectForKeyedSubscript:@"options"];
  v142 = v23;
  if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v89 = objc_alloc(MEMORY[0x1E696ABC0]);
        v90 = v9;
        v91 = *MEMORY[0x1E698F240];
        v178 = *MEMORY[0x1E696A578];
        v140 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"options"];
        v179 = v140;
        v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v179 forKeys:&v178 count:1];
        v93 = v91;
        v9 = v90;
        v139 = v92;
        v143 = 0;
        v51 = 0;
        *a4 = [v89 initWithDomain:v93 code:2 userInfo:?];
        v52 = v154;
        v50 = v151;
        v46 = v148;
        goto LABEL_138;
      }

      v143 = 0;
      v51 = 0;
      v52 = v154;
      v50 = v151;
      v46 = v148;
      goto LABEL_139;
    }

    v143 = v24;
  }

  else
  {
    v143 = 0;
  }

  v25 = [v5 objectForKeyedSubscript:@"currentStep"];
  v137 = v9;
  v139 = v25;
  if (v25 && (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v140 = v26;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v140 = 0;
          v51 = 0;
          v52 = v154;
          v50 = v151;
          v46 = v148;
          goto LABEL_138;
        }

        v114 = objc_alloc(MEMORY[0x1E696ABC0]);
        v115 = *MEMORY[0x1E698F240];
        v176 = *MEMORY[0x1E696A578];
        v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"currentStep"];
        v177 = v138;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
        v140 = 0;
        v51 = 0;
        *a4 = [v114 initWithDomain:v115 code:2 userInfo:v28];
        goto LABEL_165;
      }

      v140 = [MEMORY[0x1E696AD98] numberWithInt:BMSensitiveContentAnalysisUIInteractionStepFromString(v26)];
    }
  }

  else
  {
    v140 = 0;
  }

  v27 = [v5 objectForKeyedSubscript:@"previousStep"];
  v135 = v27;
  v136 = v10;
  if (v27)
  {
    v28 = v27;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v138 = v28;
        goto LABEL_44;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v138 = [MEMORY[0x1E696AD98] numberWithInt:BMSensitiveContentAnalysisUIInteractionStepFromString(v28)];
        goto LABEL_44;
      }

      if (a4)
      {
        v116 = objc_alloc(MEMORY[0x1E696ABC0]);
        v117 = *MEMORY[0x1E698F240];
        v174 = *MEMORY[0x1E696A578];
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"previousStep"];
        v175 = v29;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
        v118 = [v116 initWithDomain:v117 code:2 userInfo:v32];
        v138 = 0;
        v51 = 0;
        *a4 = v118;
        v52 = v154;
        v50 = v151;
        v46 = v148;
        goto LABEL_135;
      }

      v138 = 0;
      v51 = 0;
LABEL_165:
      v52 = v154;
      v50 = v151;
      v46 = v148;
      goto LABEL_137;
    }
  }

  v138 = 0;
LABEL_44:
  v29 = [v5 objectForKeyedSubscript:@"path"];
  v30 = [MEMORY[0x1E695DFB0] null];
  v31 = [v29 isEqual:v30];

  v134 = v5;
  if (v31)
  {
    v133 = v6;

    v29 = 0;
  }

  else
  {
    if (v29)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v95 = objc_alloc(MEMORY[0x1E696ABC0]);
          v96 = *MEMORY[0x1E698F240];
          v172 = *MEMORY[0x1E696A578];
          v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"path"];
          v173 = v32;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
          v97 = [v95 initWithDomain:v96 code:2 userInfo:v43];
          v51 = 0;
          *a4 = v97;
          v52 = v154;
          v50 = v151;
          v46 = v148;
          goto LABEL_134;
        }

        v51 = 0;
        v52 = v154;
        v50 = v151;
        v46 = v148;
        goto LABEL_136;
      }
    }

    v133 = v6;
  }

  v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v29, "count")}];
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v29 = v29;
  v33 = [v29 countByEnumeratingWithState:&v159 objects:v171 count:16];
  if (!v33)
  {
    goto LABEL_73;
  }

  v34 = v33;
  v35 = *v160;
  while (2)
  {
    for (i = 0; i != v34; ++i)
    {
      if (*v160 != v35)
      {
        objc_enumerationMutation(v29);
      }

      v37 = *(*(&v159 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v57 = a4;
        if (a4)
        {
          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v59 = *MEMORY[0x1E698F240];
          v169 = *MEMORY[0x1E696A578];
          v132 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"path"];
          v170 = v132;
          v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
          v61 = v58;
LABEL_111:
          v6 = v133;
          v46 = v148;
          v51 = 0;
          *v57 = [v61 initWithDomain:v59 code:2 userInfo:v60];
          v43 = v29;
          goto LABEL_132;
        }

LABEL_112:
        v51 = 0;
        v43 = v29;
        v6 = v133;
        v52 = v154;
        v50 = v151;
        v46 = v148;
        goto LABEL_134;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = v37;
        goto LABEL_71;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v57 = a4;
        if (a4)
        {
          v94 = objc_alloc(MEMORY[0x1E696ABC0]);
          v59 = *MEMORY[0x1E698F240];
          v167 = *MEMORY[0x1E696A578];
          v132 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"path"];
          v168 = v132;
          v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
          v61 = v94;
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      v38 = [MEMORY[0x1E696AD98] numberWithInt:BMSensitiveContentAnalysisUIInteractionStepFromString(v37)];
LABEL_71:
      v39 = v38;
      [v32 addObject:v38];
    }

    v34 = [v29 countByEnumeratingWithState:&v159 objects:v171 count:16];
    if (v34)
    {
      continue;
    }

    break;
  }

LABEL_73:

  v40 = [v5 objectForKeyedSubscript:@"region"];
  v132 = v40;
  if (!v40)
  {
    v43 = 0;
LABEL_126:
    v42 = v150;
    goto LABEL_127;
  }

  v41 = v40;
  objc_opt_class();
  v42 = v150;
  if (objc_opt_isKindOfClass())
  {
    v43 = 0;
LABEL_127:
    v103 = [v5 objectForKeyedSubscript:@"userOptedToShow"];
    v129 = v103;
    if (!v103 || (v104 = v103, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v60 = 0;
      goto LABEL_130;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = v104;
LABEL_130:
      v105 = [v42 intValue];
      v106 = [v136 intValue];
      v107 = [v154 intValue];
      v108 = [v145 intValue];
      v109 = [v140 intValue];
      v110 = [v138 intValue];
      LODWORD(v126) = v108;
      v111 = v107;
      v46 = v148;
      v51 = [(BMSensitiveContentAnalysisUIInteraction *)v157 initWithAgeGroup:v105 eventDirection:v106 action:v111 contentType:v151 clientBundleID:v148 trackingVersion:v149 harms:v147 subContentType:v126 options:v143 currentStep:__PAIR64__(v110 previousStep:v109) path:v32 region:v43 userOptedToShow:v60];
      v157 = v51;
      v6 = v133;
      v5 = v134;
      v18 = v141;
    }

    else
    {
      v6 = v133;
      v46 = v148;
      v18 = v141;
      if (a4)
      {
        v128 = objc_alloc(MEMORY[0x1E696ABC0]);
        v127 = *MEMORY[0x1E698F240];
        v163 = *MEMORY[0x1E696A578];
        v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"userOptedToShow"];
        v164 = v123;
        v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
        *a4 = [v128 initWithDomain:v127 code:2 userInfo:v124];
      }

      v60 = 0;
      v51 = 0;
    }

LABEL_132:
    goto LABEL_133;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = v41;
    goto LABEL_126;
  }

  v6 = v133;
  if (a4)
  {
    v130 = objc_alloc(MEMORY[0x1E696ABC0]);
    v119 = *MEMORY[0x1E698F240];
    v165 = *MEMORY[0x1E696A578];
    v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"region"];
    v166 = v60;
    v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
    v121 = v130;
    v131 = v120;
    v122 = [v121 initWithDomain:v119 code:2 userInfo:?];
    v43 = 0;
    v51 = 0;
    *a4 = v122;
    v46 = v148;

    goto LABEL_132;
  }

  v43 = 0;
  v51 = 0;
  v46 = v148;
LABEL_133:

  v52 = v154;
  v50 = v151;
LABEL_134:

LABEL_135:
  v10 = v136;
LABEL_136:

  v28 = v135;
LABEL_137:

  v9 = v137;
LABEL_138:

LABEL_139:
LABEL_140:

LABEL_141:
LABEL_142:

  v7 = v150;
LABEL_143:

LABEL_144:
LABEL_145:

LABEL_146:
  self = v157;
LABEL_147:

  v112 = *MEMORY[0x1E69E9840];
  return v51;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSensitiveContentAnalysisUIInteraction *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  ageGroup = self->_ageGroup;
  PBDataWriterWriteUint32Field();
  eventDirection = self->_eventDirection;
  PBDataWriterWriteUint32Field();
  action = self->_action;
  PBDataWriterWriteUint32Field();
  if (self->_hasContentType)
  {
    contentType = self->_contentType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_clientBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trackingVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasHarms)
  {
    harms = self->_harms;
    PBDataWriterWriteInt32Field();
  }

  subContentType = self->_subContentType;
  PBDataWriterWriteUint32Field();
  if (self->_hasOptions)
  {
    options = self->_options;
    PBDataWriterWriteInt32Field();
  }

  currentStep = self->_currentStep;
  PBDataWriterWriteUint32Field();
  previousStep = self->_previousStep;
  PBDataWriterWriteUint32Field();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_path;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v21 + 1) + 8 * v18) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  if (self->_region)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasUserOptedToShow)
  {
    userOptedToShow = self->_userOptedToShow;
    PBDataWriterWriteBOOLField();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v98.receiver = self;
  v98.super_class = BMSensitiveContentAnalysisUIInteraction;
  v5 = [(BMEventBase *)&v98 init];
  if (!v5)
  {
LABEL_175:
    v96 = v5;
    goto LABEL_176;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 >= [v4 length])
  {
LABEL_173:
    v93 = [v6 copy];
    path = v5->_path;
    v5->_path = v93;

    v95 = [v4 hasError];
    if (v95)
    {
      goto LABEL_174;
    }

    goto LABEL_175;
  }

  v8 = &OBJC_IVAR___BMMomentsEventDataEventBundleOutlierMetadata__dataVersion;
  v9 = &OBJC_IVAR___BMMomentsEventDataEventBundleOutlierMetadata__dataVersion;
  while (2)
  {
    if ([v4 hasError])
    {
      goto LABEL_173;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v99 = 0;
      v13 = [v4 position] + 1;
      if (v13 >= [v4 position] && (v14 = objc_msgSend(v4, "position") + 1, v14 <= objc_msgSend(v4, "length")))
      {
        v15 = [v4 data];
        [v15 getBytes:&v99 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v12 |= (v99 & 0x7F) << v10;
      if ((v99 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v16 = v11++ >= 9;
      if (v16)
      {
        v17 = 0;
        goto LABEL_17;
      }
    }

    v17 = [v4 hasError] ? 0 : v12;
LABEL_17:
    if (([v4 hasError] & 1) != 0 || (v17 & 7) == 4)
    {
      goto LABEL_173;
    }

    switch((v17 >> 3))
    {
      case 2u:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          v99 = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v99 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v99 & 0x7F) << v18;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v24 = v19++ > 8;
          if (v24)
          {
            goto LABEL_137;
          }
        }

        if (([v4 hasError] & 1) != 0 || v20 > 3)
        {
LABEL_137:
          LODWORD(v20) = 0;
        }

        v88 = v8[411];
        goto LABEL_163;
      case 3u:
        v61 = 0;
        v62 = 0;
        v20 = 0;
        while (1)
        {
          v99 = 0;
          v63 = [v4 position] + 1;
          if (v63 >= [v4 position] && (v64 = objc_msgSend(v4, "position") + 1, v64 <= objc_msgSend(v4, "length")))
          {
            v65 = [v4 data];
            [v65 getBytes:&v99 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v99 & 0x7F) << v61;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v24 = v62++ > 8;
          if (v24)
          {
            goto LABEL_149;
          }
        }

        if (([v4 hasError] & 1) != 0 || v20 > 4)
        {
LABEL_149:
          LODWORD(v20) = 0;
        }

        v88 = v9[412];
        goto LABEL_163;
      case 5u:
        v56 = 0;
        v57 = 0;
        v20 = 0;
        while (1)
        {
          v99 = 0;
          v58 = [v4 position] + 1;
          if (v58 >= [v4 position] && (v59 = objc_msgSend(v4, "position") + 1, v59 <= objc_msgSend(v4, "length")))
          {
            v60 = [v4 data];
            [v60 getBytes:&v99 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v99 & 0x7F) << v56;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v24 = v57++ > 8;
          if (v24)
          {
            goto LABEL_145;
          }
        }

        if (([v4 hasError] & 1) != 0 || v20 > 0x17)
        {
LABEL_145:
          LODWORD(v20) = 0;
        }

        v88 = 36;
        goto LABEL_163;
      case 6u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v5->_hasContentType = 1;
        while (1)
        {
          v99 = 0;
          v52 = [v4 position] + 1;
          if (v52 >= [v4 position] && (v53 = objc_msgSend(v4, "position") + 1, v53 <= objc_msgSend(v4, "length")))
          {
            v54 = [v4 data];
            [v54 getBytes:&v99 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v51 |= (v99 & 0x7F) << v49;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v16 = v50++ >= 9;
          if (v16)
          {
            v55 = 0;
            goto LABEL_142;
          }
        }

        if ([v4 hasError])
        {
          v55 = 0;
        }

        else
        {
          v55 = v51;
        }

LABEL_142:
        v91 = 40;
        goto LABEL_168;
      case 7u:
        v37 = PBReaderReadString();
        v38 = 72;
        goto LABEL_50;
      case 8u:
        v37 = PBReaderReadString();
        v38 = 80;
        goto LABEL_50;
      case 9u:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v5->_hasHarms = 1;
        while (1)
        {
          v99 = 0;
          v69 = [v4 position] + 1;
          if (v69 >= [v4 position] && (v70 = objc_msgSend(v4, "position") + 1, v70 <= objc_msgSend(v4, "length")))
          {
            v71 = [v4 data];
            [v71 getBytes:&v99 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v68 |= (v99 & 0x7F) << v66;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v16 = v67++ >= 9;
          if (v16)
          {
            v55 = 0;
            goto LABEL_154;
          }
        }

        if ([v4 hasError])
        {
          v55 = 0;
        }

        else
        {
          v55 = v68;
        }

LABEL_154:
        v91 = 44;
        goto LABEL_168;
      case 0xAu:
        v72 = 0;
        v73 = 0;
        v20 = 0;
        while (1)
        {
          v99 = 0;
          v74 = [v4 position] + 1;
          if (v74 >= [v4 position] && (v75 = objc_msgSend(v4, "position") + 1, v75 <= objc_msgSend(v4, "length")))
          {
            v76 = [v4 data];
            [v76 getBytes:&v99 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v99 & 0x7F) << v72;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v24 = v73++ > 8;
          if (v24)
          {
            goto LABEL_157;
          }
        }

        if (([v4 hasError] & 1) != 0 || v20 > 4)
        {
LABEL_157:
          LODWORD(v20) = 0;
        }

        v88 = 48;
        goto LABEL_163;
      case 0xBu:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v5->_hasOptions = 1;
        while (1)
        {
          v99 = 0;
          v85 = [v4 position] + 1;
          if (v85 >= [v4 position] && (v86 = objc_msgSend(v4, "position") + 1, v86 <= objc_msgSend(v4, "length")))
          {
            v87 = [v4 data];
            [v87 getBytes:&v99 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v84 |= (v99 & 0x7F) << v82;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v16 = v83++ >= 9;
          if (v16)
          {
            v55 = 0;
            goto LABEL_167;
          }
        }

        if ([v4 hasError])
        {
          v55 = 0;
        }

        else
        {
          v55 = v84;
        }

LABEL_167:
        v91 = 52;
LABEL_168:
        *(&v5->super.super.isa + v91) = v55;
        goto LABEL_169;
      case 0xCu:
        v77 = 0;
        v78 = 0;
        v20 = 0;
        while (1)
        {
          v99 = 0;
          v79 = [v4 position] + 1;
          if (v79 >= [v4 position] && (v80 = objc_msgSend(v4, "position") + 1, v80 <= objc_msgSend(v4, "length")))
          {
            v81 = [v4 data];
            [v81 getBytes:&v99 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v99 & 0x7F) << v77;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v24 = v78++ > 8;
          if (v24)
          {
            goto LABEL_161;
          }
        }

        if (([v4 hasError] & 1) != 0 || v20 > 0xA)
        {
LABEL_161:
          LODWORD(v20) = 0;
        }

        v88 = 56;
        goto LABEL_163;
      case 0xDu:
        v32 = 0;
        v33 = 0;
        v20 = 0;
        while (1)
        {
          v99 = 0;
          v34 = [v4 position] + 1;
          if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
          {
            v36 = [v4 data];
            [v36 getBytes:&v99 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v99 & 0x7F) << v32;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v24 = v33++ > 8;
          if (v24)
          {
            goto LABEL_129;
          }
        }

        if (([v4 hasError] & 1) != 0 || v20 > 0xA)
        {
LABEL_129:
          LODWORD(v20) = 0;
        }

        v88 = 60;
LABEL_163:
        *(&v5->super.super.isa + v88) = v20;
        goto LABEL_169;
      case 0xEu:
        v40 = v9;
        v41 = v8;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = MEMORY[0x1E696AD98];
        while (1)
        {
          v99 = 0;
          v46 = [v4 position] + 1;
          if (v46 >= [v4 position] && (v47 = objc_msgSend(v4, "position") + 1, v47 <= objc_msgSend(v4, "length")))
          {
            v48 = [v4 data];
            [v48 getBytes:&v99 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v44 |= (v99 & 0x7F) << v42;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v24 = v43++ > 8;
          if (v24)
          {
            goto LABEL_132;
          }
        }

        if ([v4 hasError])
        {
LABEL_132:
          v44 = 0;
          v8 = v41;
          goto LABEL_133;
        }

        v8 = v41;
        if (v44 > 0xA)
        {
          v44 = 0;
        }

LABEL_133:
        v9 = v40;
        v89 = [v45 numberWithUnsignedInt:v44];
        if (v89)
        {
          v90 = v89;
          [v6 addObject:v89];

LABEL_169:
          v92 = [v4 position];
          if (v92 >= [v4 length])
          {
            goto LABEL_173;
          }

          continue;
        }

LABEL_177:

LABEL_174:
        v96 = 0;
LABEL_176:

        return v96;
      case 0xFu:
        v37 = PBReaderReadString();
        v38 = 96;
LABEL_50:
        v39 = *(&v5->super.super.isa + v38);
        *(&v5->super.super.isa + v38) = v37;

        goto LABEL_169;
      case 0x10u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasUserOptedToShow = 1;
        while (1)
        {
          v99 = 0;
          v28 = [v4 position] + 1;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v99 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v27 |= (v99 & 0x7F) << v25;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v16 = v26++ >= 9;
          if (v16)
          {
            LOBYTE(v31) = 0;
            goto LABEL_126;
          }
        }

        v31 = (v27 != 0) & ~[v4 hasError];
LABEL_126:
        v5->_userOptedToShow = v31;
        goto LABEL_169;
      default:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_177;
        }

        goto LABEL_169;
    }
  }
}

- (NSString)description
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [(BMSensitiveContentAnalysisUIInteraction *)self path];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        if ([v3 length] != 1)
        {
          [v3 appendString:{@", "}];
        }

        v10 = BMSensitiveContentAnalysisUIInteractionStepAsString([v9 unsignedIntValue]);
        [v3 appendString:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"]"];
  v23 = objc_alloc(MEMORY[0x1E696AEC0]);
  v22 = BMSensitiveContentAnalysisUIInteractionAgeGroupAsString([(BMSensitiveContentAnalysisUIInteraction *)self ageGroup]);
  v27 = BMSensitiveContentAnalysisUIInteractionEventDirectionAsString([(BMSensitiveContentAnalysisUIInteraction *)self eventDirection]);
  v26 = BMSensitiveContentAnalysisUIInteractionActionAsString([(BMSensitiveContentAnalysisUIInteraction *)self action]);
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisUIInteraction contentType](self, "contentType")}];
  v25 = [(BMSensitiveContentAnalysisUIInteraction *)self clientBundleID];
  v20 = [(BMSensitiveContentAnalysisUIInteraction *)self trackingVersion];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisUIInteraction harms](self, "harms")}];
  v11 = BMSensitiveContentAnalysisUIInteractionSubContentTypeAsString([(BMSensitiveContentAnalysisUIInteraction *)self subContentType]);
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisUIInteraction options](self, "options")}];
  v13 = BMSensitiveContentAnalysisUIInteractionStepAsString([(BMSensitiveContentAnalysisUIInteraction *)self currentStep]);
  v14 = BMSensitiveContentAnalysisUIInteractionStepAsString([(BMSensitiveContentAnalysisUIInteraction *)self previousStep]);
  v15 = [(BMSensitiveContentAnalysisUIInteraction *)self region];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSensitiveContentAnalysisUIInteraction userOptedToShow](self, "userOptedToShow")}];
  v24 = [v23 initWithFormat:@"BMSensitiveContentAnalysisUIInteraction with ageGroup: %@, eventDirection: %@, action: %@, contentType: %@, clientBundleID: %@, trackingVersion: %@, harms: %@, subContentType: %@, options: %@, currentStep: %@, previousStep: %@, path: %@, region: %@, userOptedToShow: %@", v22, v27, v26, v21, v25, v20, v19, v11, v12, v13, v14, v3, v15, v16];

  v17 = *MEMORY[0x1E69E9840];

  return v24;
}

- (BMSensitiveContentAnalysisUIInteraction)initWithAgeGroup:(int)a3 eventDirection:(int)a4 action:(int)a5 contentType:(id)a6 clientBundleID:(id)a7 trackingVersion:(id)a8 harms:(id)a9 subContentType:(int)a10 options:(id)a11 currentStep:(int)a12 previousStep:(int)a13 path:(id)a14 region:(id)a15 userOptedToShow:(id)a16
{
  v20 = a6;
  v34 = a7;
  v33 = a8;
  v21 = a9;
  v22 = a11;
  v32 = a14;
  v23 = a15;
  v24 = a16;
  v35.receiver = self;
  v35.super_class = BMSensitiveContentAnalysisUIInteraction;
  v25 = [(BMEventBase *)&v35 init];
  if (v25)
  {
    v25->_dataVersion = [objc_opt_class() latestDataVersion];
    v25->_ageGroup = a3;
    v25->_eventDirection = a4;
    v25->_action = a5;
    if (v20)
    {
      v25->_hasContentType = 1;
      v26 = [v20 intValue];
    }

    else
    {
      v20 = 0;
      v25->_hasContentType = 0;
      v26 = -1;
    }

    v25->_contentType = v26;
    objc_storeStrong(&v25->_clientBundleID, a7);
    objc_storeStrong(&v25->_trackingVersion, a8);
    if (v21)
    {
      v25->_hasHarms = 1;
      v27 = [v21 intValue];
    }

    else
    {
      v25->_hasHarms = 0;
      v27 = -1;
    }

    v25->_harms = v27;
    v25->_subContentType = a10;
    if (v22)
    {
      v25->_hasOptions = 1;
      v28 = [v22 intValue];
    }

    else
    {
      v25->_hasOptions = 0;
      v28 = -1;
    }

    v25->_options = v28;
    v25->_currentStep = a12;
    v25->_previousStep = a13;
    objc_storeStrong(&v25->_path, a14);
    objc_storeStrong(&v25->_region, a15);
    if (v24)
    {
      v25->_hasUserOptedToShow = 1;
      v25->_userOptedToShow = [v24 BOOLValue];
    }

    else
    {
      v25->_hasUserOptedToShow = 0;
      v25->_userOptedToShow = 0;
    }
  }

  return v25;
}

+ (id)protoFields
{
  v21[16] = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interactionType" number:1 type:4 subMessageClass:0];
  v21[0] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ageGroup" number:2 type:4 subMessageClass:0];
  v21[1] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventDirection" number:3 type:4 subMessageClass:0];
  v21[2] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"screen" number:4 type:4 subMessageClass:0];
  v21[3] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"action" number:5 type:4 subMessageClass:0];
  v21[4] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentType" number:6 type:2 subMessageClass:0];
  v21[5] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientBundleID" number:7 type:13 subMessageClass:0];
  v21[6] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trackingVersion" number:8 type:13 subMessageClass:0];
  v21[7] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"harms" number:9 type:2 subMessageClass:0];
  v21[8] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subContentType" number:10 type:4 subMessageClass:0];
  v21[9] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"options" number:11 type:2 subMessageClass:0];
  v21[10] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currentStep" number:12 type:4 subMessageClass:0];
  v21[11] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"previousStep" number:13 type:4 subMessageClass:0];
  v21[12] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"path" number:14 type:4 subMessageClass:0];
  v21[13] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"region" number:15 type:13 subMessageClass:0];
  v21[14] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userOptedToShow" number:16 type:12 subMessageClass:0];
  v21[15] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:16];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v21[16] = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interactionType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ageGroup" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventDirection" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"screen" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"action" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentType" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientBundleID" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trackingVersion" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"harms" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subContentType" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"options" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currentStep" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"previousStep" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"path_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_283];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"region" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userOptedToShow" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v21[0] = v20;
  v21[1] = v19;
  v21[2] = v18;
  v21[3] = v17;
  v21[4] = v16;
  v21[5] = v15;
  v21[6] = v2;
  v21[7] = v3;
  v21[8] = v4;
  v21[9] = v5;
  v21[10] = v14;
  v21[11] = v6;
  v21[12] = v7;
  v21[13] = v13;
  v21[14] = v8;
  v21[15] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:16];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id __50__BMSensitiveContentAnalysisUIInteraction_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _pathJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMSensitiveContentAnalysisUIInteraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end