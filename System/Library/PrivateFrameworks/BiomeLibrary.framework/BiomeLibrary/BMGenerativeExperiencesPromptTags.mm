@interface BMGenerativeExperiencesPromptTags
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMGenerativeExperiencesPromptTags)initWithItemId:(id)id usecaseId:(id)usecaseId tags:(id)tags modelName:(id)name modelVersion:(id)version userInterfaceLanguage:(id)language userSetRegionFormat:(id)format alignmentGrade:(id)self0 alignmentModelVersion:(id)self1 siGrade:(id)self2 siModelVersion:(id)self3;
- (BMGenerativeExperiencesPromptTags)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSUUID)itemId;
- (id)_tagsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    itemId = [(BMGenerativeExperiencesPromptTags *)self itemId];
    itemId2 = [v5 itemId];
    v8 = itemId2;
    if (itemId == itemId2)
    {
    }

    else
    {
      itemId3 = [(BMGenerativeExperiencesPromptTags *)self itemId];
      itemId4 = [v5 itemId];
      v11 = [itemId3 isEqual:itemId4];

      if (!v11)
      {
        goto LABEL_47;
      }
    }

    usecaseId = [(BMGenerativeExperiencesPromptTags *)self usecaseId];
    usecaseId2 = [v5 usecaseId];
    v15 = usecaseId2;
    if (usecaseId == usecaseId2)
    {
    }

    else
    {
      usecaseId3 = [(BMGenerativeExperiencesPromptTags *)self usecaseId];
      usecaseId4 = [v5 usecaseId];
      v18 = [usecaseId3 isEqual:usecaseId4];

      if (!v18)
      {
        goto LABEL_47;
      }
    }

    tags = [(BMGenerativeExperiencesPromptTags *)self tags];
    tags2 = [v5 tags];
    v21 = tags2;
    if (tags == tags2)
    {
    }

    else
    {
      tags3 = [(BMGenerativeExperiencesPromptTags *)self tags];
      tags4 = [v5 tags];
      v24 = [tags3 isEqual:tags4];

      if (!v24)
      {
        goto LABEL_47;
      }
    }

    modelName = [(BMGenerativeExperiencesPromptTags *)self modelName];
    modelName2 = [v5 modelName];
    v27 = modelName2;
    if (modelName == modelName2)
    {
    }

    else
    {
      modelName3 = [(BMGenerativeExperiencesPromptTags *)self modelName];
      modelName4 = [v5 modelName];
      v30 = [modelName3 isEqual:modelName4];

      if (!v30)
      {
        goto LABEL_47;
      }
    }

    modelVersion = [(BMGenerativeExperiencesPromptTags *)self modelVersion];
    modelVersion2 = [v5 modelVersion];
    v33 = modelVersion2;
    if (modelVersion == modelVersion2)
    {
    }

    else
    {
      modelVersion3 = [(BMGenerativeExperiencesPromptTags *)self modelVersion];
      modelVersion4 = [v5 modelVersion];
      v36 = [modelVersion3 isEqual:modelVersion4];

      if (!v36)
      {
        goto LABEL_47;
      }
    }

    userInterfaceLanguage = [(BMGenerativeExperiencesPromptTags *)self userInterfaceLanguage];
    userInterfaceLanguage2 = [v5 userInterfaceLanguage];
    v39 = userInterfaceLanguage2;
    if (userInterfaceLanguage == userInterfaceLanguage2)
    {
    }

    else
    {
      userInterfaceLanguage3 = [(BMGenerativeExperiencesPromptTags *)self userInterfaceLanguage];
      userInterfaceLanguage4 = [v5 userInterfaceLanguage];
      v42 = [userInterfaceLanguage3 isEqual:userInterfaceLanguage4];

      if (!v42)
      {
        goto LABEL_47;
      }
    }

    userSetRegionFormat = [(BMGenerativeExperiencesPromptTags *)self userSetRegionFormat];
    userSetRegionFormat2 = [v5 userSetRegionFormat];
    v45 = userSetRegionFormat2;
    if (userSetRegionFormat == userSetRegionFormat2)
    {
    }

    else
    {
      userSetRegionFormat3 = [(BMGenerativeExperiencesPromptTags *)self userSetRegionFormat];
      userSetRegionFormat4 = [v5 userSetRegionFormat];
      v48 = [userSetRegionFormat3 isEqual:userSetRegionFormat4];

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

      alignmentGrade = [(BMGenerativeExperiencesPromptTags *)self alignmentGrade];
      if (alignmentGrade != [v5 alignmentGrade])
      {
        goto LABEL_47;
      }
    }

    alignmentModelVersion = [(BMGenerativeExperiencesPromptTags *)self alignmentModelVersion];
    alignmentModelVersion2 = [v5 alignmentModelVersion];
    v52 = alignmentModelVersion2;
    if (alignmentModelVersion == alignmentModelVersion2)
    {
    }

    else
    {
      alignmentModelVersion3 = [(BMGenerativeExperiencesPromptTags *)self alignmentModelVersion];
      alignmentModelVersion4 = [v5 alignmentModelVersion];
      v55 = [alignmentModelVersion3 isEqual:alignmentModelVersion4];

      if (!v55)
      {
        goto LABEL_47;
      }
    }

    if (!-[BMGenerativeExperiencesPromptTags hasSiGrade](self, "hasSiGrade") && ![v5 hasSiGrade] || -[BMGenerativeExperiencesPromptTags hasSiGrade](self, "hasSiGrade") && objc_msgSend(v5, "hasSiGrade") && (v56 = -[BMGenerativeExperiencesPromptTags siGrade](self, "siGrade"), v56 == objc_msgSend(v5, "siGrade")))
    {
      siModelVersion = [(BMGenerativeExperiencesPromptTags *)self siModelVersion];
      siModelVersion2 = [v5 siModelVersion];
      if (siModelVersion == siModelVersion2)
      {
        v12 = 1;
      }

      else
      {
        siModelVersion3 = [(BMGenerativeExperiencesPromptTags *)self siModelVersion];
        siModelVersion4 = [v5 siModelVersion];
        v12 = [siModelVersion3 isEqual:siModelVersion4];
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
  itemId = [(BMGenerativeExperiencesPromptTags *)self itemId];
  uUIDString = [itemId UUIDString];

  usecaseId = [(BMGenerativeExperiencesPromptTags *)self usecaseId];
  _tagsJSONArray = [(BMGenerativeExperiencesPromptTags *)self _tagsJSONArray];
  modelName = [(BMGenerativeExperiencesPromptTags *)self modelName];
  modelVersion = [(BMGenerativeExperiencesPromptTags *)self modelVersion];
  userInterfaceLanguage = [(BMGenerativeExperiencesPromptTags *)self userInterfaceLanguage];
  userSetRegionFormat = [(BMGenerativeExperiencesPromptTags *)self userSetRegionFormat];
  if ([(BMGenerativeExperiencesPromptTags *)self hasAlignmentGrade])
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGenerativeExperiencesPromptTags alignmentGrade](self, "alignmentGrade")}];
  }

  else
  {
    v35 = 0;
  }

  alignmentModelVersion = [(BMGenerativeExperiencesPromptTags *)self alignmentModelVersion];
  if ([(BMGenerativeExperiencesPromptTags *)self hasSiGrade])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGenerativeExperiencesPromptTags siGrade](self, "siGrade")}];
  }

  else
  {
    v9 = 0;
  }

  siModelVersion = [(BMGenerativeExperiencesPromptTags *)self siModelVersion];
  v38[0] = @"itemId";
  null = uUIDString;
  if (!uUIDString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null;
  v39[0] = null;
  v38[1] = @"usecaseId";
  null2 = usecaseId;
  if (!usecaseId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null2;
  v39[1] = null2;
  v38[2] = @"tags";
  null3 = _tagsJSONArray;
  if (!_tagsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null3;
  v39[2] = null3;
  v38[3] = @"modelName";
  null4 = modelName;
  if (!modelName)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = uUIDString;
  v26 = null4;
  v39[3] = null4;
  v38[4] = @"modelVersion";
  null5 = modelVersion;
  if (!modelVersion)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = usecaseId;
  v25 = null5;
  v39[4] = null5;
  v38[5] = @"userInterfaceLanguage";
  null6 = userInterfaceLanguage;
  if (!userInterfaceLanguage)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = _tagsJSONArray;
  v39[5] = null6;
  v38[6] = @"userSetRegionFormat";
  null7 = userSetRegionFormat;
  if (!userSetRegionFormat)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = modelName;
  v39[6] = null7;
  v38[7] = @"alignmentGrade";
  null8 = v35;
  if (!v35)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v39[7] = null8;
  v38[8] = @"alignmentModelVersion";
  null9 = alignmentModelVersion;
  if (!alignmentModelVersion)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v39[8] = null9;
  v38[9] = @"siGrade";
  null10 = v9;
  if (!v9)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v39[9] = null10;
  v38[10] = @"siModelVersion";
  null11 = siModelVersion;
  if (!siModelVersion)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v39[10] = null11;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:11];
  if (siModelVersion)
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
  if (!alignmentModelVersion)
  {
  }

  if (!v35)
  {
  }

  if (!userSetRegionFormat)
  {
  }

  if (!userInterfaceLanguage)
  {
  }

  if (!modelVersion)
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
  tags = [(BMGenerativeExperiencesPromptTags *)self tags];
  v5 = [tags countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(tags);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [tags countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMGenerativeExperiencesPromptTags)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v170[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"itemId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"usecaseId"];
    v136 = v8;
    v137 = v9;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = dictionaryCopy;
          v41 = v7;
          v42 = *MEMORY[0x1E698F240];
          v165 = *MEMORY[0x1E696A578];
          v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"usecaseId"];
          v166 = v10;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
          v43 = v42;
          v7 = v41;
          dictionaryCopy = v40;
          v44 = [v39 initWithDomain:v43 code:2 userInfo:v13];
          v33 = 0;
          errorCopy5 = 0;
          *error = v44;
          goto LABEL_116;
        }

        v33 = 0;
        errorCopy5 = 0;
        goto LABEL_118;
      }

      v135 = v9;
    }

    else
    {
      v135 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"tags"];
    null = [MEMORY[0x1E695DFB0] null];
    v12 = [v10 isEqual:null];

    if (v12)
    {
      selfCopy2 = self;

      v10 = 0;
    }

    else
    {
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            errorCopy5 = 0;
            v33 = v135;
            goto LABEL_117;
          }

          v45 = objc_alloc(MEMORY[0x1E696ABC0]);
          v46 = dictionaryCopy;
          v47 = v7;
          v48 = *MEMORY[0x1E698F240];
          v163 = *MEMORY[0x1E696A578];
          v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"tags"];
          v164 = v13;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
          v50 = v48;
          v7 = v47;
          dictionaryCopy = v46;
          v51 = [v45 initWithDomain:v50 code:2 userInfo:v49];
          errorCopy5 = 0;
          *error = v51;
          v35 = v49;
          goto LABEL_44;
        }
      }

      selfCopy2 = self;
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
    v132 = dictionaryCopy;
