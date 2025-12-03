@interface BMGeneratedImageUserInteraction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMGeneratedImageUserInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMGeneratedImageUserInteraction)initWithTimestamp:(id)timestamp prompt:(id)prompt tokenLength:(id)length identifier:(id)identifier topic:(id)topic usage:(id)usage userInterfaceLanguage:(id)language userSetRegionFormat:(id)self0 personalization:(int)self1 result:(int)self2 feature:(int)self3 style:(id)self4 hair:(id)self5 facialHair:(id)self6 accessories:(id)self7 additionalDescription:(id)self8;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (NSUUID)identifier;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMGeneratedImageUserInteraction

+ (id)columns
{
  v21[16] = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"prompt" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tokenLength" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:6 requestOnly:0 fieldNumber:4 protoDataType:14 convertedType:3];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"topic" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usage" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userInterfaceLanguage" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userSetRegionFormat" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personalization" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"result" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"feature" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"style" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hair" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"facialHair" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accessories" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"additionalDescription" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    timestamp = [(BMGeneratedImageUserInteraction *)self timestamp];
    timestamp2 = [v5 timestamp];
    v8 = timestamp2;
    if (timestamp == timestamp2)
    {
    }

    else
    {
      timestamp3 = [(BMGeneratedImageUserInteraction *)self timestamp];
      timestamp4 = [v5 timestamp];
      v11 = [timestamp3 isEqual:timestamp4];

      if (!v11)
      {
        goto LABEL_54;
      }
    }

    prompt = [(BMGeneratedImageUserInteraction *)self prompt];
    prompt2 = [v5 prompt];
    v15 = prompt2;
    if (prompt == prompt2)
    {
    }

    else
    {
      prompt3 = [(BMGeneratedImageUserInteraction *)self prompt];
      prompt4 = [v5 prompt];
      v18 = [prompt3 isEqual:prompt4];

      if (!v18)
      {
        goto LABEL_54;
      }
    }

    if (-[BMGeneratedImageUserInteraction hasTokenLength](self, "hasTokenLength") || [v5 hasTokenLength])
    {
      if (![(BMGeneratedImageUserInteraction *)self hasTokenLength])
      {
        goto LABEL_54;
      }

      if (![v5 hasTokenLength])
      {
        goto LABEL_54;
      }

      tokenLength = [(BMGeneratedImageUserInteraction *)self tokenLength];
      if (tokenLength != [v5 tokenLength])
      {
        goto LABEL_54;
      }
    }

    identifier = [(BMGeneratedImageUserInteraction *)self identifier];
    identifier2 = [v5 identifier];
    v22 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMGeneratedImageUserInteraction *)self identifier];
      identifier4 = [v5 identifier];
      v25 = [identifier3 isEqual:identifier4];

      if (!v25)
      {
        goto LABEL_54;
      }
    }

    topic = [(BMGeneratedImageUserInteraction *)self topic];
    topic2 = [v5 topic];
    v28 = topic2;
    if (topic == topic2)
    {
    }

    else
    {
      topic3 = [(BMGeneratedImageUserInteraction *)self topic];
      topic4 = [v5 topic];
      v31 = [topic3 isEqual:topic4];

      if (!v31)
      {
        goto LABEL_54;
      }
    }

    if (-[BMGeneratedImageUserInteraction hasUsage](self, "hasUsage") || [v5 hasUsage])
    {
      if (![(BMGeneratedImageUserInteraction *)self hasUsage])
      {
        goto LABEL_54;
      }

      if (![v5 hasUsage])
      {
        goto LABEL_54;
      }

      usage = [(BMGeneratedImageUserInteraction *)self usage];
      if (usage != [v5 usage])
      {
        goto LABEL_54;
      }
    }

    userInterfaceLanguage = [(BMGeneratedImageUserInteraction *)self userInterfaceLanguage];
    userInterfaceLanguage2 = [v5 userInterfaceLanguage];
    v35 = userInterfaceLanguage2;
    if (userInterfaceLanguage == userInterfaceLanguage2)
    {
    }

    else
    {
      userInterfaceLanguage3 = [(BMGeneratedImageUserInteraction *)self userInterfaceLanguage];
      userInterfaceLanguage4 = [v5 userInterfaceLanguage];
      v38 = [userInterfaceLanguage3 isEqual:userInterfaceLanguage4];

      if (!v38)
      {
        goto LABEL_54;
      }
    }

    userSetRegionFormat = [(BMGeneratedImageUserInteraction *)self userSetRegionFormat];
    userSetRegionFormat2 = [v5 userSetRegionFormat];
    v41 = userSetRegionFormat2;
    if (userSetRegionFormat == userSetRegionFormat2)
    {
    }

    else
    {
      userSetRegionFormat3 = [(BMGeneratedImageUserInteraction *)self userSetRegionFormat];
      userSetRegionFormat4 = [v5 userSetRegionFormat];
      v44 = [userSetRegionFormat3 isEqual:userSetRegionFormat4];

      if (!v44)
      {
        goto LABEL_54;
      }
    }

    personalization = [(BMGeneratedImageUserInteraction *)self personalization];
    if (personalization != [v5 personalization])
    {
      goto LABEL_54;
    }

    result = [(BMGeneratedImageUserInteraction *)self result];
    if (result != [v5 result])
    {
      goto LABEL_54;
    }

    feature = [(BMGeneratedImageUserInteraction *)self feature];
    if (feature != [v5 feature])
    {
      goto LABEL_54;
    }

    style = [(BMGeneratedImageUserInteraction *)self style];
    style2 = [v5 style];
    v50 = style2;
    if (style == style2)
    {
    }

    else
    {
      style3 = [(BMGeneratedImageUserInteraction *)self style];
      style4 = [v5 style];
      v53 = [style3 isEqual:style4];

      if (!v53)
      {
        goto LABEL_54;
      }
    }

    hair = [(BMGeneratedImageUserInteraction *)self hair];
    hair2 = [v5 hair];
    v56 = hair2;
    if (hair == hair2)
    {
    }

    else
    {
      hair3 = [(BMGeneratedImageUserInteraction *)self hair];
      hair4 = [v5 hair];
      v59 = [hair3 isEqual:hair4];

      if (!v59)
      {
        goto LABEL_54;
      }
    }

    facialHair = [(BMGeneratedImageUserInteraction *)self facialHair];
    facialHair2 = [v5 facialHair];
    v62 = facialHair2;
    if (facialHair == facialHair2)
    {
    }

    else
    {
      facialHair3 = [(BMGeneratedImageUserInteraction *)self facialHair];
      facialHair4 = [v5 facialHair];
      v65 = [facialHair3 isEqual:facialHair4];

      if (!v65)
      {
        goto LABEL_54;
      }
    }

    accessories = [(BMGeneratedImageUserInteraction *)self accessories];
    accessories2 = [v5 accessories];
    v68 = accessories2;
    if (accessories == accessories2)
    {
    }

    else
    {
      accessories3 = [(BMGeneratedImageUserInteraction *)self accessories];
      accessories4 = [v5 accessories];
      v71 = [accessories3 isEqual:accessories4];

      if (!v71)
      {
LABEL_54:
        v12 = 0;
LABEL_55:

        goto LABEL_56;
      }
    }

    additionalDescription = [(BMGeneratedImageUserInteraction *)self additionalDescription];
    additionalDescription2 = [v5 additionalDescription];
    if (additionalDescription == additionalDescription2)
    {
      v12 = 1;
    }

    else
    {
      v75 = additionalDescription2;
      additionalDescription3 = [(BMGeneratedImageUserInteraction *)self additionalDescription];
      additionalDescription4 = [v5 additionalDescription];
      v12 = [additionalDescription3 isEqual:additionalDescription4];

      additionalDescription2 = v75;
    }

    goto LABEL_55;
  }

  v12 = 0;
