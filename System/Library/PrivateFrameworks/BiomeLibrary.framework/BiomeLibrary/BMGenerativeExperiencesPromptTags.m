@interface BMGenerativeExperiencesPromptTags
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMGenerativeExperiencesPromptTags)initWithItemId:(id)a3 usecaseId:(id)a4 tags:(id)a5 modelName:(id)a6 modelVersion:(id)a7 userInterfaceLanguage:(id)a8 userSetRegionFormat:(id)a9 alignmentGrade:(id)a10 alignmentModelVersion:(id)a11 siGrade:(id)a12 siModelVersion:(id)a13;
- (BMGenerativeExperiencesPromptTags)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSUUID)itemId;
- (id)_tagsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMGenerativeExperiencesPromptTags

+ (id)columns
{
  v16[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemId" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usecaseId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"tags_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_101597];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelName" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelVersion" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userInterfaceLanguage" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userSetRegionFormat" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alignmentGrade" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alignmentModelVersion" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siGrade" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:2 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siModelVersion" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v16[0] = v2;
  v16[1] = v3;
  v16[2] = v4;
  v16[3] = v5;
  v16[4] = v6;
  v16[5] = v14;
  v16[6] = v7;
  v16[7] = v8;
  v16[8] = v15;
  v16[9] = v9;
  v16[10] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMGenerativeExperiencesPromptTags *)self itemId];
    v7 = [v5 itemId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMGenerativeExperiencesPromptTags *)self itemId];
      v10 = [v5 itemId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_47;
      }
    }

    v13 = [(BMGenerativeExperiencesPromptTags *)self usecaseId];
    v14 = [v5 usecaseId];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMGenerativeExperiencesPromptTags *)self usecaseId];
      v17 = [v5 usecaseId];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_47;
      }
    }

    v19 = [(BMGenerativeExperiencesPromptTags *)self tags];
    v20 = [v5 tags];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMGenerativeExperiencesPromptTags *)self tags];
      v23 = [v5 tags];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_47;
      }
    }

    v25 = [(BMGenerativeExperiencesPromptTags *)self modelName];
    v26 = [v5 modelName];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMGenerativeExperiencesPromptTags *)self modelName];
      v29 = [v5 modelName];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_47;
      }
    }

    v31 = [(BMGenerativeExperiencesPromptTags *)self modelVersion];
    v32 = [v5 modelVersion];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMGenerativeExperiencesPromptTags *)self modelVersion];
      v35 = [v5 modelVersion];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_47;
      }
    }

    v37 = [(BMGenerativeExperiencesPromptTags *)self userInterfaceLanguage];
    v38 = [v5 userInterfaceLanguage];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMGenerativeExperiencesPromptTags *)self userInterfaceLanguage];
      v41 = [v5 userInterfaceLanguage];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_47;
      }
    }

    v43 = [(BMGenerativeExperiencesPromptTags *)self userSetRegionFormat];
    v44 = [v5 userSetRegionFormat];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMGenerativeExperiencesPromptTags *)self userSetRegionFormat];
      v47 = [v5 userSetRegionFormat];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_47;
      }
    }

    if (-[BMGenerativeExperiencesPromptTags hasAlignmentGrade](self, "hasAlignmentGrade") || [v5 hasAlignmentGrade])
    {
      if (![(BMGenerativeExperiencesPromptTags *)self hasAlignmentGrade])
      {
        goto LABEL_47;
      }

      if (![v5 hasAlignmentGrade])
      {
        goto LABEL_47;
      }

      v49 = [(BMGenerativeExperiencesPromptTags *)self alignmentGrade];
      if (v49 != [v5 alignmentGrade])
      {
        goto LABEL_47;
      }
    }

    v50 = [(BMGenerativeExperiencesPromptTags *)self alignmentModelVersion];
    v51 = [v5 alignmentModelVersion];
    v52 = v51;
    if (v50 == v51)
    {
    }

    else
    {
      v53 = [(BMGenerativeExperiencesPromptTags *)self alignmentModelVersion];
      v54 = [v5 alignmentModelVersion];
      v55 = [v53 isEqual:v54];

      if (!v55)
      {
        goto LABEL_47;
      }
    }

    if (!-[BMGenerativeExperiencesPromptTags hasSiGrade](self, "hasSiGrade") && ![v5 hasSiGrade] || -[BMGenerativeExperiencesPromptTags hasSiGrade](self, "hasSiGrade") && objc_msgSend(v5, "hasSiGrade") && (v56 = -[BMGenerativeExperiencesPromptTags siGrade](self, "siGrade"), v56 == objc_msgSend(v5, "siGrade")))
    {
      v57 = [(BMGenerativeExperiencesPromptTags *)self siModelVersion];
      v58 = [v5 siModelVersion];
      if (v57 == v58)
      {
        v12 = 1;
      }

      else
      {
        v59 = [(BMGenerativeExperiencesPromptTags *)self siModelVersion];
        v60 = [v5 siModelVersion];
        v12 = [v59 isEqual:v60];
      }

      goto LABEL_48;
    }

