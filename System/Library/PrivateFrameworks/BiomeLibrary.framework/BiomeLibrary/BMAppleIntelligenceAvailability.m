@interface BMAppleIntelligenceAvailability
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppleIntelligenceAvailability)initWithAppleIntelligenceUseCase:(id)a3 appleIntelligenceDiffusionUseCase:(id)a4 isAppleIntelligenceToggleEnabled:(id)a5 hasEngagedWithAppleIntelligenceCFU:(id)a6 datePostedAppleIntelligenceCFU:(id)a7 languages:(id)a8 region:(int)a9;
- (BMAppleIntelligenceAvailability)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)datePostedAppleIntelligenceCFU;
- (NSString)description;
- (id)_languagesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppleIntelligenceAvailability

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appleIntelligenceUseCase_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_202];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appleIntelligenceDiffusionUseCase_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_204_100668];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAppleIntelligenceToggleEnabled" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEngagedWithAppleIntelligenceCFU" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"datePostedAppleIntelligenceCFU" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"languages_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_206_100669];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"region" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppleIntelligenceAvailability *)self appleIntelligenceUseCase];
    v7 = [v5 appleIntelligenceUseCase];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAppleIntelligenceAvailability *)self appleIntelligenceUseCase];
      v10 = [v5 appleIntelligenceUseCase];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_27;
      }
    }

    v13 = [(BMAppleIntelligenceAvailability *)self appleIntelligenceDiffusionUseCase];
    v14 = [v5 appleIntelligenceDiffusionUseCase];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMAppleIntelligenceAvailability *)self appleIntelligenceDiffusionUseCase];
      v17 = [v5 appleIntelligenceDiffusionUseCase];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_27;
      }
    }

    if (-[BMAppleIntelligenceAvailability hasIsAppleIntelligenceToggleEnabled](self, "hasIsAppleIntelligenceToggleEnabled") || [v5 hasIsAppleIntelligenceToggleEnabled])
    {
      if (![(BMAppleIntelligenceAvailability *)self hasIsAppleIntelligenceToggleEnabled])
      {
        goto LABEL_27;
      }

      if (![v5 hasIsAppleIntelligenceToggleEnabled])
      {
        goto LABEL_27;
      }

      v19 = [(BMAppleIntelligenceAvailability *)self isAppleIntelligenceToggleEnabled];
      if (v19 != [v5 isAppleIntelligenceToggleEnabled])
      {
        goto LABEL_27;
      }
    }

    if (-[BMAppleIntelligenceAvailability hasHasEngagedWithAppleIntelligenceCFU](self, "hasHasEngagedWithAppleIntelligenceCFU") || [v5 hasHasEngagedWithAppleIntelligenceCFU])
    {
      if (![(BMAppleIntelligenceAvailability *)self hasHasEngagedWithAppleIntelligenceCFU])
      {
        goto LABEL_27;
      }

      if (![v5 hasHasEngagedWithAppleIntelligenceCFU])
      {
        goto LABEL_27;
      }

      v20 = [(BMAppleIntelligenceAvailability *)self hasEngagedWithAppleIntelligenceCFU];
      if (v20 != [v5 hasEngagedWithAppleIntelligenceCFU])
      {
        goto LABEL_27;
      }
    }

    v21 = [(BMAppleIntelligenceAvailability *)self datePostedAppleIntelligenceCFU];
    v22 = [v5 datePostedAppleIntelligenceCFU];
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      v24 = [(BMAppleIntelligenceAvailability *)self datePostedAppleIntelligenceCFU];
      v25 = [v5 datePostedAppleIntelligenceCFU];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_27;
      }
    }

    v27 = [(BMAppleIntelligenceAvailability *)self languages];
    v28 = [v5 languages];
    v29 = v28;
    if (v27 == v28)
    {
    }

    else
    {
      v30 = [(BMAppleIntelligenceAvailability *)self languages];
      v31 = [v5 languages];
      v32 = [v30 isEqual:v31];

      if (!v32)
      {
LABEL_27:
        v12 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    v34 = [(BMAppleIntelligenceAvailability *)self region];
    v12 = v34 == [v5 region];
    goto LABEL_28;
  }

  v12 = 0;
LABEL_29:

  return v12;
}

