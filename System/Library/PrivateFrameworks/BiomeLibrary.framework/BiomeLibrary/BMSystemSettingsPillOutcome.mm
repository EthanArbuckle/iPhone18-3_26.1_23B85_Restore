@interface BMSystemSettingsPillOutcome
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSystemSettingsPillOutcome)initWithChildAccount:(id)account firstUpdate:(id)update fromPill:(id)pill gesture:(id)gesture gestureOn:(id)on;
- (BMSystemSettingsPillOutcome)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSystemSettingsPillOutcome

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMSystemSettingsPillOutcome hasChildAccount](self, "hasChildAccount") || [v5 hasChildAccount])
    {
      if (![(BMSystemSettingsPillOutcome *)self hasChildAccount])
      {
        goto LABEL_27;
      }

      if (![v5 hasChildAccount])
      {
        goto LABEL_27;
      }

      childAccount = [(BMSystemSettingsPillOutcome *)self childAccount];
      if (childAccount != [v5 childAccount])
      {
        goto LABEL_27;
      }
    }

    if (-[BMSystemSettingsPillOutcome hasFirstUpdate](self, "hasFirstUpdate") || [v5 hasFirstUpdate])
    {
      if (![(BMSystemSettingsPillOutcome *)self hasFirstUpdate])
      {
        goto LABEL_27;
      }

      if (![v5 hasFirstUpdate])
      {
        goto LABEL_27;
      }

      firstUpdate = [(BMSystemSettingsPillOutcome *)self firstUpdate];
      if (firstUpdate != [v5 firstUpdate])
      {
        goto LABEL_27;
      }
    }

    if (-[BMSystemSettingsPillOutcome hasFromPill](self, "hasFromPill") || [v5 hasFromPill])
    {
      if (![(BMSystemSettingsPillOutcome *)self hasFromPill])
      {
        goto LABEL_27;
      }

      if (![v5 hasFromPill])
      {
        goto LABEL_27;
      }

      fromPill = [(BMSystemSettingsPillOutcome *)self fromPill];
      if (fromPill != [v5 fromPill])
      {
        goto LABEL_27;
      }
    }

    gesture = [(BMSystemSettingsPillOutcome *)self gesture];
    gesture2 = [v5 gesture];
    v11 = gesture2;
    if (gesture == gesture2)
    {
    }

    else
    {
      gesture3 = [(BMSystemSettingsPillOutcome *)self gesture];
      gesture4 = [v5 gesture];
      v14 = [gesture3 isEqual:gesture4];

      if (!v14)
      {
        goto LABEL_27;
      }
    }

    if (!-[BMSystemSettingsPillOutcome hasGestureOn](self, "hasGestureOn") && ![v5 hasGestureOn])
    {
      LOBYTE(v15) = 1;
      goto LABEL_28;
    }

    if (-[BMSystemSettingsPillOutcome hasGestureOn](self, "hasGestureOn") && [v5 hasGestureOn])
    {
      gestureOn = [(BMSystemSettingsPillOutcome *)self gestureOn];
      v15 = gestureOn ^ [v5 gestureOn] ^ 1;
LABEL_28:

      goto LABEL_29;
    }

LABEL_27:
    LOBYTE(v15) = 0;
    goto LABEL_28;
  }

  LOBYTE(v15) = 0;