LABEL_47:
    v12 = 0;
LABEL_48:

    goto LABEL_49;
  }

  v12 = 0;
LABEL_49:

  return v12;
}

- (NSUUID)itemId
{
  raw_itemId = self->_raw_itemId;
  if (raw_itemId)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_itemId toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v39[11] = *MEMORY[0x1E69E9840];
  v3 = [(BMGenerativeExperiencesPromptTags *)self itemId];
  v4 = [v3 UUIDString];

  v5 = [(BMGenerativeExperiencesPromptTags *)self usecaseId];
  v6 = [(BMGenerativeExperiencesPromptTags *)self _tagsJSONArray];
  v7 = [(BMGenerativeExperiencesPromptTags *)self modelName];
  v8 = [(BMGenerativeExperiencesPromptTags *)self modelVersion];
  v37 = [(BMGenerativeExperiencesPromptTags *)self userInterfaceLanguage];
  v36 = [(BMGenerativeExperiencesPromptTags *)self userSetRegionFormat];
  if ([(BMGenerativeExperiencesPromptTags *)self hasAlignmentGrade])
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGenerativeExperiencesPromptTags alignmentGrade](self, "alignmentGrade")}];
  }

  else
  {
    v35 = 0;
  }

  v34 = [(BMGenerativeExperiencesPromptTags *)self alignmentModelVersion];
  if ([(BMGenerativeExperiencesPromptTags *)self hasSiGrade])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGenerativeExperiencesPromptTags siGrade](self, "siGrade")}];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(BMGenerativeExperiencesPromptTags *)self siModelVersion];
  v38[0] = @"itemId";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v11;
  v39[0] = v11;
  v38[1] = @"usecaseId";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v12;
  v39[1] = v12;
  v38[2] = @"tags";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v13;
  v39[2] = v13;
  v38[3] = @"modelName";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v4;
  v26 = v14;
  v39[3] = v14;
  v38[4] = @"modelVersion";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v5;
  v25 = v15;
  v39[4] = v15;
  v38[5] = @"userInterfaceLanguage";
  v16 = v37;
  if (!v37)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v6;
  v39[5] = v16;
  v38[6] = @"userSetRegionFormat";
  v17 = v36;
  if (!v36)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v7;
  v39[6] = v17;
  v38[7] = @"alignmentGrade";
  v19 = v35;
  if (!v35)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v39[7] = v19;
  v38[8] = @"alignmentModelVersion";
  v20 = v34;
  if (!v34)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v39[8] = v20;
  v38[9] = @"siGrade";
  v21 = v9;
  if (!v9)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v39[9] = v21;
  v38[10] = @"siModelVersion";
  v22 = v10;
  if (!v10)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v39[10] = v22;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:11];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_31;
    }
  }

LABEL_31:
  if (!v34)
  {
  }

  if (!v35)
  {
  }

  if (!v36)
  {
  }

  if (!v37)
  {
  }

  if (!v8)
  {
  }

  if (v18)
  {
    if (v31)
    {
      goto LABEL_43;
    }
  }

  else
  {

    if (v31)
    {
LABEL_43:
      if (v32)
      {
        goto LABEL_44;
      }

LABEL_52:

      if (v33)
      {
        goto LABEL_45;
      }

      goto LABEL_53;
    }
  }

  if (!v32)
  {
    goto LABEL_52;
  }

LABEL_44:
  if (v33)
  {
    goto LABEL_45;
  }

LABEL_53:

LABEL_45:
  v23 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)_tagsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMGenerativeExperiencesPromptTags *)self tags];
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