LABEL_56:

  return v12;
}

- (NSUUID)identifier
{
  raw_identifier = self->_raw_identifier;
  if (raw_identifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_identifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
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
  v60[16] = *MEMORY[0x1E69E9840];
  timestamp = [(BMGeneratedImageUserInteraction *)self timestamp];
  if (timestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMGeneratedImageUserInteraction *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  prompt = [(BMGeneratedImageUserInteraction *)self prompt];
  if ([(BMGeneratedImageUserInteraction *)self hasTokenLength])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageUserInteraction tokenLength](self, "tokenLength")}];
  }

  else
  {
    v8 = 0;
  }

  identifier = [(BMGeneratedImageUserInteraction *)self identifier];
  uUIDString = [identifier UUIDString];

  topic = [(BMGeneratedImageUserInteraction *)self topic];
  if ([(BMGeneratedImageUserInteraction *)self hasUsage])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageUserInteraction usage](self, "usage")}];
  }

  else
  {
    v12 = 0;
  }

  userInterfaceLanguage = [(BMGeneratedImageUserInteraction *)self userInterfaceLanguage];
  userSetRegionFormat = [(BMGeneratedImageUserInteraction *)self userSetRegionFormat];
  v57 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageUserInteraction personalization](self, "personalization")}];
  v56 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageUserInteraction result](self, "result")}];
  v55 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageUserInteraction feature](self, "feature")}];
  style = [(BMGeneratedImageUserInteraction *)self style];
  hair = [(BMGeneratedImageUserInteraction *)self hair];
  facialHair = [(BMGeneratedImageUserInteraction *)self facialHair];
  accessories = [(BMGeneratedImageUserInteraction *)self accessories];
  additionalDescription = [(BMGeneratedImageUserInteraction *)self additionalDescription];
  v59[0] = @"timestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v45 = null;
  v60[0] = null;
  v59[1] = @"prompt";
  null2 = prompt;
  if (!prompt)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = null2;
  v60[1] = null2;
  v59[2] = @"tokenLength";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null3;
  v60[2] = null3;
  v59[3] = @"identifier";
  null4 = uUIDString;
  if (!uUIDString)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null4;
  v60[3] = null4;
  v59[4] = @"topic";
  null5 = topic;
  if (!topic)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null5;
  v60[4] = null5;
  v59[5] = @"usage";
  null6 = v12;
  if (!v12)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null6;
  v60[5] = null6;
  v59[6] = @"userInterfaceLanguage";
  null7 = userInterfaceLanguage;
  if (!userInterfaceLanguage)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null7;
  v60[6] = null7;
  v59[7] = @"userSetRegionFormat";
  null8 = userSetRegionFormat;
  if (!userSetRegionFormat)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = userInterfaceLanguage;
  v60[7] = null8;
  v59[8] = @"personalization";
  null9 = v57;
  if (!v57)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = v6;
  v60[8] = null9;
  v59[9] = @"result";
  null10 = v56;
  if (!v56)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null10;
  v37 = null9;
  v60[9] = null10;
  v59[10] = @"feature";
  null11 = v55;
  if (!v55)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null8;
  v49 = v12;
  v60[10] = null11;
  v59[11] = @"style";
  null12 = style;
  if (!style)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = uUIDString;
  v27 = v8;
  v60[11] = null12;
  v59[12] = @"hair";
  null13 = hair;
  if (!hair)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = prompt;
  v60[12] = null13;
  v59[13] = @"facialHair";
  null14 = facialHair;
  if (!facialHair)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v60[13] = null14;
  v59[14] = @"accessories";
  null15 = accessories;
  if (!accessories)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v60[14] = null15;
  v59[15] = @"additionalDescription";
  null16 = additionalDescription;
  if (!additionalDescription)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v60[15] = null16;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:{16, v35}];
  if (!additionalDescription)
  {
  }

  if (!accessories)
  {
  }

  if (!facialHair)
  {
  }

  if (!hair)
  {
  }

  if (!style)
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

  if (userSetRegionFormat)
  {
    if (v48)
    {
      goto LABEL_60;
    }
  }

  else
  {

    if (v48)
    {
LABEL_60:
      if (v49)
      {
        goto LABEL_61;
      }

      goto LABEL_71;
    }
  }

  if (v49)
  {
LABEL_61:
    if (topic)
    {
      goto LABEL_62;
    }

    goto LABEL_72;
  }

