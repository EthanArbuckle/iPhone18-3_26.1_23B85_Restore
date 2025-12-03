@interface BMFrontBoardDisplayElement
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMFrontBoardDisplayElement)initWithAbsoluteTimestamp:(id)timestamp identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier elementType:(int)type layoutRole:(id)role level:(id)level hasKeyboardFocus:(id)focus isUIApplicationElement:(id)self0 display:(id)self1 changeType:(int)self2;
- (BMFrontBoardDisplayElement)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMFrontBoardDisplayElement

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFrontBoardDisplayElement *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

+ (id)columns
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"elementType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"layoutRole" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:3 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"level" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:3 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasKeyboardFocus" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isUIApplicationElement" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"display_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_268];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"changeType" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMFrontBoardDisplayElement *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMFrontBoardDisplayElement *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_38;
      }
    }

    identifier = [(BMFrontBoardDisplayElement *)self identifier];
    identifier2 = [v5 identifier];
    v15 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMFrontBoardDisplayElement *)self identifier];
      identifier4 = [v5 identifier];
      v18 = [identifier3 isEqual:identifier4];

      if (!v18)
      {
        goto LABEL_38;
      }
    }

    bundleIdentifier = [(BMFrontBoardDisplayElement *)self bundleIdentifier];
    bundleIdentifier2 = [v5 bundleIdentifier];
    v21 = bundleIdentifier2;
    if (bundleIdentifier == bundleIdentifier2)
    {
    }

    else
    {
      bundleIdentifier3 = [(BMFrontBoardDisplayElement *)self bundleIdentifier];
      bundleIdentifier4 = [v5 bundleIdentifier];
      v24 = [bundleIdentifier3 isEqual:bundleIdentifier4];

      if (!v24)
      {
        goto LABEL_38;
      }
    }

    elementType = [(BMFrontBoardDisplayElement *)self elementType];
    if (elementType != [v5 elementType])
    {
      goto LABEL_38;
    }

    if (-[BMFrontBoardDisplayElement hasLayoutRole](self, "hasLayoutRole") || [v5 hasLayoutRole])
    {
      if (![(BMFrontBoardDisplayElement *)self hasLayoutRole])
      {
        goto LABEL_38;
      }

      if (![v5 hasLayoutRole])
      {
        goto LABEL_38;
      }

      layoutRole = [(BMFrontBoardDisplayElement *)self layoutRole];
      if (layoutRole != [v5 layoutRole])
      {
        goto LABEL_38;
      }
    }

    if (-[BMFrontBoardDisplayElement hasLevel](self, "hasLevel") || [v5 hasLevel])
    {
      if (![(BMFrontBoardDisplayElement *)self hasLevel])
      {
        goto LABEL_38;
      }

      if (![v5 hasLevel])
      {
        goto LABEL_38;
      }

      level = [(BMFrontBoardDisplayElement *)self level];
      if (level != [v5 level])
      {
        goto LABEL_38;
      }
    }

    if (-[BMFrontBoardDisplayElement hasHasKeyboardFocus](self, "hasHasKeyboardFocus") || [v5 hasHasKeyboardFocus])
    {
      if (![(BMFrontBoardDisplayElement *)self hasHasKeyboardFocus])
      {
        goto LABEL_38;
      }

      if (![v5 hasHasKeyboardFocus])
      {
        goto LABEL_38;
      }

      hasKeyboardFocus = [(BMFrontBoardDisplayElement *)self hasKeyboardFocus];
      if (hasKeyboardFocus != [v5 hasKeyboardFocus])
      {
        goto LABEL_38;
      }
    }

    if (-[BMFrontBoardDisplayElement hasIsUIApplicationElement](self, "hasIsUIApplicationElement") || [v5 hasIsUIApplicationElement])
    {
      if (![(BMFrontBoardDisplayElement *)self hasIsUIApplicationElement])
      {
        goto LABEL_38;
      }

      if (![v5 hasIsUIApplicationElement])
      {
        goto LABEL_38;
      }

      isUIApplicationElement = [(BMFrontBoardDisplayElement *)self isUIApplicationElement];
      if (isUIApplicationElement != [v5 isUIApplicationElement])
      {
        goto LABEL_38;
      }
    }

    display = [(BMFrontBoardDisplayElement *)self display];
    display2 = [v5 display];
    v32 = display2;
    if (display == display2)
    {
    }

    else
    {
      display3 = [(BMFrontBoardDisplayElement *)self display];
      display4 = [v5 display];
      v35 = [display3 isEqual:display4];

      if (!v35)
      {
LABEL_38:
        v12 = 0;
LABEL_39:

        goto LABEL_40;
      }
    }

    changeType = [(BMFrontBoardDisplayElement *)self changeType];
    v12 = changeType == [v5 changeType];
    goto LABEL_39;
  }

  v12 = 0;