- (NSDate)datePostedAppleIntelligenceCFU
{
  if (self->_hasRaw_datePostedAppleIntelligenceCFU)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_datePostedAppleIntelligenceCFU];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v30[7] = *MEMORY[0x1E69E9840];
  v3 = [(BMAppleIntelligenceAvailability *)self appleIntelligenceUseCase];
  v4 = [v3 jsonDictionary];

  v5 = [(BMAppleIntelligenceAvailability *)self appleIntelligenceDiffusionUseCase];
  v6 = [v5 jsonDictionary];

  if ([(BMAppleIntelligenceAvailability *)self hasIsAppleIntelligenceToggleEnabled])
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIntelligenceAvailability isAppleIntelligenceToggleEnabled](self, "isAppleIntelligenceToggleEnabled")}];
  }

  else
  {
    v28 = 0;
  }

  if ([(BMAppleIntelligenceAvailability *)self hasHasEngagedWithAppleIntelligenceCFU])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIntelligenceAvailability hasEngagedWithAppleIntelligenceCFU](self, "hasEngagedWithAppleIntelligenceCFU")}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMAppleIntelligenceAvailability *)self datePostedAppleIntelligenceCFU];
  if (v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [(BMAppleIntelligenceAvailability *)self datePostedAppleIntelligenceCFU];
    [v10 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(BMAppleIntelligenceAvailability *)self _languagesJSONArray];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppleIntelligenceAvailability region](self, "region")}];
  v29[0] = @"appleIntelligenceUseCase";
  v14 = v4;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v14;
  v30[0] = v14;
  v29[1] = @"appleIntelligenceDiffusionUseCase";
  v15 = v6;
  if (!v6)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v15;
  v30[1] = v15;
  v29[2] = @"isAppleIntelligenceToggleEnabled";
  v16 = v28;
  if (!v28)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v4;
  v30[2] = v16;
  v29[3] = @"hasEngagedWithAppleIntelligenceCFU";
  v17 = v7;
  if (!v7)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v6;
  v30[3] = v17;
  v29[4] = @"datePostedAppleIntelligenceCFU";
  v18 = v11;
  if (!v11)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v30[4] = v18;
  v29[5] = @"languages";
  v19 = v12;
  if (!v12)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v30[5] = v19;
  v29[6] = @"region";
  v20 = v13;
  if (!v13)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v30[6] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:7];
  if (v13)
  {
    if (v12)
    {
      goto LABEL_26;
    }

LABEL_36:

    if (v11)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

  if (!v12)
  {
    goto LABEL_36;
  }

LABEL_26:
  if (v11)
  {
    goto LABEL_27;
  }

LABEL_37:

LABEL_27:
  if (!v7)
  {
  }

  if (v28)
  {
    if (v26)
    {
      goto LABEL_31;
    }

LABEL_39:

    if (v27)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

  if (!v26)
  {
    goto LABEL_39;
  }

LABEL_31:
  if (v27)
  {
    goto LABEL_32;
  }

LABEL_40:

LABEL_32:
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)_languagesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMAppleIntelligenceAvailability *)self languages];
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

