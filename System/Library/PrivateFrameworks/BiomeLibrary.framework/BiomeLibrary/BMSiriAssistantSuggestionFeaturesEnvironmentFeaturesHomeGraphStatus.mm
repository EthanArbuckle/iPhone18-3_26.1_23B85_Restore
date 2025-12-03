@interface BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus)initWithNumberOfDevices:(id)devices numberOfRooms:(id)rooms numberOfHomes:(id)homes hasLights:(id)lights hasSecuritySystem:(id)system hasTemperatureControl:(id)control;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus hasNumberOfDevices](self, "hasNumberOfDevices") || [v5 hasNumberOfDevices])
    {
      if (![(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self hasNumberOfDevices])
      {
        goto LABEL_33;
      }

      if (![v5 hasNumberOfDevices])
      {
        goto LABEL_33;
      }

      numberOfDevices = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self numberOfDevices];
      if (numberOfDevices != [v5 numberOfDevices])
      {
        goto LABEL_33;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus hasNumberOfRooms](self, "hasNumberOfRooms") || [v5 hasNumberOfRooms])
    {
      if (![(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self hasNumberOfRooms])
      {
        goto LABEL_33;
      }

      if (![v5 hasNumberOfRooms])
      {
        goto LABEL_33;
      }

      numberOfRooms = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self numberOfRooms];
      if (numberOfRooms != [v5 numberOfRooms])
      {
        goto LABEL_33;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus hasNumberOfHomes](self, "hasNumberOfHomes") || [v5 hasNumberOfHomes])
    {
      if (![(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self hasNumberOfHomes])
      {
        goto LABEL_33;
      }

      if (![v5 hasNumberOfHomes])
      {
        goto LABEL_33;
      }

      numberOfHomes = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self numberOfHomes];
      if (numberOfHomes != [v5 numberOfHomes])
      {
        goto LABEL_33;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus hasHasLights](self, "hasHasLights") || [v5 hasHasLights])
    {
      if (![(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self hasHasLights])
      {
        goto LABEL_33;
      }

      if (![v5 hasHasLights])
      {
        goto LABEL_33;
      }

      hasLights = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self hasLights];
      if (hasLights != [v5 hasLights])
      {
        goto LABEL_33;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus hasHasSecuritySystem](self, "hasHasSecuritySystem") || [v5 hasHasSecuritySystem])
    {
      if (![(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self hasHasSecuritySystem])
      {
        goto LABEL_33;
      }

      if (![v5 hasHasSecuritySystem])
      {
        goto LABEL_33;
      }

      hasSecuritySystem = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self hasSecuritySystem];
      if (hasSecuritySystem != [v5 hasSecuritySystem])
      {
        goto LABEL_33;
      }
    }

    if (!-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus hasHasTemperatureControl](self, "hasHasTemperatureControl") && ![v5 hasHasTemperatureControl])
    {
      LOBYTE(v12) = 1;
      goto LABEL_34;
    }

    if (-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus hasHasTemperatureControl](self, "hasHasTemperatureControl") && [v5 hasHasTemperatureControl])
    {
      hasTemperatureControl = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self hasTemperatureControl];
      v12 = hasTemperatureControl ^ [v5 hasTemperatureControl] ^ 1;
    }

    else
    {
LABEL_33:
      LOBYTE(v12) = 0;
    }

LABEL_34:

    goto LABEL_35;
  }

  LOBYTE(v12) = 0;
LABEL_35:

  return v12;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self hasNumberOfDevices])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus numberOfDevices](self, "numberOfDevices")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self hasNumberOfRooms])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus numberOfRooms](self, "numberOfRooms")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self hasNumberOfHomes])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus numberOfHomes](self, "numberOfHomes")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self hasHasLights])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus hasLights](self, "hasLights")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self hasHasSecuritySystem])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus hasSecuritySystem](self, "hasSecuritySystem")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self hasHasTemperatureControl])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus hasTemperatureControl](self, "hasTemperatureControl")}];
  }

  else
  {
    v8 = 0;
  }

  v22[0] = @"numberOfDevices";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null;
  v20 = v4;
  v23[0] = null;
  v22[1] = @"numberOfRooms";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v22[2] = @"numberOfHomes";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v23[2] = null3;
  v22[3] = @"hasLights";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22[4] = @"hasSecuritySystem";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v22[5] = @"hasTemperatureControl";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_33;
    }

