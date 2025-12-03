@interface BMSystemSettingsAppearanceSetup
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSystemSettingsAppearanceSetup)initWithChoice:(id)choice childSetup:(id)setup childChoice:(id)childChoice childAge:(id)age;
- (BMSystemSettingsAppearanceSetup)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSystemSettingsAppearanceSetup

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    choice = [(BMSystemSettingsAppearanceSetup *)self choice];
    choice2 = [v5 choice];
    v8 = choice2;
    if (choice == choice2)
    {
    }

    else
    {
      choice3 = [(BMSystemSettingsAppearanceSetup *)self choice];
      choice4 = [v5 choice];
      v11 = [choice3 isEqual:choice4];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    if (-[BMSystemSettingsAppearanceSetup hasChildSetup](self, "hasChildSetup") || [v5 hasChildSetup])
    {
      if (![(BMSystemSettingsAppearanceSetup *)self hasChildSetup])
      {
        goto LABEL_21;
      }

      if (![v5 hasChildSetup])
      {
        goto LABEL_21;
      }

      childSetup = [(BMSystemSettingsAppearanceSetup *)self childSetup];
      if (childSetup != [v5 childSetup])
      {
        goto LABEL_21;
      }
    }

    childChoice = [(BMSystemSettingsAppearanceSetup *)self childChoice];
    childChoice2 = [v5 childChoice];
    v16 = childChoice2;
    if (childChoice == childChoice2)
    {
    }

    else
    {
      childChoice3 = [(BMSystemSettingsAppearanceSetup *)self childChoice];
      childChoice4 = [v5 childChoice];
      v19 = [childChoice3 isEqual:childChoice4];

      if (!v19)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMSystemSettingsAppearanceSetup hasChildAge](self, "hasChildAge") && ![v5 hasChildAge])
    {
      v12 = 1;
      goto LABEL_22;
    }

    if (-[BMSystemSettingsAppearanceSetup hasChildAge](self, "hasChildAge") && [v5 hasChildAge])
    {
      childAge = [(BMSystemSettingsAppearanceSetup *)self childAge];
      v12 = childAge == [v5 childAge];
LABEL_22:

      goto LABEL_23;
    }

LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  choice = [(BMSystemSettingsAppearanceSetup *)self choice];
  if ([(BMSystemSettingsAppearanceSetup *)self hasChildSetup])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsAppearanceSetup childSetup](self, "childSetup")}];
  }

  else
  {
    v4 = 0;
  }

  childChoice = [(BMSystemSettingsAppearanceSetup *)self childChoice];
  if ([(BMSystemSettingsAppearanceSetup *)self hasChildAge])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSystemSettingsAppearanceSetup childAge](self, "childAge")}];
  }

  else
  {
    v6 = 0;
  }

  v14[0] = @"choice";
  null = choice;
  if (!choice)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"childSetup";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"childChoice";
  null3 = childChoice;
  if (!childChoice)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"childAge";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (childChoice)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (childChoice)
    {
LABEL_17:
      if (v4)
      {
        goto LABEL_18;
      }

LABEL_24:

      if (choice)
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }
  }

  if (!v4)
  {
    goto LABEL_24;
  }

LABEL_18:
  if (choice)
  {
    goto LABEL_19;
  }

LABEL_25:

LABEL_19:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMSystemSettingsAppearanceSetup)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"choice"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"childSetup"];
    v32 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_16;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v37 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"childSetup"];
        v38 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v15 = 0;
        *error = [v21 initWithDomain:v22 code:2 userInfo:v10];
        error = 0;
        goto LABEL_15;
      }

      v31 = v9;
    }

    else
    {
      v31 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"childChoice"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v15 = 0;
          error = v31;
          goto LABEL_15;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v24 = *MEMORY[0x1E698F240];
        v35 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"childChoice"];
        v36 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v25 = [v23 initWithDomain:v24 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        error = v31;
        *errorCopy = v25;
        goto LABEL_14;
      }

      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"childAge"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v33 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"childAge"];
          v34 = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          *error = [v30 initWithDomain:v28 code:2 userInfo:v27];
        }

        v14 = 0;
        v15 = 0;
        error = v31;
        goto LABEL_14;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    error = v31;
    v15 = [(BMSystemSettingsAppearanceSetup *)selfCopy initWithChoice:v8 childSetup:v31 childChoice:v12 childAge:v14];
    selfCopy = v15;
