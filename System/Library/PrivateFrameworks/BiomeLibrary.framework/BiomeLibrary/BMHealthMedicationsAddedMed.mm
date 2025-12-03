@interface BMHealthMedicationsAddedMed
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMHealthMedicationsAddedMed)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMHealthMedicationsAddedMed)initWithMedicationName:(id)name;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMHealthMedicationsAddedMed

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"medicationName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"medication_name" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    medicationName = [(BMHealthMedicationsAddedMed *)self medicationName];
    medicationName2 = [v5 medicationName];
    if (medicationName == medicationName2)
    {
      v10 = 1;
    }

    else
    {
      medicationName3 = [(BMHealthMedicationsAddedMed *)self medicationName];
      medicationName4 = [v5 medicationName];
      v10 = [medicationName3 isEqual:medicationName4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  medicationName = [(BMHealthMedicationsAddedMed *)self medicationName];
  v4 = medicationName;
  v9 = @"medicationName";
  if (medicationName)
  {
    v10 = @"medication_name";
    v11[0] = medicationName;
    null2 = medicationName;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v10 = @"medication_name";
    v11[0] = null;
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v9 count:2];
  if (!v4)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BMHealthMedicationsAddedMed)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"medicationName"];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"medication_name"];
    if (!v8)
    {
LABEL_5:
      error = 0;
LABEL_8:
      self = [(BMHealthMedicationsAddedMed *)self initWithMedicationName:error];
      selfCopy = self;
      goto LABEL_12;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v8;
    error = v8;
    goto LABEL_8;
  }

  if (error)
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = *MEMORY[0x1E698F240];
    v16 = *MEMORY[0x1E696A578];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"medicationName"];
    v17[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = [v10 initWithDomain:v11 code:2 userInfo:v13];

    error = 0;
  }

  selfCopy = 0;
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMHealthMedicationsAddedMed *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  if (self->_medicationName)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v20.receiver = self;
  v20.super_class = BMHealthMedicationsAddedMed;
  v5 = [(BMEventBase *)&v20 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v21 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v21 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v21 & 0x7F) << v7;
        if ((v21 & 0x80) == 0)
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      if ((v14 >> 3) == 1)
      {
        v15 = PBReaderReadString();
        medicationName = v5->_medicationName;
        v5->_medicationName = v15;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_23;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_23:
    v18 = 0;
  }

  else
  {
LABEL_24:
    v18 = v5;
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  medicationName = [(BMHealthMedicationsAddedMed *)self medicationName];
  v5 = [v3 initWithFormat:@"BMHealthMedicationsAddedMed with medicationName: %@", medicationName];

  return v5;
}

- (BMHealthMedicationsAddedMed)initWithMedicationName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = BMHealthMedicationsAddedMed;
  v6 = [(BMEventBase *)&v8 init];
  if (v6)
  {
    v6->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v6->_medicationName, name);
  }

  return v6;
}

+ (id)protoFields
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"medicationName" number:1 type:13 subMessageClass:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
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

    v8 = [[BMHealthMedicationsAddedMed alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end