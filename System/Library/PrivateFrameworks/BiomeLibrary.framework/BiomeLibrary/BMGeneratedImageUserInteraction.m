@interface BMGeneratedImageUserInteraction
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMGeneratedImageUserInteraction)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMGeneratedImageUserInteraction)initWithTimestamp:(id)a3 prompt:(id)a4 tokenLength:(id)a5 identifier:(id)a6 topic:(id)a7 usage:(id)a8 userInterfaceLanguage:(id)a9 userSetRegionFormat:(id)a10 personalization:(int)a11 result:(int)a12 feature:(int)a13 style:(id)a14 hair:(id)a15 facialHair:(id)a16 accessories:(id)a17 additionalDescription:(id)a18;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (NSUUID)identifier;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMGeneratedImageUserInteraction *)self timestamp];
    v7 = [v5 timestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMGeneratedImageUserInteraction *)self timestamp];
      v10 = [v5 timestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_54;
      }
    }

    v13 = [(BMGeneratedImageUserInteraction *)self prompt];
    v14 = [v5 prompt];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMGeneratedImageUserInteraction *)self prompt];
      v17 = [v5 prompt];
      v18 = [v16 isEqual:v17];

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

      v19 = [(BMGeneratedImageUserInteraction *)self tokenLength];
      if (v19 != [v5 tokenLength])
      {
        goto LABEL_54;
      }
    }

    v20 = [(BMGeneratedImageUserInteraction *)self identifier];
    v21 = [v5 identifier];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMGeneratedImageUserInteraction *)self identifier];
      v24 = [v5 identifier];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_54;
      }
    }

    v26 = [(BMGeneratedImageUserInteraction *)self topic];
    v27 = [v5 topic];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(BMGeneratedImageUserInteraction *)self topic];
      v30 = [v5 topic];
      v31 = [v29 isEqual:v30];

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

      v32 = [(BMGeneratedImageUserInteraction *)self usage];
      if (v32 != [v5 usage])
      {
        goto LABEL_54;
      }
    }

    v33 = [(BMGeneratedImageUserInteraction *)self userInterfaceLanguage];
    v34 = [v5 userInterfaceLanguage];
    v35 = v34;
    if (v33 == v34)
    {
    }

    else
    {
      v36 = [(BMGeneratedImageUserInteraction *)self userInterfaceLanguage];
      v37 = [v5 userInterfaceLanguage];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
        goto LABEL_54;
      }
    }

    v39 = [(BMGeneratedImageUserInteraction *)self userSetRegionFormat];
    v40 = [v5 userSetRegionFormat];
    v41 = v40;
    if (v39 == v40)
    {
    }

    else
    {
      v42 = [(BMGeneratedImageUserInteraction *)self userSetRegionFormat];
      v43 = [v5 userSetRegionFormat];
      v44 = [v42 isEqual:v43];

      if (!v44)
      {
        goto LABEL_54;
      }
    }

    v45 = [(BMGeneratedImageUserInteraction *)self personalization];
    if (v45 != [v5 personalization])
    {
      goto LABEL_54;
    }

    v46 = [(BMGeneratedImageUserInteraction *)self result];
    if (v46 != [v5 result])
    {
      goto LABEL_54;
    }

    v47 = [(BMGeneratedImageUserInteraction *)self feature];
    if (v47 != [v5 feature])
    {
      goto LABEL_54;
    }

    v48 = [(BMGeneratedImageUserInteraction *)self style];
    v49 = [v5 style];
    v50 = v49;
    if (v48 == v49)
    {
    }

    else
    {
      v51 = [(BMGeneratedImageUserInteraction *)self style];
      v52 = [v5 style];
      v53 = [v51 isEqual:v52];

      if (!v53)
      {
        goto LABEL_54;
      }
    }

    v54 = [(BMGeneratedImageUserInteraction *)self hair];
    v55 = [v5 hair];
    v56 = v55;
    if (v54 == v55)
    {
    }

    else
    {
      v57 = [(BMGeneratedImageUserInteraction *)self hair];
      v58 = [v5 hair];
      v59 = [v57 isEqual:v58];

      if (!v59)
      {
        goto LABEL_54;
      }
    }

    v60 = [(BMGeneratedImageUserInteraction *)self facialHair];
    v61 = [v5 facialHair];
    v62 = v61;
    if (v60 == v61)
    {
    }

    else
    {
      v63 = [(BMGeneratedImageUserInteraction *)self facialHair];
      v64 = [v5 facialHair];
      v65 = [v63 isEqual:v64];

      if (!v65)
      {
        goto LABEL_54;
      }
    }

    v66 = [(BMGeneratedImageUserInteraction *)self accessories];
    v67 = [v5 accessories];
    v68 = v67;
    if (v66 == v67)
    {
    }

    else
    {
      v69 = [(BMGeneratedImageUserInteraction *)self accessories];
      v70 = [v5 accessories];
      v71 = [v69 isEqual:v70];

      if (!v71)
      {
LABEL_54:
        v12 = 0;
LABEL_55:

        goto LABEL_56;
      }
    }

    v73 = [(BMGeneratedImageUserInteraction *)self additionalDescription];
    v74 = [v5 additionalDescription];
    if (v73 == v74)
    {
      v12 = 1;
    }

    else
    {
      v75 = v74;
      v76 = [(BMGeneratedImageUserInteraction *)self additionalDescription];
      v77 = [v5 additionalDescription];
      v12 = [v76 isEqual:v77];

      v74 = v75;
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
  v3 = [(BMGeneratedImageUserInteraction *)self timestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMGeneratedImageUserInteraction *)self timestamp];
    [v5 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMGeneratedImageUserInteraction *)self prompt];
  if ([(BMGeneratedImageUserInteraction *)self hasTokenLength])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageUserInteraction tokenLength](self, "tokenLength")}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMGeneratedImageUserInteraction *)self identifier];
  v10 = [v9 UUIDString];

  v11 = [(BMGeneratedImageUserInteraction *)self topic];
  if ([(BMGeneratedImageUserInteraction *)self hasUsage])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageUserInteraction usage](self, "usage")}];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(BMGeneratedImageUserInteraction *)self userInterfaceLanguage];
  v58 = [(BMGeneratedImageUserInteraction *)self userSetRegionFormat];
  v57 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageUserInteraction personalization](self, "personalization")}];
  v56 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageUserInteraction result](self, "result")}];
  v55 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageUserInteraction feature](self, "feature")}];
  v54 = [(BMGeneratedImageUserInteraction *)self style];
  v53 = [(BMGeneratedImageUserInteraction *)self hair];
  v52 = [(BMGeneratedImageUserInteraction *)self facialHair];
  v51 = [(BMGeneratedImageUserInteraction *)self accessories];
  v14 = [(BMGeneratedImageUserInteraction *)self additionalDescription];
  v59[0] = @"timestamp";
  v15 = v6;
  if (!v6)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v15;
  v60[0] = v15;
  v59[1] = @"prompt";
  v16 = v7;
  if (!v7)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v16;
  v60[1] = v16;
  v59[2] = @"tokenLength";
  v17 = v8;
  if (!v8)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v17;
  v60[2] = v17;
  v59[3] = @"identifier";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v18;
  v60[3] = v18;
  v59[4] = @"topic";
  v19 = v11;
  if (!v11)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v19;
  v60[4] = v19;
  v59[5] = @"usage";
  v20 = v12;
  if (!v12)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v20;
  v60[5] = v20;
  v59[6] = @"userInterfaceLanguage";
  v21 = v13;
  if (!v13)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v21;
  v60[6] = v21;
  v59[7] = @"userSetRegionFormat";
  v22 = v58;
  if (!v58)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v13;
  v60[7] = v22;
  v59[8] = @"personalization";
  v23 = v57;
  if (!v57)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = v6;
  v60[8] = v23;
  v59[9] = @"result";
  v24 = v56;
  if (!v56)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v24;
  v37 = v23;
  v60[9] = v24;
  v59[10] = @"feature";
  v25 = v55;
  if (!v55)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v22;
  v49 = v12;
  v60[10] = v25;
  v59[11] = @"style";
  v26 = v54;
  if (!v54)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v10;
  v27 = v8;
  v60[11] = v26;
  v59[12] = @"hair";
  v28 = v53;
  if (!v53)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v7;
  v60[12] = v28;
  v59[13] = @"facialHair";
  v30 = v52;
  if (!v52)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v60[13] = v30;
  v59[14] = @"accessories";
  v31 = v51;
  if (!v51)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v60[14] = v31;
  v59[15] = @"additionalDescription";
  v32 = v14;
  if (!v14)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v60[15] = v32;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:{16, v35}];
  if (!v14)
  {
  }

  if (!v51)
  {
  }

  if (!v52)
  {
  }

  if (!v53)
  {
  }

  if (!v54)
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

  if (v58)
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
    if (v11)
    {
      goto LABEL_62;
    }

    goto LABEL_72;
  }

