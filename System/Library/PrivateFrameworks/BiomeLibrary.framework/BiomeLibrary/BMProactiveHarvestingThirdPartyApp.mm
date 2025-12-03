@interface BMProactiveHarvestingThirdPartyApp
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingThirdPartyApp)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingThirdPartyApp)initWithUniqueID:(id)d domainID:(id)iD bundleID:(id)bundleID absoluteTimestamp:(id)timestamp title:(id)title desc:(id)desc comment:(id)comment content:(id)self0 contentProtection:(id)self1 personaId:(id)self2;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingThirdPartyApp

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueID = [(BMProactiveHarvestingThirdPartyApp *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v8 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMProactiveHarvestingThirdPartyApp *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v11 = [uniqueID3 isEqual:uniqueID4];

      if (!v11)
      {
        goto LABEL_37;
      }
    }

    domainID = [(BMProactiveHarvestingThirdPartyApp *)self domainID];
    domainID2 = [v5 domainID];
    v15 = domainID2;
    if (domainID == domainID2)
    {
    }

    else
    {
      domainID3 = [(BMProactiveHarvestingThirdPartyApp *)self domainID];
      domainID4 = [v5 domainID];
      v18 = [domainID3 isEqual:domainID4];

      if (!v18)
      {
        goto LABEL_37;
      }
    }

    bundleID = [(BMProactiveHarvestingThirdPartyApp *)self bundleID];
    bundleID2 = [v5 bundleID];
    v21 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMProactiveHarvestingThirdPartyApp *)self bundleID];
      bundleID4 = [v5 bundleID];
      v24 = [bundleID3 isEqual:bundleID4];

      if (!v24)
      {
        goto LABEL_37;
      }
    }

    absoluteTimestamp = [(BMProactiveHarvestingThirdPartyApp *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v27 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMProactiveHarvestingThirdPartyApp *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v30 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v30)
      {
        goto LABEL_37;
      }
    }

    title = [(BMProactiveHarvestingThirdPartyApp *)self title];
    title2 = [v5 title];
    v33 = title2;
    if (title == title2)
    {
    }

    else
    {
      title3 = [(BMProactiveHarvestingThirdPartyApp *)self title];
      title4 = [v5 title];
      v36 = [title3 isEqual:title4];

      if (!v36)
      {
        goto LABEL_37;
      }
    }

    desc = [(BMProactiveHarvestingThirdPartyApp *)self desc];
    desc2 = [v5 desc];
    v39 = desc2;
    if (desc == desc2)
    {
    }

    else
    {
      desc3 = [(BMProactiveHarvestingThirdPartyApp *)self desc];
      desc4 = [v5 desc];
      v42 = [desc3 isEqual:desc4];

      if (!v42)
      {
        goto LABEL_37;
      }
    }

    comment = [(BMProactiveHarvestingThirdPartyApp *)self comment];
    comment2 = [v5 comment];
    v45 = comment2;
    if (comment == comment2)
    {
    }

    else
    {
      comment3 = [(BMProactiveHarvestingThirdPartyApp *)self comment];
      comment4 = [v5 comment];
      v48 = [comment3 isEqual:comment4];

      if (!v48)
      {
        goto LABEL_37;
      }
    }

    content = [(BMProactiveHarvestingThirdPartyApp *)self content];
    content2 = [v5 content];
    v51 = content2;
    if (content == content2)
    {
    }

    else
    {
      content3 = [(BMProactiveHarvestingThirdPartyApp *)self content];
      content4 = [v5 content];
      v54 = [content3 isEqual:content4];

      if (!v54)
      {
        goto LABEL_37;
      }
    }

    contentProtection = [(BMProactiveHarvestingThirdPartyApp *)self contentProtection];
    contentProtection2 = [v5 contentProtection];
    v57 = contentProtection2;
    if (contentProtection == contentProtection2)
    {
    }

    else
    {
      contentProtection3 = [(BMProactiveHarvestingThirdPartyApp *)self contentProtection];
      contentProtection4 = [v5 contentProtection];
      v60 = [contentProtection3 isEqual:contentProtection4];

      if (!v60)
      {
LABEL_37:
        v12 = 0;
LABEL_38:

        goto LABEL_39;
      }
    }

    personaId = [(BMProactiveHarvestingThirdPartyApp *)self personaId];
    personaId2 = [v5 personaId];
    if (personaId == personaId2)
    {
      v12 = 1;
    }

    else
    {
      personaId3 = [(BMProactiveHarvestingThirdPartyApp *)self personaId];
      personaId4 = [v5 personaId];
      v12 = [personaId3 isEqual:personaId4];
    }

    goto LABEL_38;
  }

  v12 = 0;