LABEL_42:

    if (v6)
    {
      goto LABEL_34;
    }

    goto LABEL_43;
  }

  if (!v7)
  {
    goto LABEL_42;
  }

LABEL_33:
  if (v6)
  {
    goto LABEL_34;
  }

LABEL_43:

LABEL_34:
  if (!v5)
  {
  }

  if (v20)
  {
    if (v21)
    {
      goto LABEL_38;
    }
  }

  else
  {

    if (v21)
    {
      goto LABEL_38;
    }
  }

LABEL_38:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v73[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"numberOfDevices"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"numberOfRooms"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v21 = 0;
          v17 = 0;
          goto LABEL_50;
        }

        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v23 = *MEMORY[0x1E698F240];
        v70 = *MEMORY[0x1E696A578];
        v24 = v7;
        v25 = v8;
        v26 = objc_alloc(MEMORY[0x1E696AEC0]);
        v49 = objc_opt_class();
        v27 = v26;
        v8 = v25;
        v7 = v24;
        v28 = [v27 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v49, @"numberOfRooms"];
        v71 = v28;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v29 = v23;
        error = v28;
        v21 = 0;
        v17 = 0;
        *errorCopy = [v22 initWithDomain:v29 code:2 userInfo:v10];
        goto LABEL_49;
      }

      v60 = v9;
    }

    else
    {
      v60 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"numberOfHomes"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v17 = 0;
          v21 = v60;
          goto LABEL_49;
        }

        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v31 = *MEMORY[0x1E698F240];
        v68 = *MEMORY[0x1E696A578];
        v32 = v7;
        v33 = v8;
        v34 = objc_alloc(MEMORY[0x1E696AEC0]);
        v50 = objc_opt_class();
        v35 = v34;
        v8 = v33;
        v7 = v32;
        v59 = [v35 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v50, @"numberOfHomes"];
        v69 = v59;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v36 = [v30 initWithDomain:v31 code:2 userInfo:v11];
        error = 0;
        v17 = 0;
        *errorCopy2 = v36;
        v21 = v60;
LABEL_48:

        self = selfCopy;
LABEL_49:

        goto LABEL_50;
      }

      v58 = v10;
    }

    else
    {
      v58 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"hasLights"];
    v56 = v7;
    v57 = v9;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v59 = 0;
          v17 = 0;
          v21 = v60;
          error = v58;
          goto LABEL_48;
        }

        v37 = v8;
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v66 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasLights"];
        v67 = v14;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v40 = v38;
        v8 = v37;
        v7 = v56;
        v41 = [v40 initWithDomain:v39 code:2 userInfo:v12];
        v59 = 0;
        v17 = 0;
        *error = v41;
        goto LABEL_57;
      }

      v59 = v11;
    }

    else
    {
      v59 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"hasSecuritySystem"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = v8;
      v14 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
      v14 = v12;
LABEL_16:
      v15 = [dictionaryCopy objectForKeyedSubscript:@"hasTemperatureControl"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v16 = 0;
LABEL_19:
        error = v58;
        v17 = [(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)selfCopy initWithNumberOfDevices:v13 numberOfRooms:v60 numberOfHomes:v58 hasLights:v59 hasSecuritySystem:v14 hasTemperatureControl:v16];
        selfCopy = v17;
LABEL_46:

        v8 = v13;
        v7 = v56;
LABEL_47:

        v21 = v60;
        v9 = v57;
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
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasTemperatureControl"];
        v63 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        *error = [v55 initWithDomain:v51 code:2 userInfo:v46];
      }

      v16 = 0;
      v17 = 0;
LABEL_45:
      error = v58;
      goto LABEL_46;
    }

    if (error)
    {
      v13 = v8;
      errorCopy3 = error;
      v42 = objc_alloc(MEMORY[0x1E696ABC0]);
      v43 = *MEMORY[0x1E698F240];
      v64 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasSecuritySystem"];
      v65 = v16;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v44 = [v42 initWithDomain:v43 code:2 userInfo:v15];
      v14 = 0;
      v17 = 0;
      *errorCopy3 = v44;
      goto LABEL_45;
    }

    v14 = 0;
    v17 = 0;
