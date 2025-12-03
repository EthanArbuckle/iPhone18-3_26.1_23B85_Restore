@interface BMSystemSettingsMultitasking
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSystemSettingsMultitasking)initWithChildAccount:(id)account firstUpdate:(id)update buddySetup:(id)setup buddySetupMultitaskingOff:(id)off multitaskingOption:(id)option source:(id)source;
- (BMSystemSettingsMultitasking)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSystemSettingsMultitasking

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_27;
  }

  v5 = equalCopy;
  if (-[BMSystemSettingsMultitasking hasChildAccount](self, "hasChildAccount") || [v5 hasChildAccount])
  {
    if (![(BMSystemSettingsMultitasking *)self hasChildAccount])
    {
      goto LABEL_24;
    }

    if (![v5 hasChildAccount])
    {
      goto LABEL_24;
    }

    childAccount = [(BMSystemSettingsMultitasking *)self childAccount];
    if (childAccount != [v5 childAccount])
    {
      goto LABEL_24;
    }
  }

  if (-[BMSystemSettingsMultitasking hasFirstUpdate](self, "hasFirstUpdate") || [v5 hasFirstUpdate])
  {
    if (![(BMSystemSettingsMultitasking *)self hasFirstUpdate])
    {
      goto LABEL_24;
    }

    if (![v5 hasFirstUpdate])
    {
      goto LABEL_24;
    }

    firstUpdate = [(BMSystemSettingsMultitasking *)self firstUpdate];
    if (firstUpdate != [v5 firstUpdate])
    {
      goto LABEL_24;
    }
  }

  if (-[BMSystemSettingsMultitasking hasBuddySetup](self, "hasBuddySetup") || [v5 hasBuddySetup])
  {
    if (![(BMSystemSettingsMultitasking *)self hasBuddySetup])
    {
      goto LABEL_24;
    }

    if (![v5 hasBuddySetup])
    {
      goto LABEL_24;
    }

    buddySetup = [(BMSystemSettingsMultitasking *)self buddySetup];
    if (buddySetup != [v5 buddySetup])
    {
      goto LABEL_24;
    }
  }

  if (-[BMSystemSettingsMultitasking hasBuddySetupMultitaskingOff](self, "hasBuddySetupMultitaskingOff") || [v5 hasBuddySetupMultitaskingOff])
  {
    if (![(BMSystemSettingsMultitasking *)self hasBuddySetupMultitaskingOff])
    {
      goto LABEL_24;
    }

    if (![v5 hasBuddySetupMultitaskingOff])
    {
      goto LABEL_24;
    }

    buddySetupMultitaskingOff = [(BMSystemSettingsMultitasking *)self buddySetupMultitaskingOff];
    if (buddySetupMultitaskingOff != [v5 buddySetupMultitaskingOff])
    {
      goto LABEL_24;
    }
  }

  multitaskingOption = [(BMSystemSettingsMultitasking *)self multitaskingOption];
  multitaskingOption2 = [v5 multitaskingOption];
  v12 = multitaskingOption2;
  if (multitaskingOption == multitaskingOption2)
  {

    goto LABEL_29;
  }

  multitaskingOption3 = [(BMSystemSettingsMultitasking *)self multitaskingOption];
  multitaskingOption4 = [v5 multitaskingOption];
  v15 = [multitaskingOption3 isEqual:multitaskingOption4];

  if (v15)
  {
LABEL_29:
    source = [(BMSystemSettingsMultitasking *)self source];
    source2 = [v5 source];
    if (source == source2)
    {
      v16 = 1;
    }

    else
    {
      source3 = [(BMSystemSettingsMultitasking *)self source];
      source4 = [v5 source];
      v16 = [source3 isEqual:source4];
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = 0;
LABEL_25:

LABEL_27:
  return v16;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  if ([(BMSystemSettingsMultitasking *)self hasChildAccount])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsMultitasking childAccount](self, "childAccount")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSystemSettingsMultitasking *)self hasFirstUpdate])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsMultitasking firstUpdate](self, "firstUpdate")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMSystemSettingsMultitasking *)self hasBuddySetup])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsMultitasking buddySetup](self, "buddySetup")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMSystemSettingsMultitasking *)self hasBuddySetupMultitaskingOff])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsMultitasking buddySetupMultitaskingOff](self, "buddySetupMultitaskingOff")}];
  }

  else
  {
    v6 = 0;
  }

  multitaskingOption = [(BMSystemSettingsMultitasking *)self multitaskingOption];
  source = [(BMSystemSettingsMultitasking *)self source];
  v22[0] = @"childAccount";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v23[0] = null;
  v22[1] = @"firstUpdate";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null2;
  v23[1] = null2;
  v22[2] = @"buddySetup";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v23[2] = null3;
  v22[3] = @"buddySetupMultitaskingOff";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22[4] = @"multitaskingOption";
  null5 = multitaskingOption;
  if (!multitaskingOption)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v22[5] = @"source";
  null6 = source;
  if (!source)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (source)
  {
    if (multitaskingOption)
    {
      goto LABEL_27;
    }

LABEL_35:

    if (v6)
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

  if (!multitaskingOption)
  {
    goto LABEL_35;
  }

LABEL_27:
  if (v6)
  {
    goto LABEL_28;
  }

LABEL_36:

LABEL_28:
  if (v5)
  {
    if (v4)
    {
      goto LABEL_30;
    }

LABEL_38:

    if (v21)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (!v4)
  {
    goto LABEL_38;
  }

LABEL_30:
  if (v21)
  {
    goto LABEL_31;
  }

LABEL_39:

LABEL_31:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMSystemSettingsMultitasking)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v69[1] = *MEMORY[0x1E69E9840];
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
          v10 = 0;
          v17 = 0;
          goto LABEL_50;
        }

        v22 = v8;
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v24 = *MEMORY[0x1E698F240];
        v66 = *MEMORY[0x1E696A578];
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"firstUpdate"];
        v67 = v25;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v26 = v23;
        v8 = v22;
        v27 = v24;
        error = v25;
        v10 = 0;
        v17 = 0;
        *errorCopy = [v26 initWithDomain:v27 code:2 userInfo:v11];
        goto LABEL_49;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"buddySetup"];
    selfCopy = self;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v17 = 0;
          goto LABEL_49;
        }

        v28 = v8;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v30 = *MEMORY[0x1E698F240];
        v64 = *MEMORY[0x1E696A578];
        v31 = v10;
        v32 = objc_alloc(MEMORY[0x1E696AEC0]);
        v46 = objc_opt_class();
        v33 = v32;
        v10 = v31;
        v56 = [v33 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v46, @"buddySetup"];
        v65 = v56;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v34 = v29;
        v8 = v28;
        v35 = [v34 initWithDomain:v30 code:2 userInfo:v12];
        error = 0;
        v17 = 0;
        *errorCopy2 = v35;