LABEL_39:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v41[10] = *MEMORY[0x1E69E9840];
  uniqueID = [(BMProactiveHarvestingThirdPartyApp *)self uniqueID];
  domainID = [(BMProactiveHarvestingThirdPartyApp *)self domainID];
  bundleID = [(BMProactiveHarvestingThirdPartyApp *)self bundleID];
  absoluteTimestamp = [(BMProactiveHarvestingThirdPartyApp *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v7 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMProactiveHarvestingThirdPartyApp *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  title = [(BMProactiveHarvestingThirdPartyApp *)self title];
  desc = [(BMProactiveHarvestingThirdPartyApp *)self desc];
  comment = [(BMProactiveHarvestingThirdPartyApp *)self comment];
  content = [(BMProactiveHarvestingThirdPartyApp *)self content];
  contentProtection = [(BMProactiveHarvestingThirdPartyApp *)self contentProtection];
  personaId = [(BMProactiveHarvestingThirdPartyApp *)self personaId];
  v40[0] = @"uniqueID";
  null = uniqueID;
  if (!uniqueID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null;
  v41[0] = null;
  v40[1] = @"domainID";
  null2 = domainID;
  if (!domainID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null2;
  v41[1] = null2;
  v40[2] = @"bundleID";
  null3 = bundleID;
  if (!bundleID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = uniqueID;
  v31 = null3;
  v41[2] = null3;
  v40[3] = @"absoluteTimestamp";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = domainID;
  v30 = null4;
  v41[3] = null4;
  v40[4] = @"title";
  null5 = title;
  if (!title)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = bundleID;
  v29 = null5;
  v41[4] = null5;
  v40[5] = @"desc";
  null6 = desc;
  if (!desc)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v9;
  v41[5] = null6;
  v40[6] = @"comment";
  null7 = comment;
  if (!comment)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = title;
  v41[6] = null7;
  v40[7] = @"content";
  null8 = content;
  if (!content)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = desc;
  v41[7] = null8;
  v40[8] = @"contentProtection";
  null9 = contentProtection;
  if (!contentProtection)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v41[8] = null9;
  v40[9] = @"personaId";
  null10 = personaId;
  if (!personaId)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v41[9] = null10;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:10];
  if (personaId)
  {
    if (contentProtection)
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (contentProtection)
    {
      goto LABEL_26;
    }
  }

LABEL_26:
  if (!content)
  {
  }

  if (!comment)
  {
  }

  if (!v24)
  {
  }

  if (!v22)
  {
  }

  if (!v35)
  {
  }

  if (v36)
  {
    if (v37)
    {
      goto LABEL_38;
    }

LABEL_45:

    if (v38)
    {
      goto LABEL_39;
    }

    goto LABEL_46;
  }

  if (!v37)
  {
    goto LABEL_45;
  }

LABEL_38:
  if (v38)
  {
    goto LABEL_39;
  }

LABEL_46:

LABEL_39:
  v27 = *MEMORY[0x1E69E9840];

  return v34;
}

- (BMProactiveHarvestingThirdPartyApp)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v114[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"domainID"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v25 = 0;
          goto LABEL_57;
        }

        selfCopy6 = self;
        errorCopy2 = error;
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v111 = *MEMORY[0x1E696A578];
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainID"];
        v112 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        v31 = v27;
        v11 = v30;
        v32 = [v31 initWithDomain:v28 code:2 userInfo:v30];
        v10 = 0;
        v25 = 0;
        *errorCopy2 = v32;
        goto LABEL_86;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v91 = 0;
LABEL_10:
      v12 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
      v83 = v11;
      v84 = v12;
      if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = MEMORY[0x1E695DF00];
          v15 = v13;
          v16 = [v14 alloc];
          [v15 doubleValue];
          v18 = v17;

          v19 = [v16 initWithTimeIntervalSinceReferenceDate:v18];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v93 = [v37 dateFromString:v13];

            goto LABEL_30;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy)
            {
              v93 = 0;
              v25 = 0;
              v29 = v91;
              v35 = v84;
              goto LABEL_55;
            }

            v94 = objc_alloc(MEMORY[0x1E696ABC0]);
            v68 = v10;
            v69 = *MEMORY[0x1E698F240];
            v107 = *MEMORY[0x1E696A578];
            v35 = v84;
            v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
            v108 = v89;
            v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
            v71 = v69;
            v10 = v68;
            v85 = v70;
            v72 = [v94 initWithDomain:v71 code:2 userInfo:?];
            v93 = 0;
            v25 = 0;
            *errorCopy = v72;
            v29 = v91;
            goto LABEL_54;
          }

          v19 = v13;
        }

        v93 = v19;
      }

      else
      {
        v93 = 0;
      }