LABEL_40:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
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
  v42[10] = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMFrontBoardDisplayElement *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMFrontBoardDisplayElement *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  identifier = [(BMFrontBoardDisplayElement *)self identifier];
  bundleIdentifier = [(BMFrontBoardDisplayElement *)self bundleIdentifier];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFrontBoardDisplayElement elementType](self, "elementType")}];
  if ([(BMFrontBoardDisplayElement *)self hasLayoutRole])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMFrontBoardDisplayElement layoutRole](self, "layoutRole")}];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMFrontBoardDisplayElement *)self hasLevel])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMFrontBoardDisplayElement level](self, "level")}];
  }

  else
  {
    v11 = 0;
  }

  if ([(BMFrontBoardDisplayElement *)self hasHasKeyboardFocus])
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFrontBoardDisplayElement hasKeyboardFocus](self, "hasKeyboardFocus")}];
  }

  else
  {
    v40 = 0;
  }

  if ([(BMFrontBoardDisplayElement *)self hasIsUIApplicationElement])
  {
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFrontBoardDisplayElement isUIApplicationElement](self, "isUIApplicationElement")}];
  }

  else
  {
    v39 = 0;
  }

  display = [(BMFrontBoardDisplayElement *)self display];
  jsonDictionary = [display jsonDictionary];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFrontBoardDisplayElement changeType](self, "changeType")}];
  v41[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null;
  v42[0] = null;
  v41[1] = @"identifier";
  null2 = identifier;
  if (!identifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null2;
  v42[1] = null2;
  v41[2] = @"bundleIdentifier";
  null3 = bundleIdentifier;
  if (!bundleIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null3;
  v42[2] = null3;
  v41[3] = @"elementType";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v6;
  v31 = null4;
  v42[3] = null4;
  v41[4] = @"layoutRole";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = identifier;
  v30 = null5;
  v42[4] = null5;
  v41[5] = @"level";
  null6 = v11;
  if (!v11)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = bundleIdentifier;
  v42[5] = null6;
  v41[6] = @"hasKeyboardFocus";
  null7 = v40;
  if (!v40)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v11;
  v23 = v9;
  v42[6] = null7;
  v41[7] = @"isUIApplicationElement";
  null8 = v39;
  if (!v39)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v10;
  v42[7] = null8;
  v41[8] = @"display";
  null9 = jsonDictionary;
  if (!jsonDictionary)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v42[8] = null9;
  v41[9] = @"changeType";
  null10 = v14;
  if (!v14)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v42[9] = null10;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:10];
  if (v14)
  {
    if (jsonDictionary)
    {
      goto LABEL_38;
    }
  }

  else
  {

    if (jsonDictionary)
    {
      goto LABEL_38;
    }
  }

LABEL_38:
  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (!v22)
  {
  }

  if (!v25)
  {
  }

  if (v23)
  {
    if (v36)
    {
      goto LABEL_48;
    }
  }

  else
  {

    if (v36)
    {
LABEL_48:
      if (v37)
      {
        goto LABEL_49;
      }

LABEL_57:

      if (v38)
      {
        goto LABEL_50;
      }

      goto LABEL_58;
    }
  }

  if (!v37)
  {
    goto LABEL_57;
  }

LABEL_49:
  if (v38)
  {
    goto LABEL_50;
  }

LABEL_58:

LABEL_50:
  v28 = *MEMORY[0x1E69E9840];

  return v35;
}

- (BMFrontBoardDisplayElement)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v123[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v6;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSince1970:v12];
LABEL_6:
    v7 = v13;
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
        v7 = 0;
        v28 = 0;
        selfCopy11 = self;
        goto LABEL_99;
      }

      v72 = objc_alloc(MEMORY[0x1E696ABC0]);
      v73 = *MEMORY[0x1E698F240];
      v122 = *MEMORY[0x1E696A578];
      v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
      v123[0] = v74;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:&v122 count:1];
      v75 = v73;
      v16 = v74;
      v7 = 0;
      v28 = 0;
      *error = [v72 initWithDomain:v75 code:2 userInfo:v15];
      goto LABEL_84;
    }

    v13 = v6;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v7 = [v14 dateFromString:v6];