- (BMAppleIntelligenceAvailability)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v132[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"appleIntelligenceUseCase"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"appleIntelligenceDiffusionUseCase"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v9;
      v112 = 0;
      v10 = [[BMAppleIntelligenceAvailabilityUseCaseInfo alloc] initWithJSONDictionary:v19 error:&v112];
      v20 = v112;
      if (!v20)
      {

LABEL_7:
        v11 = [v6 objectForKeyedSubscript:@"isAppleIntelligenceToggleEnabled"];
        v106 = v10;
        if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v12 = self;
          v104 = 0;
          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = self;
          v104 = v11;
LABEL_10:
          v13 = [v6 objectForKeyedSubscript:@"hasEngagedWithAppleIntelligenceCFU"];
          v101 = v7;
          v102 = v11;
          if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (a4)
              {
                v62 = objc_alloc(MEMORY[0x1E696ABC0]);
                v63 = *MEMORY[0x1E698F240];
                v125 = *MEMORY[0x1E696A578];
                v99 = a4;
                v64 = v8;
                v103 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasEngagedWithAppleIntelligenceCFU"];
                v126 = v103;
                v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
                v66 = v62;
                v67 = v63;
                v7 = v101;
                v53 = v13;
                v107 = 0;
                a4 = 0;
                *v99 = [v66 initWithDomain:v67 code:2 userInfo:v65];
                v19 = v104;
                self = v12;
                v14 = v65;
                v8 = v64;
                goto LABEL_86;
              }

              v107 = 0;
              v19 = v104;
              v53 = v13;
              self = v12;
              goto LABEL_87;
            }

            v96 = v13;
            v107 = v13;
          }

          else
          {
            v96 = v13;
            v107 = 0;
          }

          [v6 objectForKeyedSubscript:@"datePostedAppleIntelligenceCFU"];
          v14 = self = v12;
          if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = MEMORY[0x1E695DF00];
              v37 = v14;
              v38 = [v36 alloc];
              [v37 doubleValue];
              v40 = v39;

              v103 = [v38 initWithTimeIntervalSince1970:v40];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v68 = objc_alloc_init(MEMORY[0x1E696AC80]);
                v103 = [v68 dateFromString:v14];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (a4)
                  {
                    v77 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v95 = v9;
                    v78 = a4;
                    v79 = *MEMORY[0x1E698F240];
                    v123 = *MEMORY[0x1E696A578];
                    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"datePostedAppleIntelligenceCFU"];
                    v124 = v15;
                    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
                    v80 = [v77 initWithDomain:v79 code:2 userInfo:v21];
                    v103 = 0;
                    a4 = 0;
                    *v78 = v80;
                    v9 = v95;
                    v53 = v96;
                    goto LABEL_84;
                  }

                  v103 = 0;
                  v19 = v104;
                  v53 = v96;
                  goto LABEL_86;
                }

                v103 = v14;
              }
            }
          }

          else
          {
            v103 = 0;
          }

          v15 = [v6 objectForKeyedSubscript:@"languages"];
          v16 = [MEMORY[0x1E695DFB0] null];
          v17 = [v15 isEqual:v16];

          if (v17)
          {
            v92 = v8;
            v97 = self;

            v15 = 0;
          }

          else
          {
            if (v15)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (a4)
                {
                  v100 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v69 = v9;
                  v70 = a4;
                  v71 = *MEMORY[0x1E698F240];
                  v121 = *MEMORY[0x1E696A578];
                  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"languages"];
                  v122 = v21;
                  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
                  v72 = [v100 initWithDomain:v71 code:2 userInfo:v29];
                  a4 = 0;
                  *v70 = v72;
                  v9 = v69;
                  v53 = v96;
                  goto LABEL_83;
                }

                v7 = v101;
                v53 = v96;
                goto LABEL_85;
              }
            }

            v92 = v8;
            v97 = self;
          }

          v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v15 = v15;
          v22 = [v15 countByEnumeratingWithState:&v108 objects:v120 count:16];
          if (!v22)
          {
            goto LABEL_40;
          }

          v23 = v22;
          v24 = *v109;
          v93 = v9;
          v90 = v14;
