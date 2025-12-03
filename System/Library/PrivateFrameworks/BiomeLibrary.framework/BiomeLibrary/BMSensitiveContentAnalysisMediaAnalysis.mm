@interface BMSensitiveContentAnalysisMediaAnalysis
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSensitiveContentAnalysisMediaAnalysis)initWithContentType:(id)type ageGroup:(int)group isSensitive:(int)sensitive clientBundleID:(id)d trackingVersion:(id)version subContentType:(int)contentType harms:(id)harms;
- (BMSensitiveContentAnalysisMediaAnalysis)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSensitiveContentAnalysisMediaAnalysis

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMSensitiveContentAnalysisMediaAnalysis hasContentType](self, "hasContentType") || [v5 hasContentType])
    {
      if (![(BMSensitiveContentAnalysisMediaAnalysis *)self hasContentType])
      {
        goto LABEL_24;
      }

      if (![v5 hasContentType])
      {
        goto LABEL_24;
      }

      contentType = [(BMSensitiveContentAnalysisMediaAnalysis *)self contentType];
      if (contentType != [v5 contentType])
      {
        goto LABEL_24;
      }
    }

    ageGroup = [(BMSensitiveContentAnalysisMediaAnalysis *)self ageGroup];
    if (ageGroup != [v5 ageGroup])
    {
      goto LABEL_24;
    }

    isSensitive = [(BMSensitiveContentAnalysisMediaAnalysis *)self isSensitive];
    if (isSensitive != [v5 isSensitive])
    {
      goto LABEL_24;
    }

    clientBundleID = [(BMSensitiveContentAnalysisMediaAnalysis *)self clientBundleID];
    clientBundleID2 = [v5 clientBundleID];
    v11 = clientBundleID2;
    if (clientBundleID == clientBundleID2)
    {
    }

    else
    {
      clientBundleID3 = [(BMSensitiveContentAnalysisMediaAnalysis *)self clientBundleID];
      clientBundleID4 = [v5 clientBundleID];
      v14 = [clientBundleID3 isEqual:clientBundleID4];

      if (!v14)
      {
        goto LABEL_24;
      }
    }

    trackingVersion = [(BMSensitiveContentAnalysisMediaAnalysis *)self trackingVersion];
    trackingVersion2 = [v5 trackingVersion];
    v18 = trackingVersion2;
    if (trackingVersion == trackingVersion2)
    {
    }

    else
    {
      trackingVersion3 = [(BMSensitiveContentAnalysisMediaAnalysis *)self trackingVersion];
      trackingVersion4 = [v5 trackingVersion];
      v21 = [trackingVersion3 isEqual:trackingVersion4];

      if (!v21)
      {
        goto LABEL_24;
      }
    }

    subContentType = [(BMSensitiveContentAnalysisMediaAnalysis *)self subContentType];
    if (subContentType == [v5 subContentType])
    {
      if (!-[BMSensitiveContentAnalysisMediaAnalysis hasHarms](self, "hasHarms") && ![v5 hasHarms])
      {
        v15 = 1;
        goto LABEL_25;
      }

      if (-[BMSensitiveContentAnalysisMediaAnalysis hasHarms](self, "hasHarms") && [v5 hasHarms])
      {
        harms = [(BMSensitiveContentAnalysisMediaAnalysis *)self harms];
        v15 = harms == [v5 harms];
LABEL_25:

        goto LABEL_26;
      }
    }

LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

  v15 = 0;
LABEL_26:

  return v15;
}

- (id)jsonDictionary
{
  v26[7] = *MEMORY[0x1E69E9840];
  if ([(BMSensitiveContentAnalysisMediaAnalysis *)self hasContentType])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisMediaAnalysis contentType](self, "contentType")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisMediaAnalysis ageGroup](self, "ageGroup")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisMediaAnalysis isSensitive](self, "isSensitive")}];
  clientBundleID = [(BMSensitiveContentAnalysisMediaAnalysis *)self clientBundleID];
  trackingVersion = [(BMSensitiveContentAnalysisMediaAnalysis *)self trackingVersion];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisMediaAnalysis subContentType](self, "subContentType")}];
  if ([(BMSensitiveContentAnalysisMediaAnalysis *)self hasHarms])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisMediaAnalysis harms](self, "harms")}];
  }

  else
  {
    v9 = 0;
  }

  v25[0] = @"contentType";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v26[0] = null;
  v25[1] = @"ageGroup";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null2;
  v26[1] = null2;
  v25[2] = @"isSensitive";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v20 = null3;
  v26[2] = null3;
  v25[3] = @"clientBundleID";
  null4 = clientBundleID;
  if (!clientBundleID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v4;
  v26[3] = null4;
  v25[4] = @"trackingVersion";
  null5 = trackingVersion;
  if (!trackingVersion)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"subContentType";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v25[6] = @"harms";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_23;
    }

