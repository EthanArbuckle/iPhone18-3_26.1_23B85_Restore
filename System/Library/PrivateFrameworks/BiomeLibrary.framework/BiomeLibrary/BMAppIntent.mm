@interface BMAppIntent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppIntent)initWithAbsoluteTimestamp:(id)timestamp bundleID:(id)d sourceID:(id)iD intentClass:(id)class intentVerb:(id)verb intentType:(int)type handlingStatus:(int)status interaction:(id)self0 itemID:(id)self1 donatedBySiri:(id)self2 interactionDirection:(int)self3 groupIdentifier:(id)self4;
- (BMAppIntent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (NSString)identifier;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppIntent

+ (id)columns
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intentClass" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intentVerb" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intentType" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"handlingStatus" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interaction" dataType:4 requestOnly:0 fieldNumber:8 protoDataType:14 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemID" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"donatedBySiri" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interactionDirection" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"groupIdentifier" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v17[0] = v16;
  v17[1] = v15;
  v17[2] = v2;
  v17[3] = v3;
  v17[4] = v4;
  v17[5] = v5;
  v17[6] = v6;
  v17[7] = v7;
  v17[8] = v8;
  v17[9] = v14;
  v17[10] = v9;
  v17[11] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMAppIntent *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMAppIntent *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_41;
      }
    }

    bundleID = [(BMAppIntent *)self bundleID];
    bundleID2 = [v5 bundleID];
    v15 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMAppIntent *)self bundleID];
      bundleID4 = [v5 bundleID];
      v18 = [bundleID3 isEqual:bundleID4];

      if (!v18)
      {
        goto LABEL_41;
      }
    }

    sourceID = [(BMAppIntent *)self sourceID];
    sourceID2 = [v5 sourceID];
    v21 = sourceID2;
    if (sourceID == sourceID2)
    {
    }

    else
    {
      sourceID3 = [(BMAppIntent *)self sourceID];
      sourceID4 = [v5 sourceID];
      v24 = [sourceID3 isEqual:sourceID4];

      if (!v24)
      {
        goto LABEL_41;
      }
    }

    intentClass = [(BMAppIntent *)self intentClass];
    intentClass2 = [v5 intentClass];
    v27 = intentClass2;
    if (intentClass == intentClass2)
    {
    }

    else
    {
      intentClass3 = [(BMAppIntent *)self intentClass];
      intentClass4 = [v5 intentClass];
      v30 = [intentClass3 isEqual:intentClass4];

      if (!v30)
      {
        goto LABEL_41;
      }
    }

    intentVerb = [(BMAppIntent *)self intentVerb];
    intentVerb2 = [v5 intentVerb];
    v33 = intentVerb2;
    if (intentVerb == intentVerb2)
    {
    }

    else
    {
      intentVerb3 = [(BMAppIntent *)self intentVerb];
      intentVerb4 = [v5 intentVerb];
      v36 = [intentVerb3 isEqual:intentVerb4];

      if (!v36)
      {
        goto LABEL_41;
      }
    }

    intentType = [(BMAppIntent *)self intentType];
    if (intentType != [v5 intentType])
    {
      goto LABEL_41;
    }

    handlingStatus = [(BMAppIntent *)self handlingStatus];
    if (handlingStatus != [v5 handlingStatus])
    {
      goto LABEL_41;
    }

    interaction = [(BMAppIntent *)self interaction];
    interaction2 = [v5 interaction];
    v41 = interaction2;
    if (interaction == interaction2)
    {
    }

    else
    {
      interaction3 = [(BMAppIntent *)self interaction];
      interaction4 = [v5 interaction];
      v44 = [interaction3 isEqual:interaction4];

      if (!v44)
      {
        goto LABEL_41;
      }
    }

    itemID = [(BMAppIntent *)self itemID];
    itemID2 = [v5 itemID];
    v47 = itemID2;
    if (itemID == itemID2)
    {
    }

    else
    {
      itemID3 = [(BMAppIntent *)self itemID];
      itemID4 = [v5 itemID];
      v50 = [itemID3 isEqual:itemID4];

      if (!v50)
      {
        goto LABEL_41;
      }
    }

    if (!-[BMAppIntent hasDonatedBySiri](self, "hasDonatedBySiri") && ![v5 hasDonatedBySiri] || -[BMAppIntent hasDonatedBySiri](self, "hasDonatedBySiri") && objc_msgSend(v5, "hasDonatedBySiri") && (v51 = -[BMAppIntent donatedBySiri](self, "donatedBySiri"), v51 == objc_msgSend(v5, "donatedBySiri")))
    {
      interactionDirection = [(BMAppIntent *)self interactionDirection];
      if (interactionDirection == [v5 interactionDirection])
      {
        groupIdentifier = [(BMAppIntent *)self groupIdentifier];
        groupIdentifier2 = [v5 groupIdentifier];
        if (groupIdentifier == groupIdentifier2)
        {
          v12 = 1;
        }

        else
        {
          groupIdentifier3 = [(BMAppIntent *)self groupIdentifier];
          groupIdentifier4 = [v5 groupIdentifier];
          v12 = [groupIdentifier3 isEqual:groupIdentifier4];
        }

        goto LABEL_42;
      }
    }