- (BMGenerativeExperiencesPromptTags)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v170[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"itemId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"usecaseId"];
    v136 = v8;
    v137 = v9;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = v6;
          v41 = v7;
          v42 = *MEMORY[0x1E698F240];
          v165 = *MEMORY[0x1E696A578];
          v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"usecaseId"];
          v166 = v10;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
          v43 = v42;
          v7 = v41;
          v6 = v40;
          v44 = [v39 initWithDomain:v43 code:2 userInfo:v13];
          v33 = 0;
          v34 = 0;
          *a4 = v44;
          goto LABEL_116;
        }

        v33 = 0;
        v34 = 0;
        goto LABEL_118;
      }

      v135 = v9;
    }

    else
    {
      v135 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"tags"];
    v11 = [MEMORY[0x1E695DFB0] null];
    v12 = [v10 isEqual:v11];

    if (v12)
    {
      v134 = self;

      v10 = 0;
    }

    else
    {
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v34 = 0;
            v33 = v135;
            goto LABEL_117;
          }

          v45 = objc_alloc(MEMORY[0x1E696ABC0]);
          v46 = v6;
          v47 = v7;
          v48 = *MEMORY[0x1E698F240];
          v163 = *MEMORY[0x1E696A578];
          v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"tags"];
          v164 = v13;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
          v50 = v48;
          v7 = v47;
          v6 = v46;
          v51 = [v45 initWithDomain:v50 code:2 userInfo:v49];
          v34 = 0;
          *a4 = v51;
          v35 = v49;
          goto LABEL_44;
        }
      }

      v134 = self;
    }

    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v10 = v10;
    v14 = [v10 countByEnumeratingWithState:&v138 objects:v162 count:16];
    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = v14;
    v16 = *v139;
    v132 = v6;
LABEL_14:
    v17 = a4;
    v18 = v7;
    v19 = 0;
    while (1)
    {
      if (*v139 != v16)
      {
        objc_enumerationMutation(v10);
      }

      v20 = *(*(&v138 + 1) + 8 * v19);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v17)
        {
          v25 = v17;
          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v32 = *MEMORY[0x1E698F240];
          v158 = *MEMORY[0x1E696A578];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"tags"];
          v159 = v28;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
          v29 = v31;
          v30 = v32;
          goto LABEL_36;
        }

        goto LABEL_39;
      }

      [v13 addObject:v20];
      if (v15 == ++v19)
      {
        v15 = [v10 countByEnumeratingWithState:&v138 objects:v162 count:16];
        v7 = v18;
        v6 = v132;
        a4 = v17;
        if (v15)
        {
          goto LABEL_14;
        }

LABEL_21:

        v21 = [v6 objectForKeyedSubscript:@"modelName"];
        if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v125 = 0;
          v126 = v21;
          goto LABEL_24;
        }

        v34 = a4;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v126 = v21;
          v125 = v21;
LABEL_24:
          v22 = [v6 objectForKeyedSubscript:@"modelVersion"];
          self = v134;
          v129 = v22;
          if (v22)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = 0;
              goto LABEL_52;
            }

            v34 = a4;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = v22;
              goto LABEL_52;
            }

            if (a4)
            {
              v73 = objc_alloc(MEMORY[0x1E696ABC0]);
              v74 = *MEMORY[0x1E698F240];
              v154 = *MEMORY[0x1E696A578];
              v75 = objc_alloc(MEMORY[0x1E696AEC0]);
              v108 = objc_opt_class();
              v76 = v75;
              self = v134;
              v127 = [v76 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v108, @"modelVersion"];
              v155 = v127;
              v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
              v77 = [v73 initWithDomain:v74 code:2 userInfo:?];
              v22 = 0;
              v34 = 0;
              *a4 = v77;
              goto LABEL_123;
            }

            v22 = 0;
            v33 = v135;
            v35 = v125;
            v28 = v126;
LABEL_112:

LABEL_113:
            goto LABEL_114;
          }

LABEL_52:
          v55 = [v6 objectForKeyedSubscript:@"userInterfaceLanguage"];
          v124 = v55;
          if (v55)
          {
            v56 = v55;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v119 = v22;
                v127 = v56;
                goto LABEL_55;
              }

              if (a4)
              {
                v128 = objc_alloc(MEMORY[0x1E696ABC0]);
                v78 = *MEMORY[0x1E698F240];
                v152 = *MEMORY[0x1E696A578];
                v79 = objc_alloc(MEMORY[0x1E696AEC0]);
                v109 = objc_opt_class();
                v80 = v79;
                self = v134;
                v123 = [v80 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v109, @"userInterfaceLanguage"];
                v153 = v123;
                v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
                v81 = [v128 initWithDomain:v78 code:2 userInfo:?];
                v127 = 0;
                v34 = 0;
                *a4 = v81;
                v33 = v135;
                v35 = v125;
                v28 = v126;
                goto LABEL_110;
              }

              v127 = 0;
              v34 = 0;