LABEL_71:

  if (v11)
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

- (BMGeneratedImageUserInteraction)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v222[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"timestamp"];
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
      if (!a4)
      {
        v8 = 0;
        goto LABEL_161;
      }

      v96 = objc_alloc(MEMORY[0x1E696ABC0]);
      v97 = a4;
      v98 = *MEMORY[0x1E698F240];
      v221 = *MEMORY[0x1E696A578];
      v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
      v222[0] = v99;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v222 forKeys:&v221 count:1];
      v100 = v96;
      v17 = v99;
      v101 = [v100 initWithDomain:v98 code:2 userInfo:v16];
      v8 = 0;
      a4 = 0;
      *v97 = v101;
      goto LABEL_160;
    }

    v14 = v7;
    goto LABEL_6;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v8 = [v15 dateFromString:v7];

LABEL_9:
  v16 = [v6 objectForKeyedSubscript:@"prompt"];
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
    v18 = [v6 objectForKeyedSubscript:@"tokenLength"];
    v187 = v8;
    v188 = self;
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
      v19 = [v6 objectForKeyedSubscript:@"identifier"];
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
          if (a4)
          {
            v89 = objc_alloc(MEMORY[0x1E696ABC0]);
            v90 = a4;
            v91 = *MEMORY[0x1E698F240];
            v215 = *MEMORY[0x1E696A578];
            v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"identifier"];
            v216 = v92;
            v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
            *v90 = [v89 initWithDomain:v91 code:2 userInfo:v93];

            a4 = 0;
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
        v20 = [v6 objectForKeyedSubscript:@"topic"];
        v182 = a4;
        v185 = v20;
        if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v180 = 0;
              a4 = 0;
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
            a4 = 0;
            *v182 = [v63 initWithDomain:v61 code:2 userInfo:?];
            v7 = v177;
            goto LABEL_125;
          }

          v180 = v20;
        }

        else
        {
          v180 = 0;
        }

        v21 = [v6 objectForKeyedSubscript:@"usage"];
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
          v23 = [v6 objectForKeyedSubscript:@"userInterfaceLanguage"];
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
            v25 = [v6 objectForKeyedSubscript:@"userSetRegionFormat"];
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
              v27 = [v6 objectForKeyedSubscript:@"personalization"];
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
                v87 = [v6 objectForKeyedSubscript:@"result"];
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
                  v94 = [v6 objectForKeyedSubscript:@"feature"];
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
                    v102 = [v6 objectForKeyedSubscript:@"style"];
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
                      v104 = [v6 objectForKeyedSubscript:@"hair"];
                      v157 = v104;
                      if (!v104 || (v105 = v104, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v161 = 0;
LABEL_99:
                        v106 = [v6 objectForKeyedSubscript:@"facialHair"];
                        v153 = v17;
                        v154 = v106;
                        if (v106 && (v107 = v106, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            if (!v182)
                            {
                              v158 = 0;
                              a4 = 0;
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
                            a4 = 0;
                            *v182 = v132;
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
                        v108 = [v6 objectForKeyedSubscript:@"accessories"];
                        v109 = v7;
                        if (v108 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                        {
                          v110 = v16;
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            if (!v182)
                            {
                              v155 = 0;
                              a4 = 0;
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
                            a4 = 0;
                            *v182 = v137;
                            goto LABEL_143;
                          }

                          v111 = v182;
                          v155 = v108;
                        }

                        else
                        {
                          v110 = v16;
                          v111 = v182;
                          v155 = 0;
                        }

                        v112 = [v6 objectForKeyedSubscript:@"additionalDescription"];
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
                            a4 = 0;
                            goto LABEL_143;
                          }

                          v113 = v112;
                        }

                        else
                        {
                          v113 = 0;
                        }

                        v114 = [v168 intValue];
                        v115 = [v166 intValue];
                        LODWORD(v150) = [v165 intValue];
                        v149 = __PAIR64__(v115, v114);
                        v17 = v153;
                        a4 = [(BMGeneratedImageUserInteraction *)v188 initWithTimestamp:v187 prompt:v153 tokenLength:v186 identifier:v181 topic:v180 usage:v179 userInterfaceLanguage:v174 userSetRegionFormat:v171 personalization:v149 result:v150 feature:v163 style:v161 hair:v158 facialHair:v155 accessories:v113 additionalDescription:?];
                        v188 = a4;
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

                      a4 = v182;
                      if (v182)
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
                        a4 = 0;
                        *v182 = v129;
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

                    a4 = v182;
                    if (v182)
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
                      a4 = 0;
                      *v182 = v122;
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

                  a4 = v182;
                  if (v182)
                  {
                    v141 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v142 = *MEMORY[0x1E698F240];
                    v199 = *MEMORY[0x1E696A578];
                    v163 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"feature"];
                    v200 = v163;
                    v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v199 count:1];
                    v143 = [v141 initWithDomain:v142 code:2 userInfo:?];
                    v165 = 0;
                    a4 = 0;
                    *v182 = v143;
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

                a4 = v182;
                if (v182)
                {
                  v138 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v139 = *MEMORY[0x1E698F240];
                  v201 = *MEMORY[0x1E696A578];
                  v165 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"result"];
                  v202 = v165;
                  v162 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
                  v140 = [v138 initWithDomain:v139 code:2 userInfo:?];
                  v166 = 0;
                  a4 = 0;
                  *v182 = v140;
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

              a4 = v182;
              if (v182)
              {
                v133 = objc_alloc(MEMORY[0x1E696ABC0]);
                v134 = *MEMORY[0x1E698F240];
                v203 = *MEMORY[0x1E696A578];
                v166 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"personalization"];
                v204 = v166;
                v164 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
                v135 = [v133 initWithDomain:v134 code:2 userInfo:?];
                v168 = 0;
                a4 = 0;
                *v182 = v135;
                goto LABEL_172;
              }

              v168 = 0;
              v37 = v186;
LABEL_169:
              v45 = v181;
              v20 = v185;
              goto LABEL_152;
            }

            a4 = v182;
            if (v182)
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
              a4 = 0;
              *v182 = v86;
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

          a4 = v182;
          if (v182)
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
            a4 = 0;
            *v182 = v79;
            goto LABEL_137;
          }

          v174 = 0;
          v37 = v186;