LABEL_48:

        self = selfCopy;
LABEL_49:

        goto LABEL_50;
      }

      v53 = v11;
    }

    else
    {
      v53 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"buddySetupMultitaskingOff"];
    v54 = v10;
    v55 = v8;
    v52 = v7;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v56 = 0;
          v17 = 0;
          error = v53;
          goto LABEL_48;
        }

        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"buddySetupMultitaskingOff"];
        v63 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v38 = [v36 initWithDomain:v37 code:2 userInfo:v13];
        v56 = 0;
        v17 = 0;
        *error = v38;
        goto LABEL_57;
      }

      v56 = v12;
    }

    else
    {
      v56 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"multitaskingOption"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
LABEL_16:
      v15 = [dictionaryCopy objectForKeyedSubscript:@"source"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v16 = 0;
LABEL_19:
        error = v53;
        v17 = [(BMSystemSettingsMultitasking *)selfCopy initWithChildAccount:v55 firstUpdate:v54 buddySetup:v53 buddySetupMultitaskingOff:v56 multitaskingOption:v14 source:v16];
        selfCopy = v17;
LABEL_46:

LABEL_47:
        v10 = v54;
        v8 = v55;
        v7 = v52;
        goto LABEL_48;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        goto LABEL_19;
      }

      if (error)
      {
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"source"];
        v59 = v42;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        *error = [v51 initWithDomain:v47 code:2 userInfo:v43];
      }

      v16 = 0;
      v17 = 0;
LABEL_45:
      error = v53;
      goto LABEL_46;
    }

    if (error)
    {
      errorCopy3 = error;
      v39 = objc_alloc(MEMORY[0x1E696ABC0]);
      v40 = *MEMORY[0x1E698F240];
      v60 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"multitaskingOption"];
      v61 = v16;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v41 = [v39 initWithDomain:v40 code:2 userInfo:v15];
      v14 = 0;
      v17 = 0;
      *errorCopy3 = v41;
      goto LABEL_45;
    }

    v14 = 0;
    v17 = 0;