LABEL_41:
    v12 = 0;
LABEL_42:

    goto LABEL_43;
  }

  v12 = 0;
LABEL_43:

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
  v46[12] = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMAppIntent *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMAppIntent *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  bundleID = [(BMAppIntent *)self bundleID];
  sourceID = [(BMAppIntent *)self sourceID];
  intentClass = [(BMAppIntent *)self intentClass];
  intentVerb = [(BMAppIntent *)self intentVerb];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntent intentType](self, "intentType")}];
  v43 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntent handlingStatus](self, "handlingStatus")}];
  interaction = [(BMAppIntent *)self interaction];
  v42 = [interaction base64EncodedStringWithOptions:0];

  itemID = [(BMAppIntent *)self itemID];
  v12 = 0;
  if ([(BMAppIntent *)self hasDonatedBySiri])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppIntent donatedBySiri](self, "donatedBySiri")}];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntent interactionDirection](self, "interactionDirection")}];
  groupIdentifier = [(BMAppIntent *)self groupIdentifier];
  v45[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null;
  v46[0] = null;
  v45[1] = @"bundleID";
  null2 = bundleID;
  if (!bundleID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null2;
  v46[1] = null2;
  v45[2] = @"sourceID";
  null3 = sourceID;
  if (!sourceID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null3;
  v46[2] = null3;
  v45[3] = @"intentClass";
  null4 = intentClass;
  if (!intentClass)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v6;
  v32 = null4;
  v46[3] = null4;
  v45[4] = @"intentVerb";
  null5 = intentVerb;
  if (!intentVerb)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = bundleID;
  v31 = null5;
  v46[4] = null5;
  v45[5] = @"intentType";
  null6 = v44;
  if (!v44)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = sourceID;
  v46[5] = null6;
  v45[6] = @"handlingStatus";
  null7 = v43;
  if (!v43)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null6;
  v37 = intentClass;
  v46[6] = null7;
  v45[7] = @"interaction";
  null8 = v42;
  if (!v42)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = intentVerb;
  v46[7] = null8;
  v45[8] = @"itemID";
  null9 = itemID;
  if (!itemID)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v46[8] = null9;
  v45[9] = @"donatedBySiri";
  null10 = v12;
  if (!v12)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v46[9] = null10;
  v45[10] = @"interactionDirection";
  null11 = v13;
  if (!v13)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v46[10] = null11;
  v45[11] = @"groupIdentifier";
  null12 = groupIdentifier;
  if (!groupIdentifier)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v46[11] = null12;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:12];
  if (groupIdentifier)
  {
    if (v13)
    {
      goto LABEL_32;
    }

LABEL_51:

    if (v12)
    {
      goto LABEL_33;
    }

    goto LABEL_52;
  }

  if (!v13)
  {
    goto LABEL_51;
  }

LABEL_32:
  if (v12)
  {
    goto LABEL_33;
  }

LABEL_52:

LABEL_33:
  if (!itemID)
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

  if (!v23)
  {
  }

  if (v37)
  {
    if (v38)
    {
      goto LABEL_45;
    }
  }

  else
  {

    if (v38)
    {
LABEL_45:
      if (v39)
      {
        goto LABEL_46;
      }

LABEL_55:

      if (v40)
      {
        goto LABEL_47;
      }

      goto LABEL_56;
    }
  }

  if (!v39)
  {
    goto LABEL_55;
  }

LABEL_46:
  if (v40)
  {
    goto LABEL_47;
  }

LABEL_56:

LABEL_47:
  v28 = *MEMORY[0x1E69E9840];

  return v36;
}

- (BMAppIntent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v154[1] = *MEMORY[0x1E69E9840];
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

    v13 = [v10 initWithTimeIntervalSinceReferenceDate:v12];
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
        goto LABEL_103;
      }

      v75 = objc_alloc(MEMORY[0x1E696ABC0]);
      v76 = *MEMORY[0x1E698F240];
      v153 = *MEMORY[0x1E696A578];
      v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
      v154[0] = v31;
      v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v154 forKeys:&v153 count:1];
      v78 = v76;
      v15 = v77;
      v79 = [v75 initWithDomain:v78 code:2 userInfo:v77];
      v7 = 0;
      errorCopy = error;
      error = 0;
      *errorCopy = v79;
      goto LABEL_102;
    }

    v13 = v6;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v7 = [v14 dateFromString:v6];