LABEL_14:
    errorCopy = error;
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
        if (errorCopy)
        {
          v25 = errorCopy;
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
        dictionaryCopy = v132;
        error = errorCopy;
        if (v15)
        {
          goto LABEL_14;
        }

LABEL_21:

        v21 = [dictionaryCopy objectForKeyedSubscript:@"modelName"];
        if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v125 = 0;
          v126 = v21;
          goto LABEL_24;
        }

        errorCopy5 = error;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v126 = v21;
          v125 = v21;
LABEL_24:
          v22 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
          self = selfCopy2;
          v129 = v22;
          if (v22)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = 0;
              goto LABEL_52;
            }

            errorCopy5 = error;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = v22;
              goto LABEL_52;
            }

            if (error)
            {
              v73 = objc_alloc(MEMORY[0x1E696ABC0]);
              v74 = *MEMORY[0x1E698F240];
              v154 = *MEMORY[0x1E696A578];
              v75 = objc_alloc(MEMORY[0x1E696AEC0]);
              v108 = objc_opt_class();
              v76 = v75;
              self = selfCopy2;
              v127 = [v76 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v108, @"modelVersion"];
              v155 = v127;
              v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
              v77 = [v73 initWithDomain:v74 code:2 userInfo:?];
              v22 = 0;
              errorCopy5 = 0;
              *error = v77;
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
          v55 = [dictionaryCopy objectForKeyedSubscript:@"userInterfaceLanguage"];
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

              if (error)
              {
                v128 = objc_alloc(MEMORY[0x1E696ABC0]);
                v78 = *MEMORY[0x1E698F240];
                v152 = *MEMORY[0x1E696A578];
                v79 = objc_alloc(MEMORY[0x1E696AEC0]);
                v109 = objc_opt_class();
                v80 = v79;
                self = selfCopy2;
                v123 = [v80 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v109, @"userInterfaceLanguage"];
                v153 = v123;
                v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
                v81 = [v128 initWithDomain:v78 code:2 userInfo:?];
                v127 = 0;
                errorCopy5 = 0;
                *error = v81;
                v33 = v135;
                v35 = v125;
                v28 = v126;
                goto LABEL_110;
              }

              v127 = 0;
              errorCopy5 = 0;
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
          v57 = [dictionaryCopy objectForKeyedSubscript:@"userSetRegionFormat"];
          v122 = v57;
          if (v57)
          {
            v58 = v57;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              errorCopy5 = error;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v123 = v58;
                goto LABEL_58;
              }

              if (error)
              {
                v82 = objc_alloc(MEMORY[0x1E696ABC0]);
                v83 = *MEMORY[0x1E698F240];
                v150 = *MEMORY[0x1E696A578];
                v84 = objc_alloc(MEMORY[0x1E696AEC0]);
                v110 = objc_opt_class();
                v85 = v84;
                self = selfCopy2;
                v121 = [v85 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v110, @"userSetRegionFormat"];
                v151 = v121;
                v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
                v86 = [v82 initWithDomain:v83 code:2 userInfo:?];
                v123 = 0;
                errorCopy5 = 0;
                *error = v86;
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
          v59 = [dictionaryCopy objectForKeyedSubscript:@"alignmentGrade"];
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

            if (!error)
            {
              v121 = 0;
              errorCopy5 = 0;
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
            self = selfCopy2;
            v120 = [v90 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v111, @"alignmentGrade"];
            v149 = v120;
            v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
            v91 = [v87 initWithDomain:v88 code:2 userInfo:?];
            v121 = 0;
            errorCopy5 = 0;
            *error = v91;
          }

          else
          {
            v121 = 0;
LABEL_61:
            v61 = [dictionaryCopy objectForKeyedSubscript:@"alignmentModelVersion"];
            v116 = v61;
            if (!v61 || (v62 = v61, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v120 = 0;
LABEL_64:
              v63 = [dictionaryCopy objectForKeyedSubscript:@"siGrade"];
              v133 = dictionaryCopy;
              v115 = v63;
              if (!v63 || (v64 = v63, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v117 = 0;
LABEL_67:
                v65 = [dictionaryCopy objectForKeyedSubscript:@"siModelVersion"];
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
                  self = [(BMGenerativeExperiencesPromptTags *)selfCopy2 initWithItemId:v136 usecaseId:v135 tags:v13 modelName:v125 modelVersion:v119 userInterfaceLanguage:v127 userSetRegionFormat:v123 alignmentGrade:v121 alignmentModelVersion:v120 siGrade:v117 siModelVersion:v67];
                  errorCopy5 = self;
LABEL_106:

                  v7 = v66;
                  dictionaryCopy = v133;
LABEL_107:
                  v28 = v126;

LABEL_108:
LABEL_109:

LABEL_110:
LABEL_111:

                  goto LABEL_112;
                }

                if (error)
                {
                  v114 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v102 = *MEMORY[0x1E698F240];
                  v142 = *MEMORY[0x1E696A578];
                  v103 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"siModelVersion"];
                  v143 = v103;
                  v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
                  v105 = v102;
                  self = selfCopy2;
                  *error = [v114 initWithDomain:v105 code:2 userInfo:v104];
                }

                v67 = 0;
                errorCopy5 = 0;
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

              if (error)
              {
                v66 = v7;
                v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                v98 = *MEMORY[0x1E698F240];
                v144 = *MEMORY[0x1E696A578];
                v99 = objc_alloc(MEMORY[0x1E696AEC0]);
                v113 = objc_opt_class();
                v100 = v99;
                self = selfCopy2;
                v67 = [v100 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v113, @"siGrade"];
                v145 = v67;
                v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
                v101 = [v97 initWithDomain:v98 code:2 userInfo:v65];
                v117 = 0;
                errorCopy5 = 0;
                *error = v101;
                goto LABEL_105;
              }

              v117 = 0;
              errorCopy5 = 0;
LABEL_129:
              v33 = v135;
              v35 = v125;
              goto LABEL_107;
            }

            errorCopy5 = error;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v120 = v62;
              goto LABEL_64;
            }

            if (error)
            {
              v92 = objc_alloc(MEMORY[0x1E696ABC0]);
              v93 = *MEMORY[0x1E698F240];
              v146 = *MEMORY[0x1E696A578];
              v94 = objc_alloc(MEMORY[0x1E696AEC0]);
              v112 = objc_opt_class();
              v95 = v94;
              self = selfCopy2;
              v117 = [v95 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v112, @"alignmentModelVersion"];
              v147 = v117;
              v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
              v96 = [v92 initWithDomain:v93 code:2 userInfo:?];
              v120 = 0;
              errorCopy5 = 0;
              *error = v96;
              goto LABEL_129;
            }

            v120 = 0;
          }

          v33 = v135;
          v35 = v125;
          v28 = v126;
          goto LABEL_108;
        }

        if (error)
        {
          errorCopy6 = error;
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
          errorCopy5 = 0;
          *errorCopy6 = v72;
          self = selfCopy2;
          v33 = v135;

          goto LABEL_113;
        }

        v35 = 0;
        self = selfCopy2;
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

    if (errorCopy)
    {
      v25 = errorCopy;
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
      errorCopy5 = 0;
      *v25 = [v29 initWithDomain:v30 code:2 userInfo:v22];
      v35 = v10;
      v7 = v18;
      dictionaryCopy = v132;
      self = selfCopy2;
      goto LABEL_113;
    }

LABEL_39:
    errorCopy5 = 0;
    v35 = v10;
    v7 = v18;
    dictionaryCopy = v132;
    self = selfCopy2;
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

    if (error)
    {
      v52 = objc_alloc(MEMORY[0x1E696ABC0]);
      v53 = *MEMORY[0x1E698F240];
      v169 = *MEMORY[0x1E696A578];
      v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"itemId"];
      v170[0] = v33;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v170 forKeys:&v169 count:1];
      *error = [v52 initWithDomain:v53 code:2 userInfo:v54];

      errorCopy5 = 0;
      goto LABEL_119;
    }

    errorCopy5 = 0;