LABEL_71:

  if (topic)
  {
LABEL_62:
    if (v47)
    {
      goto LABEL_63;
    }

    goto LABEL_73;
  }

LABEL_72:

  if (v47)
  {
LABEL_63:
    if (v27)
    {
      goto LABEL_64;
    }

    goto LABEL_74;
  }

LABEL_73:

  if (v27)
  {
LABEL_64:
    if (v29)
    {
      goto LABEL_65;
    }

LABEL_75:

    if (v50)
    {
      goto LABEL_66;
    }

    goto LABEL_76;
  }

LABEL_74:

  if (!v29)
  {
    goto LABEL_75;
  }

LABEL_65:
  if (v50)
  {
    goto LABEL_66;
  }

LABEL_76:

LABEL_66:
  v33 = *MEMORY[0x1E69E9840];

  return v46;
}

- (BMGeneratedImageUserInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v222[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x1E695DF00];
    v10 = v7;
    v11 = [v9 alloc];
    [v10 doubleValue];
    v13 = v12;

    v14 = [v11 initWithTimeIntervalSince1970:v13];
LABEL_6:
    v8 = v14;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v8 = 0;
        goto LABEL_161;
      }

      v96 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy = error;
      v98 = *MEMORY[0x1E698F240];
      v221 = *MEMORY[0x1E696A578];
      v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
      v222[0] = v99;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v222 forKeys:&v221 count:1];
      v100 = v96;
      v17 = v99;
      v101 = [v100 initWithDomain:v98 code:2 userInfo:v16];
      v8 = 0;
      error = 0;
      *errorCopy = v101;
      goto LABEL_160;
    }

    v14 = v7;
    goto LABEL_6;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v8 = [v15 dateFromString:v7];

LABEL_9:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"prompt"];
  if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
LABEL_12:
    v18 = [dictionaryCopy objectForKeyedSubscript:@"tokenLength"];
    v187 = v8;
    errorCopy4 = self;
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v186 = 0;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v186 = v18;
LABEL_15:
      v19 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
      if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v181 = 0;
        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v173 = v16;
        v175 = v7;
        v29 = v18;
        v30 = v17;
        v31 = v19;
        v32 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v31];
        if (!v32)
        {
          if (error)
          {
            v89 = objc_alloc(MEMORY[0x1E696ABC0]);
            errorCopy2 = error;
            v91 = *MEMORY[0x1E698F240];
            v215 = *MEMORY[0x1E696A578];
            v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"identifier"];
            v216 = v92;
            v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
            *errorCopy2 = [v89 initWithDomain:v91 code:2 userInfo:v93];

            error = 0;
          }

          v45 = v31;
          v19 = v31;
          v17 = v30;
          v37 = v186;
          v18 = v29;
          v16 = v173;
          v7 = v175;
          goto LABEL_157;
        }

        v33 = v32;

        v181 = v33;
        v17 = v30;
        v18 = v29;
        v16 = v173;
        v7 = v175;
LABEL_18:
        v20 = [dictionaryCopy objectForKeyedSubscript:@"topic"];
        errorCopy3 = error;
        v185 = v20;
        if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v180 = 0;
              error = 0;
              v37 = v186;
              v45 = v181;
LABEL_156:

              goto LABEL_157;
            }

            v58 = v19;
            v59 = v17;
            v60 = objc_alloc(MEMORY[0x1E696ABC0]);
            v177 = v7;
            v61 = *MEMORY[0x1E698F240];
            v211 = *MEMORY[0x1E696A578];
            v179 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"topic"];
            v212 = v179;
            v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v212 forKeys:&v211 count:1];
            v63 = v60;
            v17 = v59;
            v19 = v58;
            v178 = v62;
            v180 = 0;
            error = 0;
            *errorCopy3 = [v63 initWithDomain:v61 code:2 userInfo:?];
            v7 = v177;
            goto LABEL_125;
          }

          v180 = v20;
        }

        else
        {
          v180 = 0;
        }

        v21 = [dictionaryCopy objectForKeyedSubscript:@"usage"];
        v178 = v21;
        if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v179 = 0;
          goto LABEL_24;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v179 = v22;