LABEL_9:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  v126 = v7;
  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    errorCopy3 = error;
    v123 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    errorCopy3 = error;
    v123 = v15;
LABEL_12:
    v16 = [dictionaryCopy objectForKeyedSubscript:@"sourceID"];
    v125 = v16;
    if (!v16 || (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v122 = 0;
LABEL_15:
      v18 = [dictionaryCopy objectForKeyedSubscript:@"intentClass"];
      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy3)
          {
            v124 = 0;
            error = 0;
            v26 = v122;
            v31 = v123;
            goto LABEL_100;
          }

          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = v15;
          v40 = *MEMORY[0x1E698F240];
          v147 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"intentClass"];
          v148 = v41;
          v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          v43 = v40;
          v15 = v39;
          v44 = [v38 initWithDomain:v43 code:2 userInfo:v42];
          v124 = 0;
          error = 0;
          *errorCopy3 = v44;
          v19 = v41;
          v26 = v122;
          v31 = v123;
          goto LABEL_99;
        }

        v124 = v18;
      }

      else
      {
        v124 = 0;
      }

      v19 = [dictionaryCopy objectForKeyedSubscript:@"intentVerb"];
      v121 = v19;
      if (v19)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = 0;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v19 = errorCopy3;
            if (!errorCopy3)
            {
              error = 0;
              v26 = v122;
              v31 = v123;
              v42 = v121;
              goto LABEL_99;
            }

            v45 = objc_alloc(MEMORY[0x1E696ABC0]);
            v46 = v15;
            v47 = *MEMORY[0x1E698F240];
            v145 = *MEMORY[0x1E696A578];
            v48 = objc_alloc(MEMORY[0x1E696AEC0]);
            v105 = objc_opt_class();
            v49 = v48;
            v42 = v121;
            v119 = [v49 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v105, @"intentVerb"];
            v146 = v119;
            v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
            v51 = v47;
            v15 = v46;
            v116 = v50;
            v52 = [v45 initWithDomain:v51 code:2 userInfo:?];
            error = 0;
            *errorCopy3 = v52;
            v19 = 0;
            v26 = v122;
            v31 = v123;
LABEL_98:

LABEL_99:
            goto LABEL_100;
          }

          v19 = v19;
        }
      }

      v20 = [dictionaryCopy objectForKeyedSubscript:@"intentType"];
      v118 = v19;
      v116 = v20;
      if (v20 && (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy3)
            {
              v119 = 0;
              error = 0;
              v26 = v122;
              v31 = v123;
              v42 = v121;
              goto LABEL_98;
            }

            v81 = objc_alloc(MEMORY[0x1E696ABC0]);
            v82 = v15;
            v83 = *MEMORY[0x1E698F240];
            v143 = *MEMORY[0x1E696A578];
            v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"intentType"];
            v144 = v117;
            v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
            v85 = v83;
            v15 = v82;
            v114 = v84;
            v86 = [v81 initWithDomain:v85 code:2 userInfo:?];
            v119 = 0;
            error = 0;
            *errorCopy3 = v86;
            goto LABEL_128;
          }

          v22 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentTypeFromString(v21)];
        }

        v119 = v22;
      }

      else
      {
        v119 = 0;
      }

      v53 = [dictionaryCopy objectForKeyedSubscript:@"handlingStatus"];
      v114 = v53;
      if (!v53 || (v54 = v53, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v117 = 0;
LABEL_55:
        v56 = [dictionaryCopy objectForKeyedSubscript:@"interaction"];
        v110 = v15;
        v111 = v6;
        v112 = v56;
        if (!v56)
        {
          goto LABEL_62;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = 0;
          goto LABEL_62;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = v56;
          goto LABEL_62;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v56 options:0];
          if (v56)
          {
LABEL_62:
            v57 = [dictionaryCopy objectForKeyedSubscript:@"itemID"];
            if (v57)
            {
              objc_opt_class();
              v42 = v121;
              if (objc_opt_isKindOfClass())
              {
                v115 = 0;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!errorCopy3)
                  {
                    v115 = 0;
                    error = 0;
                    v31 = v123;
                    goto LABEL_94;
                  }

                  v63 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v64 = *MEMORY[0x1E698F240];
                  v135 = *MEMORY[0x1E696A578];
                  v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemID"];
                  v136 = v113;
                  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
                  v65 = v63;
                  v7 = v126;
                  v66 = v64;
                  v42 = v121;
                  v115 = 0;
                  error = 0;
                  *errorCopy3 = [v65 initWithDomain:v66 code:2 userInfo:v58];
                  goto LABEL_122;
                }

                v115 = v57;
              }
            }

            else
            {
              v115 = 0;
              v42 = v121;
            }

            v58 = [dictionaryCopy objectForKeyedSubscript:@"donatedBySiri"];
            v108 = v18;
            v109 = v56;
            if (!v58 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v113 = 0;
              goto LABEL_71;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v113 = v58;
LABEL_71:
              v59 = [dictionaryCopy objectForKeyedSubscript:@"interactionDirection"];
              if (!v59 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                selfCopy3 = self;
                v61 = 0;
                goto LABEL_87;
              }

              selfCopy3 = self;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v62 = v59;
LABEL_86:
                v61 = v62;
LABEL_87:
                v69 = [dictionaryCopy objectForKeyedSubscript:@"groupIdentifier"];
                if (!v69 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v70 = 0;
LABEL_90:
                  intValue = [v119 intValue];
                  intValue2 = [v117 intValue];
                  LODWORD(v106) = [v61 intValue];
                  LODWORD(v104) = intValue2;
                  v31 = v123;
                  error = [(BMAppIntent *)selfCopy3 initWithAbsoluteTimestamp:v126 bundleID:v123 sourceID:v122 intentClass:v124 intentVerb:v118 intentType:intValue handlingStatus:v104 interaction:v109 itemID:v115 donatedBySiri:v113 interactionDirection:v106 groupIdentifier:v70];
                  selfCopy3 = error;
LABEL_91:

LABEL_92:
                  self = selfCopy3;

                  v7 = v126;
                  v18 = v108;
                  v56 = v109;
                  v42 = v121;
LABEL_93:

LABEL_94:
                  v26 = v122;
LABEL_95:

                  v15 = v110;
                  v6 = v111;
LABEL_96:

LABEL_97:
                  v19 = v118;

                  goto LABEL_98;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v70 = v69;
                  goto LABEL_90;
                }

                error = errorCopy3;
                if (errorCopy3)
                {
                  v128 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v107 = *MEMORY[0x1E698F240];
                  v129 = *MEMORY[0x1E696A578];
                  v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"groupIdentifier"];
                  v130 = v87;
                  v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
                  *errorCopy3 = [v128 initWithDomain:v107 code:2 userInfo:v88];

                  v70 = 0;
                  error = 0;
                }

                else
                {
                  v70 = 0;
                }

LABEL_126:
                v31 = v123;
                goto LABEL_91;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v62 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentInteractionDirectionFromString(v59)];
                goto LABEL_86;
              }

              if (errorCopy3)
              {
                v98 = objc_alloc(MEMORY[0x1E696ABC0]);
                v99 = *MEMORY[0x1E698F240];
                v131 = *MEMORY[0x1E696A578];
                v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"interactionDirection"];
                v132 = v70;
                v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
                v100 = [v98 initWithDomain:v99 code:2 userInfo:v69];
                v61 = 0;
                error = 0;
                *errorCopy3 = v100;
                goto LABEL_126;
              }

              v61 = 0;
              error = 0;