LABEL_129:
          v45 = v181;
LABEL_154:

          goto LABEL_155;
        }

        a4 = v182;
        if (v182)
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
          a4 = 0;
          *v182 = v72;
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

      if (!a4)
      {
        v37 = v186;
LABEL_158:

        v8 = v187;
        self = v188;
        goto LABEL_159;
      }

      v47 = v19;
      v48 = v17;
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v184 = a4;
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
      *v184 = [v56 initWithDomain:v50 code:2 userInfo:v55];

      v45 = v54;
      v18 = v53;
      v16 = v52;
      v7 = v51;
      a4 = 0;
      v37 = v186;
LABEL_157:

      goto LABEL_158;
    }

    if (a4)
    {
      v39 = v17;
      v40 = objc_alloc(MEMORY[0x1E696ABC0]);
      v183 = a4;
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
      a4 = 0;
      *v183 = v46;
      goto LABEL_157;
    }

    v37 = 0;
LABEL_159:

    goto LABEL_160;
  }

  if (a4)
  {
    v34 = objc_alloc(MEMORY[0x1E696ABC0]);
    v176 = v7;
    v35 = a4;
    v36 = *MEMORY[0x1E698F240];
    v219 = *MEMORY[0x1E696A578];
    v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"prompt"];
    v220 = v37;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v220 forKeys:&v219 count:1];
    v38 = [v34 initWithDomain:v36 code:2 userInfo:v18];
    v17 = 0;
    a4 = 0;
    *v35 = v38;
    v7 = v176;
    goto LABEL_159;
  }

  v17 = 0;