LABEL_123:
              v33 = v135;
              v35 = v125;
              v28 = v126;
              goto LABEL_111;
            }
          }

          v119 = v22;
          v127 = 0;
LABEL_55:
          v57 = [v6 objectForKeyedSubscript:@"userSetRegionFormat"];
          v122 = v57;
          if (v57)
          {
            v58 = v57;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v34 = a4;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v123 = v58;
                goto LABEL_58;
              }

              if (a4)
              {
                v82 = objc_alloc(MEMORY[0x1E696ABC0]);
                v83 = *MEMORY[0x1E698F240];
                v150 = *MEMORY[0x1E696A578];
                v84 = objc_alloc(MEMORY[0x1E696AEC0]);
                v110 = objc_opt_class();
                v85 = v84;
                self = v134;
                v121 = [v85 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v110, @"userSetRegionFormat"];
                v151 = v121;
                v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
                v86 = [v82 initWithDomain:v83 code:2 userInfo:?];
                v123 = 0;
                v34 = 0;
                *a4 = v86;
                v33 = v135;
                v35 = v125;
                v28 = v126;
                v22 = v119;
                goto LABEL_109;
              }

              v123 = 0;
              v33 = v135;
              v35 = v125;
              v28 = v126;
              v22 = v119;
              goto LABEL_110;
            }
          }

          v123 = 0;
LABEL_58:
          v59 = [v6 objectForKeyedSubscript:@"alignmentGrade"];
          v22 = v119;
          v118 = v59;
          if (v59 && (v60 = v59, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v121 = v60;
              goto LABEL_61;
            }

            if (!a4)
            {
              v121 = 0;
              v34 = 0;
              v33 = v135;
              v35 = v125;
              v28 = v126;
              goto LABEL_109;
            }

            v87 = objc_alloc(MEMORY[0x1E696ABC0]);
            v88 = *MEMORY[0x1E698F240];
            v148 = *MEMORY[0x1E696A578];
            v89 = objc_alloc(MEMORY[0x1E696AEC0]);
            v111 = objc_opt_class();
            v90 = v89;
            self = v134;
            v120 = [v90 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v111, @"alignmentGrade"];
            v149 = v120;
            v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
            v91 = [v87 initWithDomain:v88 code:2 userInfo:?];
            v121 = 0;
            v34 = 0;
            *a4 = v91;
          }

          else
          {
            v121 = 0;
LABEL_61:
            v61 = [v6 objectForKeyedSubscript:@"alignmentModelVersion"];
            v116 = v61;
            if (!v61 || (v62 = v61, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v120 = 0;
LABEL_64:
              v63 = [v6 objectForKeyedSubscript:@"siGrade"];
              v133 = v6;
              v115 = v63;
              if (!v63 || (v64 = v63, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v117 = 0;
LABEL_67:
                v65 = [v6 objectForKeyedSubscript:@"siModelVersion"];
                if (!v65 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v66 = v7;
                  v67 = 0;
                  goto LABEL_70;
                }

                objc_opt_class();
                v66 = v7;
                if (objc_opt_isKindOfClass())
                {
                  v67 = v65;
LABEL_70:
                  v33 = v135;
                  v35 = v125;
                  self = [(BMGenerativeExperiencesPromptTags *)v134 initWithItemId:v136 usecaseId:v135 tags:v13 modelName:v125 modelVersion:v119 userInterfaceLanguage:v127 userSetRegionFormat:v123 alignmentGrade:v121 alignmentModelVersion:v120 siGrade:v117 siModelVersion:v67];
                  v34 = self;
LABEL_106:

                  v7 = v66;
                  v6 = v133;
LABEL_107:
                  v28 = v126;

LABEL_108:
LABEL_109:

LABEL_110:
LABEL_111:

                  goto LABEL_112;
                }

                if (a4)
                {
                  v114 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v102 = *MEMORY[0x1E698F240];
                  v142 = *MEMORY[0x1E696A578];
                  v103 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"siModelVersion"];
                  v143 = v103;
                  v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
                  v105 = v102;
                  self = v134;
                  *a4 = [v114 initWithDomain:v105 code:2 userInfo:v104];
                }

                v67 = 0;
                v34 = 0;
LABEL_105:
                v33 = v135;
                v35 = v125;
                goto LABEL_106;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v117 = v64;
                goto LABEL_67;
              }

              if (a4)
              {
                v66 = v7;
                v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                v98 = *MEMORY[0x1E698F240];
                v144 = *MEMORY[0x1E696A578];
                v99 = objc_alloc(MEMORY[0x1E696AEC0]);
                v113 = objc_opt_class();
                v100 = v99;
                self = v134;
                v67 = [v100 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v113, @"siGrade"];
                v145 = v67;
                v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
                v101 = [v97 initWithDomain:v98 code:2 userInfo:v65];
                v117 = 0;
                v34 = 0;
                *a4 = v101;
                goto LABEL_105;
              }

              v117 = 0;
              v34 = 0;
LABEL_129:
              v33 = v135;
              v35 = v125;
              goto LABEL_107;
            }

            v34 = a4;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v120 = v62;
              goto LABEL_64;
            }

            if (a4)
            {
              v92 = objc_alloc(MEMORY[0x1E696ABC0]);
              v93 = *MEMORY[0x1E698F240];
              v146 = *MEMORY[0x1E696A578];
              v94 = objc_alloc(MEMORY[0x1E696AEC0]);
              v112 = objc_opt_class();
              v95 = v94;
              self = v134;
              v117 = [v95 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v112, @"alignmentModelVersion"];
              v147 = v117;
              v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
              v96 = [v92 initWithDomain:v93 code:2 userInfo:?];
              v120 = 0;
              v34 = 0;
              *a4 = v96;
              goto LABEL_129;
            }

            v120 = 0;
          }

          v33 = v135;
          v35 = v125;
          v28 = v126;
          goto LABEL_108;
        }

        if (a4)
        {
          v68 = a4;
          v130 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v156 = *MEMORY[0x1E696A578];
          v28 = v21;
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"modelName"];
          v157 = v22;
          v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
          v71 = v130;
          v131 = v70;
          v72 = [v71 initWithDomain:v69 code:2 userInfo:?];
          v35 = 0;
          v34 = 0;
          *v68 = v72;
          self = v134;
          v33 = v135;

          goto LABEL_113;
        }

        v35 = 0;
        self = v134;
        v33 = v135;
        v28 = v21;