LABEL_24:
          v23 = [dictionaryCopy objectForKeyedSubscript:@"userInterfaceLanguage"];
          v172 = v23;
          if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v174 = 0;
            goto LABEL_27;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v174 = v24;
LABEL_27:
            v25 = [dictionaryCopy objectForKeyedSubscript:@"userSetRegionFormat"];
            v170 = v25;
            if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v171 = 0;
              goto LABEL_30;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v171 = v26;
LABEL_30:
              v27 = [dictionaryCopy objectForKeyedSubscript:@"personalization"];
              v167 = v27;
              if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v168 = 0;
                goto LABEL_71;
              }

              v57 = v17;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v168 = v28;
LABEL_70:
                v20 = v185;
LABEL_71:
                v87 = [dictionaryCopy objectForKeyedSubscript:@"result"];
                v164 = v87;
                if (!v87 || (v88 = v87, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v166 = 0;
                  goto LABEL_83;
                }

                v57 = v17;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v166 = v88;
LABEL_82:
                  v20 = v185;
LABEL_83:
                  v94 = [dictionaryCopy objectForKeyedSubscript:@"feature"];
                  v162 = v94;
                  if (!v94 || (v95 = v94, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v165 = 0;
                    goto LABEL_93;
                  }

                  v57 = v17;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v165 = v95;
LABEL_92:
                    v20 = v185;
LABEL_93:
                    v102 = [dictionaryCopy objectForKeyedSubscript:@"style"];
                    v159 = v102;
                    if (!v102 || (v103 = v102, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v163 = 0;
                      goto LABEL_96;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v163 = v103;
                      v20 = v185;
LABEL_96:
                      v104 = [dictionaryCopy objectForKeyedSubscript:@"hair"];
                      v157 = v104;
                      if (!v104 || (v105 = v104, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v161 = 0;
LABEL_99:
                        v106 = [dictionaryCopy objectForKeyedSubscript:@"facialHair"];
                        v153 = v17;
                        v154 = v106;
                        if (v106 && (v107 = v106, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            if (!errorCopy3)
                            {
                              v158 = 0;
                              error = 0;
                              v37 = v186;
                              goto LABEL_146;
                            }

                            v130 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v131 = *MEMORY[0x1E698F240];
                            v193 = *MEMORY[0x1E696A578];
                            v155 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"facialHair"];
                            v194 = v155;
                            v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
                            v132 = [v130 initWithDomain:v131 code:2 userInfo:v108];
                            v158 = 0;
                            error = 0;
                            *errorCopy3 = v132;
                            v37 = v186;
LABEL_145:

                            v20 = v185;
LABEL_146:
                            v127 = v154;
                            goto LABEL_147;
                          }

                          v158 = v107;
                        }

                        else
                        {
                          v158 = 0;
                        }

                        v169 = v18;
                        v108 = [dictionaryCopy objectForKeyedSubscript:@"accessories"];
                        v109 = v7;
                        if (v108 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                        {
                          v110 = v16;
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            if (!errorCopy3)
                            {
                              v155 = 0;
                              error = 0;
                              v37 = v186;
                              goto LABEL_144;
                            }

                            v156 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v136 = *MEMORY[0x1E698F240];
                            v191 = *MEMORY[0x1E696A578];
                            v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accessories"];
                            v192 = v113;
                            v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
                            v137 = [v156 initWithDomain:v136 code:2 userInfo:v112];
                            v155 = 0;
                            error = 0;
                            *errorCopy3 = v137;
                            goto LABEL_143;
                          }

                          v111 = errorCopy3;
                          v155 = v108;
                        }

                        else
                        {
                          v110 = v16;
                          v111 = errorCopy3;
                          v155 = 0;
                        }

                        v112 = [dictionaryCopy objectForKeyedSubscript:@"additionalDescription"];
                        if (v112 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            if (v111)
                            {
                              v152 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v151 = *MEMORY[0x1E698F240];
                              v189 = *MEMORY[0x1E696A578];
                              v144 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"additionalDescription"];
                              v190 = v144;
                              v145 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
                              *v111 = [v152 initWithDomain:v151 code:2 userInfo:v145];
                            }

                            v113 = 0;
                            error = 0;
                            goto LABEL_143;
                          }

                          v113 = v112;
                        }

                        else
                        {
                          v113 = 0;
                        }

                        intValue = [v168 intValue];
                        intValue2 = [v166 intValue];
                        LODWORD(v150) = [v165 intValue];
                        v149 = __PAIR64__(intValue2, intValue);
                        v17 = v153;
                        error = [(BMGeneratedImageUserInteraction *)errorCopy4 initWithTimestamp:v187 prompt:v153 tokenLength:v186 identifier:v181 topic:v180 usage:v179 userInterfaceLanguage:v174 userSetRegionFormat:v171 personalization:v149 result:v150 feature:v163 style:v161 hair:v158 facialHair:v155 accessories:v113 additionalDescription:?];
                        errorCopy4 = error;
LABEL_143:
                        v16 = v110;

                        v37 = v186;
LABEL_144:
                        v7 = v109;
                        v18 = v169;
                        goto LABEL_145;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v161 = v105;
                        v20 = v185;
                        goto LABEL_99;
                      }

                      error = errorCopy3;
                      if (errorCopy3)
                      {
                        v123 = v19;
                        v124 = v17;
                        v125 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v126 = *MEMORY[0x1E698F240];
                        v195 = *MEMORY[0x1E696A578];
                        v158 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"hair"];
                        v196 = v158;
                        v127 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
                        v128 = v125;
                        v17 = v124;
                        v19 = v123;
                        v129 = [v128 initWithDomain:v126 code:2 userInfo:v127];
                        v161 = 0;
                        error = 0;
                        *errorCopy3 = v129;
                        v20 = v185;
                        v37 = v186;
LABEL_147:

LABEL_148:
                        v45 = v181;

LABEL_149:
LABEL_150:

LABEL_151:
LABEL_152:

                        goto LABEL_153;
                      }

                      v161 = 0;
LABEL_166:
                      v20 = v185;
                      v37 = v186;
                      goto LABEL_148;
                    }

                    error = errorCopy3;
                    if (errorCopy3)
                    {
                      v116 = v19;
                      v117 = v17;
                      v118 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v119 = *MEMORY[0x1E698F240];
                      v197 = *MEMORY[0x1E696A578];
                      v161 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"style"];
                      v198 = v161;
                      v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
                      v121 = v118;
                      v17 = v117;
                      v19 = v116;
                      v157 = v120;
                      v122 = [v121 initWithDomain:v119 code:2 userInfo:?];
                      v163 = 0;
                      error = 0;
                      *errorCopy3 = v122;
                      goto LABEL_166;
                    }

                    v163 = 0;
                    v37 = v186;