LABEL_136:
              v31 = v123;
              goto LABEL_92;
            }

            if (errorCopy3)
            {
              selfCopy3 = self;
              v67 = objc_alloc(MEMORY[0x1E696ABC0]);
              v68 = *MEMORY[0x1E698F240];
              v133 = *MEMORY[0x1E696A578];
              v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"donatedBySiri"];
              v134 = v61;
              v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
              v113 = 0;
              error = 0;
              *errorCopy3 = [v67 initWithDomain:v68 code:2 userInfo:v59];
              goto LABEL_136;
            }

            v113 = 0;
            error = 0;
LABEL_122:
            v31 = v123;
            goto LABEL_93;
          }

          if (errorCopy3)
          {
            v101 = objc_alloc(MEMORY[0x1E696ABC0]);
            v102 = *MEMORY[0x1E698F240];
            v139 = *MEMORY[0x1E696A578];
            v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"interaction"];
            v140 = v115;
            v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
            v103 = v101;
            v7 = v126;
            v56 = 0;
            error = 0;
            *errorCopy3 = [v103 initWithDomain:v102 code:2 userInfo:v57];
            v26 = v122;
            v31 = v123;
            goto LABEL_131;
          }

          v56 = 0;
          error = 0;
          v26 = v122;
          v31 = v123;
LABEL_134:
          v42 = v121;
          goto LABEL_96;
        }

        if (errorCopy3)
        {
          v96 = objc_alloc(MEMORY[0x1E696ABC0]);
          v97 = *MEMORY[0x1E698F240];
          v137 = *MEMORY[0x1E696A578];
          v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"interaction"];
          v138 = v115;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
          v56 = 0;
          error = 0;
          *errorCopy3 = [v96 initWithDomain:v97 code:2 userInfo:v57];
          v26 = v122;
          v31 = v123;
          v7 = v126;
LABEL_131:
          v42 = v121;
          goto LABEL_95;
        }

        v56 = 0;
        error = 0;
LABEL_133:
        v26 = v122;
        v31 = v123;
        goto LABEL_134;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = v54;
LABEL_54:
        v117 = v55;
        goto LABEL_55;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentHandlingStatusFromString(v54)];
        goto LABEL_54;
      }

      if (errorCopy3)
      {
        v89 = objc_alloc(MEMORY[0x1E696ABC0]);
        v90 = v15;
        v91 = *MEMORY[0x1E698F240];
        v141 = *MEMORY[0x1E696A578];
        v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"handlingStatus"];
        v142 = v92;
        v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
        v94 = v91;
        v15 = v90;
        v112 = v93;
        v95 = [v89 initWithDomain:v94 code:2 userInfo:?];
        v117 = 0;
        error = 0;
        *errorCopy3 = v95;
        v56 = v92;
        goto LABEL_133;
      }

      v117 = 0;
      error = 0;
LABEL_128:
      v26 = v122;
      v31 = v123;
      v42 = v121;
      goto LABEL_97;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v122 = v17;
      goto LABEL_15;
    }

    if (errorCopy3)
    {
      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      v34 = v15;
      v35 = *MEMORY[0x1E698F240];
      v149 = *MEMORY[0x1E696A578];
      v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceID"];
      v150 = v124;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
      v36 = v33;
      v7 = v126;
      v37 = v35;
      v15 = v34;
      v26 = 0;
      error = 0;
      *errorCopy3 = [v36 initWithDomain:v37 code:2 userInfo:v18];
      v31 = v123;
LABEL_100:

      goto LABEL_101;
    }

    v26 = 0;
    error = 0;
    v31 = v123;
LABEL_101:

    goto LABEL_102;
  }

  if (error)
  {
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = v15;
    v25 = *MEMORY[0x1E698F240];
    v151 = *MEMORY[0x1E696A578];
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
    v152 = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
    v28 = v23;
    v7 = v126;
    v29 = v25;
    v15 = v24;
    v125 = v27;
    v30 = [v28 initWithDomain:v29 code:2 userInfo:?];
    v31 = 0;
    errorCopy5 = error;
    error = 0;
    *errorCopy5 = v30;
    goto LABEL_101;
  }

  v31 = 0;
LABEL_102:

LABEL_103:
  v73 = *MEMORY[0x1E69E9840];
  return error;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_intentClass)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_intentVerb)
  {
    PBDataWriterWriteStringField();
  }

  intentType = self->_intentType;
  PBDataWriterWriteUint32Field();
  handlingStatus = self->_handlingStatus;
  PBDataWriterWriteUint32Field();
  if (self->_interaction)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_itemID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasDonatedBySiri)
  {
    donatedBySiri = self->_donatedBySiri;
    PBDataWriterWriteBOOLField();
  }

  interactionDirection = self->_interactionDirection;
  PBDataWriterWriteUint32Field();
  if (self->_groupIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v50.receiver = self;
  v50.super_class = BMAppIntent;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_102;
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
        LOBYTE(v51) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v51) & 0x7F) << v7;
        if ((LOBYTE(v51) & 0x80) == 0)
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
      if ((v14 >> 3) > 6)
      {
        if (v15 > 9)
        {
          if (v15 == 10)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v5->_hasDonatedBySiri = 1;
            while (1)
            {
              LOBYTE(v51) = 0;
              v40 = [fromCopy position] + 1;
              if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v39 |= (LOBYTE(v51) & 0x7F) << v37;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v13 = v38++ >= 9;
              if (v13)
              {
                LOBYTE(v43) = 0;
                goto LABEL_96;
              }
            }

            v43 = (v39 != 0) & ~[fromCopy hasError];
LABEL_96:
            v5->_donatedBySiri = v43;
            goto LABEL_99;
          }

          if (v15 != 12)
          {
            if (v15 != 11)
            {
LABEL_80:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_101;
              }

              goto LABEL_99;
            }

            v25 = 0;
            v26 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v51) = 0;
              v27 = [fromCopy position] + 1;
              if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (LOBYTE(v51) & 0x7F) << v25;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v24 = v26++ > 8;
              if (v24)
              {
                goto LABEL_88;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v20 > 3)
            {
LABEL_88:
              LODWORD(v20) = 0;
            }

            v45 = 48;
            goto LABEL_94;
          }

          v16 = PBReaderReadString();
          v17 = 104;
        }

        else
        {
          switch(v15)
          {
            case 7:
              v32 = 0;
              v33 = 0;
              v20 = 0;
              while (1)
              {
                LOBYTE(v51) = 0;
                v34 = [fromCopy position] + 1;
                if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
                {
                  data4 = [fromCopy data];
                  [data4 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v20 |= (LOBYTE(v51) & 0x7F) << v32;
                if ((LOBYTE(v51) & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                v24 = v33++ > 8;
                if (v24)
                {
                  goto LABEL_92;
                }
              }

              if (([fromCopy hasError] & 1) != 0 || v20 > 7)
              {
LABEL_92:
                LODWORD(v20) = 0;
              }

              v45 = 44;
LABEL_94:
              *(&v5->super.super.isa + v45) = v20;
              goto LABEL_99;
            case 8:
              v16 = PBReaderReadData();
              v17 = 88;
              break;
            case 9:
              v16 = PBReaderReadString();
              v17 = 96;
              break;
            default:
              goto LABEL_80;
          }
        }
      }

      else if (v15 > 3)
      {
        switch(v15)
        {
          case 4:
            v16 = PBReaderReadString();
            v17 = 72;
            break;
          case 5:
            v16 = PBReaderReadString();
            v17 = 80;
            break;
          case 6:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v51) = 0;
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data5 = [fromCopy data];
                [data5 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (LOBYTE(v51) & 0x7F) << v18;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v24 = v19++ > 8;
              if (v24)
              {
                goto LABEL_84;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v20 > 3)
            {
LABEL_84:
              LODWORD(v20) = 0;
            }

            v45 = 40;
            goto LABEL_94;
          default:
            goto LABEL_80;
        }
      }

      else
      {
        switch(v15)
        {
          case 1:
            v5->_hasRaw_absoluteTimestamp = 1;
            v51 = 0.0;
            v30 = [fromCopy position] + 8;
            if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 8, v31 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v5->_raw_absoluteTimestamp = v51;
            goto LABEL_99;
          case 2:
            v16 = PBReaderReadString();
            v17 = 56;
            break;
          case 3:
            v16 = PBReaderReadString();
            v17 = 64;
            break;
          default:
            goto LABEL_80;
        }
      }

      v44 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_99:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_101:
    v48 = 0;
  }

  else
  {
LABEL_102:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMAppIntent *)self absoluteTimestamp];
  bundleID = [(BMAppIntent *)self bundleID];
  sourceID = [(BMAppIntent *)self sourceID];
  intentClass = [(BMAppIntent *)self intentClass];
  intentVerb = [(BMAppIntent *)self intentVerb];
  v5 = BMAppIntentTypeAsString([(BMAppIntent *)self intentType]);
  v6 = BMAppIntentHandlingStatusAsString([(BMAppIntent *)self handlingStatus]);
  interaction = [(BMAppIntent *)self interaction];
  itemID = [(BMAppIntent *)self itemID];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppIntent donatedBySiri](self, "donatedBySiri")}];
  v10 = BMAppIntentInteractionDirectionAsString([(BMAppIntent *)self interactionDirection]);
  groupIdentifier = [(BMAppIntent *)self groupIdentifier];
  v15 = [v14 initWithFormat:@"BMAppIntent with absoluteTimestamp: %@, bundleID: %@, sourceID: %@, intentClass: %@, intentVerb: %@, intentType: %@, handlingStatus: %@, interaction: %@, itemID: %@, donatedBySiri: %@, interactionDirection: %@, groupIdentifier: %@", absoluteTimestamp, bundleID, sourceID, intentClass, intentVerb, v5, v6, interaction, itemID, v9, v10, groupIdentifier];

  return v15;
}