LABEL_57:
    error = v53;
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
    v17 = 0;
    goto LABEL_51;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy4 = error;
  v20 = *MEMORY[0x1E698F240];
  v68 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"childAccount"];
  v69[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
  v21 = [v18 initWithDomain:v20 code:2 userInfo:v9];
  v8 = 0;
  v17 = 0;
  *errorCopy4 = v21;
LABEL_50:

LABEL_51:
  v44 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSystemSettingsMultitasking *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_hasChildAccount)
  {
    childAccount = self->_childAccount;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

  if (self->_hasFirstUpdate)
  {
    firstUpdate = self->_firstUpdate;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

  if (self->_hasBuddySetup)
  {
    buddySetup = self->_buddySetup;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

  if (self->_hasBuddySetupMultitaskingOff)
  {
    buddySetupMultitaskingOff = self->_buddySetupMultitaskingOff;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

  if (self->_multitaskingOption)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v48.receiver = self;
  v48.super_class = BMSystemSettingsMultitasking;
  v5 = [(BMEventBase *)&v48 init];
  if (!v5)
  {
    goto LABEL_78;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_76;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v49 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v49 & 0x7F) << v7;
        if ((v49 & 0x80) == 0)
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
        goto LABEL_76;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      switch(v15)
      {
        case 4:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v5->_hasBuddySetupMultitaskingOff = 1;
          while (1)
          {
            v49 = 0;
            v34 = [fromCopy position] + 1;
            if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v33 |= (v49 & 0x7F) << v31;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v13 = v32++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_69;
            }
          }

          v22 = (v33 != 0) & ~[fromCopy hasError];
LABEL_69:
          v44 = 22;
LABEL_74:
          *(&v5->super.super.isa + v44) = v22;
          goto LABEL_75;
        case 5:
          v23 = PBReaderReadString();
          v24 = 32;
          break;
        case 6:
          v23 = PBReaderReadString();
          v24 = 40;
          break;
        default:
LABEL_53:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_77;
          }

          goto LABEL_75;
      }

      v43 = *(&v5->super.super.isa + v24);
      *(&v5->super.super.isa + v24) = v23;

LABEL_75:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_76;
      }
    }

    switch(v15)
    {
      case 1:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasChildAccount = 1;
        while (1)
        {
          v49 = 0;
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v27 |= (v49 & 0x7F) << v25;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_67;
          }
        }

        v22 = (v27 != 0) & ~[fromCopy hasError];
LABEL_67:
        v44 = 16;
        break;
      case 2:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v5->_hasFirstUpdate = 1;
        while (1)
        {
          v49 = 0;
          v40 = [fromCopy position] + 1;
          if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v39 |= (v49 & 0x7F) << v37;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v13 = v38++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_73;
          }
        }

        v22 = (v39 != 0) & ~[fromCopy hasError];
LABEL_73:
        v44 = 18;
        break;
      case 3:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasBuddySetup = 1;
        while (1)
        {
          v49 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v49 & 0x7F) << v16;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_71;
          }
        }

        v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_71:
        v44 = 20;
        break;
      default:
        goto LABEL_53;
    }

    goto LABEL_74;
  }

LABEL_76:
  if ([fromCopy hasError])
  {
LABEL_77:
    v46 = 0;
  }

  else
  {
LABEL_78:
    v46 = v5;
  }

  return v46;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsMultitasking childAccount](self, "childAccount")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsMultitasking firstUpdate](self, "firstUpdate")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsMultitasking buddySetup](self, "buddySetup")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSystemSettingsMultitasking buddySetupMultitaskingOff](self, "buddySetupMultitaskingOff")}];
  multitaskingOption = [(BMSystemSettingsMultitasking *)self multitaskingOption];
  source = [(BMSystemSettingsMultitasking *)self source];
  v10 = [v3 initWithFormat:@"BMSystemSettingsMultitasking with childAccount: %@, firstUpdate: %@, buddySetup: %@, buddySetupMultitaskingOff: %@, multitaskingOption: %@, source: %@", v4, v5, v6, v7, multitaskingOption, source];

  return v10;
}

- (BMSystemSettingsMultitasking)initWithChildAccount:(id)account firstUpdate:(id)update buddySetup:(id)setup buddySetupMultitaskingOff:(id)off multitaskingOption:(id)option source:(id)source
{
  accountCopy = account;
  updateCopy = update;
  setupCopy = setup;
  offCopy = off;
  optionCopy = option;
  sourceCopy = source;
  v22.receiver = self;
  v22.super_class = BMSystemSettingsMultitasking;
  v20 = [(BMEventBase *)&v22 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (accountCopy)
    {
      v20->_hasChildAccount = 1;
      v20->_childAccount = [accountCopy BOOLValue];
    }

    else
    {
      v20->_hasChildAccount = 0;
      v20->_childAccount = 0;
    }

    if (updateCopy)
    {
      v20->_hasFirstUpdate = 1;
      v20->_firstUpdate = [updateCopy BOOLValue];
    }

    else
    {
      v20->_hasFirstUpdate = 0;
      v20->_firstUpdate = 0;
    }

    if (setupCopy)
    {
      v20->_hasBuddySetup = 1;
      v20->_buddySetup = [setupCopy BOOLValue];
    }

    else
    {
      v20->_hasBuddySetup = 0;
      v20->_buddySetup = 0;
    }

    if (offCopy)
    {
      v20->_hasBuddySetupMultitaskingOff = 1;
      v20->_buddySetupMultitaskingOff = [offCopy BOOLValue];
    }

    else
    {
      v20->_hasBuddySetupMultitaskingOff = 0;
      v20->_buddySetupMultitaskingOff = 0;
    }

    objc_storeStrong(&v20->_multitaskingOption, option);
    objc_storeStrong(&v20->_source, source);
  }

  return v20;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"childAccount" number:1 type:12 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"firstUpdate" number:2 type:12 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"buddySetup" number:3 type:12 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"buddySetupMultitaskingOff" number:4 type:12 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"multitaskingOption" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"source" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"childAccount" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"firstUpdate" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"buddySetup" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"buddySetupMultitaskingOff" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"multitaskingOption" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"source" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
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

    v8 = [[BMSystemSettingsMultitasking alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end