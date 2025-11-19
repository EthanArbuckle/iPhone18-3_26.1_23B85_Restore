@interface BMMapsRecentConversationsIntent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMapsRecentConversationsIntent)initWithContactInformation:(id)a3 actionType:(int)a4 predictionTimestamp:(id)a5 predictionExpiration:(id)a6 bundleID:(id)a7;
- (BMMapsRecentConversationsIntent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)predictionExpiration;
- (NSDate)predictionTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMapsRecentConversationsIntent

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"contactInformation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_244_83594];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actionType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predictionTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predictionExpiration" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:2];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMapsRecentConversationsIntent *)self contactInformation];
    v7 = [v5 contactInformation];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMapsRecentConversationsIntent *)self contactInformation];
      v10 = [v5 contactInformation];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_14;
      }
    }

    v13 = [(BMMapsRecentConversationsIntent *)self actionType];
    if (v13 == [v5 actionType])
    {
      v14 = [(BMMapsRecentConversationsIntent *)self predictionTimestamp];
      v15 = [v5 predictionTimestamp];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMMapsRecentConversationsIntent *)self predictionTimestamp];
        v18 = [v5 predictionTimestamp];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_14;
        }
      }

      v20 = [(BMMapsRecentConversationsIntent *)self predictionExpiration];
      v21 = [v5 predictionExpiration];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMMapsRecentConversationsIntent *)self predictionExpiration];
        v24 = [v5 predictionExpiration];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_14;
        }
      }

      v27 = [(BMMapsRecentConversationsIntent *)self bundleID];
      v28 = [v5 bundleID];
      if (v27 == v28)
      {
        v12 = 1;
      }

      else
      {
        v29 = [(BMMapsRecentConversationsIntent *)self bundleID];
        v30 = [v5 bundleID];
        v12 = [v29 isEqual:v30];
      }

      goto LABEL_15;
    }

LABEL_14:
    v12 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (NSDate)predictionExpiration
{
  if (self->_hasRaw_predictionExpiration)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_predictionExpiration];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)predictionTimestamp
{
  if (self->_hasRaw_predictionTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_predictionTimestamp];
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
  v30[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMMapsRecentConversationsIntent *)self contactInformation];
  v4 = [v3 jsonDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMapsRecentConversationsIntent actionType](self, "actionType")}];
  v6 = [(BMMapsRecentConversationsIntent *)self predictionTimestamp];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(BMMapsRecentConversationsIntent *)self predictionTimestamp];
    [v8 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(BMMapsRecentConversationsIntent *)self predictionExpiration];
  if (v10)
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = [(BMMapsRecentConversationsIntent *)self predictionExpiration];
    [v12 timeIntervalSince1970];
    v13 = [v11 numberWithDouble:?];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(BMMapsRecentConversationsIntent *)self bundleID];
  v25 = @"contactInformation";
  v15 = v4;
  if (!v4)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v15;
  v30[0] = v15;
  v26 = @"actionType";
  v16 = v5;
  if (!v5)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v30[1] = v16;
  v27 = @"predictionTimestamp";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v30[2] = v17;
  v28 = @"predictionExpiration";
  v18 = v13;
  if (!v13)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v30[3] = v18;
  v29 = @"bundleID";
  v19 = v14;
  if (!v14)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v30[4] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v25 count:{5, v23}];
  if (v14)
  {
    if (v13)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v13)
    {
LABEL_19:
      if (v9)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  if (v9)
  {
LABEL_20:
    if (v5)
    {
      goto LABEL_21;
    }

LABEL_28:

    if (v4)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:

  if (!v5)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_22:
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BMMapsRecentConversationsIntent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v62[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"contactInformation"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v51 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v52 = 0;
    v51 = [[BMMapsRecentConversationsIntentContactInformation alloc] initWithJSONDictionary:v9 error:&v52];
    v10 = v52;
    if (v10)
    {
      if (a4)
      {
        v10 = v10;
        *a4 = v10;
      }

      v11 = 0;
      goto LABEL_43;
    }

LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"actionType"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v9 = 0;
            v11 = 0;
            goto LABEL_42;
          }

          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = *MEMORY[0x1E698F240];
          v59 = *MEMORY[0x1E696A578];
          v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"actionType"];
          v60 = v48;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v50 = 0;
          v11 = 0;
          *a4 = [v38 initWithDomain:v39 code:2 userInfo:v15];
LABEL_41:

          v9 = v50;
LABEL_42:

          goto LABEL_43;
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInt:BMMapsRecentConversationsIntentActionTypeFromString(v8)];
      }

      v50 = v12;
    }

    else
    {
      v50 = 0;
    }

    v47 = a4;
    v15 = [v6 objectForKeyedSubscript:@"predictionTimestamp"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = MEMORY[0x1E695DF00];
        v17 = v15;
        v18 = [v16 alloc];
        [v17 doubleValue];
        v20 = v19;

        v21 = [v18 initWithTimeIntervalSince1970:v20];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v48 = [v22 dateFromString:v15];

          goto LABEL_27;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v48 = 0;
            v11 = 0;
            goto LABEL_41;
          }

          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v57 = *MEMORY[0x1E696A578];
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"predictionTimestamp"];
          v58 = v24;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          v41 = [v49 initWithDomain:v40 code:2 userInfo:v23];
          v48 = 0;
          v11 = 0;
          *v47 = v41;
          goto LABEL_40;
        }

        v21 = v15;
      }

      v48 = v21;
    }

    else
    {
      v48 = 0;
    }