LABEL_29:

  return v15;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  if ([(BMSystemSettingsPillOutcome *)self hasChildAccount])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsPillOutcome childAccount](self, "childAccount")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSystemSettingsPillOutcome *)self hasFirstUpdate])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsPillOutcome firstUpdate](self, "firstUpdate")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMSystemSettingsPillOutcome *)self hasFromPill])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsPillOutcome fromPill](self, "fromPill")}];
  }

  else
  {
    v5 = 0;
  }

  gesture = [(BMSystemSettingsPillOutcome *)self gesture];
  if ([(BMSystemSettingsPillOutcome *)self hasGestureOn])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsPillOutcome gestureOn](self, "gestureOn")}];
  }

  else
  {
    v7 = 0;
  }

  v18 = @"childAccount";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"firstUpdate";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"fromPill";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"gesture";
  null4 = gesture;
  if (!gesture)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"gestureOn";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (gesture)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if (gesture)
    {
LABEL_25:
      if (v5)
      {
        goto LABEL_26;
      }

      goto LABEL_33;
    }
  }

  if (v5)
  {
LABEL_26:
    if (v4)
    {
      goto LABEL_27;
    }

LABEL_34:

    if (v3)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

LABEL_33:

  if (!v4)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (v3)
  {
    goto LABEL_28;
  }

LABEL_35:

LABEL_28:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMSystemSettingsPillOutcome)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v52[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"childAccount"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"firstUpdate"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_20;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v24 = *MEMORY[0x1E698F240];
        v49 = *MEMORY[0x1E696A578];
        v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"firstUpdate"];
        v50 = v41;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v25 = [v23 initWithDomain:v24 code:2 userInfo:v10];
        error = 0;
        v15 = 0;
        *errorCopy = v25;
        goto LABEL_19;
      }

      v39 = v9;
    }

    else
    {
      v39 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"fromPill"];
    v40 = v8;
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v41 = 0;
          v15 = 0;
          error = v39;
          goto LABEL_19;
        }

        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"fromPill"];
        v48 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v28 = [v26 initWithDomain:v27 code:2 userInfo:v11];
        v41 = 0;
        v15 = 0;
        errorCopy2 = error;
        error = v39;
        *errorCopy2 = v28;
LABEL_18:

        self = selfCopy;
        v8 = v40;
LABEL_19:

        goto LABEL_20;
      }

      v41 = v10;
    }

    else
    {
      v41 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"gesture"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v15 = 0;
          error = v39;
          goto LABEL_18;
        }

        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy3 = error;
        v31 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"gesture"];
        v46 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v32 = [v30 initWithDomain:v31 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        error = v39;
        *errorCopy3 = v32;
        goto LABEL_17;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"gestureOn"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v43 = *MEMORY[0x1E696A578];
          v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"gestureOn"];
          v44 = v33;
          v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          *error = [v38 initWithDomain:v35 code:2 userInfo:v34];
        }

        v14 = 0;
        v15 = 0;
        error = v39;
        goto LABEL_17;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    error = v39;
    v15 = [(BMSystemSettingsPillOutcome *)selfCopy initWithChildAccount:v40 firstUpdate:v39 fromPill:v41 gesture:v12 gestureOn:v14];
    selfCopy = v15;
LABEL_17:

    goto LABEL_18;
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
    v15 = 0;
    goto LABEL_21;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy4 = error;
  v20 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"childAccount"];
  v52[0] = v21;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v22 = v20;
  error = v21;
  v8 = 0;
  v15 = 0;
  *errorCopy4 = [v18 initWithDomain:v22 code:2 userInfo:v9];
LABEL_20:

LABEL_21:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSystemSettingsPillOutcome *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasChildAccount)
  {
    childAccount = self->_childAccount;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasFirstUpdate)
  {
    firstUpdate = self->_firstUpdate;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasFromPill)
  {
    fromPill = self->_fromPill;
    PBDataWriterWriteBOOLField();
  }

  if (self->_gesture)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasGestureOn)
  {
    gestureOn = self->_gestureOn;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v47.receiver = self;
  v47.super_class = BMSystemSettingsPillOutcome;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_75;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_73;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v48 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
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
        goto LABEL_73;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v5->_hasChildAccount = 1;
          while (1)
          {
            v48 = 0;
            v40 = [fromCopy position] + 1;
            if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v39 |= (v48 & 0x7F) << v37;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v13 = v38++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_66;
            }
          }

          v22 = (v39 != 0) & ~[fromCopy hasError];
LABEL_66:
          v43 = 16;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_61:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_74;
            }

            goto LABEL_72;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasFirstUpdate = 1;
          while (1)
          {
            v48 = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (v48 & 0x7F) << v23;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_70;
            }
          }

          v22 = (v25 != 0) & ~[fromCopy hasError];