LABEL_33:
          v25 = a4;
          v26 = 0;
          while (1)
          {
            if (*v109 != v24)
            {
              objc_enumerationMutation(v15);
            }

            v27 = *(*(&v108 + 1) + 8 * v26);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (v25)
              {
                v52 = objc_alloc(MEMORY[0x1E696ABC0]);
                v49 = *MEMORY[0x1E698F240];
                v116 = *MEMORY[0x1E696A578];
                v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"languages"];
                v117 = v28;
                v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
                v51 = v52;
                goto LABEL_57;
              }

              goto LABEL_60;
            }

            [v21 addObject:v27];
            if (v23 == ++v26)
            {
              v23 = [v15 countByEnumeratingWithState:&v108 objects:v120 count:16];
              a4 = v25;
              v9 = v93;
              v14 = v90;
              if (v23)
              {
                goto LABEL_33;
              }

LABEL_40:

              v28 = [v6 objectForKeyedSubscript:@"region"];
              if (!v28)
              {
                v29 = 0;
                v8 = v92;
LABEL_69:
                v73 = v106;
                v53 = v96;
                goto LABEL_81;
              }

              objc_opt_class();
              v8 = v92;
              if (objc_opt_isKindOfClass())
              {
                v29 = 0;
                goto LABEL_69;
              }

              v91 = v14;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v29 = v28;
                goto LABEL_80;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v74 = MEMORY[0x1E696AD98];
                bsearch_b(v28, &BMAppleIntelligenceAvailabilityRegionFromString_sortedStrings, 0, 8uLL, &__block_literal_global_18_100652);
                v29 = [v74 numberWithInt:0];
LABEL_80:
                v73 = v106;
                v53 = v96;
LABEL_81:
                LODWORD(v86) = [v29 intValue];
                a4 = [(BMAppleIntelligenceAvailability *)v97 initWithAppleIntelligenceUseCase:v8 appleIntelligenceDiffusionUseCase:v73 isAppleIntelligenceToggleEnabled:v104 hasEngagedWithAppleIntelligenceCFU:v107 datePostedAppleIntelligenceCFU:v103 languages:v21 region:v86];
                v97 = a4;
              }

              else
              {
                if (a4)
                {
                  v89 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v81 = *MEMORY[0x1E698F240];
                  v114 = *MEMORY[0x1E696A578];
                  v82 = v9;
                  v83 = a4;
                  v84 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"region"];
                  v115 = v84;
                  v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
                  *v83 = [v89 initWithDomain:v81 code:2 userInfo:v85];
                  v9 = v82;

                  v29 = 0;
                  a4 = 0;
                }

                else
                {
                  v29 = 0;
                }

                v8 = v92;
                v53 = v96;
                v14 = v91;
              }

LABEL_82:

              self = v97;
LABEL_83:

LABEL_84:
              v7 = v101;
LABEL_85:

              v19 = v104;
LABEL_86:

              v11 = v102;
LABEL_87:
              v10 = v106;
LABEL_88:

              goto LABEL_89;
            }
          }

          if (v25)
          {
            v48 = objc_alloc(MEMORY[0x1E696ABC0]);
            v49 = *MEMORY[0x1E698F240];
            v118 = *MEMORY[0x1E696A578];
            v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"languages"];
            v119 = v28;
            v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
            v51 = v48;
LABEL_57:
            v14 = v90;
            v8 = v92;
            *v25 = [v51 initWithDomain:v49 code:2 userInfo:v50];

            a4 = 0;
            v29 = v15;
            v9 = v93;
            v53 = v96;
            goto LABEL_82;
          }