LABEL_120:
  }

  else
  {
    if (error)
    {
      v36 = objc_alloc(MEMORY[0x1E696ABC0]);
      v37 = *MEMORY[0x1E698F240];
      v167 = *MEMORY[0x1E696A578];
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemId"];
      v168 = v8;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
      v38 = [v36 initWithDomain:v37 code:2 userInfo:v33];
      errorCopy5 = 0;
      *error = v38;
      goto LABEL_119;
    }

    errorCopy5 = 0;
  }

  v106 = *MEMORY[0x1E69E9840];
  return errorCopy5;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMGenerativeExperiencesPromptTags *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v43.receiver = self;
  v43.super_class = BMGenerativeExperiencesPromptTags;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_77;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v44 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
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
              v31 = [fromCopy position] + 1;
              if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if ([fromCopy hasError])
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
              v20 = [fromCopy position] + 1;
              if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if ([fromCopy hasError])
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v38 = [v6 copy];
  tags = v5->_tags;
  v5->_tags = v38;

  hasError = [fromCopy hasError];
  if (hasError)
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
  itemId = [(BMGenerativeExperiencesPromptTags *)self itemId];
  usecaseId = [(BMGenerativeExperiencesPromptTags *)self usecaseId];
  tags = [(BMGenerativeExperiencesPromptTags *)self tags];
  modelName = [(BMGenerativeExperiencesPromptTags *)self modelName];
  modelVersion = [(BMGenerativeExperiencesPromptTags *)self modelVersion];
  userInterfaceLanguage = [(BMGenerativeExperiencesPromptTags *)self userInterfaceLanguage];
  userSetRegionFormat = [(BMGenerativeExperiencesPromptTags *)self userSetRegionFormat];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGenerativeExperiencesPromptTags alignmentGrade](self, "alignmentGrade")}];
  alignmentModelVersion = [(BMGenerativeExperiencesPromptTags *)self alignmentModelVersion];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGenerativeExperiencesPromptTags siGrade](self, "siGrade")}];
  siModelVersion = [(BMGenerativeExperiencesPromptTags *)self siModelVersion];
  v15 = [v14 initWithFormat:@"BMGenerativeExperiencesPromptTags with itemId: %@, usecaseId: %@, tags: %@, modelName: %@, modelVersion: %@, userInterfaceLanguage: %@, userSetRegionFormat: %@, alignmentGrade: %@, alignmentModelVersion: %@, siGrade: %@, siModelVersion: %@", itemId, usecaseId, tags, modelName, modelVersion, userInterfaceLanguage, userSetRegionFormat, v9, alignmentModelVersion, v11, siModelVersion];

  return v15;
}