LABEL_164:
                    v45 = v181;
                    v20 = v185;
                    goto LABEL_149;
                  }

                  v160 = v19;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v165 = [MEMORY[0x1E696AD98] numberWithInt:BMGeneratedImageUserInteractionFeatureFromString(v95)];
                    goto LABEL_92;
                  }

                  error = errorCopy3;
                  if (errorCopy3)
                  {
                    v141 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v142 = *MEMORY[0x1E698F240];
                    v199 = *MEMORY[0x1E696A578];
                    v163 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"feature"];
                    v200 = v163;
                    v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v199 count:1];
                    v143 = [v141 initWithDomain:v142 code:2 userInfo:?];
                    v165 = 0;
                    error = 0;
                    *errorCopy3 = v143;
                    v17 = v57;
                    v37 = v186;
                    goto LABEL_164;
                  }

                  v165 = 0;
LABEL_174:
                  v17 = v57;
                  v20 = v185;
                  v37 = v186;
                  v19 = v160;
                  v45 = v181;
                  goto LABEL_150;
                }

                v160 = v19;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v166 = [MEMORY[0x1E696AD98] numberWithInt:BMGeneratedImageUserInteractionResultFromString(v88)];
                  goto LABEL_82;
                }

                error = errorCopy3;
                if (errorCopy3)
                {
                  v138 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v139 = *MEMORY[0x1E698F240];
                  v201 = *MEMORY[0x1E696A578];
                  v165 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"result"];
                  v202 = v165;
                  v162 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
                  v140 = [v138 initWithDomain:v139 code:2 userInfo:?];
                  v166 = 0;
                  error = 0;
                  *errorCopy3 = v140;
                  goto LABEL_174;
                }

                v166 = 0;
LABEL_172:
                v17 = v57;
                v20 = v185;
                v37 = v186;
                v19 = v160;
                v45 = v181;
                goto LABEL_151;
              }

              v160 = v19;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v168 = [MEMORY[0x1E696AD98] numberWithInt:BMGeneratedImageUserInteractionPersonalizationFromString(v28)];
                goto LABEL_70;
              }

              error = errorCopy3;
              if (errorCopy3)
              {
                v133 = objc_alloc(MEMORY[0x1E696ABC0]);
                v134 = *MEMORY[0x1E698F240];
                v203 = *MEMORY[0x1E696A578];
                v166 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"personalization"];
                v204 = v166;
                v164 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
                v135 = [v133 initWithDomain:v134 code:2 userInfo:?];
                v168 = 0;
                error = 0;
                *errorCopy3 = v135;
                goto LABEL_172;
              }

              v168 = 0;
              v37 = v186;
LABEL_169:
              v45 = v181;
              v20 = v185;
              goto LABEL_152;
            }

            error = errorCopy3;
            if (errorCopy3)
            {
              v80 = v19;
              v81 = v17;
              v82 = objc_alloc(MEMORY[0x1E696ABC0]);
              v83 = *MEMORY[0x1E698F240];
              v205 = *MEMORY[0x1E696A578];
              v168 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userSetRegionFormat"];
              v206 = v168;
              v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
              v85 = v82;
              v17 = v81;
              v19 = v80;
              v167 = v84;
              v86 = [v85 initWithDomain:v83 code:2 userInfo:?];
              v171 = 0;
              error = 0;
              *errorCopy3 = v86;
              v37 = v186;
              goto LABEL_169;
            }

            v171 = 0;
LABEL_137:
            v37 = v186;
            v45 = v181;
LABEL_153:

            goto LABEL_154;
          }

          error = errorCopy3;
          if (errorCopy3)
          {
            v73 = v19;
            v74 = v17;
            v75 = objc_alloc(MEMORY[0x1E696ABC0]);
            v76 = *MEMORY[0x1E698F240];
            v207 = *MEMORY[0x1E696A578];
            v171 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userInterfaceLanguage"];
            v208 = v171;
            v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
            v78 = v75;
            v17 = v74;
            v19 = v73;
            v170 = v77;
            v79 = [v78 initWithDomain:v76 code:2 userInfo:?];
            v174 = 0;
            error = 0;
            *errorCopy3 = v79;
            goto LABEL_137;
          }

          v174 = 0;
          v37 = v186;