LABEL_60:
          a4 = 0;
          v29 = v15;
          v53 = v96;
          self = v97;
          v8 = v92;
          v9 = v93;
          v14 = v90;
          goto LABEL_83;
        }

        if (a4)
        {
          v105 = objc_alloc(MEMORY[0x1E696ABC0]);
          v94 = v9;
          v54 = a4;
          v55 = v8;
          v56 = *MEMORY[0x1E698F240];
          v127 = *MEMORY[0x1E696A578];
          v57 = v10;
          v58 = v7;
          v59 = objc_alloc(MEMORY[0x1E696AEC0]);
          v88 = objc_opt_class();
          v60 = v59;
          v7 = v58;
          v10 = v57;
          v107 = [v60 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v88, @"isAppleIntelligenceToggleEnabled"];
          v128 = v107;
          v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
          v61 = v56;
          v8 = v55;
          v19 = 0;
          a4 = 0;
          *v54 = [v105 initWithDomain:v61 code:2 userInfo:v53];
          v9 = v94;
          goto LABEL_88;
        }

        v19 = 0;
LABEL_89:

        goto LABEL_90;
      }

      if (a4)
      {
        v20 = v20;
        *a4 = v20;
      }

      a4 = 0;
LABEL_90:

      goto LABEL_91;
    }

    if (a4)
    {
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = v8;
      v43 = *MEMORY[0x1E698F240];
      v129 = *MEMORY[0x1E696A578];
      v98 = a4;
      v44 = v7;
      v45 = objc_alloc(MEMORY[0x1E696AEC0]);
      v87 = objc_opt_class();
      v46 = v45;
      v7 = v44;
      v130 = [v46 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v87, @"appleIntelligenceDiffusionUseCase"];
      v10 = v130;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
      v47 = v43;
      v8 = v42;
      a4 = 0;
      *v98 = [v41 initWithDomain:v47 code:2 userInfo:v19];
      goto LABEL_90;
    }

LABEL_91:

    goto LABEL_92;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v113 = 0;
    v8 = [[BMAppleIntelligenceAvailabilityUseCaseInfo alloc] initWithJSONDictionary:v9 error:&v113];
    v18 = v113;
    if (v18)
    {
      if (a4)
      {
        v18 = v18;
        *a4 = v18;
      }

      a4 = 0;
      goto LABEL_91;
    }

    goto LABEL_4;
  }

  if (a4)
  {
    v30 = objc_alloc(MEMORY[0x1E696ABC0]);
    v31 = *MEMORY[0x1E698F240];
    v131 = *MEMORY[0x1E696A578];
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"appleIntelligenceUseCase"];
    v132[0] = v32;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:&v131 count:1];
    v33 = v31;
    v8 = v32;
    v34 = [v30 initWithDomain:v33 code:2 userInfo:v9];
    v35 = a4;
    a4 = 0;
    *v35 = v34;
    goto LABEL_91;
  }