LABEL_114:

LABEL_115:
LABEL_116:

        v9 = v137;
LABEL_117:

        v8 = v136;
LABEL_118:

LABEL_119:
        goto LABEL_120;
      }
    }

    if (v17)
    {
      v25 = v17;
      v26 = objc_alloc(MEMORY[0x1E696ABC0]);
      v27 = *MEMORY[0x1E698F240];
      v160 = *MEMORY[0x1E696A578];
      v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"tags"];
      v161 = v28;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
      v29 = v26;
      v30 = v27;
LABEL_36:
      v33 = v135;
      v34 = 0;
      *v25 = [v29 initWithDomain:v30 code:2 userInfo:v22];
      v35 = v10;
      v7 = v18;
      v6 = v132;
      self = v134;
      goto LABEL_113;
    }

LABEL_39:
    v34 = 0;
    v35 = v10;
    v7 = v18;
    v6 = v132;
    self = v134;
LABEL_44:
    v33 = v135;
    goto LABEL_115;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v23 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    if (v23)
    {
      v24 = v23;

      v8 = v24;
      goto LABEL_4;
    }

    if (a4)
    {
      v52 = objc_alloc(MEMORY[0x1E696ABC0]);
      v53 = *MEMORY[0x1E698F240];
      v169 = *MEMORY[0x1E696A578];
      v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"itemId"];
      v170[0] = v33;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v170 forKeys:&v169 count:1];
      *a4 = [v52 initWithDomain:v53 code:2 userInfo:v54];

      v34 = 0;
      goto LABEL_119;
    }

    v34 = 0;