LABEL_57:
    error = v58;
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
  v72 = *MEMORY[0x1E696A578];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberOfDevices"];
  v73[0] = v21;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
  v8 = 0;
  v17 = 0;
  *errorCopy4 = [v18 initWithDomain:v20 code:2 userInfo:v9];
LABEL_50:

LABEL_51:
  v47 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasNumberOfDevices)
  {
    numberOfDevices = self->_numberOfDevices;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNumberOfRooms)
  {
    numberOfRooms = self->_numberOfRooms;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNumberOfHomes)
  {
    numberOfHomes = self->_numberOfHomes;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasHasLights)
  {
    hasLights = self->_hasLights;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasSecuritySystem)
  {
    hasSecuritySystem = self->_hasSecuritySystem;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasTemperatureControl)
  {
    hasTemperatureControl = self->_hasTemperatureControl;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v59.receiver = self;
  v59.super_class = BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus;
  v5 = [(BMEventBase *)&v59 init];
  if (!v5)
  {
    goto LABEL_104;
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
        v60 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v60 & 0x7F) << v7;
        if ((v60 & 0x80) == 0)
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
      if ((v14 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v5->_hasHasLights = 1;
            while (1)
            {
              v60 = 0;
              v39 = [fromCopy position] + 1;
              if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 1, v40 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v38 |= (v60 & 0x7F) << v36;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v13 = v37++ >= 9;
              if (v13)
              {
                LOBYTE(v29) = 0;
                goto LABEL_86;
              }
            }

            v29 = (v38 != 0) & ~[fromCopy hasError];
LABEL_86:
            v55 = 19;
            break;
          case 5:
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v5->_hasHasSecuritySystem = 1;
            while (1)
            {
              v60 = 0;
              v51 = [fromCopy position] + 1;
              if (v51 >= [fromCopy position] && (v52 = objc_msgSend(fromCopy, "position") + 1, v52 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v50 |= (v60 & 0x7F) << v48;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v13 = v49++ >= 9;
              if (v13)
              {
                LOBYTE(v29) = 0;
                goto LABEL_99;
              }
            }

            v29 = (v50 != 0) & ~[fromCopy hasError];
LABEL_99:
            v55 = 21;
            break;
          case 6:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            v5->_hasHasTemperatureControl = 1;
            while (1)
            {
              v60 = 0;
              v26 = [fromCopy position] + 1;
              if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v25 |= (v60 & 0x7F) << v23;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v13 = v24++ >= 9;
              if (v13)
              {
                LOBYTE(v29) = 0;
                goto LABEL_92;
              }
            }

            v29 = (v25 != 0) & ~[fromCopy hasError];
LABEL_92:
            v55 = 23;
            break;
          default:
LABEL_61:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_103;
            }

            goto LABEL_101;
        }

        *(&v5->super.super.isa + v55) = v29;
      }

      else
      {
        switch(v15)
        {
          case 1:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v5->_hasNumberOfDevices = 1;
            while (1)
            {
              v60 = 0;
              v33 = [fromCopy position] + 1;
              if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
              {
                data5 = [fromCopy data];
                [data5 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v32 |= (v60 & 0x7F) << v30;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v13 = v31++ >= 9;
              if (v13)
              {
                v22 = 0;
                goto LABEL_84;
              }
            }

            if ([fromCopy hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v32;
            }

LABEL_84:
            v54 = 32;
            break;
          case 2:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v5->_hasNumberOfRooms = 1;
            while (1)
            {
              v60 = 0;
              v45 = [fromCopy position] + 1;
              if (v45 >= [fromCopy position] && (v46 = objc_msgSend(fromCopy, "position") + 1, v46 <= objc_msgSend(fromCopy, "length")))
              {
                data6 = [fromCopy data];
                [data6 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v44 |= (v60 & 0x7F) << v42;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v13 = v43++ >= 9;
              if (v13)
              {
                v22 = 0;
                goto LABEL_96;
              }
            }

            if ([fromCopy hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v44;
            }

LABEL_96:
            v54 = 36;
            break;
          case 3:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v5->_hasNumberOfHomes = 1;
            while (1)
            {
              v60 = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data7 = [fromCopy data];
                [data7 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v60 & 0x7F) << v16;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v13 = v17++ >= 9;
              if (v13)
              {
                v22 = 0;
                goto LABEL_90;
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

LABEL_90:
            v54 = 40;
            break;
          default:
            goto LABEL_61;
        }

        *(&v5->super.super.isa + v54) = v22;
      }

LABEL_101:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_103:
    v57 = 0;
  }

  else
  {
LABEL_104:
    v57 = v5;
  }

  return v57;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus numberOfDevices](self, "numberOfDevices")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus numberOfRooms](self, "numberOfRooms")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus numberOfHomes](self, "numberOfHomes")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus hasLights](self, "hasLights")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus hasSecuritySystem](self, "hasSecuritySystem")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus hasTemperatureControl](self, "hasTemperatureControl")}];
  v10 = [v3 initWithFormat:@"BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus with numberOfDevices: %@, numberOfRooms: %@, numberOfHomes: %@, hasLights: %@, hasSecuritySystem: %@, hasTemperatureControl: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus)initWithNumberOfDevices:(id)devices numberOfRooms:(id)rooms numberOfHomes:(id)homes hasLights:(id)lights hasSecuritySystem:(id)system hasTemperatureControl:(id)control
{
  devicesCopy = devices;
  roomsCopy = rooms;
  homesCopy = homes;
  lightsCopy = lights;
  systemCopy = system;
  controlCopy = control;
  v25.receiver = self;
  v25.super_class = BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus;
  v20 = [(BMEventBase *)&v25 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (devicesCopy)
    {
      v20->_hasNumberOfDevices = 1;
      intValue = [devicesCopy intValue];
    }

    else
    {
      v20->_hasNumberOfDevices = 0;
      intValue = -1;
    }

    v20->_numberOfDevices = intValue;
    if (roomsCopy)
    {
      v20->_hasNumberOfRooms = 1;
      intValue2 = [roomsCopy intValue];
    }

    else
    {
      v20->_hasNumberOfRooms = 0;
      intValue2 = -1;
    }

    v20->_numberOfRooms = intValue2;
    if (homesCopy)
    {
      v20->_hasNumberOfHomes = 1;
      intValue3 = [homesCopy intValue];
    }

    else
    {
      v20->_hasNumberOfHomes = 0;
      intValue3 = -1;
    }

    v20->_numberOfHomes = intValue3;
    if (lightsCopy)
    {
      v20->_hasHasLights = 1;
      v20->_hasLights = [lightsCopy BOOLValue];
    }

    else
    {
      v20->_hasHasLights = 0;
      v20->_hasLights = 0;
    }

    if (systemCopy)
    {
      v20->_hasHasSecuritySystem = 1;
      v20->_hasSecuritySystem = [systemCopy BOOLValue];
    }

    else
    {
      v20->_hasHasSecuritySystem = 0;
      v20->_hasSecuritySystem = 0;
    }

    if (controlCopy)
    {
      v20->_hasHasTemperatureControl = 1;
      v20->_hasTemperatureControl = [controlCopy BOOLValue];
    }

    else
    {
      v20->_hasHasTemperatureControl = 0;
      v20->_hasTemperatureControl = 0;
    }
  }

  return v20;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfDevices" number:1 type:2 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfRooms" number:2 type:2 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfHomes" number:3 type:2 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasLights" number:4 type:12 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasSecuritySystem" number:5 type:12 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasTemperatureControl" number:6 type:12 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfDevices" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfRooms" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfHomes" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasLights" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasSecuritySystem" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasTemperatureControl" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
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

    v8 = [[BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHomeGraphStatus alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end