LABEL_30:
      v38 = [dictionaryCopy objectForKeyedSubscript:@"title"];
      v88 = v10;
      v85 = v38;
      if (v38 && (v39 = v38, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          selfCopy5 = self;
          if (!errorCopy)
          {
            v89 = 0;
            v25 = 0;
            v29 = v91;
            v35 = v84;
            goto LABEL_54;
          }

          v51 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = *MEMORY[0x1E698F240];
          v105 = *MEMORY[0x1E696A578];
          v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"title"];
          v106 = v86;
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
          v53 = v51;
          v10 = v88;
          v54 = [v53 initWithDomain:v52 code:2 userInfo:v40];
          v89 = 0;
          v25 = 0;
          *errorCopy = v54;
          goto LABEL_92;
        }

        v89 = v39;
      }

      else
      {
        v89 = 0;
      }

      v40 = [dictionaryCopy objectForKeyedSubscript:@"desc"];
      v81 = v9;
      if (!v40 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v86 = 0;
LABEL_36:
        v41 = [dictionaryCopy objectForKeyedSubscript:@"comment"];
        if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy)
            {
              v82 = 0;
              v25 = 0;
              goto LABEL_52;
            }

            v58 = objc_alloc(MEMORY[0x1E696ABC0]);
            v59 = *MEMORY[0x1E698F240];
            v101 = *MEMORY[0x1E696A578];
            v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"comment"];
            v102 = v79;
            v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
            v60 = [v58 initWithDomain:v59 code:2 userInfo:v42];
            v82 = 0;
            v25 = 0;
            *errorCopy = v60;
            goto LABEL_51;
          }

          v82 = v41;
        }

        else
        {
          v82 = 0;
        }

        v42 = [dictionaryCopy objectForKeyedSubscript:@"content"];
        v74 = v7;
        v78 = v8;
        if (v42 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy)
            {
              v79 = 0;
              v25 = 0;
              goto LABEL_51;
            }

            selfCopy4 = self;
            v80 = objc_alloc(MEMORY[0x1E696ABC0]);
            v61 = *MEMORY[0x1E698F240];
            v99 = *MEMORY[0x1E696A578];
            v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"content"];
            v100 = v45;
            v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
            v62 = [v80 initWithDomain:v61 code:2 userInfo:v43];
            v79 = 0;
            v25 = 0;
            *errorCopy = v62;
LABEL_50:

            self = selfCopy4;
            v7 = v74;
            v8 = v78;
            v10 = v88;
LABEL_51:

            v9 = v81;
LABEL_52:

LABEL_53:
            v35 = v84;

            v29 = v91;