LABEL_120:
  }

  else
  {
    if (a4)
    {
      v36 = objc_alloc(MEMORY[0x1E696ABC0]);
      v37 = *MEMORY[0x1E698F240];
      v167 = *MEMORY[0x1E696A578];
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemId"];
      v168 = v8;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
      v38 = [v36 initWithDomain:v37 code:2 userInfo:v33];
      v34 = 0;
      *a4 = v38;
      goto LABEL_119;
    }

    v34 = 0;
  }

  v106 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMGenerativeExperiencesPromptTags *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_raw_itemId)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_usecaseId)
  {
    PBDataWriterWriteStringField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_tags;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if (self->_modelName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_modelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userInterfaceLanguage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userSetRegionFormat)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasAlignmentGrade)
  {
    alignmentGrade = self->_alignmentGrade;
    PBDataWriterWriteInt32Field();
  }

  if (self->_alignmentModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasSiGrade)
  {
    siGrade = self->_siGrade;
    PBDataWriterWriteInt32Field();
  }

  if (self->_siModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = BMGenerativeExperiencesPromptTags;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_77;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v44 = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v44 & 0x7F) << v8;
        if ((v44 & 0x80) == 0)
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
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 5)
      {
        if (v16 <= 2)
        {
          if (v16 == 1)
          {
            v26 = PBReaderReadData();
            if ([(NSData *)v26 length]!= 16)
            {

LABEL_80:
              goto LABEL_76;
            }

            raw_itemId = v5->_raw_itemId;
            v5->_raw_itemId = v26;
            goto LABEL_62;
          }

          if (v16 == 2)
          {
            v24 = PBReaderReadString();
            v25 = 40;
            goto LABEL_61;
          }
        }

        else
        {
          switch(v16)
          {
            case 3:
              v34 = PBReaderReadString();
              if (!v34)
              {
                goto LABEL_80;
              }

              v35 = v34;
              [v6 addObject:v34];

              goto LABEL_74;
            case 4:
              v24 = PBReaderReadString();
              v25 = 56;
LABEL_61:
              raw_itemId = *(&v5->super.super.isa + v25);
              *(&v5->super.super.isa + v25) = v24;
LABEL_62:

              goto LABEL_74;
            case 5:
              v24 = PBReaderReadString();
              v25 = 64;
              goto LABEL_61;
          }
        }
      }

      else if (v16 > 8)
      {
        switch(v16)
        {
          case 9:
            v24 = PBReaderReadString();
            v25 = 88;
            goto LABEL_61;
          case 0xA:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v5->_hasSiGrade = 1;
            while (1)
            {
              v44 = 0;
              v31 = [v4 position] + 1;
              if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
              {
                v33 = [v4 data];
                [v33 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v30 |= (v44 & 0x7F) << v28;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v14 = v29++ >= 9;
              if (v14)
              {
                v23 = 0;
                goto LABEL_68;
              }
            }

            if ([v4 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v30;
            }

LABEL_68:
            v36 = 36;
            goto LABEL_73;
          case 0xB:
            v24 = PBReaderReadString();
            v25 = 96;
            goto LABEL_61;
        }
      }

      else
      {
        switch(v16)
        {
          case 6:
            v24 = PBReaderReadString();
            v25 = 72;
            goto LABEL_61;
          case 7:
            v24 = PBReaderReadString();
            v25 = 80;
            goto LABEL_61;
          case 8:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v5->_hasAlignmentGrade = 1;
            while (1)
            {
              v44 = 0;
              v20 = [v4 position] + 1;
              if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
              {
                v22 = [v4 data];
                [v22 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v19 |= (v44 & 0x7F) << v17;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v14 = v18++ >= 9;
              if (v14)
              {
                v23 = 0;
                goto LABEL_72;
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

LABEL_72:
            v36 = 32;
LABEL_73:
            *(&v5->super.super.isa + v36) = v23;
            goto LABEL_74;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_80;
      }

LABEL_74:
      v37 = [v4 position];
    }

    while (v37 < [v4 length]);
  }

  v38 = [v6 copy];
  tags = v5->_tags;
  v5->_tags = v38;

  v40 = [v4 hasError];
  if (v40)
  {
LABEL_76:
    v41 = 0;
  }

  else
  {
LABEL_77:
    v41 = v5;
  }

  return v41;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = [(BMGenerativeExperiencesPromptTags *)self itemId];
  v3 = [(BMGenerativeExperiencesPromptTags *)self usecaseId];
  v4 = [(BMGenerativeExperiencesPromptTags *)self tags];
  v5 = [(BMGenerativeExperiencesPromptTags *)self modelName];
  v6 = [(BMGenerativeExperiencesPromptTags *)self modelVersion];
  v7 = [(BMGenerativeExperiencesPromptTags *)self userInterfaceLanguage];
  v8 = [(BMGenerativeExperiencesPromptTags *)self userSetRegionFormat];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGenerativeExperiencesPromptTags alignmentGrade](self, "alignmentGrade")}];
  v10 = [(BMGenerativeExperiencesPromptTags *)self alignmentModelVersion];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGenerativeExperiencesPromptTags siGrade](self, "siGrade")}];
  v12 = [(BMGenerativeExperiencesPromptTags *)self siModelVersion];
  v15 = [v14 initWithFormat:@"BMGenerativeExperiencesPromptTags with itemId: %@, usecaseId: %@, tags: %@, modelName: %@, modelVersion: %@, userInterfaceLanguage: %@, userSetRegionFormat: %@, alignmentGrade: %@, alignmentModelVersion: %@, siGrade: %@, siModelVersion: %@", v16, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v15;
}