- (BMAppIntent)initWithAbsoluteTimestamp:(id)timestamp bundleID:(id)d sourceID:(id)iD intentClass:(id)class intentVerb:(id)verb intentType:(int)type handlingStatus:(int)status interaction:(id)self0 itemID:(id)self1 donatedBySiri:(id)self2 interactionDirection:(int)self3 groupIdentifier:(id)self4
{
  timestampCopy = timestamp;
  dCopy = d;
  iDCopy = iD;
  classCopy = class;
  verbCopy = verb;
  interactionCopy = interaction;
  itemIDCopy = itemID;
  siriCopy = siri;
  identifierCopy = identifier;
  v32.receiver = self;
  v32.super_class = BMAppIntent;
  v22 = [(BMEventBase *)&v32 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v22->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v22->_hasRaw_absoluteTimestamp = 0;
      v23 = -1.0;
    }

    v22->_raw_absoluteTimestamp = v23;
    objc_storeStrong(&v22->_bundleID, d);
    objc_storeStrong(&v22->_sourceID, iD);
    objc_storeStrong(&v22->_intentClass, class);
    objc_storeStrong(&v22->_intentVerb, verb);
    v22->_intentType = type;
    v22->_handlingStatus = status;
    objc_storeStrong(&v22->_interaction, interaction);
    objc_storeStrong(&v22->_itemID, itemID);
    if (siriCopy)
    {
      v22->_hasDonatedBySiri = 1;
      v22->_donatedBySiri = [siriCopy BOOLValue];
    }

    else
    {
      v22->_hasDonatedBySiri = 0;
      v22->_donatedBySiri = 0;
    }

    v22->_interactionDirection = direction;
    objc_storeStrong(&v22->_groupIdentifier, identifier);
  }

  return v22;
}

+ (id)protoFields
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v17[0] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:2 type:13 subMessageClass:0];
  v17[1] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceID" number:3 type:13 subMessageClass:0];
  v17[2] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intentClass" number:4 type:13 subMessageClass:0];
  v17[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intentVerb" number:5 type:13 subMessageClass:0];
  v17[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intentType" number:6 type:4 subMessageClass:0];
  v17[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"handlingStatus" number:7 type:4 subMessageClass:0];
  v17[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interaction" number:8 type:14 subMessageClass:0];
  v17[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemID" number:9 type:13 subMessageClass:0];
  v17[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"donatedBySiri" number:10 type:12 subMessageClass:0];
  v17[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interactionDirection" number:11 type:4 subMessageClass:0];
  v17[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"groupIdentifier" number:12 type:13 subMessageClass:0];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 11)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMAppIntent_v11;
  }

  else
  {
    if (version != 12)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMAppIntent;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 36) = version;
  }

LABEL_9:

  return v9;
}

- (NSString)identifier
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleID = [(BMAppIntent *)self bundleID];
  itemID = [(BMAppIntent *)self itemID];
  v6 = [v3 initWithFormat:@"%@:%@", bundleID, itemID];

  return v6;
}

@end