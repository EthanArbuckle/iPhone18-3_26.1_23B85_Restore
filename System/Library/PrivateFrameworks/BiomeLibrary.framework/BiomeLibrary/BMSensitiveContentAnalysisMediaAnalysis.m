@interface BMSensitiveContentAnalysisMediaAnalysis
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSensitiveContentAnalysisMediaAnalysis)initWithContentType:(id)a3 ageGroup:(int)a4 isSensitive:(int)a5 clientBundleID:(id)a6 trackingVersion:(id)a7 subContentType:(int)a8 harms:(id)a9;
- (BMSensitiveContentAnalysisMediaAnalysis)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSensitiveContentAnalysisMediaAnalysis

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

      v6 = [(BMSensitiveContentAnalysisMediaAnalysis *)self contentType];
      if (v6 != [v5 contentType])
      {
        goto LABEL_24;
      }
    }

    v7 = [(BMSensitiveContentAnalysisMediaAnalysis *)self ageGroup];
    if (v7 != [v5 ageGroup])
    {
      goto LABEL_24;
    }

    v8 = [(BMSensitiveContentAnalysisMediaAnalysis *)self isSensitive];
    if (v8 != [v5 isSensitive])
    {
      goto LABEL_24;
    }

    v9 = [(BMSensitiveContentAnalysisMediaAnalysis *)self clientBundleID];
    v10 = [v5 clientBundleID];
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = [(BMSensitiveContentAnalysisMediaAnalysis *)self clientBundleID];
      v13 = [v5 clientBundleID];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_24;
      }
    }

    v16 = [(BMSensitiveContentAnalysisMediaAnalysis *)self trackingVersion];
    v17 = [v5 trackingVersion];
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [(BMSensitiveContentAnalysisMediaAnalysis *)self trackingVersion];
      v20 = [v5 trackingVersion];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
        goto LABEL_24;
      }
    }

    v22 = [(BMSensitiveContentAnalysisMediaAnalysis *)self subContentType];
    if (v22 == [v5 subContentType])
    {
      if (!-[BMSensitiveContentAnalysisMediaAnalysis hasHarms](self, "hasHarms") && ![v5 hasHarms])
      {
        v15 = 1;
        goto LABEL_25;
      }

      if (-[BMSensitiveContentAnalysisMediaAnalysis hasHarms](self, "hasHarms") && [v5 hasHarms])
      {
        v23 = [(BMSensitiveContentAnalysisMediaAnalysis *)self harms];
        v15 = v23 == [v5 harms];
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
  v6 = [(BMSensitiveContentAnalysisMediaAnalysis *)self clientBundleID];
  v7 = [(BMSensitiveContentAnalysisMediaAnalysis *)self trackingVersion];
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
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v10;
  v26[0] = v10;
  v25[1] = @"ageGroup";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v11;
  v26[1] = v11;
  v25[2] = @"isSensitive";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v20 = v12;
  v26[2] = v12;
  v25[3] = @"clientBundleID";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v4;
  v26[3] = v13;
  v25[4] = @"trackingVersion";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v14;
  v25[5] = @"subContentType";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = v15;
  v25[6] = @"harms";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_23;
    }

LABEL_33:

    if (v7)
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
  if (v7)
  {
    goto LABEL_24;
  }

LABEL_34:

LABEL_24:
  if (!v6)
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

- (BMSensitiveContentAnalysisMediaAnalysis)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v77[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"contentType"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v7 = 0;
        v14 = 0;
        v28 = self;
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
      *a4 = v13;
      goto LABEL_73;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"ageGroup"];
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

      if (a4)
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
        *a4 = v46;
        goto LABEL_75;
      }

      v9 = 0;
      v14 = 0;
LABEL_73:
      v28 = self;
      goto LABEL_54;
    }
  }

  v9 = 0;
LABEL_16:
  v15 = [v5 objectForKeyedSubscript:@"isSensitive"];
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

      if (a4)
      {
        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v48 = *MEMORY[0x1E698F240];
        v72 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"isSensitive"];
        v73 = v18;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
        v49 = [v47 initWithDomain:v48 code:2 userInfo:?];
        v63 = 0;
        v14 = 0;
        *a4 = v49;
LABEL_67:
        v28 = self;
        goto LABEL_52;
      }

      v63 = 0;
      v14 = 0;
      v39 = v59;
LABEL_75:
      v28 = self;
      goto LABEL_53;
    }
  }

  v63 = 0;
LABEL_19:
  v17 = [v5 objectForKeyedSubscript:@"clientBundleID"];
  v18 = a4;
  v58 = v17;
  if (!v17 || (v19 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v55 = 0;
LABEL_22:
    v20 = [v5 objectForKeyedSubscript:@"trackingVersion"];
    v57 = v7;
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v60 = 0;
          v14 = 0;
          v28 = self;
          v18 = v55;
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
        *v18 = v31;
        v28 = self;
        goto LABEL_77;
      }

      v60 = v20;
    }

    else
    {
      v60 = 0;
    }

    v21 = [v5 objectForKeyedSubscript:@"subContentType"];
    v54 = v6;
    if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = self;
      v23 = 0;
      goto LABEL_45;
    }

    v52 = v9;
    v22 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v21;