LABEL_27:
    v23 = [v6 objectForKeyedSubscript:@"predictionExpiration"];
    if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v24 = 0;
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = MEMORY[0x1E695DF00];
      v26 = v23;
      v27 = [v25 alloc];
      [v26 doubleValue];
      v29 = v28;

      v30 = [v27 initWithTimeIntervalSince1970:v29];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v24 = [v31 dateFromString:v23];

LABEL_35:
        v32 = [v6 objectForKeyedSubscript:@"bundleID"];
        if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v47)
            {
              v45 = objc_alloc(MEMORY[0x1E696ABC0]);
              v44 = *MEMORY[0x1E698F240];
              v53 = *MEMORY[0x1E696A578];
              v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
              v54 = v36;
              v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
              *v47 = [v45 initWithDomain:v44 code:2 userInfo:v37];
            }

            v33 = 0;
            v11 = 0;
            goto LABEL_39;
          }

          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        v11 = -[BMMapsRecentConversationsIntent initWithContactInformation:actionType:predictionTimestamp:predictionExpiration:bundleID:](self, "initWithContactInformation:actionType:predictionTimestamp:predictionExpiration:bundleID:", v51, [v50 intValue], v48, v24, v33);
        self = v11;
LABEL_39:

LABEL_40:
        goto LABEL_41;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v47)
        {
          v24 = 0;
          v11 = 0;
          goto LABEL_40;
        }

        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v55 = *MEMORY[0x1E696A578];
        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"predictionExpiration"];
        v56 = v33;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v43 = [v46 initWithDomain:v42 code:2 userInfo:v32];
        v24 = 0;
        v11 = 0;
        *v47 = v43;
        goto LABEL_39;
      }

      v30 = v23;
    }

    v24 = v30;
    goto LABEL_35;
  }

  if (!a4)
  {
    v11 = 0;
    goto LABEL_44;
  }

  v13 = objc_alloc(MEMORY[0x1E696ABC0]);
  v14 = *MEMORY[0x1E698F240];
  v61 = *MEMORY[0x1E696A578];
  v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"contactInformation"];
  v62[0] = v51;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
  v11 = 0;
  *a4 = [v13 initWithDomain:v14 code:2 userInfo:v9];
LABEL_43:

LABEL_44:
  v34 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMapsRecentConversationsIntent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_contactInformation)
  {
    PBDataWriterPlaceMark();
    [(BMMapsRecentConversationsIntentContactInformation *)self->_contactInformation writeTo:v4];
    PBDataWriterRecallMark();
  }

  actionType = self->_actionType;
  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_predictionTimestamp)
  {
    raw_predictionTimestamp = self->_raw_predictionTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_predictionExpiration)
  {
    raw_predictionExpiration = self->_raw_predictionExpiration;
    PBDataWriterWriteDoubleField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = BMMapsRecentConversationsIntent;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_57;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v39 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v39[0] & 0x7F) << v7;
        if ((v39[0] & 0x80) == 0)
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v39[0] = 0;
          v39[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_56;
          }

          v29 = [[BMMapsRecentConversationsIntentContactInformation alloc] initByReadFrom:v4];
          if (!v29)
          {
            goto LABEL_56;
          }

          contactInformation = v5->_contactInformation;
          v5->_contactInformation = v29;

          PBReaderRecallMark();
        }

        else
        {
          if (v15 != 2)
          {
LABEL_43:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_56;
            }

            goto LABEL_54;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v39[0]) = 0;
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:v39 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (v39[0] & 0x7F) << v18;
            if ((v39[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            if (v19++ > 8)
            {
              goto LABEL_47;
            }
          }

          if (([v4 hasError] & 1) != 0 || v20 > 0x12)
          {
LABEL_47:
            LODWORD(v20) = 0;
          }

          v5->_actionType = v20;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v5->_hasRaw_predictionTimestamp = 1;
          v39[0] = 0;
          v25 = [v4 position] + 8;
          if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
          {
            v31 = [v4 data];
            [v31 getBytes:v39 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v32 = v39[0];
          v33 = 24;
          goto LABEL_53;
        }

        if (v15 == 4)
        {
          v5->_hasRaw_predictionExpiration = 1;
          v39[0] = 0;
          v27 = [v4 position] + 8;
          if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 8, v28 <= objc_msgSend(v4, "length")))
          {
            v34 = [v4 data];
            [v34 getBytes:v39 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v32 = v39[0];
          v33 = 40;
LABEL_53:
          *(&v5->super.super.isa + v33) = v32;
          goto LABEL_54;
        }

        if (v15 != 5)
        {
          goto LABEL_43;
        }

        v16 = PBReaderReadString();
        bundleID = v5->_bundleID;
        v5->_bundleID = v16;
      }

LABEL_54:
      v35 = [v4 position];
    }

    while (v35 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_56:
    v36 = 0;
  }

  else
  {
LABEL_57:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMapsRecentConversationsIntent *)self contactInformation];
  v5 = BMMapsRecentConversationsIntentActionTypeAsString([(BMMapsRecentConversationsIntent *)self actionType]);
  v6 = [(BMMapsRecentConversationsIntent *)self predictionTimestamp];
  v7 = [(BMMapsRecentConversationsIntent *)self predictionExpiration];
  v8 = [(BMMapsRecentConversationsIntent *)self bundleID];
  v9 = [v3 initWithFormat:@"BMMapsRecentConversationsIntent with contactInformation: %@, actionType: %@, predictionTimestamp: %@, predictionExpiration: %@, bundleID: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMMapsRecentConversationsIntent)initWithContactInformation:(id)a3 actionType:(int)a4 predictionTimestamp:(id)a5 predictionExpiration:(id)a6 bundleID:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = BMMapsRecentConversationsIntent;
  v17 = [(BMEventBase *)&v21 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_contactInformation, a3);
    v17->_actionType = a4;
    if (v14)
    {
      v17->_hasRaw_predictionTimestamp = 1;
      [v14 timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_predictionTimestamp = 0;
      v18 = -1.0;
    }

    v17->_raw_predictionTimestamp = v18;
    if (v15)
    {
      v17->_hasRaw_predictionExpiration = 1;
      [v15 timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_predictionExpiration = 0;
      v19 = -1.0;
    }

    v17->_raw_predictionExpiration = v19;
    objc_storeStrong(&v17->_bundleID, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactInformation" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actionType" number:2 type:4 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictionTimestamp" number:3 type:0 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictionExpiration" number:4 type:0 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __42__BMMapsRecentConversationsIntent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 contactInformation];
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

    v8 = [[BMMapsRecentConversationsIntent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[12] = 0;
    }
  }

  return v4;
}

@end