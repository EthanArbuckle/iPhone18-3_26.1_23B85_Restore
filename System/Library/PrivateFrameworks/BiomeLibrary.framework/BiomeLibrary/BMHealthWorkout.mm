@interface BMHealthWorkout
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMHealthWorkout)initWithIsFirstPartyDonation:(id)donation isIndoor:(id)indoor activityType:(id)type eventType:(int)eventType activityUUID:(id)d isUpdate:(id)update;
- (BMHealthWorkout)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

      isFirstPartyDonation = [(BMHealthWorkout *)self isFirstPartyDonation];
      if (isFirstPartyDonation != [v5 isFirstPartyDonation])
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

      isIndoor = [(BMHealthWorkout *)self isIndoor];
      if (isIndoor != [v5 isIndoor])
      {
        goto LABEL_27;
      }
    }

    activityType = [(BMHealthWorkout *)self activityType];
    activityType2 = [v5 activityType];
    v10 = activityType2;
    if (activityType == activityType2)
    {
    }

    else
    {
      activityType3 = [(BMHealthWorkout *)self activityType];
      activityType4 = [v5 activityType];
      v13 = [activityType3 isEqual:activityType4];

      if (!v13)
      {
        goto LABEL_27;
      }
    }

    eventType = [(BMHealthWorkout *)self eventType];
    if (eventType == [v5 eventType])
    {
      activityUUID = [(BMHealthWorkout *)self activityUUID];
      activityUUID2 = [v5 activityUUID];
      v18 = activityUUID2;
      if (activityUUID == activityUUID2)
      {
      }

      else
      {
        activityUUID3 = [(BMHealthWorkout *)self activityUUID];
        activityUUID4 = [v5 activityUUID];
        v21 = [activityUUID3 isEqual:activityUUID4];

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
        isUpdate = [(BMHealthWorkout *)self isUpdate];
        v14 = isUpdate ^ [v5 isUpdate] ^ 1;
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

  activityType = [(BMHealthWorkout *)self activityType];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMHealthWorkout eventType](self, "eventType")}];
  activityUUID = [(BMHealthWorkout *)self activityUUID];
  if ([(BMHealthWorkout *)self hasIsUpdate])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMHealthWorkout isUpdate](self, "isUpdate")}];
  }

  else
  {
    v8 = 0;
  }

  v22[0] = @"isFirstPartyDonation";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v21 = v3;
  v23[0] = null;
  v22[1] = @"isIndoor";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null2;
  v23[1] = null2;
  v22[2] = @"activityType";
  null3 = activityType;
  if (!activityType)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v22[3] = @"eventType";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22[4] = @"activityUUID";
  null5 = activityUUID;
  if (!activityUUID)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v22[5] = @"isUpdate";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (v8)
  {
    if (activityUUID)
    {
      goto LABEL_24;
    }
  }

  else
  {

    if (activityUUID)
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
    if (activityType)
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

  if (!activityType)
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

- (BMHealthWorkout)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v63[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"isFirstPartyDonation"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"isIndoor"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v20 = 0;
          v16 = 0;
          goto LABEL_50;
        }

        v22 = v8;
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v24 = *MEMORY[0x1E698F240];
        v60 = *MEMORY[0x1E696A578];
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isIndoor"];
        v61 = v25;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v26 = v23;
        v8 = v22;
        v27 = v24;
        error = v25;
        v20 = 0;
        v16 = 0;
        *errorCopy = [v26 initWithDomain:v27 code:2 userInfo:v10];
        goto LABEL_49;
      }

      v50 = v9;
    }

    else
    {
      v50 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"activityType"];
    selfCopy = self;
    v49 = v8;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v16 = 0;
          v20 = v50;
          goto LABEL_49;
        }

        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v29 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activityType"];
        v59 = v47;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v30 = [v28 initWithDomain:v29 code:2 userInfo:v11];
        error = 0;
        v16 = 0;
        *errorCopy2 = v30;
        v20 = v50;
LABEL_48:

        self = selfCopy;
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

    v11 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
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
          if (!error)
          {
            v47 = 0;
            v16 = 0;
            v20 = v50;
            error = v46;
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
          *error = v39;
          goto LABEL_58;
        }

        v47 = [MEMORY[0x1E696AD98] numberWithInt:BMHealthWorkoutEventTypeFromString(v11)];
      }
    }

    else
    {
      v47 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"activityUUID"];
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
      v14 = [dictionaryCopy objectForKeyedSubscript:@"isUpdate"];
      if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v15 = 0;