LABEL_9:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
LABEL_12:
    v17 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v98 = 0;
LABEL_15:
      v18 = [dictionaryCopy objectForKeyedSubscript:@"elementType"];
      v95 = v15;
      v96 = v16;
      v99 = v6;
      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v7;
          v21 = v18;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v100 = 0;
              v28 = 0;
              v24 = v98;
              selfCopy11 = self;
              goto LABEL_96;
            }

            v101 = objc_alloc(MEMORY[0x1E696ABC0]);
            v67 = *MEMORY[0x1E698F240];
            v116 = *MEMORY[0x1E696A578];
            v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"elementType"];
            v117 = v97;
            v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
            v69 = v67;
            v16 = v96;
            v93 = v68;
            v70 = [v101 initWithDomain:v69 code:2 userInfo:?];
            v100 = 0;
            v28 = 0;
            *error = v70;
            v24 = v98;
            selfCopy11 = self;
            goto LABEL_95;
          }

          v19 = v7;
          v21 = [MEMORY[0x1E696AD98] numberWithInt:BMFrontBoardDisplayElementTypeFromString(v18)];
        }

        v100 = v21;
        errorCopy2 = error;
      }

      else
      {
        v19 = v7;
        errorCopy2 = error;
        v100 = 0;
      }

      v34 = [dictionaryCopy objectForKeyedSubscript:@"layoutRole"];
      v93 = v34;
      if (v34 && (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy2)
          {
            v97 = 0;
            v28 = 0;
            selfCopy11 = self;
            v7 = v19;
            v24 = v98;
            v6 = v99;
            goto LABEL_95;
          }

          v46 = errorCopy2;
          v47 = v17;
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = v18;
          v50 = *MEMORY[0x1E698F240];
          v114 = *MEMORY[0x1E696A578];
          v94 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"layoutRole"];
          v115 = v94;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
          v51 = v48;
          v17 = v47;
          v52 = v50;
          v18 = v49;
          v15 = v95;
          v97 = 0;
          v28 = 0;
          *v46 = [v51 initWithDomain:v52 code:2 userInfo:v36];
          selfCopy11 = self;
          v7 = v19;
          v24 = v98;
          v6 = v99;
LABEL_94:

          v16 = v96;