LABEL_44:
      v23 = v24;
LABEL_45:
      v32 = [v5 objectForKeyedSubscript:@"harms"];
      if (!v32 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v33 = 0;
LABEL_48:
        v34 = [v9 intValue];
        v35 = v9;
        v36 = [v63 intValue];
        v37 = [v23 intValue];
        v38 = v36;
        v9 = v35;
        v18 = v55;
        v14 = [(BMSensitiveContentAnalysisMediaAnalysis *)v22 initWithContentType:v57 ageGroup:v34 isSensitive:v38 clientBundleID:v55 trackingVersion:v60 subContentType:v37 harms:v33];
        v22 = v14;
LABEL_49:

        v28 = v22;
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

      if (v18)
      {
        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v53 = *MEMORY[0x1E698F240];
        v64 = *MEMORY[0x1E696A578];
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"harms"];
        v65 = v42;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        *v18 = [v62 initWithDomain:v53 code:2 userInfo:v43];
      }

      v33 = 0;
      v14 = 0;
LABEL_70:
      v18 = v55;
      goto LABEL_49;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [MEMORY[0x1E696AD98] numberWithInt:BMSensitiveContentAnalysisMediaAnalysisSubContentTypeFromString(v21)];
      goto LABEL_44;
    }

    if (a4)
    {
      v51 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = *MEMORY[0x1E698F240];
      v66 = *MEMORY[0x1E696A578];
      v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"subContentType"];
      v67 = v33;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      v23 = 0;
      v14 = 0;
      *v18 = [v51 initWithDomain:v50 code:2 userInfo:v32];
      v9 = v52;
      goto LABEL_70;
    }

    v23 = 0;
    v14 = 0;
    v28 = self;
    v6 = v54;
LABEL_77:
    v18 = v55;
    goto LABEL_50;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = v19;
    goto LABEL_22;
  }

  if (!a4)
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
  *a4 = v27;
  v18 = 0;
  v28 = self;
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
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = BMSensitiveContentAnalysisMediaAnalysis;
  v5 = [(BMEventBase *)&v54 init];
  if (!v5)
  {
    goto LABEL_102;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_100;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v55 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v27 = [v4 position] + 1;
            if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
            {
              v29 = [v4 data];
              [v29 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if (([v4 hasError] & 1) != 0 || v20 > 4)
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
          v41 = [v4 position] + 1;
          if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
          {
            v43 = [v4 data];
            [v43 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if ([v4 hasError])
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
      v51 = [v4 position];
      if (v51 >= [v4 length])
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
          v46 = [v4 position] + 1;
          if (v46 >= [v4 position] && (v47 = objc_msgSend(v4, "position") + 1, v47 <= objc_msgSend(v4, "length")))
          {
            v48 = [v4 data];
            [v48 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v20 > 3)
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
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v20 > 2)
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
      v33 = [v4 position] + 1;
      if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
      {
        v35 = [v4 data];
        [v35 getBytes:&v55 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
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

    if ([v4 hasError])
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
  if ([v4 hasError])
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
  v7 = [(BMSensitiveContentAnalysisMediaAnalysis *)self clientBundleID];
  v8 = [(BMSensitiveContentAnalysisMediaAnalysis *)self trackingVersion];
  v9 = BMSensitiveContentAnalysisMediaAnalysisSubContentTypeAsString([(BMSensitiveContentAnalysisMediaAnalysis *)self subContentType]);
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSensitiveContentAnalysisMediaAnalysis harms](self, "harms")}];
  v11 = [v3 initWithFormat:@"BMSensitiveContentAnalysisMediaAnalysis with contentType: %@, ageGroup: %@, isSensitive: %@, clientBundleID: %@, trackingVersion: %@, subContentType: %@, harms: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMSensitiveContentAnalysisMediaAnalysis)initWithContentType:(id)a3 ageGroup:(int)a4 isSensitive:(int)a5 clientBundleID:(id)a6 trackingVersion:(id)a7 subContentType:(int)a8 harms:(id)a9
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v23.receiver = self;
  v23.super_class = BMSensitiveContentAnalysisMediaAnalysis;
  v19 = [(BMEventBase *)&v23 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v15)
    {
      v19->_hasContentType = 1;
      v20 = [v15 intValue];
    }

    else
    {
      v19->_hasContentType = 0;
      v20 = -1;
    }

    v19->_contentType = v20;
    v19->_ageGroup = a4;
    v19->_isSensitive = a5;
    objc_storeStrong(&v19->_clientBundleID, a6);
    objc_storeStrong(&v19->_trackingVersion, a7);
    v19->_subContentType = a8;
    if (v18)
    {
      v19->_hasHarms = 1;
      v21 = [v18 intValue];
    }

    else
    {
      v19->_hasHarms = 0;
      v21 = -1;
    }

    v19->_harms = v21;
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