LABEL_92:

  v75 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppleIntelligenceAvailability *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_appleIntelligenceUseCase)
  {
    v20 = 0;
    PBDataWriterPlaceMark();
    [(BMAppleIntelligenceAvailabilityUseCaseInfo *)self->_appleIntelligenceUseCase writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_appleIntelligenceDiffusionUseCase)
  {
    v20 = 0;
    PBDataWriterPlaceMark();
    [(BMAppleIntelligenceAvailabilityUseCaseInfo *)self->_appleIntelligenceDiffusionUseCase writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasIsAppleIntelligenceToggleEnabled)
  {
    isAppleIntelligenceToggleEnabled = self->_isAppleIntelligenceToggleEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasEngagedWithAppleIntelligenceCFU)
  {
    hasEngagedWithAppleIntelligenceCFU = self->_hasEngagedWithAppleIntelligenceCFU;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_datePostedAppleIntelligenceCFU)
  {
    raw_datePostedAppleIntelligenceCFU = self->_raw_datePostedAppleIntelligenceCFU;
    PBDataWriterWriteDoubleField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_languages;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        PBDataWriterWriteStringField();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  region = self->_region;
  PBDataWriterWriteUint32Field();

  v15 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = BMAppleIntelligenceAvailability;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_80;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_78;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v51) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (LOBYTE(v51) & 0x7F) << v8;
        if ((LOBYTE(v51) & 0x80) == 0)
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
        goto LABEL_78;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        switch(v16)
        {
          case 1:
            v51 = 0.0;
            v52 = 0;
            if (!PBReaderPlaceMark() || (v31 = [[BMAppleIntelligenceAvailabilityUseCaseInfo alloc] initByReadFrom:v4]) == 0)
            {
LABEL_82:

              goto LABEL_79;
            }

            v32 = 48;
            goto LABEL_67;
          case 2:
            v51 = 0.0;
            v52 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_82;
            }

            v31 = [[BMAppleIntelligenceAvailabilityUseCaseInfo alloc] initByReadFrom:v4];
            if (!v31)
            {
              goto LABEL_82;
            }

            v32 = 56;
LABEL_67:
            v41 = *(&v5->super.super.isa + v32);
            *(&v5->super.super.isa + v32) = v31;

            PBReaderRecallMark();
            goto LABEL_77;
          case 3:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v5->_hasIsAppleIntelligenceToggleEnabled = 1;
            while (1)
            {
              LOBYTE(v51) = 0;
              v22 = [v4 position] + 1;
              if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
              {
                v24 = [v4 data];
                [v24 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v21 |= (LOBYTE(v51) & 0x7F) << v19;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v14 = v20++ >= 9;
              if (v14)
              {
                LOBYTE(v25) = 0;
                goto LABEL_73;
              }
            }

            v25 = (v21 != 0) & ~[v4 hasError];
LABEL_73:
            v42 = 32;
            goto LABEL_74;
        }

        goto LABEL_51;
      }

      if (v16 <= 5)
      {
        break;
      }

      if (v16 != 6)
      {
        if (v16 == 7)
        {
          v26 = 0;
          while (1)
          {
            LOBYTE(v51) = 0;
            v27 = [v4 position] + 1;
            if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
            {
              v29 = [v4 data];
              [v29 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            if ((SLOBYTE(v51) & 0x80000000) == 0)
            {
              break;
            }

            if (v26++ > 8)
            {
              goto LABEL_71;
            }
          }

          [v4 hasError];
LABEL_71:
          v5->_region = 0;
          goto LABEL_77;
        }

LABEL_51:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_82;
        }

        goto LABEL_77;
      }

      v39 = PBReaderReadString();
      if (!v39)
      {
        goto LABEL_82;
      }

      v40 = v39;
      [v6 addObject:v39];

LABEL_77:
      v44 = [v4 position];
      if (v44 >= [v4 length])
      {
        goto LABEL_78;
      }
    }

    if (v16 == 4)
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v5->_hasHasEngagedWithAppleIntelligenceCFU = 1;
      while (1)
      {
        LOBYTE(v51) = 0;
        v36 = [v4 position] + 1;
        if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 1, v37 <= objc_msgSend(v4, "length")))
        {
          v38 = [v4 data];
          [v38 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v35 |= (LOBYTE(v51) & 0x7F) << v33;
        if ((LOBYTE(v51) & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v14 = v34++ >= 9;
        if (v14)
        {
          LOBYTE(v25) = 0;
          goto LABEL_69;
        }
      }

      v25 = (v35 != 0) & ~[v4 hasError];
LABEL_69:
      v42 = 34;
LABEL_74:
      *(&v5->super.super.isa + v42) = v25;
      goto LABEL_77;
    }

    if (v16 == 5)
    {
      v5->_hasRaw_datePostedAppleIntelligenceCFU = 1;
      v51 = 0.0;
      v17 = [v4 position] + 8;
      if (v17 >= [v4 position] && (v18 = objc_msgSend(v4, "position") + 8, v18 <= objc_msgSend(v4, "length")))
      {
        v43 = [v4 data];
        [v43 getBytes:&v51 range:{objc_msgSend(v4, "position"), 8}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
      }

      else
      {
        [v4 _setError];
      }

      v5->_raw_datePostedAppleIntelligenceCFU = v51;
      goto LABEL_77;
    }

    goto LABEL_51;
  }

LABEL_78:
  v45 = [v6 copy];
  languages = v5->_languages;
  v5->_languages = v45;

  v47 = [v4 hasError];
  if (v47)
  {
LABEL_79:
    v48 = 0;
  }

  else
  {
LABEL_80:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMAppleIntelligenceAvailability *)self appleIntelligenceUseCase];
  v5 = [(BMAppleIntelligenceAvailability *)self appleIntelligenceDiffusionUseCase];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIntelligenceAvailability isAppleIntelligenceToggleEnabled](self, "isAppleIntelligenceToggleEnabled")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIntelligenceAvailability hasEngagedWithAppleIntelligenceCFU](self, "hasEngagedWithAppleIntelligenceCFU")}];
  v8 = [(BMAppleIntelligenceAvailability *)self datePostedAppleIntelligenceCFU];
  v9 = [(BMAppleIntelligenceAvailability *)self languages];
  v10 = BMAppleIntelligenceAvailabilityRegionAsString([(BMAppleIntelligenceAvailability *)self region]);
  v11 = [v3 initWithFormat:@"BMAppleIntelligenceAvailability with appleIntelligenceUseCase: %@, appleIntelligenceDiffusionUseCase: %@, isAppleIntelligenceToggleEnabled: %@, hasEngagedWithAppleIntelligenceCFU: %@, datePostedAppleIntelligenceCFU: %@, languages: %@, region: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMAppleIntelligenceAvailability)initWithAppleIntelligenceUseCase:(id)a3 appleIntelligenceDiffusionUseCase:(id)a4 isAppleIntelligenceToggleEnabled:(id)a5 hasEngagedWithAppleIntelligenceCFU:(id)a6 datePostedAppleIntelligenceCFU:(id)a7 languages:(id)a8 region:(int)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v25.receiver = self;
  v25.super_class = BMAppleIntelligenceAvailability;
  v22 = [(BMEventBase *)&v25 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_appleIntelligenceUseCase, a3);
    objc_storeStrong(&v22->_appleIntelligenceDiffusionUseCase, a4);
    if (v18)
    {
      v22->_hasIsAppleIntelligenceToggleEnabled = 1;
      v22->_isAppleIntelligenceToggleEnabled = [v18 BOOLValue];
    }

    else
    {
      v22->_hasIsAppleIntelligenceToggleEnabled = 0;
      v22->_isAppleIntelligenceToggleEnabled = 0;
    }

    if (v19)
    {
      v22->_hasHasEngagedWithAppleIntelligenceCFU = 1;
      v22->_hasEngagedWithAppleIntelligenceCFU = [v19 BOOLValue];
    }

    else
    {
      v22->_hasHasEngagedWithAppleIntelligenceCFU = 0;
      v22->_hasEngagedWithAppleIntelligenceCFU = 0;
    }

    if (v20)
    {
      v22->_hasRaw_datePostedAppleIntelligenceCFU = 1;
      [v20 timeIntervalSince1970];
    }

    else
    {
      v22->_hasRaw_datePostedAppleIntelligenceCFU = 0;
      v23 = -1.0;
    }

    v22->_raw_datePostedAppleIntelligenceCFU = v23;
    objc_storeStrong(&v22->_languages, a8);
    v22->_region = a9;
  }

  return v22;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appleIntelligenceUseCase" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appleIntelligenceDiffusionUseCase" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAppleIntelligenceToggleEnabled" number:3 type:12 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEngagedWithAppleIntelligenceCFU" number:4 type:12 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"datePostedAppleIntelligenceCFU" number:5 type:0 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"languages" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"region" number:7 type:4 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __42__BMAppleIntelligenceAvailability_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _languagesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __42__BMAppleIntelligenceAvailability_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 appleIntelligenceDiffusionUseCase];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __42__BMAppleIntelligenceAvailability_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 appleIntelligenceUseCase];
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

    v8 = [[BMAppleIntelligenceAvailability alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end