LABEL_33:

    if (trackingVersion)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  if (!v8)
  {
    goto LABEL_33;
  }

LABEL_23:
  if (trackingVersion)
  {
    goto LABEL_24;
  }

LABEL_34:

LABEL_24:
  if (!clientBundleID)
  {
  }

  if (v5)
  {
    if (v23)
    {
      goto LABEL_28;
    }

LABEL_36:

    if (v24)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if (!v23)
  {
    goto LABEL_36;
  }

LABEL_28:
  if (v24)
  {
    goto LABEL_29;
  }

LABEL_37:

LABEL_29:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMSensitiveContentAnalysisMediaAnalysis)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v77[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"contentType"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v7 = 0;
        v14 = 0;
        selfCopy10 = self;
        goto LABEL_55;
      }

      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = *MEMORY[0x1E698F240];
      v76 = *MEMORY[0x1E696A578];
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"contentType"];
      v77[0] = v9;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
      v13 = [v11 initWithDomain:v12 code:2 userInfo:v8];
      v7 = 0;
      v14 = 0;
      *error = v13;
      goto LABEL_73;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"ageGroup"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v8;
LABEL_15:
        v9 = v10;
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMSensitiveContentAnalysisMediaAnalysisAgeGroupFromString(v8)];
        goto LABEL_15;
      }

      if (error)
      {
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v74 = *MEMORY[0x1E696A578];
        v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ageGroup"];
        v75 = v63;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v46 = [v44 initWithDomain:v45 code:2 userInfo:v39];
        v9 = 0;
        v14 = 0;
        *error = v46;
        goto LABEL_75;
      }

      v9 = 0;
      v14 = 0;
LABEL_73:
      selfCopy10 = self;
      goto LABEL_54;
    }
  }

  v9 = 0;
LABEL_16:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"isSensitive"];
  v56 = v8;
  v59 = v15;
  if (v15)
  {
    v16 = v15;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v63 = v16;
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v63 = [MEMORY[0x1E696AD98] numberWithInt:BMSensitiveContentAnalysisMediaAnalysisIsSensitiveFromString(v16)];
        goto LABEL_19;
      }

      if (error)
      {
        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v48 = *MEMORY[0x1E698F240];
        v72 = *MEMORY[0x1E696A578];
        errorCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"isSensitive"];
        v73 = errorCopy;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
        v49 = [v47 initWithDomain:v48 code:2 userInfo:?];
        v63 = 0;
        v14 = 0;
        *error = v49;
LABEL_67:
        selfCopy10 = self;
        goto LABEL_52;
      }

      v63 = 0;
      v14 = 0;
      v39 = v59;
LABEL_75:
      selfCopy10 = self;
      goto LABEL_53;
    }
  }

  v63 = 0;
LABEL_19:
  v17 = [dictionaryCopy objectForKeyedSubscript:@"clientBundleID"];
  errorCopy = error;
  v58 = v17;
  if (!v17 || (v19 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v55 = 0;
LABEL_22:
    v20 = [dictionaryCopy objectForKeyedSubscript:@"trackingVersion"];
    v57 = v7;
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v60 = 0;
          v14 = 0;
          selfCopy10 = self;
          errorCopy = v55;
          goto LABEL_51;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v68 = *MEMORY[0x1E696A578];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trackingVersion"];
        v69 = v23;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v31 = [v29 initWithDomain:v30 code:2 userInfo:v21];
        v60 = 0;
        v14 = 0;
        *errorCopy = v31;
        selfCopy10 = self;
        goto LABEL_77;
      }

      v60 = v20;
    }

    else
    {
      v60 = 0;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"subContentType"];
    v54 = v6;
    if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      selfCopy8 = self;
      v23 = 0;
      goto LABEL_45;
    }

    v52 = v9;
    selfCopy8 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v21;
LABEL_44:
      v23 = v24;