LABEL_70:
          v43 = 18;
        }

        goto LABEL_71;
      }

      if (v15 == 3)
      {
        break;
      }

      if (v15 != 4)
      {
        if (v15 != 5)
        {
          goto LABEL_61;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasGestureOn = 1;
        while (1)
        {
          v48 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v48 & 0x7F) << v16;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_68;
          }
        }

        v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_68:
        v43 = 22;
        goto LABEL_71;
      }

      v35 = PBReaderReadString();
      gesture = v5->_gesture;
      v5->_gesture = v35;

LABEL_72:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_73;
      }
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    v5->_hasFromPill = 1;
    while (1)
    {
      v48 = 0;
      v32 = [fromCopy position] + 1;
      if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
      {
        data5 = [fromCopy data];
        [data5 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v31 |= (v48 & 0x7F) << v29;
      if ((v48 & 0x80) == 0)
      {
        break;
      }

      v29 += 7;
      v13 = v30++ >= 9;
      if (v13)
      {
        LOBYTE(v22) = 0;
        goto LABEL_64;
      }
    }

    v22 = (v31 != 0) & ~[fromCopy hasError];
LABEL_64:
    v43 = 20;
LABEL_71:
    *(&v5->super.super.isa + v43) = v22;
    goto LABEL_72;
  }

LABEL_73:
  if ([fromCopy hasError])
  {
LABEL_74:
    v45 = 0;
  }

  else
  {
LABEL_75:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsPillOutcome childAccount](self, "childAccount")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsPillOutcome firstUpdate](self, "firstUpdate")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsPillOutcome fromPill](self, "fromPill")}];
  gesture = [(BMSystemSettingsPillOutcome *)self gesture];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsPillOutcome gestureOn](self, "gestureOn")}];
  v9 = [v3 initWithFormat:@"BMSystemSettingsPillOutcome with childAccount: %@, firstUpdate: %@, fromPill: %@, gesture: %@, gestureOn: %@", v4, v5, v6, gesture, v8];

  return v9;
}

- (BMSystemSettingsPillOutcome)initWithChildAccount:(id)account firstUpdate:(id)update fromPill:(id)pill gesture:(id)gesture gestureOn:(id)on
{
  accountCopy = account;
  updateCopy = update;
  pillCopy = pill;
  gestureCopy = gesture;
  onCopy = on;
  v19.receiver = self;
  v19.super_class = BMSystemSettingsPillOutcome;
  v17 = [(BMEventBase *)&v19 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (accountCopy)
    {
      v17->_hasChildAccount = 1;
      v17->_childAccount = [accountCopy BOOLValue];
    }

    else
    {
      v17->_hasChildAccount = 0;
      v17->_childAccount = 0;
    }

    if (updateCopy)
    {
      v17->_hasFirstUpdate = 1;
      v17->_firstUpdate = [updateCopy BOOLValue];
    }

    else
    {
      v17->_hasFirstUpdate = 0;
      v17->_firstUpdate = 0;
    }

    if (pillCopy)
    {
      v17->_hasFromPill = 1;
      v17->_fromPill = [pillCopy BOOLValue];
    }

    else
    {
      v17->_hasFromPill = 0;
      v17->_fromPill = 0;
    }

    objc_storeStrong(&v17->_gesture, gesture);
    if (onCopy)
    {
      v17->_hasGestureOn = 1;
      v17->_gestureOn = [onCopy BOOLValue];
    }

    else
    {
      v17->_hasGestureOn = 0;
      v17->_gestureOn = 0;
    }
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"childAccount" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"firstUpdate" number:2 type:12 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fromPill" number:3 type:12 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"gesture" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"gestureOn" number:5 type:12 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"childAccount" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"firstUpdate" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fromPill" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"gesture" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"gestureOn" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
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

    v8 = [[BMSystemSettingsPillOutcome alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end