LABEL_54:

            v11 = v83;
            goto LABEL_55;
          }

          v79 = v42;
        }

        else
        {
          v79 = 0;
        }

        v43 = [dictionaryCopy objectForKeyedSubscript:@"contentProtection"];
        selfCopy4 = self;
        if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy)
            {
              v45 = 0;
              v25 = 0;
              goto LABEL_50;
            }

            v63 = objc_alloc(MEMORY[0x1E696ABC0]);
            v64 = *MEMORY[0x1E698F240];
            v97 = *MEMORY[0x1E696A578];
            v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
            v98 = v47;
            v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
            v65 = [v63 initWithDomain:v64 code:2 userInfo:v46];
            v45 = 0;
            v25 = 0;
            *errorCopy = v65;
            goto LABEL_49;
          }

          v45 = v43;
        }

        else
        {
          v45 = 0;
        }

        v46 = [dictionaryCopy objectForKeyedSubscript:@"personaId"];
        if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy)
            {
              v77 = objc_alloc(MEMORY[0x1E696ABC0]);
              v73 = *MEMORY[0x1E698F240];
              v95 = *MEMORY[0x1E696A578];
              v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
              v96 = v66;
              v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
              *errorCopy = [v77 initWithDomain:v73 code:2 userInfo:v67];
            }

            v47 = 0;
            v25 = 0;
            goto LABEL_49;
          }

          v47 = v46;
        }

        else
        {
          v47 = 0;
        }

        v25 = [(BMProactiveHarvestingThirdPartyApp *)selfCopy4 initWithUniqueID:v78 domainID:v88 bundleID:v91 absoluteTimestamp:v93 title:v89 desc:v86 comment:v82 content:v79 contentProtection:v45 personaId:v47];
        selfCopy4 = v25;
LABEL_49:

        goto LABEL_50;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v86 = v40;
        goto LABEL_36;
      }

      selfCopy5 = self;
      if (errorCopy)
      {
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v87 = *MEMORY[0x1E698F240];
        v103 = *MEMORY[0x1E696A578];
        v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"desc"];
        v104 = v82;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
        v56 = v55;
        v10 = v88;
        v57 = [v56 initWithDomain:v87 code:2 userInfo:v41];
        v86 = 0;
        v25 = 0;
        *errorCopy = v57;
        goto LABEL_52;
      }

      v86 = 0;
      v25 = 0;
LABEL_92:
      self = selfCopy5;
      goto LABEL_53;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v91 = v11;
      goto LABEL_10;
    }

    selfCopy6 = self;
    if (errorCopy)
    {
      v92 = objc_alloc(MEMORY[0x1E696ABC0]);
      v33 = v10;
      v34 = *MEMORY[0x1E698F240];
      v109 = *MEMORY[0x1E696A578];
      v93 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
      v110 = v93;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      v36 = v34;
      v10 = v33;
      v29 = 0;
      v25 = 0;
      *errorCopy = [v92 initWithDomain:v36 code:2 userInfo:v35];
LABEL_55:

LABEL_56:
      goto LABEL_57;
    }

    v29 = 0;
    v25 = 0;
LABEL_86:
    self = selfCopy6;
    goto LABEL_56;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v25 = 0;
    goto LABEL_58;
  }

  selfCopy7 = self;
  errorCopy3 = error;
  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = *MEMORY[0x1E698F240];
  v113 = *MEMORY[0x1E696A578];
  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
  v114[0] = v23;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:&v113 count:1];
  v24 = v22;
  v10 = v23;
  v8 = 0;
  v25 = 0;
  *errorCopy3 = [v21 initWithDomain:v24 code:2 userInfo:v9];
  self = selfCopy7;
LABEL_57:

LABEL_58:
  v48 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingThirdPartyApp *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_domainID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_desc)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_comment)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_content)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMProactiveHarvestingThirdPartyApp;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_52;
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
        LOBYTE(v26) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) > 5)
      {
        if (v15 <= 7)
        {
          if (v15 == 6)
          {
            v16 = PBReaderReadString();
            v17 = 72;
            goto LABEL_43;
          }

          if (v15 == 7)
          {
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_43;
          }
        }

        else
        {
          switch(v15)
          {
            case 8:
              v16 = PBReaderReadString();
              v17 = 88;
              goto LABEL_43;
            case 9:
              v16 = PBReaderReadString();
              v17 = 96;
              goto LABEL_43;
            case 0xA:
              v16 = PBReaderReadString();
              v17 = 104;
              goto LABEL_43;
          }
        }
      }

      else if (v15 <= 2)
      {
        if (v15 == 1)
        {
          v16 = PBReaderReadString();
          v17 = 40;
          goto LABEL_43;
        }

        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 48;
          goto LABEL_43;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v16 = PBReaderReadString();
            v17 = 56;
            goto LABEL_43;
          case 4:
            v5->_hasRaw_absoluteTimestamp = 1;
            v26 = 0.0;
            v18 = [fromCopy position] + 8;
            if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v5->_raw_absoluteTimestamp = v26;
            goto LABEL_44;
          case 5:
            v16 = PBReaderReadString();
            v17 = 64;
LABEL_43:
            v20 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_44;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_51;
      }

