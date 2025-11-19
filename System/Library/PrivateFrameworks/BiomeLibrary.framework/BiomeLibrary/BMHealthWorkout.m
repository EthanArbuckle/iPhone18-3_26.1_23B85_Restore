@interface BMHealthWorkout
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMHealthWorkout)initWithIsFirstPartyDonation:(id)a3 isIndoor:(id)a4 activityType:(id)a5 eventType:(int)a6 activityUUID:(id)a7 isUpdate:(id)a8;
- (BMHealthWorkout)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMHealthWorkout

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFirstPartyDonation" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isIndoor" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityType" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityUUID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isUpdate" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMHealthWorkout hasIsFirstPartyDonation](self, "hasIsFirstPartyDonation") || [v5 hasIsFirstPartyDonation])
    {
      if (![(BMHealthWorkout *)self hasIsFirstPartyDonation])
      {
        goto LABEL_27;
      }

      if (![v5 hasIsFirstPartyDonation])
      {
        goto LABEL_27;
      }

      v6 = [(BMHealthWorkout *)self isFirstPartyDonation];
      if (v6 != [v5 isFirstPartyDonation])
      {
        goto LABEL_27;
      }
    }

    if (-[BMHealthWorkout hasIsIndoor](self, "hasIsIndoor") || [v5 hasIsIndoor])
    {
      if (![(BMHealthWorkout *)self hasIsIndoor])
      {
        goto LABEL_27;
      }

      if (![v5 hasIsIndoor])
      {
        goto LABEL_27;
      }

      v7 = [(BMHealthWorkout *)self isIndoor];
      if (v7 != [v5 isIndoor])
      {
        goto LABEL_27;
      }
    }

    v8 = [(BMHealthWorkout *)self activityType];
    v9 = [v5 activityType];
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = [(BMHealthWorkout *)self activityType];
      v12 = [v5 activityType];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_27;
      }
    }

    v15 = [(BMHealthWorkout *)self eventType];
    if (v15 == [v5 eventType])
    {
      v16 = [(BMHealthWorkout *)self activityUUID];
      v17 = [v5 activityUUID];
      v18 = v17;
      if (v16 == v17)
      {
      }

      else
      {
        v19 = [(BMHealthWorkout *)self activityUUID];
        v20 = [v5 activityUUID];
        v21 = [v19 isEqual:v20];

        if (!v21)
        {
          goto LABEL_27;
        }
      }

      if (!-[BMHealthWorkout hasIsUpdate](self, "hasIsUpdate") && ![v5 hasIsUpdate])
      {
        LOBYTE(v14) = 1;
        goto LABEL_28;
      }

      if (-[BMHealthWorkout hasIsUpdate](self, "hasIsUpdate") && [v5 hasIsUpdate])
      {
        v22 = [(BMHealthWorkout *)self isUpdate];
        v14 = v22 ^ [v5 isUpdate] ^ 1;
LABEL_28:

        goto LABEL_29;
      }
    }

LABEL_27:
    LOBYTE(v14) = 0;
    goto LABEL_28;
  }

  LOBYTE(v14) = 0;
LABEL_29:

  return v14;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  if ([(BMHealthWorkout *)self hasIsFirstPartyDonation])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMHealthWorkout isFirstPartyDonation](self, "isFirstPartyDonation")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMHealthWorkout *)self hasIsIndoor])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMHealthWorkout isIndoor](self, "isIndoor")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(BMHealthWorkout *)self activityType];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMHealthWorkout eventType](self, "eventType")}];
  v7 = [(BMHealthWorkout *)self activityUUID];
  if ([(BMHealthWorkout *)self hasIsUpdate])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMHealthWorkout isUpdate](self, "isUpdate")}];
  }

  else
  {
    v8 = 0;
  }

  v22[0] = @"isFirstPartyDonation";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v21 = v3;
  v23[0] = v9;
  v22[1] = @"isIndoor";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v10;
  v23[1] = v10;
  v22[2] = @"activityType";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v11;
  v22[3] = @"eventType";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v12;
  v22[4] = @"activityUUID";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v13;
  v22[5] = @"isUpdate";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_24;
    }
  }

  else
  {

    if (v7)
    {
LABEL_24:
      if (v6)
      {
        goto LABEL_25;
      }

      goto LABEL_34;
    }
  }

  if (v6)
  {
LABEL_25:
    if (v5)
    {
      goto LABEL_26;
    }

LABEL_35:

    if (v4)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

LABEL_34:

  if (!v5)
  {
    goto LABEL_35;
  }

LABEL_26:
  if (v4)
  {
    goto LABEL_27;
  }

LABEL_36:

LABEL_27:
  if (!v21)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMHealthWorkout)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v63[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"isFirstPartyDonation"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"isIndoor"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v20 = 0;
          v16 = 0;
          goto LABEL_50;
        }

        v22 = v8;
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = a4;
        v24 = *MEMORY[0x1E698F240];
        v60 = *MEMORY[0x1E696A578];
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isIndoor"];
        v61 = v25;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v26 = v23;
        v8 = v22;
        v27 = v24;
        a4 = v25;
        v20 = 0;
        v16 = 0;
        *v41 = [v26 initWithDomain:v27 code:2 userInfo:v10];
        goto LABEL_49;
      }

      v50 = v9;
    }

    else
    {
      v50 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"activityType"];
    v51 = self;
    v49 = v8;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v16 = 0;
          v20 = v50;
          goto LABEL_49;
        }

        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = a4;
        v29 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activityType"];
        v59 = v47;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v30 = [v28 initWithDomain:v29 code:2 userInfo:v11];
        a4 = 0;
        v16 = 0;
        *v42 = v30;
        v20 = v50;