LABEL_14:

    self = selfCopy;
LABEL_15:

    v7 = v32;
    goto LABEL_16;
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
    goto LABEL_17;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v39 = *MEMORY[0x1E696A578];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"choice"];
  v40[0] = v20;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v8 = 0;
  v15 = 0;
  *error = [v18 initWithDomain:v19 code:2 userInfo:v9];
  error = v20;
LABEL_16:

LABEL_17:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSystemSettingsAppearanceSetup *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_choice)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_hasChildSetup)
  {
    childSetup = self->_childSetup;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_childChoice)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_hasChildAge)
  {
    childAge = self->_childAge;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v36.receiver = self;
  v36.super_class = BMSystemSettingsAppearanceSetup;
  v5 = [(BMEventBase *)&v36 init];
  if (!v5)
  {
    goto LABEL_55;
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
        v37 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v37 & 0x7F) << v7;
        if ((v37 & 0x80) == 0)
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
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v30 = PBReaderReadString();
          v31 = 40;
          goto LABEL_45;
        }

        if (v15 != 4)
        {
LABEL_41:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_54;
          }

          goto LABEL_52;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasChildAge = 1;
        while (1)
        {
          v37 = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v37 & 0x7F) << v23;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            v29 = 0;
            goto LABEL_51;
          }
        }

        if ([fromCopy hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_51:
        v5->_childAge = v29;
      }

      else
      {
        if (v15 == 1)
        {
          v30 = PBReaderReadString();
          v31 = 32;
LABEL_45:
          v32 = *(&v5->super.super.isa + v31);
          *(&v5->super.super.isa + v31) = v30;

          goto LABEL_52;
        }

        if (v15 != 2)
        {
          goto LABEL_41;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasChildSetup = 1;
        while (1)
        {
          v37 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v37 & 0x7F) << v16;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_47;
          }
        }

        v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_47:
        v5->_childSetup = v22;
      }

LABEL_52:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_54:
    v34 = 0;
  }

  else
  {
LABEL_55:
    v34 = v5;
  }

  return v34;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  choice = [(BMSystemSettingsAppearanceSetup *)self choice];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsAppearanceSetup childSetup](self, "childSetup")}];
  childChoice = [(BMSystemSettingsAppearanceSetup *)self childChoice];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSystemSettingsAppearanceSetup childAge](self, "childAge")}];
  v8 = [v3 initWithFormat:@"BMSystemSettingsAppearanceSetup with choice: %@, childSetup: %@, childChoice: %@, childAge: %@", choice, v5, childChoice, v7];

  return v8;
}

- (BMSystemSettingsAppearanceSetup)initWithChoice:(id)choice childSetup:(id)setup childChoice:(id)childChoice childAge:(id)age
{
  choiceCopy = choice;
  setupCopy = setup;
  childChoiceCopy = childChoice;
  ageCopy = age;
  v18.receiver = self;
  v18.super_class = BMSystemSettingsAppearanceSetup;
  v15 = [(BMEventBase *)&v18 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_choice, choice);
    if (setupCopy)
    {
      v15->_hasChildSetup = 1;
      v15->_childSetup = [setupCopy BOOLValue];
    }

    else
    {
      v15->_hasChildSetup = 0;
      v15->_childSetup = 0;
    }

    objc_storeStrong(&v15->_childChoice, childChoice);
    if (ageCopy)
    {
      v15->_hasChildAge = 1;
      unsignedIntValue = [ageCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v15->_hasChildAge = 0;
    }

    v15->_childAge = unsignedIntValue;
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"choice" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"childSetup" number:2 type:12 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"childChoice" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"childAge" number:4 type:4 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"choice" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"childSetup" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"childChoice" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"childAge" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMSystemSettingsAppearanceSetup alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end