LABEL_44:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_51:
    v23 = 0;
  }

  else
  {
LABEL_52:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueID = [(BMProactiveHarvestingThirdPartyApp *)self uniqueID];
  domainID = [(BMProactiveHarvestingThirdPartyApp *)self domainID];
  bundleID = [(BMProactiveHarvestingThirdPartyApp *)self bundleID];
  absoluteTimestamp = [(BMProactiveHarvestingThirdPartyApp *)self absoluteTimestamp];
  title = [(BMProactiveHarvestingThirdPartyApp *)self title];
  desc = [(BMProactiveHarvestingThirdPartyApp *)self desc];
  comment = [(BMProactiveHarvestingThirdPartyApp *)self comment];
  content = [(BMProactiveHarvestingThirdPartyApp *)self content];
  contentProtection = [(BMProactiveHarvestingThirdPartyApp *)self contentProtection];
  personaId = [(BMProactiveHarvestingThirdPartyApp *)self personaId];
  v12 = [v15 initWithFormat:@"BMProactiveHarvestingThirdPartyApp with uniqueID: %@, domainID: %@, bundleID: %@, absoluteTimestamp: %@, title: %@, desc: %@, comment: %@, content: %@, contentProtection: %@, personaId: %@", uniqueID, domainID, bundleID, absoluteTimestamp, title, desc, comment, content, contentProtection, personaId];

  return v12;
}

- (BMProactiveHarvestingThirdPartyApp)initWithUniqueID:(id)d domainID:(id)iD bundleID:(id)bundleID absoluteTimestamp:(id)timestamp title:(id)title desc:(id)desc comment:(id)comment content:(id)self0 contentProtection:(id)self1 personaId:(id)self2
{
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  timestampCopy = timestamp;
  titleCopy = title;
  titleCopy2 = title;
  descCopy = desc;
  commentCopy = comment;
  contentCopy = content;
  protectionCopy = protection;
  idCopy = id;
  v33.receiver = self;
  v33.super_class = BMProactiveHarvestingThirdPartyApp;
  v23 = [(BMEventBase *)&v33 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_uniqueID, d);
    objc_storeStrong(&v23->_domainID, iD);
    objc_storeStrong(&v23->_bundleID, bundleID);
    if (timestampCopy)
    {
      v23->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v23->_hasRaw_absoluteTimestamp = 0;
      v24 = -1.0;
    }

    v23->_raw_absoluteTimestamp = v24;
    objc_storeStrong(&v23->_title, titleCopy);
    objc_storeStrong(&v23->_desc, desc);
    objc_storeStrong(&v23->_comment, comment);
    objc_storeStrong(&v23->_content, content);
    objc_storeStrong(&v23->_contentProtection, protection);
    objc_storeStrong(&v23->_personaId, id);
  }

  return v23;
}

+ (id)protoFields
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v15[0] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainID" number:2 type:13 subMessageClass:0];
  v15[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:3 type:13 subMessageClass:0];
  v15[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:4 type:0 subMessageClass:0];
  v15[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:5 type:13 subMessageClass:0];
  v15[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"desc" number:6 type:13 subMessageClass:0];
  v15[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"comment" number:7 type:13 subMessageClass:0];
  v15[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"content" number:8 type:13 subMessageClass:0];
  v15[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:9 type:13 subMessageClass:0];
  v15[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:10 type:13 subMessageClass:0];
  v15[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:1];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"desc" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"comment" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"content" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMProactiveHarvestingThirdPartyApp alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[8] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end