LABEL_48:

        self = v51;
        v8 = v49;
LABEL_49:

        goto LABEL_50;
      }

      v46 = v10;
    }

    else
    {
      v46 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"eventType"];
    v45 = v7;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = v11;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v47 = 0;
            v16 = 0;
            v20 = v50;
            a4 = v46;
            goto LABEL_48;
          }

          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"eventType"];
          v57 = v13;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v39 = [v48 initWithDomain:v38 code:2 userInfo:v12];
          v47 = 0;
          v16 = 0;
          *a4 = v39;
          goto LABEL_58;
        }

        v47 = [MEMORY[0x1E696AD98] numberWithInt:BMHealthWorkoutEventTypeFromString(v11)];
      }
    }

    else
    {
      v47 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"activityUUID"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
LABEL_16:
      v14 = [v6 objectForKeyedSubscript:@"isUpdate"];
      if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v15 = 0;
LABEL_19:
        a4 = v46;
        v16 = -[BMHealthWorkout initWithIsFirstPartyDonation:isIndoor:activityType:eventType:activityUUID:isUpdate:](v51, "initWithIsFirstPartyDonation:isIndoor:activityType:eventType:activityUUID:isUpdate:", v49, v50, v46, [v47 intValue], v13, v15);
        v51 = v16;
LABEL_46:

LABEL_47:
        v20 = v50;
        v7 = v45;
        goto LABEL_48;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
        goto LABEL_19;
      }

      if (a4)
      {
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v52 = *MEMORY[0x1E696A578];
        v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isUpdate"];
        v53 = v34;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        *a4 = [v44 initWithDomain:v40 code:2 userInfo:v35];
      }

      v15 = 0;
      v16 = 0;
LABEL_45:
      a4 = v46;
      goto LABEL_46;
    }

    if (a4)
    {
      v43 = a4;
      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      v32 = *MEMORY[0x1E698F240];
      v54 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activityUUID"];
      v55 = v15;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v33 = [v31 initWithDomain:v32 code:2 userInfo:v14];
      v13 = 0;
      v16 = 0;
      *v43 = v33;
      goto LABEL_45;
    }

    v13 = 0;
    v16 = 0;
LABEL_58:
    a4 = v46;
    goto LABEL_47;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v16 = 0;
    goto LABEL_51;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = a4;
  v19 = *MEMORY[0x1E698F240];
  v62 = *MEMORY[0x1E696A578];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFirstPartyDonation"];
  v63[0] = v20;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
  v21 = [v17 initWithDomain:v19 code:2 userInfo:v9];
  v8 = 0;
  v16 = 0;
  *v18 = v21;
LABEL_50:

LABEL_51:
  v36 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMHealthWorkout *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (self->_hasIsFirstPartyDonation)
  {
    isFirstPartyDonation = self->_isFirstPartyDonation;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsIndoor)
  {
    isIndoor = self->_isIndoor;
    PBDataWriterWriteBOOLField();
  }

  if (self->_activityType)
  {
    PBDataWriterWriteStringField();
  }

  eventType = self->_eventType;
  PBDataWriterWriteUint32Field();
  if (self->_activityUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsUpdate)
  {
    isUpdate = self->_isUpdate;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = BMHealthWorkout;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_80;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_78;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v50 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v50 & 0x7F) << v7;
        if ((v50 & 0x80) == 0)
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
        goto LABEL_78;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      if (v15 == 6)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v5->_hasIsUpdate = 1;
        while (1)
        {
          v50 = 0;
          v35 = [v4 position] + 1;
          if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
          {
            v37 = [v4 data];
            [v37 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v34 |= (v50 & 0x7F) << v32;
          if ((v50 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v13 = v33++ >= 9;
          if (v13)
          {
            LOBYTE(v31) = 0;
            goto LABEL_69;
          }
        }

        v31 = (v34 != 0) & ~[v4 hasError];
LABEL_69:
        v45 = 20;
        goto LABEL_76;
      }

      if (v15 == 5)
      {
        v16 = PBReaderReadString();
        v17 = 40;
LABEL_65:
        v44 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        goto LABEL_77;
      }

      if (v15 != 4)
      {
LABEL_53:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v50 = 0;
        v21 = [v4 position] + 1;
        if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
        {
          v23 = [v4 data];
          [v23 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v20 |= (v50 & 0x7F) << v18;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        if (v19++ > 8)
        {
          goto LABEL_72;
        }
      }

      if (([v4 hasError] & 1) != 0 || v20 > 4)
      {
LABEL_72:
        LODWORD(v20) = 0;
      }

      v5->_eventType = v20;
LABEL_77:
      v46 = [v4 position];
      if (v46 >= [v4 length])
      {
        goto LABEL_78;
      }
    }

    if (v15 == 1)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v5->_hasIsFirstPartyDonation = 1;
      while (1)
      {
        v50 = 0;
        v28 = [v4 position] + 1;
        if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
        {
          v30 = [v4 data];
          [v30 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v27 |= (v50 & 0x7F) << v25;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v25 += 7;
        v13 = v26++ >= 9;
        if (v13)
        {
          LOBYTE(v31) = 0;
          goto LABEL_67;
        }
      }

      v31 = (v27 != 0) & ~[v4 hasError];
LABEL_67:
      v45 = 16;
      goto LABEL_76;
    }

    if (v15 == 2)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v5->_hasIsIndoor = 1;
      while (1)
      {
        v50 = 0;
        v41 = [v4 position] + 1;
        if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
        {
          v43 = [v4 data];
          [v43 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v40 |= (v50 & 0x7F) << v38;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v38 += 7;
        v13 = v39++ >= 9;
        if (v13)
        {
          LOBYTE(v31) = 0;
          goto LABEL_75;
        }
      }

      v31 = (v40 != 0) & ~[v4 hasError];
LABEL_75:
      v45 = 18;
LABEL_76:
      *(&v5->super.super.isa + v45) = v31;
      goto LABEL_77;
    }

    if (v15 != 3)
    {
      goto LABEL_53;
    }

    v16 = PBReaderReadString();
    v17 = 32;
    goto LABEL_65;
  }

LABEL_78:
  if ([v4 hasError])
  {
LABEL_79:
    v47 = 0;
  }

  else
  {
LABEL_80:
    v47 = v5;
  }

  return v47;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMHealthWorkout isFirstPartyDonation](self, "isFirstPartyDonation")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMHealthWorkout isIndoor](self, "isIndoor")}];
  v6 = [(BMHealthWorkout *)self activityType];
  v7 = BMHealthWorkoutEventTypeAsString([(BMHealthWorkout *)self eventType]);
  v8 = [(BMHealthWorkout *)self activityUUID];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMHealthWorkout isUpdate](self, "isUpdate")}];
  v10 = [v3 initWithFormat:@"BMHealthWorkout with isFirstPartyDonation: %@, isIndoor: %@, activityType: %@, eventType: %@, activityUUID: %@, isUpdate: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMHealthWorkout)initWithIsFirstPartyDonation:(id)a3 isIndoor:(id)a4 activityType:(id)a5 eventType:(int)a6 activityUUID:(id)a7 isUpdate:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v21.receiver = self;
  v21.super_class = BMHealthWorkout;
  v19 = [(BMEventBase *)&v21 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v19->_hasIsFirstPartyDonation = 1;
      v19->_isFirstPartyDonation = [v14 BOOLValue];
    }

    else
    {
      v19->_hasIsFirstPartyDonation = 0;
      v19->_isFirstPartyDonation = 0;
    }

    if (v15)
    {
      v19->_hasIsIndoor = 1;
      v19->_isIndoor = [v15 BOOLValue];
    }

    else
    {
      v19->_hasIsIndoor = 0;
      v19->_isIndoor = 0;
    }

    objc_storeStrong(&v19->_activityType, a5);
    v19->_eventType = a6;
    objc_storeStrong(&v19->_activityUUID, a7);
    if (v18)
    {
      v19->_hasIsUpdate = 1;
      v19->_isUpdate = [v18 BOOLValue];
    }

    else
    {
      v19->_hasIsUpdate = 0;
      v19->_isUpdate = 0;
    }
  }

  return v19;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFirstPartyDonation" number:1 type:12 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isIndoor" number:2 type:12 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityType" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventType" number:4 type:4 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityUUID" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isUpdate" number:6 type:12 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  if (a4)
  {
    if (a4 != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMHealthWorkout;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMHealthWorkout_v0;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 24) = a4;
  }

LABEL_9:

  return v9;
}

@end