- (BMGenerativeExperiencesPromptTags)initWithItemId:(id)id usecaseId:(id)usecaseId tags:(id)tags modelName:(id)name modelVersion:(id)version userInterfaceLanguage:(id)language userSetRegionFormat:(id)format alignmentGrade:(id)self0 alignmentModelVersion:(id)self1 siGrade:(id)self2 siModelVersion:(id)self3
{
  v47[2] = *MEMORY[0x1E69E9840];
  idCopy = id;
  obj = usecaseId;
  usecaseIdCopy = usecaseId;
  v20 = idCopy;
  v45 = usecaseIdCopy;
  tagsCopy = tags;
  tagsCopy2 = tags;
  nameCopy = name;
  nameCopy2 = name;
  versionCopy = version;
  versionCopy2 = version;
  languageCopy = language;
  languageCopy2 = language;
  formatCopy = format;
  gradeCopy = grade;
  modelVersionCopy = modelVersion;
  modelVersionCopy2 = modelVersion;
  siGradeCopy = siGrade;
  siModelVersionCopy = siModelVersion;
  siModelVersionCopy2 = siModelVersion;
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
      [v20 getUUIDBytes:{v47, obj, tagsCopy, name, version, language, modelVersion, siModelVersion}];
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
    objc_storeStrong(&v25->_tags, tagsCopy);
    objc_storeStrong(&v25->_modelName, nameCopy);
    objc_storeStrong(&v25->_modelVersion, versionCopy);
    objc_storeStrong(&v25->_userInterfaceLanguage, languageCopy);
    objc_storeStrong(&v25->_userSetRegionFormat, format);
    if (gradeCopy)
    {
      v25->_hasAlignmentGrade = 1;
      intValue = [gradeCopy intValue];
    }

    else
    {
      v25->_hasAlignmentGrade = 0;
      intValue = -1;
    }

    v25->_alignmentGrade = intValue;
    objc_storeStrong(&v25->_alignmentModelVersion, modelVersionCopy);
    if (siGradeCopy)
    {
      v25->_hasSiGrade = 1;
      intValue2 = [siGradeCopy intValue];
    }

    else
    {
      v25->_hasSiGrade = 0;
      intValue2 = -1;
    }

    v25->_siGrade = intValue2;
    objc_storeStrong(&v25->_siModelVersion, siModelVersionCopy);
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