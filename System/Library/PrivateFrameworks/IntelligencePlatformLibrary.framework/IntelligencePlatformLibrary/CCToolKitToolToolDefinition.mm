@interface CCToolKitToolToolDefinition
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolToolDefinition)initWithError:(id *)error;
- (CCToolKitToolToolDefinition)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (id)jsonDictionary;
@end

@implementation CCToolKitToolToolDefinition

- (CCToolKitToolToolDefinition)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();

  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [[CCToolKitToolToolDefinition alloc] initWithError:error];
  }

  else
  {
    CCSetError();
    v9 = 0;
  }

  return v9;
}

- (id)jsonDictionary
{
  v2 = objc_opt_new();
  v3 = [v2 copy];

  return v3;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  v8 = MEMORY[0x1E6993AA8];
  if (*&v5[*MEMORY[0x1E6993AB8]] >= *&v5[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_24;
  }

  v9 = 0;
  v10 = MEMORY[0x1E6993AA0];
  do
  {
    if (*&v5[*v8])
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 0;
    }

    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = *v6;
      v16 = *&v5[v15];
      v17 = v16 + 1;
      if (v16 == -1 || v17 > *&v5[*v7])
      {
        break;
      }

      v18 = *(*&v5[*v10] + v16);
      *&v5[v15] = v17;
      v14 |= (v18 & 0x7F) << v12;
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      v12 += 7;
      if (v13++ >= 9)
      {
        if (*&v5[*v8])
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }
    }

    *&v5[*v8] = 1;
LABEL_17:
    if (*&v5[*v8])
    {
      goto LABEL_25;
    }

LABEL_18:
    if (CCPBReaderSkipValueWithTag())
    {
      v9 = 0;
    }

    else
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = *&v5[*v8];
      v9 = CCSkipFieldErrorForMessage();
    }
  }

  while (*&v5[*v6] < *&v5[*v7]);
  if (v9)
  {
    CCSetError();
  }

  else
  {
LABEL_24:
    if (!*&v5[*v8])
    {
      v26 = 1;
      goto LABEL_28;
    }

LABEL_25:
    v23 = objc_opt_class();
    v9 = NSStringFromClass(v23);
    v24 = *&v5[*v8];
    v25 = CCInvalidBufferErrorForMessage();
    CCSetError();
  }

  v26 = 0;
LABEL_28:

  return v26;
}

- (CCToolKitToolToolDefinition)initWithError:(id *)error
{
  v5 = objc_opt_new();
  immutableData = [v5 immutableData];
  v7 = [(CCItemMessage *)self initWithData:immutableData error:error];

  return v7;
}

@end