LABEL_95:

          goto LABEL_96;
        }

        v97 = v35;
      }

      else
      {
        v97 = 0;
      }

      v36 = [dictionaryCopy objectForKeyedSubscript:@"level"];
      v92 = v19;
      if (v36)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v94 = 0;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v7 = v19;
            v6 = v99;
            if (!errorCopy2)
            {
              v94 = 0;
              v28 = 0;
              v24 = v98;
              selfCopy11 = self;
              goto LABEL_94;
            }

            v53 = v17;
            v54 = objc_alloc(MEMORY[0x1E696ABC0]);
            v55 = v18;
            v56 = *MEMORY[0x1E698F240];
            v112 = *MEMORY[0x1E696A578];
            v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"level"];
            v113 = v91;
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
            v57 = v54;
            v17 = v53;
            v58 = v56;
            v18 = v55;
            v15 = v95;
            v94 = 0;
            v28 = 0;
            *errorCopy2 = [v57 initWithDomain:v58 code:2 userInfo:v37];
            goto LABEL_103;
          }

          v94 = v36;
        }
      }

      else
      {
        v94 = 0;
      }

      v6 = v99;
      v37 = [dictionaryCopy objectForKeyedSubscript:@"hasKeyboardFocus"];
      v90 = v18;
      if (!v37 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v91 = 0;
        goto LABEL_45;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v91 = v37;
LABEL_45:
        v38 = [dictionaryCopy objectForKeyedSubscript:@"isUIApplicationElement"];
        v86 = v17;
        if (!v38 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v88 = errorCopy2;
          v39 = 0;
          goto LABEL_48;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v88 = errorCopy2;
          v39 = v38;
LABEL_48:
          v40 = [dictionaryCopy objectForKeyedSubscript:@"display"];
          if (!v40 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v41 = 0;
            goto LABEL_51;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v44 = v40;
            v103 = 0;
            v41 = [[BMFrontBoardDisplayElementDisplay alloc] initWithJSONDictionary:v44 error:&v103];
            v45 = v103;
            if (v45)
            {
              if (v88)
              {
                v45 = v45;
                *v88 = v45;
              }

              v28 = 0;
              v40 = v44;
              goto LABEL_90;
            }

LABEL_51:
            v42 = [dictionaryCopy objectForKeyedSubscript:@"changeType"];
            if (v42 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v59 = v42;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (v88)
                  {
                    v85 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v83 = *MEMORY[0x1E698F240];
                    v104 = *MEMORY[0x1E696A578];
                    v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"changeType"];
                    v105 = v79;
                    v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
                    *v88 = [v85 initWithDomain:v83 code:2 userInfo:v80];
                  }

                  v43 = 0;
                  v28 = 0;
                  goto LABEL_89;
                }

                v59 = [MEMORY[0x1E696AD98] numberWithInt:BMFrontBoardDisplayElementChangeTypeFromString(v42)];
              }

              v43 = v59;
            }

            else
            {
              v43 = 0;
            }

            intValue = [v100 intValue];
            LODWORD(v81) = [v43 intValue];
            v28 = [(BMFrontBoardDisplayElement *)self initWithAbsoluteTimestamp:v92 identifier:v96 bundleIdentifier:v98 elementType:intValue layoutRole:v97 level:v94 hasKeyboardFocus:v91 isUIApplicationElement:v39 display:v41 changeType:v81];
            self = v28;
LABEL_89:

            goto LABEL_90;
          }

          if (!v88)
          {
            v28 = 0;
            v24 = v98;
            v6 = v99;
            goto LABEL_91;
          }

          v84 = objc_alloc(MEMORY[0x1E696ABC0]);
          v82 = *MEMORY[0x1E698F240];
          v106 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"display"];
          v107 = v41;
          v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
          *v88 = [v84 initWithDomain:v82 code:2 userInfo:v71];

          v28 = 0;
LABEL_90:
          v24 = v98;

          v6 = v99;
          v17 = v86;
LABEL_91:

LABEL_92:
          selfCopy11 = self;

          v18 = v90;
          v15 = v95;
LABEL_93:

          v7 = v92;
          goto LABEL_94;
        }

        if (errorCopy2)
        {
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v108 = *MEMORY[0x1E696A578];
          v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isUIApplicationElement"];
          v109 = v40;
          v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
          v66 = [v64 initWithDomain:v65 code:2 userInfo:v41];
          v39 = 0;
          v28 = 0;
          *errorCopy2 = v66;
          goto LABEL_90;
        }

        v39 = 0;
        v28 = 0;