- (BMGenerativeExperiencesPromptTags)initWithItemId:(id)a3 usecaseId:(id)a4 tags:(id)a5 modelName:(id)a6 modelVersion:(id)a7 userInterfaceLanguage:(id)a8 userSetRegionFormat:(id)a9 alignmentGrade:(id)a10 alignmentModelVersion:(id)a11 siGrade:(id)a12 siModelVersion:(id)a13
{
  v47[2] = *MEMORY[0x1E69E9840];
  v18 = a3;
  obj = a4;
  v19 = a4;
  v20 = v18;
  v45 = v19;
  v33 = a5;
  v44 = a5;
  v34 = a6;
  v43 = a6;
  v35 = a7;
  v42 = a7;
  v36 = a8;
  v41 = a8;
  v40 = a9;
  v21 = a10;
  v37 = a11;
  v22 = a11;
  v23 = a12;
  v38 = a13;
  v24 = a13;
  v46.receiver = self;
  v46.super_class = BMGenerativeExperiencesPromptTags;
  v25 = [(BMEventBase *)&v46 init];
  if (v25)
  {
    v25->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v20)
    {
      v47[0] = 0;
      v47[1] = 0;
      [v20 getUUIDBytes:{v47, obj, v33, a6, a7, a8, a11, a13}];
      v26 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v47 length:16];
      raw_itemId = v25->_raw_itemId;
      v25->_raw_itemId = v26;
    }

    else
    {
      v20 = 0;
      raw_itemId = v25->_raw_itemId;
      v25->_raw_itemId = 0;
    }

    objc_storeStrong(&v25->_usecaseId, obj);
    objc_storeStrong(&v25->_tags, v33);
    objc_storeStrong(&v25->_modelName, v34);
    objc_storeStrong(&v25->_modelVersion, v35);
    objc_storeStrong(&v25->_userInterfaceLanguage, v36);
    objc_storeStrong(&v25->_userSetRegionFormat, a9);
    if (v21)
    {
      v25->_hasAlignmentGrade = 1;
      v28 = [v21 intValue];
    }

    else
    {
      v25->_hasAlignmentGrade = 0;
      v28 = -1;
    }

    v25->_alignmentGrade = v28;
    objc_storeStrong(&v25->_alignmentModelVersion, v37);
    if (v23)
    {
      v25->_hasSiGrade = 1;
      v29 = [v23 intValue];
    }

    else
    {
      v25->_hasSiGrade = 0;
      v29 = -1;
    }

    v25->_siGrade = v29;
    objc_storeStrong(&v25->_siModelVersion, v38);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v25;
}

+ (id)protoFields
{
  v16[11] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemId" number:1 type:14 subMessageClass:0];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usecaseId" number:2 type:13 subMessageClass:0];
  v16[1] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tags" number:3 type:13 subMessageClass:0];
  v16[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelName" number:4 type:13 subMessageClass:0];
  v16[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelVersion" number:5 type:13 subMessageClass:0];
  v16[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userInterfaceLanguage" number:6 type:13 subMessageClass:0];
  v16[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userSetRegionFormat" number:7 type:13 subMessageClass:0];
  v16[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alignmentGrade" number:8 type:2 subMessageClass:0];
  v16[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alignmentModelVersion" number:9 type:13 subMessageClass:0];
  v16[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siGrade" number:10 type:2 subMessageClass:0];
  v16[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siModelVersion" number:11 type:13 subMessageClass:0];
  v16[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __44__BMGenerativeExperiencesPromptTags_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _tagsJSONArray];
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

    v8 = [[BMGenerativeExperiencesPromptTags alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end