LABEL_19:
        error = v46;
        v16 = -[BMHealthWorkout initWithIsFirstPartyDonation:isIndoor:activityType:eventType:activityUUID:isUpdate:](selfCopy, "initWithIsFirstPartyDonation:isIndoor:activityType:eventType:activityUUID:isUpdate:", v49, v50, v46, [v47 intValue], v13, v15);
        selfCopy = v16;
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

      if (error)
      {
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v52 = *MEMORY[0x1E696A578];
        v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isUpdate"];
        v53 = v34;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        *error = [v44 initWithDomain:v40 code:2 userInfo:v35];
      }

      v15 = 0;
      v16 = 0;
LABEL_45:
      error = v46;
      goto LABEL_46;
    }

    if (error)
    {
      errorCopy3 = error;
      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      v32 = *MEMORY[0x1E698F240];
      v54 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activityUUID"];
      v55 = v15;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v33 = [v31 initWithDomain:v32 code:2 userInfo:v14];
      v13 = 0;
      v16 = 0;
      *errorCopy3 = v33;
      goto LABEL_45;
    }

    v13 = 0;
    v16 = 0;
LABEL_58:
    error = v46;
    goto LABEL_47;
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
    v16 = 0;
    goto LABEL_51;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy4 = error;
  v19 = *MEMORY[0x1E698F240];
  v62 = *MEMORY[0x1E696A578];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFirstPartyDonation"];
  v63[0] = v20;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
  v21 = [v17 initWithDomain:v19 code:2 userInfo:v9];
  v8 = 0;
  v16 = 0;
  *errorCopy4 = v21;
LABEL_50:

LABEL_51:
  v36 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMHealthWorkout *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v49.receiver = self;
  v49.super_class = BMHealthWorkout;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_80;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_78;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v50 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
          v35 = [fromCopy position] + 1;
          if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v31 = (v34 != 0) & ~[fromCopy hasError];
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
        v21 = [fromCopy position] + 1;
        if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      if (([fromCopy hasError] & 1) != 0 || v20 > 4)
      {
LABEL_72:
        LODWORD(v20) = 0;
      }

      v5->_eventType = v20;
LABEL_77:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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
        v28 = [fromCopy position] + 1;
        if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v31 = (v27 != 0) & ~[fromCopy hasError];
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
        v41 = [fromCopy position] + 1;
        if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
        {
          data5 = [fromCopy data];
          [data5 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v31 = (v40 != 0) & ~[fromCopy hasError];
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
  if ([fromCopy hasError])
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
  activityType = [(BMHealthWorkout *)self activityType];
  v7 = BMHealthWorkoutEventTypeAsString([(BMHealthWorkout *)self eventType]);
  activityUUID = [(BMHealthWorkout *)self activityUUID];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMHealthWorkout isUpdate](self, "isUpdate")}];
  v10 = [v3 initWithFormat:@"BMHealthWorkout with isFirstPartyDonation: %@, isIndoor: %@, activityType: %@, eventType: %@, activityUUID: %@, isUpdate: %@", v4, v5, activityType, v7, activityUUID, v9];

  return v10;
}

- (BMHealthWorkout)initWithIsFirstPartyDonation:(id)donation isIndoor:(id)indoor activityType:(id)type eventType:(int)eventType activityUUID:(id)d isUpdate:(id)update
{
  donationCopy = donation;
  indoorCopy = indoor;
  typeCopy = type;
  dCopy = d;
  updateCopy = update;
  v21.receiver = self;
  v21.super_class = BMHealthWorkout;
  v19 = [(BMEventBase *)&v21 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (donationCopy)
    {
      v19->_hasIsFirstPartyDonation = 1;
      v19->_isFirstPartyDonation = [donationCopy BOOLValue];
    }

    else
    {
      v19->_hasIsFirstPartyDonation = 0;
      v19->_isFirstPartyDonation = 0;
    }

    if (indoorCopy)
    {
      v19->_hasIsIndoor = 1;
      v19->_isIndoor = [indoorCopy BOOLValue];
    }

    else
    {
      v19->_hasIsIndoor = 0;
      v19->_isIndoor = 0;
    }

    objc_storeStrong(&v19->_activityType, type);
    v19->_eventType = eventType;
    objc_storeStrong(&v19->_activityUUID, d);
    if (updateCopy)
    {
      v19->_hasIsUpdate = 1;
      v19->_isUpdate = [updateCopy BOOLValue];
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version)
  {
    if (version != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMHealthWorkout;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMHealthWorkout_v0;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 24) = version;
  }

LABEL_9:

  return v9;
}

@end