LABEL_160:

LABEL_161:
  v146 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMGeneratedImageUserInteraction *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
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

  v10 = v11;
  if (self->_facialHair)
  {
    PBDataWriterWriteStringField();
    v10 = v11;
  }

  if (self->_accessories)
  {
    PBDataWriterWriteStringField();
    v10 = v11;
  }

  if (self->_additionalDescription)
  {
    PBDataWriterWriteStringField();
    v10 = v11;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v57.receiver = self;
  v57.super_class = BMGeneratedImageUserInteraction;
  v5 = [(BMEventBase *)&v57 init];
  if (!v5)
  {
LABEL_109:
    v55 = v5;
    goto LABEL_110;
  }

  v6 = [v4 position];
  if (v6 >= [v4 length])
  {
LABEL_107:
    if ([v4 hasError])
    {
      goto LABEL_108;
    }

    goto LABEL_109;
  }

  while (2)
  {
    if ([v4 hasError])
    {
      goto LABEL_107;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      LOBYTE(v58) = 0;
      v10 = [v4 position] + 1;
      if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
      {
        v12 = [v4 data];
        [v12 getBytes:&v58 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
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

    v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
    if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      goto LABEL_107;
    }

    switch((v14 >> 3))
    {
      case 1u:
        v5->_hasRaw_timestamp = 1;
        v58 = 0.0;
        v15 = [v4 position] + 8;
        if (v15 >= [v4 position] && (v16 = objc_msgSend(v4, "position") + 8, v16 <= objc_msgSend(v4, "length")))
        {
          v53 = [v4 data];
          [v53 getBytes:&v58 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
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
          v29 = [v4 position] + 1;
          if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
          {
            v31 = [v4 data];
            [v31 getBytes:&v58 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if ([v4 hasError])
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
          v54 = [v4 position];
          if (v54 >= [v4 length])
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
          v38 = [v4 position] + 1;
          if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 1, v39 <= objc_msgSend(v4, "length")))
          {
            v40 = [v4 data];
            [v40 getBytes:&v58 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if ([v4 hasError])
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
          v48 = [v4 position] + 1;
          if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 1, v49 <= objc_msgSend(v4, "length")))
          {
            v50 = [v4 data];
            [v50 getBytes:&v58 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v21 > 4)
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
          v22 = [v4 position] + 1;
          if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
          {
            v24 = [v4 data];
            [v24 getBytes:&v58 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v21 > 0xA)
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
          v43 = [v4 position] + 1;
          if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 1, v44 <= objc_msgSend(v4, "length")))
          {
            v45 = [v4 data];
            [v45 getBytes:&v58 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v21 > 5)
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
  v16 = [(BMGeneratedImageUserInteraction *)self timestamp];
  v21 = [(BMGeneratedImageUserInteraction *)self prompt];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageUserInteraction tokenLength](self, "tokenLength")}];
  v14 = [(BMGeneratedImageUserInteraction *)self identifier];
  v20 = [(BMGeneratedImageUserInteraction *)self topic];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageUserInteraction usage](self, "usage")}];
  v13 = [(BMGeneratedImageUserInteraction *)self userInterfaceLanguage];
  v12 = [(BMGeneratedImageUserInteraction *)self userSetRegionFormat];
  v11 = BMGeneratedImageUserInteractionPersonalizationAsString([(BMGeneratedImageUserInteraction *)self personalization]);
  v10 = BMGeneratedImageUserInteractionResultAsString([(BMGeneratedImageUserInteraction *)self result]);
  v3 = BMGeneratedImageUserInteractionFeatureAsString([(BMGeneratedImageUserInteraction *)self feature]);
  v4 = [(BMGeneratedImageUserInteraction *)self style];
  v5 = [(BMGeneratedImageUserInteraction *)self hair];
  v6 = [(BMGeneratedImageUserInteraction *)self facialHair];
  v7 = [(BMGeneratedImageUserInteraction *)self accessories];
  v8 = [(BMGeneratedImageUserInteraction *)self additionalDescription];
  v18 = [v17 initWithFormat:@"BMGeneratedImageUserInteraction with timestamp: %@, prompt: %@, tokenLength: %@, identifier: %@, topic: %@, usage: %@, userInterfaceLanguage: %@, userSetRegionFormat: %@, personalization: %@, result: %@, feature: %@, style: %@, hair: %@, facialHair: %@, accessories: %@, additionalDescription: %@", v16, v21, v15, v14, v20, v19, v13, v12, v11, v10, v3, v4, v5, v6, v7, v8];

  return v18;
}

- (BMGeneratedImageUserInteraction)initWithTimestamp:(id)a3 prompt:(id)a4 tokenLength:(id)a5 identifier:(id)a6 topic:(id)a7 usage:(id)a8 userInterfaceLanguage:(id)a9 userSetRegionFormat:(id)a10 personalization:(int)a11 result:(int)a12 feature:(int)a13 style:(id)a14 hair:(id)a15 facialHair:(id)a16 accessories:(id)a17 additionalDescription:(id)a18
{
  v48[2] = *MEMORY[0x1E69E9840];
  v46 = a3;
  obj = a4;
  v45 = a4;
  v22 = a5;
  v23 = a6;
  v39 = a7;
  v44 = a7;
  v24 = a8;
  v43 = a9;
  v41 = a10;
  v25 = a14;
  v26 = a15;
  v27 = a16;
  v28 = a17;
  v29 = a18;
  v47.receiver = self;
  v47.super_class = BMGeneratedImageUserInteraction;
  v30 = [(BMEventBase *)&v47 init];
  if (v30)
  {
    v30->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v46)
    {
      v30->_hasRaw_timestamp = 1;
      [v46 timeIntervalSince1970];
    }

    else
    {
      v30->_hasRaw_timestamp = 0;
      v31 = -1.0;
    }

    v30->_raw_timestamp = v31;
    objc_storeStrong(&v30->_prompt, obj);
    if (v22)
    {
      v30->_hasTokenLength = 1;
      v32 = [v22 intValue];
    }

    else
    {
      v30->_hasTokenLength = 0;
      v32 = -1;
    }

    v30->_tokenLength = v32;
    if (v23)
    {
      v48[0] = 0;
      v48[1] = 0;
      [v23 getUUIDBytes:v48];
      v33 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v48 length:16];
      raw_identifier = v30->_raw_identifier;
      v30->_raw_identifier = v33;
    }

    else
    {
      raw_identifier = v30->_raw_identifier;
      v30->_raw_identifier = 0;
    }

    objc_storeStrong(&v30->_topic, v39);
    if (v24)
    {
      v30->_hasUsage = 1;
      v35 = [v24 intValue];
    }

    else
    {
      v30->_hasUsage = 0;
      v35 = -1;
    }

    v30->_usage = v35;
    objc_storeStrong(&v30->_userInterfaceLanguage, a9);
    objc_storeStrong(&v30->_userSetRegionFormat, a10);
    v30->_personalization = a11;
    v30->_result = a12;
    v30->_feature = a13;
    objc_storeStrong(&v30->_style, a14);
    objc_storeStrong(&v30->_hair, a15);
    objc_storeStrong(&v30->_facialHair, a16);
    objc_storeStrong(&v30->_accessories, a17);
    objc_storeStrong(&v30->_additionalDescription, a18);
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