LABEL_105:
        v24 = v98;
        goto LABEL_92;
      }

      if (errorCopy2)
      {
        v89 = errorCopy2;
        v60 = v17;
        v61 = objc_alloc(MEMORY[0x1E696ABC0]);
        v62 = *MEMORY[0x1E698F240];
        v110 = *MEMORY[0x1E696A578];
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasKeyboardFocus"];
        v111 = v39;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
        v63 = v61;
        v17 = v60;
        v91 = 0;
        v28 = 0;
        *v89 = [v63 initWithDomain:v62 code:2 userInfo:v38];
        goto LABEL_105;
      }

      v91 = 0;
      v28 = 0;
LABEL_103:
      v24 = v98;
      selfCopy11 = self;
      goto LABEL_93;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v98 = v17;
      goto LABEL_15;
    }

    if (error)
    {
      errorCopy3 = error;
      v29 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = v16;
      v31 = *MEMORY[0x1E698F240];
      v118 = *MEMORY[0x1E696A578];
      v100 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleIdentifier"];
      v119 = v100;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
      v32 = v31;
      v16 = v30;
      v24 = 0;
      v28 = 0;
      *errorCopy3 = [v29 initWithDomain:v32 code:2 userInfo:v18];
      selfCopy11 = self;
LABEL_96:

      goto LABEL_97;
    }

    v24 = 0;
    v28 = 0;
LABEL_81:
    selfCopy11 = self;
LABEL_97:

    goto LABEL_98;
  }

  if (error)
  {
    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v23 = *MEMORY[0x1E698F240];
    v120 = *MEMORY[0x1E696A578];
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
    v121 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
    v26 = v22;
    v17 = v25;
    v27 = [v26 initWithDomain:v23 code:2 userInfo:v25];
    v16 = 0;
    v28 = 0;
    *error = v27;
    goto LABEL_81;
  }

  v16 = 0;
  v28 = 0;
LABEL_84:
  selfCopy11 = self;
LABEL_98:

LABEL_99:
  v77 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  elementType = self->_elementType;
  PBDataWriterWriteUint32Field();
  if (self->_hasLayoutRole)
  {
    layoutRole = self->_layoutRole;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasLevel)
  {
    level = self->_level;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasHasKeyboardFocus)
  {
    hasKeyboardFocus = self->_hasKeyboardFocus;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsUIApplicationElement)
  {
    isUIApplicationElement = self->_isUIApplicationElement;
    PBDataWriterWriteBOOLField();
  }

  if (self->_display)
  {
    PBDataWriterPlaceMark();
    [(BMFrontBoardDisplayElementDisplay *)self->_display writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  changeType = self->_changeType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v68.receiver = self;
  v68.super_class = BMFrontBoardDisplayElement;
  v5 = [(BMEventBase *)&v68 init];
  if (!v5)
  {
    goto LABEL_124;
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
        LOBYTE(v69[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v69[0] & 0x7F) << v7;
        if ((v69[0] & 0x80) == 0)
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
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 5)
      {
        if (v15 <= 7)
        {
          if (v15 == 6)
          {
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v5->_hasLevel = 1;
            while (1)
            {
              LOBYTE(v69[0]) = 0;
              v44 = [fromCopy position] + 1;
              if (v44 >= [fromCopy position] && (v45 = objc_msgSend(fromCopy, "position") + 1, v45 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v43 = (((v69[0] & 0x7F) << v41) | v43);
              if ((v69[0] & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v13 = v42++ >= 9;
              if (v13)
              {
                v22 = 0;
                goto LABEL_101;
              }
            }

            if ([fromCopy hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v43;
            }

LABEL_101:
            v62 = 80;
LABEL_109:
            *(&v5->super.super.isa + v62) = v22;
            goto LABEL_121;
          }

          if (v15 != 7)
          {
LABEL_94:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_123;
            }

            goto LABEL_121;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v5->_hasHasKeyboardFocus = 1;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v35 = [fromCopy position] + 1;
            if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v34 |= (v69[0] & 0x7F) << v32;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v13 = v33++ >= 9;
            if (v13)
            {
              LOBYTE(v38) = 0;
              goto LABEL_97;
            }
          }

          v38 = (v34 != 0) & ~[fromCopy hasError];
LABEL_97:
          v61 = 34;
          goto LABEL_104;
        }

        if (v15 == 8)
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v5->_hasIsUIApplicationElement = 1;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v51 = [fromCopy position] + 1;
            if (v51 >= [fromCopy position] && (v52 = objc_msgSend(fromCopy, "position") + 1, v52 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v50 |= (v69[0] & 0x7F) << v48;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v13 = v49++ >= 9;
            if (v13)
            {
              LOBYTE(v38) = 0;
              goto LABEL_103;
            }
          }

          v38 = (v50 != 0) & ~[fromCopy hasError];
LABEL_103:
          v61 = 36;
LABEL_104:
          *(&v5->super.super.isa + v61) = v38;
          goto LABEL_121;
        }

        if (v15 != 9)
        {
          if (v15 != 10)
          {
            goto LABEL_94;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (v69[0] & 0x7F) << v23;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v29 = v24++ > 8;
            if (v29)
            {
              goto LABEL_112;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v25 > 3)
          {
LABEL_112:
            LODWORD(v25) = 0;
          }

          v63 = 48;
          goto LABEL_118;
        }

        v69[0] = 0;
        v69[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_123;
        }

        v59 = [[BMFrontBoardDisplayElementDisplay alloc] initByReadFrom:fromCopy];
        if (!v59)
        {
          goto LABEL_123;
        }

        display = v5->_display;
        v5->_display = v59;

        PBReaderRecallMark();
      }

      else
      {
        if (v15 <= 2)
        {
          if (v15 == 1)
          {
            v5->_hasRaw_absoluteTimestamp = 1;
            v69[0] = 0;
            v39 = [fromCopy position] + 8;
            if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 8, v40 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            *&v5->_raw_absoluteTimestamp = v69[0];
            goto LABEL_121;
          }

          if (v15 != 2)
          {
            goto LABEL_94;
          }

          v30 = PBReaderReadString();
          v31 = 56;
        }

        else
        {
          if (v15 != 3)
          {
            if (v15 == 4)
            {
              v54 = 0;
              v55 = 0;
              v25 = 0;
              while (1)
              {
                LOBYTE(v69[0]) = 0;
                v56 = [fromCopy position] + 1;
                if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 1, v57 <= objc_msgSend(fromCopy, "length")))
                {
                  data7 = [fromCopy data];
                  [data7 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v25 |= (v69[0] & 0x7F) << v54;
                if ((v69[0] & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                v29 = v55++ > 8;
                if (v29)
                {
                  goto LABEL_116;
                }
              }

              if (([fromCopy hasError] & 1) != 0 || v25 > 4)
              {
LABEL_116:
                LODWORD(v25) = 0;
              }

              v63 = 44;
LABEL_118:
              *(&v5->super.super.isa + v63) = v25;
              goto LABEL_121;
            }

            if (v15 != 5)
            {
              goto LABEL_94;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            v5->_hasLayoutRole = 1;
            while (1)
            {
              LOBYTE(v69[0]) = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data8 = [fromCopy data];
                [data8 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 = (((v69[0] & 0x7F) << v16) | v18);
              if ((v69[0] & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v13 = v17++ >= 9;
              if (v13)
              {
                v22 = 0;
                goto LABEL_108;
              }
            }

            if ([fromCopy hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_108:
            v62 = 72;
            goto LABEL_109;
          }

          v30 = PBReaderReadString();
          v31 = 64;
        }

        v47 = *(&v5->super.super.isa + v31);
        *(&v5->super.super.isa + v31) = v30;
      }

LABEL_121:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_123:
    v66 = 0;
  }

  else
  {
LABEL_124:
    v66 = v5;
  }

  return v66;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMFrontBoardDisplayElement *)self absoluteTimestamp];
  identifier = [(BMFrontBoardDisplayElement *)self identifier];
  bundleIdentifier = [(BMFrontBoardDisplayElement *)self bundleIdentifier];
  v5 = BMFrontBoardDisplayElementTypeAsString([(BMFrontBoardDisplayElement *)self elementType]);
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMFrontBoardDisplayElement layoutRole](self, "layoutRole")}];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMFrontBoardDisplayElement level](self, "level")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFrontBoardDisplayElement hasKeyboardFocus](self, "hasKeyboardFocus")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFrontBoardDisplayElement isUIApplicationElement](self, "isUIApplicationElement")}];
  display = [(BMFrontBoardDisplayElement *)self display];
  v11 = BMFrontBoardDisplayElementChangeTypeAsString([(BMFrontBoardDisplayElement *)self changeType]);
  v15 = [v14 initWithFormat:@"BMFrontBoardDisplayElement with absoluteTimestamp: %@, identifier: %@, bundleIdentifier: %@, elementType: %@, layoutRole: %@, level: %@, hasKeyboardFocus: %@, isUIApplicationElement: %@, display: %@, changeType: %@", absoluteTimestamp, identifier, bundleIdentifier, v5, v6, v7, v8, v9, display, v11];

  return v15;
}

- (BMFrontBoardDisplayElement)initWithAbsoluteTimestamp:(id)timestamp identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier elementType:(int)type layoutRole:(id)role level:(id)level hasKeyboardFocus:(id)focus isUIApplicationElement:(id)self0 display:(id)self1 changeType:(int)self2
{
  timestampCopy = timestamp;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  roleCopy = role;
  levelCopy = level;
  focusCopy = focus;
  elementCopy = element;
  displayCopy = display;
  v31.receiver = self;
  v31.super_class = BMFrontBoardDisplayElement;
  v23 = [(BMEventBase *)&v31 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v23->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v23->_hasRaw_absoluteTimestamp = 0;
      v24 = -1.0;
    }

    v23->_raw_absoluteTimestamp = v24;
    objc_storeStrong(&v23->_identifier, identifier);
    objc_storeStrong(&v23->_bundleIdentifier, bundleIdentifier);
    v23->_elementType = type;
    if (roleCopy)
    {
      v23->_hasLayoutRole = 1;
      longLongValue = [roleCopy longLongValue];
    }

    else
    {
      v23->_hasLayoutRole = 0;
      longLongValue = -1;
    }

    v23->_layoutRole = longLongValue;
    if (levelCopy)
    {
      v23->_hasLevel = 1;
      longLongValue2 = [levelCopy longLongValue];
    }

    else
    {
      v23->_hasLevel = 0;
      longLongValue2 = -1;
    }

    v23->_level = longLongValue2;
    if (focusCopy)
    {
      v23->_hasHasKeyboardFocus = 1;
      v23->_hasKeyboardFocus = [focusCopy BOOLValue];
    }

    else
    {
      v23->_hasHasKeyboardFocus = 0;
      v23->_hasKeyboardFocus = 0;
    }

    if (elementCopy)
    {
      v23->_hasIsUIApplicationElement = 1;
      v23->_isUIApplicationElement = [elementCopy BOOLValue];
    }

    else
    {
      v23->_hasIsUIApplicationElement = 0;
      v23->_isUIApplicationElement = 0;
    }

    objc_storeStrong(&v23->_display, display);
    v23->_changeType = changeType;
  }

  return v23;
}

+ (id)protoFields
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v15[0] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:2 type:13 subMessageClass:0];
  v15[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleIdentifier" number:3 type:13 subMessageClass:0];
  v15[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"elementType" number:4 type:4 subMessageClass:0];
  v15[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"layoutRole" number:5 type:3 subMessageClass:0];
  v15[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"level" number:6 type:3 subMessageClass:0];
  v15[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasKeyboardFocus" number:7 type:12 subMessageClass:0];
  v15[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isUIApplicationElement" number:8 type:12 subMessageClass:0];
  v15[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"display" number:9 type:14 subMessageClass:objc_opt_class()];
  v15[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"changeType" number:10 type:4 subMessageClass:0];
  v15[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __37__BMFrontBoardDisplayElement_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 display];
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

    v8 = [[BMFrontBoardDisplayElement alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end