LABEL_129:
          v45 = v181;
LABEL_154:

          goto LABEL_155;
        }

        error = errorCopy3;
        if (errorCopy3)
        {
          v64 = v19;
          v65 = v17;
          v66 = objc_alloc(MEMORY[0x1E696ABC0]);
          v67 = *MEMORY[0x1E698F240];
          v209 = *MEMORY[0x1E696A578];
          v68 = objc_alloc(MEMORY[0x1E696AEC0]);
          v148 = objc_opt_class();
          v69 = v68;
          v20 = v185;
          v174 = [v69 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v148, @"usage"];
          v210 = v174;
          v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
          v71 = v66;
          v17 = v65;
          v19 = v64;
          v172 = v70;
          v72 = [v71 initWithDomain:v67 code:2 userInfo:?];
          v179 = 0;
          error = 0;
          *errorCopy3 = v72;
          v37 = v186;
          goto LABEL_129;
        }

        v179 = 0;
LABEL_125:
        v37 = v186;
        v45 = v181;
LABEL_155:

        goto LABEL_156;
      }

      if (!error)
      {
        v37 = v186;
LABEL_158:

        v8 = v187;
        self = errorCopy4;
        goto LABEL_159;
      }

      v47 = v19;
      v48 = v17;
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy5 = error;
      v50 = *MEMORY[0x1E698F240];
      v213 = *MEMORY[0x1E696A578];
      v51 = v7;
      v52 = v16;
      v53 = v18;
      v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
      v214 = v54;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v214 forKeys:&v213 count:1];
      v56 = v49;
      v17 = v48;
      v19 = v47;
      *errorCopy5 = [v56 initWithDomain:v50 code:2 userInfo:v55];

      v45 = v54;
      v18 = v53;
      v16 = v52;
      v7 = v51;
      error = 0;
      v37 = v186;
LABEL_157:

      goto LABEL_158;
    }

    if (error)
    {
      v39 = v17;
      v40 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy6 = error;
      v41 = *MEMORY[0x1E698F240];
      v217 = *MEMORY[0x1E696A578];
      v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tokenLength"];
      v218 = v42;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v218 forKeys:&v217 count:1];
      v44 = v40;
      v17 = v39;
      v19 = v42;
      v45 = v43;
      v46 = [v44 initWithDomain:v41 code:2 userInfo:v43];
      v37 = 0;
      error = 0;
      *errorCopy6 = v46;
      goto LABEL_157;
    }

    v37 = 0;
LABEL_159:

    goto LABEL_160;
  }

  if (error)
  {
    v34 = objc_alloc(MEMORY[0x1E696ABC0]);
    v176 = v7;
    errorCopy7 = error;
    v36 = *MEMORY[0x1E698F240];
    v219 = *MEMORY[0x1E696A578];
    v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"prompt"];
    v220 = v37;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v220 forKeys:&v219 count:1];
    v38 = [v34 initWithDomain:v36 code:2 userInfo:v18];
    v17 = 0;
    error = 0;
    *errorCopy7 = v38;
    v7 = v176;
    goto LABEL_159;
  }

  v17 = 0;
LABEL_160:

LABEL_161:
  v146 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMGeneratedImageUserInteraction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_prompt)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasTokenLength)
  {
    tokenLength = self->_tokenLength;
    PBDataWriterWriteInt32Field();
  }

  if (self->_raw_identifier)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_topic)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasUsage)
  {
    usage = self->_usage;
    PBDataWriterWriteInt32Field();
  }

  if (self->_userInterfaceLanguage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userSetRegionFormat)
  {
    PBDataWriterWriteStringField();
  }

  personalization = self->_personalization;
  PBDataWriterWriteUint32Field();
  result = self->_result;
  PBDataWriterWriteUint32Field();
  feature = self->_feature;
  PBDataWriterWriteUint32Field();
  if (self->_style)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hair)
  {
    PBDataWriterWriteStringField();
  }

  v10 = toCopy;
  if (self->_facialHair)
  {
    PBDataWriterWriteStringField();
    v10 = toCopy;
  }

  if (self->_accessories)
  {
    PBDataWriterWriteStringField();
    v10 = toCopy;
  }

  if (self->_additionalDescription)
  {
    PBDataWriterWriteStringField();
    v10 = toCopy;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v57.receiver = self;
  v57.super_class = BMGeneratedImageUserInteraction;
  v5 = [(BMEventBase *)&v57 init];
  if (!v5)
  {
LABEL_109:
    v55 = v5;
    goto LABEL_110;
  }

  position = [fromCopy position];
  if (position >= [fromCopy length])
  {
LABEL_107:
    if ([fromCopy hasError])
    {
      goto LABEL_108;
    }

    goto LABEL_109;
  }

  while (2)
  {
    if ([fromCopy hasError])
    {
      goto LABEL_107;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      LOBYTE(v58) = 0;
      v10 = [fromCopy position] + 1;
      if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v9 |= (LOBYTE(v58) & 0x7F) << v7;
      if ((LOBYTE(v58) & 0x80) == 0)
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
      goto LABEL_107;
    }

    switch((v14 >> 3))
    {
      case 1u:
        v5->_hasRaw_timestamp = 1;
        v58 = 0.0;
        v15 = [fromCopy position] + 8;
        if (v15 >= [fromCopy position] && (v16 = objc_msgSend(fromCopy, "position") + 8, v16 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_timestamp = v58;
        goto LABEL_106;
      case 2u:
        v17 = PBReaderReadString();
        v18 = 72;
        goto LABEL_60;
      case 3u:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v5->_hasTokenLength = 1;
        while (1)
        {
          LOBYTE(v58) = 0;
          v29 = [fromCopy position] + 1;
          if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 1, v30 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v28 |= (LOBYTE(v58) & 0x7F) << v26;
          if ((LOBYTE(v58) & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v13 = v27++ >= 9;
          if (v13)
          {
            v32 = 0;
            goto LABEL_89;
          }
        }

        if ([fromCopy hasError])
        {
          v32 = 0;
        }

        else
        {
          v32 = v28;
        }

LABEL_89:
        v52 = 48;
        goto LABEL_94;
      case 4u:
        v33 = PBReaderReadData();
        if ([(NSData *)v33 length]== 16)
        {
          raw_identifier = v5->_raw_identifier;
          v5->_raw_identifier = v33;
LABEL_61:

LABEL_106:
          position2 = [fromCopy position];
          if (position2 >= [fromCopy length])
          {
            goto LABEL_107;
          }

          continue;
        }

LABEL_108:
        v55 = 0;
LABEL_110:

        return v55;
      case 5u:
        v17 = PBReaderReadString();
        v18 = 80;
        goto LABEL_60;
      case 6u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v5->_hasUsage = 1;
        while (1)
        {
          LOBYTE(v58) = 0;
          v38 = [fromCopy position] + 1;
          if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v37 |= (LOBYTE(v58) & 0x7F) << v35;
          if ((LOBYTE(v58) & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v13 = v36++ >= 9;
          if (v13)
          {
            v32 = 0;
            goto LABEL_93;
          }
        }

        if ([fromCopy hasError])
        {
          v32 = 0;
        }

        else
        {
          v32 = v37;
        }

LABEL_93:
        v52 = 52;
LABEL_94:
        *(&v5->super.super.isa + v52) = v32;
        goto LABEL_106;
      case 7u:
        v17 = PBReaderReadString();
        v18 = 88;
        goto LABEL_60;
      case 8u:
        v17 = PBReaderReadString();
        v18 = 96;
        goto LABEL_60;
      case 9u:
        v46 = 0;
        v47 = 0;
        v21 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v48 = [fromCopy position] + 1;
          if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v21 |= (LOBYTE(v58) & 0x7F) << v46;
          if ((LOBYTE(v58) & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v25 = v47++ > 8;
          if (v25)
          {
            goto LABEL_101;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v21 > 4)
        {
LABEL_101:
          LODWORD(v21) = 0;
        }

        v51 = 56;
        goto LABEL_103;
      case 0xAu:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v22 = [fromCopy position] + 1;
          if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v21 |= (LOBYTE(v58) & 0x7F) << v19;
          if ((LOBYTE(v58) & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v25 = v20++ > 8;
          if (v25)
          {
            goto LABEL_84;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v21 > 0xA)
        {
LABEL_84:
          LODWORD(v21) = 0;
        }

        v51 = 60;
        goto LABEL_103;
      case 0xBu:
        v41 = 0;
        v42 = 0;
        v21 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v43 = [fromCopy position] + 1;
          if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v58 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v21 |= (LOBYTE(v58) & 0x7F) << v41;
          if ((LOBYTE(v58) & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v25 = v42++ > 8;
          if (v25)
          {
            goto LABEL_97;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v21 > 5)
        {
LABEL_97:
          LODWORD(v21) = 0;
        }

        v51 = 64;
LABEL_103:
        *(&v5->super.super.isa + v51) = v21;
        goto LABEL_106;
      case 0xCu:
        v17 = PBReaderReadString();
        v18 = 104;
        goto LABEL_60;
      case 0xDu:
        v17 = PBReaderReadString();
        v18 = 112;
        goto LABEL_60;
      case 0xEu:
        v17 = PBReaderReadString();
        v18 = 120;
        goto LABEL_60;
      case 0xFu:
        v17 = PBReaderReadString();
        v18 = 128;
        goto LABEL_60;
      case 0x10u:
        v17 = PBReaderReadString();
        v18 = 136;
LABEL_60:
        raw_identifier = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
        goto LABEL_61;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_106;
    }
  }
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  timestamp = [(BMGeneratedImageUserInteraction *)self timestamp];
  prompt = [(BMGeneratedImageUserInteraction *)self prompt];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageUserInteraction tokenLength](self, "tokenLength")}];
  identifier = [(BMGeneratedImageUserInteraction *)self identifier];
  topic = [(BMGeneratedImageUserInteraction *)self topic];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageUserInteraction usage](self, "usage")}];
  userInterfaceLanguage = [(BMGeneratedImageUserInteraction *)self userInterfaceLanguage];
  userSetRegionFormat = [(BMGeneratedImageUserInteraction *)self userSetRegionFormat];
  v11 = BMGeneratedImageUserInteractionPersonalizationAsString([(BMGeneratedImageUserInteraction *)self personalization]);
  v10 = BMGeneratedImageUserInteractionResultAsString([(BMGeneratedImageUserInteraction *)self result]);
  v3 = BMGeneratedImageUserInteractionFeatureAsString([(BMGeneratedImageUserInteraction *)self feature]);
  style = [(BMGeneratedImageUserInteraction *)self style];
  hair = [(BMGeneratedImageUserInteraction *)self hair];
  facialHair = [(BMGeneratedImageUserInteraction *)self facialHair];
  accessories = [(BMGeneratedImageUserInteraction *)self accessories];
  additionalDescription = [(BMGeneratedImageUserInteraction *)self additionalDescription];
  v18 = [v17 initWithFormat:@"BMGeneratedImageUserInteraction with timestamp: %@, prompt: %@, tokenLength: %@, identifier: %@, topic: %@, usage: %@, userInterfaceLanguage: %@, userSetRegionFormat: %@, personalization: %@, result: %@, feature: %@, style: %@, hair: %@, facialHair: %@, accessories: %@, additionalDescription: %@", timestamp, prompt, v15, identifier, topic, v19, userInterfaceLanguage, userSetRegionFormat, v11, v10, v3, style, hair, facialHair, accessories, additionalDescription];

  return v18;
}

- (BMGeneratedImageUserInteraction)initWithTimestamp:(id)timestamp prompt:(id)prompt tokenLength:(id)length identifier:(id)identifier topic:(id)topic usage:(id)usage userInterfaceLanguage:(id)language userSetRegionFormat:(id)self0 personalization:(int)self1 result:(int)self2 feature:(int)self3 style:(id)self4 hair:(id)self5 facialHair:(id)self6 accessories:(id)self7 additionalDescription:(id)self8
{
  v48[2] = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  obj = prompt;
  promptCopy = prompt;
  lengthCopy = length;
  identifierCopy = identifier;
  topicCopy = topic;
  topicCopy2 = topic;
  usageCopy = usage;
  languageCopy = language;
  formatCopy = format;
  styleCopy = style;
  hairCopy = hair;
  facialHairCopy = facialHair;
  accessoriesCopy = accessories;
  descriptionCopy = description;
  v47.receiver = self;
  v47.super_class = BMGeneratedImageUserInteraction;
  v30 = [(BMEventBase *)&v47 init];
  if (v30)
  {
    v30->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v30->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v30->_hasRaw_timestamp = 0;
      v31 = -1.0;
    }

    v30->_raw_timestamp = v31;
    objc_storeStrong(&v30->_prompt, obj);
    if (lengthCopy)
    {
      v30->_hasTokenLength = 1;
      intValue = [lengthCopy intValue];
    }

    else
    {
      v30->_hasTokenLength = 0;
      intValue = -1;
    }

    v30->_tokenLength = intValue;
    if (identifierCopy)
    {
      v48[0] = 0;
      v48[1] = 0;
      [identifierCopy getUUIDBytes:v48];
      v33 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v48 length:16];
      raw_identifier = v30->_raw_identifier;
      v30->_raw_identifier = v33;
    }

    else
    {
      raw_identifier = v30->_raw_identifier;
      v30->_raw_identifier = 0;
    }

    objc_storeStrong(&v30->_topic, topicCopy);
    if (usageCopy)
    {
      v30->_hasUsage = 1;
      intValue2 = [usageCopy intValue];
    }

    else
    {
      v30->_hasUsage = 0;
      intValue2 = -1;
    }

    v30->_usage = intValue2;
    objc_storeStrong(&v30->_userInterfaceLanguage, language);
    objc_storeStrong(&v30->_userSetRegionFormat, format);
    v30->_personalization = personalization;
    v30->_result = result;
    v30->_feature = feature;
    objc_storeStrong(&v30->_style, style);
    objc_storeStrong(&v30->_hair, hair);
    objc_storeStrong(&v30->_facialHair, facialHair);
    objc_storeStrong(&v30->_accessories, accessories);
    objc_storeStrong(&v30->_additionalDescription, description);
  }

  v36 = *MEMORY[0x1E69E9840];
  return v30;
}

+ (id)protoFields
{
  v21[16] = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:1 type:0 subMessageClass:0];
  v21[0] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"prompt" number:2 type:13 subMessageClass:0];
  v21[1] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tokenLength" number:3 type:2 subMessageClass:0];
  v21[2] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:4 type:14 subMessageClass:0];
  v21[3] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topic" number:5 type:13 subMessageClass:0];
  v21[4] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usage" number:6 type:2 subMessageClass:0];
  v21[5] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userInterfaceLanguage" number:7 type:13 subMessageClass:0];
  v21[6] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userSetRegionFormat" number:8 type:13 subMessageClass:0];
  v21[7] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personalization" number:9 type:4 subMessageClass:0];
  v21[8] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"result" number:10 type:4 subMessageClass:0];
  v21[9] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feature" number:11 type:4 subMessageClass:0];
  v21[10] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"style" number:12 type:13 subMessageClass:0];
  v21[11] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hair" number:13 type:13 subMessageClass:0];
  v21[12] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"facialHair" number:14 type:13 subMessageClass:0];
  v21[13] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accessories" number:15 type:13 subMessageClass:0];
  v21[14] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"additionalDescription" number:16 type:13 subMessageClass:0];
  v21[15] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:16];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
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

    v8 = [[BMGeneratedImageUserInteraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[11] = 0;
    }
  }

  return v4;
}

@end