LABEL_45:
      v32 = [dictionaryCopy objectForKeyedSubscript:@"harms"];
      if (!v32 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v33 = 0;
LABEL_48:
        intValue = [v9 intValue];
        v35 = v9;
        intValue2 = [v63 intValue];
        intValue3 = [v23 intValue];
        v38 = intValue2;
        v9 = v35;
        errorCopy = v55;
        v14 = [(BMSensitiveContentAnalysisMediaAnalysis *)selfCopy8 initWithContentType:v57 ageGroup:intValue isSensitive:v38 clientBundleID:v55 trackingVersion:v60 subContentType:intValue3 harms:v33];
        selfCopy8 = v14;
LABEL_49:

        selfCopy10 = selfCopy8;
        v6 = v54;
LABEL_50:

        v7 = v57;
        goto LABEL_51;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
        goto LABEL_48;
      }

      if (errorCopy)
      {
        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v53 = *MEMORY[0x1E698F240];
        v64 = *MEMORY[0x1E696A578];
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"harms"];
        v65 = v42;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        *errorCopy = [v62 initWithDomain:v53 code:2 userInfo:v43];
      }

      v33 = 0;
      v14 = 0;
LABEL_70:
      errorCopy = v55;
      goto LABEL_49;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [MEMORY[0x1E696AD98] numberWithInt:BMSensitiveContentAnalysisMediaAnalysisSubContentTypeFromString(v21)];
      goto LABEL_44;
    }

    if (error)
    {
      v51 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = *MEMORY[0x1E698F240];
      v66 = *MEMORY[0x1E696A578];
      v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"subContentType"];
      v67 = v33;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      v23 = 0;
      v14 = 0;
      *errorCopy = [v51 initWithDomain:v50 code:2 userInfo:v32];
      v9 = v52;
      goto LABEL_70;
    }

    v23 = 0;
    v14 = 0;
    selfCopy10 = self;
    v6 = v54;
LABEL_77:
    errorCopy = v55;
    goto LABEL_50;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = v19;
    goto LABEL_22;
  }

  if (!error)
  {
    v14 = 0;
    goto LABEL_67;
  }

  v25 = objc_alloc(MEMORY[0x1E696ABC0]);
  v26 = *MEMORY[0x1E698F240];
  v70 = *MEMORY[0x1E696A578];
  v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientBundleID"];
  v71 = v60;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
  v27 = [v25 initWithDomain:v26 code:2 userInfo:v20];
  v14 = 0;
  *error = v27;
  errorCopy = 0;
  selfCopy10 = self;
LABEL_51:

LABEL_52:
  v8 = v56;
  v39 = v59;
LABEL_53:

LABEL_54:
LABEL_55:

  v40 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSensitiveContentAnalysisMediaAnalysis *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasContentType)
  {
    contentType = self->_contentType;
    PBDataWriterWriteInt32Field();
  }

  ageGroup = self->_ageGroup;
  PBDataWriterWriteUint32Field();
  isSensitive = self->_isSensitive;
  PBDataWriterWriteUint32Field();
  if (self->_clientBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trackingVersion)
  {
    PBDataWriterWriteStringField();
  }

  subContentType = self->_subContentType;
  PBDataWriterWriteUint32Field();
  if (self->_hasHarms)
  {
    harms = self->_harms;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v54.receiver = self;
  v54.super_class = BMSensitiveContentAnalysisMediaAnalysis;
  v5 = [(BMEventBase *)&v54 init];
  if (!v5)
  {
    goto LABEL_102;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_100;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v55 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v55 & 0x7F) << v7;
        if ((v55 & 0x80) == 0)
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
        goto LABEL_100;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      if (v15 > 5)
      {
        if (v15 != 7)
        {
          if (v15 != 6)
          {
LABEL_55:
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
            v55 = 0;
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v55 & 0x7F) << v25;
            if ((v55 & 0x80) == 0)
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

          if (([fromCopy hasError] & 1) != 0 || v20 > 4)
          {
LABEL_88:
            LODWORD(v20) = 0;
          }

          v50 = 36;
          goto LABEL_98;
        }

        v38 = 0;
        v39 = 0;
        v40 = 0;
        v5->_hasHarms = 1;
        while (1)
        {
          v55 = 0;
          v41 = [fromCopy position] + 1;
          if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v40 |= (v55 & 0x7F) << v38;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v13 = v39++ >= 9;
          if (v13)
          {
            v36 = 0;
            goto LABEL_84;
          }
        }

        if ([fromCopy hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v40;
        }

LABEL_84:
        v49 = 40;
LABEL_85:
        *(&v5->super.super.isa + v49) = v36;
        goto LABEL_99;
      }

      if (v15 == 4)
      {
        v16 = PBReaderReadString();
        v17 = 48;
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_55;
        }

        v16 = PBReaderReadString();
        v17 = 56;
      }

      v37 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_99:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_100;
      }
    }

    if (v15 != 1)
    {
      if (v15 == 2)
      {
        v44 = 0;
        v45 = 0;
        v20 = 0;
        while (1)
        {
          v55 = 0;
          v46 = [fromCopy position] + 1;
          if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 1, v47 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v20 |= (v55 & 0x7F) << v44;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v24 = v45++ > 8;
          if (v24)
          {
            goto LABEL_96;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v20 > 3)
        {
LABEL_96:
          LODWORD(v20) = 0;
        }

        v50 = 28;
      }

      else
      {
        if (v15 != 3)
        {
          goto LABEL_55;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          v55 = 0;
          v21 = [fromCopy position] + 1;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v20 |= (v55 & 0x7F) << v18;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v24 = v19++ > 8;
          if (v24)
          {
            goto LABEL_92;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v20 > 2)
        {
LABEL_92:
          LODWORD(v20) = 0;
        }

        v50 = 32;
      }

LABEL_98:
      *(&v5->super.super.isa + v50) = v20;
      goto LABEL_99;
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    v5->_hasContentType = 1;
    while (1)
    {
      v55 = 0;
      v33 = [fromCopy position] + 1;
      if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
      {
        data6 = [fromCopy data];
        [data6 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v32 |= (v55 & 0x7F) << v30;
      if ((v55 & 0x80) == 0)
      {
        break;
      }

      v30 += 7;
      v13 = v31++ >= 9;
      if (v13)
      {
        v36 = 0;
        goto LABEL_80;
      }
    }

    if ([fromCopy hasError])
    {
      v36 = 0;
    }

    else
    {
      v36 = v32;
    }

LABEL_80:
    v49 = 24;
    goto LABEL_85;
  }

LABEL_100:
  if ([fromCopy hasError])
  {
LABEL_101:
    v52 = 0;
  }

  else
  {
LABEL_102:
    v52 = v5;
  }

  return v52;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisMediaAnalysis contentType](self, "contentType")}];
  v5 = BMSensitiveContentAnalysisMediaAnalysisAgeGroupAsString([(BMSensitiveContentAnalysisMediaAnalysis *)self ageGroup]);
  v6 = BMSensitiveContentAnalysisMediaAnalysisIsSensitiveAsString([(BMSensitiveContentAnalysisMediaAnalysis *)self isSensitive]);
  clientBundleID = [(BMSensitiveContentAnalysisMediaAnalysis *)self clientBundleID];
  trackingVersion = [(BMSensitiveContentAnalysisMediaAnalysis *)self trackingVersion];
  v9 = BMSensitiveContentAnalysisMediaAnalysisSubContentTypeAsString([(BMSensitiveContentAnalysisMediaAnalysis *)self subContentType]);
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisMediaAnalysis harms](self, "harms")}];
  v11 = [v3 initWithFormat:@"BMSensitiveContentAnalysisMediaAnalysis with contentType: %@, ageGroup: %@, isSensitive: %@, clientBundleID: %@, trackingVersion: %@, subContentType: %@, harms: %@", v4, v5, v6, clientBundleID, trackingVersion, v9, v10];

  return v11;
}

- (BMSensitiveContentAnalysisMediaAnalysis)initWithContentType:(id)type ageGroup:(int)group isSensitive:(int)sensitive clientBundleID:(id)d trackingVersion:(id)version subContentType:(int)contentType harms:(id)harms
{
  typeCopy = type;
  dCopy = d;
  versionCopy = version;
  harmsCopy = harms;
  v23.receiver = self;
  v23.super_class = BMSensitiveContentAnalysisMediaAnalysis;
  v19 = [(BMEventBase *)&v23 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (typeCopy)
    {
      v19->_hasContentType = 1;
      intValue = [typeCopy intValue];
    }

    else
    {
      v19->_hasContentType = 0;
      intValue = -1;
    }

    v19->_contentType = intValue;
    v19->_ageGroup = group;
    v19->_isSensitive = sensitive;
    objc_storeStrong(&v19->_clientBundleID, d);
    objc_storeStrong(&v19->_trackingVersion, version);
    v19->_subContentType = contentType;
    if (harmsCopy)
    {
      v19->_hasHarms = 1;
      intValue2 = [harmsCopy intValue];
    }

    else
    {
      v19->_hasHarms = 0;
      intValue2 = -1;
    }

    v19->_harms = intValue2;
  }

  return v19;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentType" number:1 type:2 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ageGroup" number:2 type:4 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSensitive" number:3 type:4 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientBundleID" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trackingVersion" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subContentType" number:6 type:4 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"harms" number:7 type:2 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ageGroup" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSensitive" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientBundleID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trackingVersion" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subContentType" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"harms" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
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

    v8 = [[BMSensitiveContentAnalysisMediaAnalysis alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end