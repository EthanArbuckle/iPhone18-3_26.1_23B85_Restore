@interface CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon)initWithName:(id)name style:(unsigned int)style foreground:(id)foreground background:(id)background error:(id *)error;
- (NSString)background;
- (NSString)foreground;
- (NSString)name;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon

- (CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"style"];
    v11 = v10;
    if (v10)
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"foreground"];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"background"];
    v13 = [[CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon alloc] initWithName:v9 style:unsignedIntegerValue foreground:v14 background:v15 error:error];
  }

  else
  {
    CCSetError();
    v13 = 0;
  }

  return v13;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_name)
  {
    name = [(CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon *)self name];
    [v3 setObject:name forKeyedSubscript:@"name"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon style](self, "style")}];
  [v3 setObject:v5 forKeyedSubscript:@"style"];

  if (self->_foreground)
  {
    foreground = [(CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon *)self foreground];
    [v3 setObject:foreground forKeyedSubscript:@"foreground"];
  }

  if (self->_background)
  {
    background = [(CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon *)self background];
    [v3 setObject:background forKeyedSubscript:@"background"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_name)
  {
    v5 = objc_alloc(MEMORY[0x1E69939F0]);
    v6 = *MEMORY[0x1E69939A8];
    v7 = [v5 initWithFieldType:v6 stringValue:self->_name];
    blockCopy[2](blockCopy, v7);
  }

  else
  {
    v6 = *MEMORY[0x1E69939A8];
  }

  v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_style];
  blockCopy[2](blockCopy, v8);

  if (self->_foreground)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_foreground];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_background)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_background];
    blockCopy[2](blockCopy, v10);
  }
}

- (NSString)background
{
  v2 = [(NSString *)self->_background copy];

  return v2;
}

- (NSString)foreground
{
  v2 = [(NSString *)self->_foreground copy];

  return v2;
}

- (NSString)name
{
  v2 = [(NSString *)self->_name copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_47;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v44 = dataCopy;
  while (2)
  {
    if (*&v7[*v10])
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *v8;
        v18 = *&v7[v17];
        v19 = v18 + 1;
        if (v18 == -1 || v19 > *&v7[*v9])
        {
          break;
        }

        v20 = *(*&v7[*v12] + v18);
        *&v7[v17] = v19;
        v16 |= (v20 & 0x7F) << v14;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 += 7;
        v21 = v15++ >= 9;
        if (v21)
        {
          v22 = 0;
          if (*&v7[*v10])
          {
            goto LABEL_48;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v10] = 1;
LABEL_17:
      v23 = *&v7[*v10];
      if (v23)
      {
        v22 = 0;
      }

      else
      {
        v22 = v16;
      }

      if (v23)
      {
        goto LABEL_48;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) > 2)
      {
        if (v24 == 3)
        {
          v32 = CCPBReaderReadStringNoCopy();
          v33 = 32;
        }

        else
        {
          if (v24 != 4)
          {
LABEL_34:
            if ((CCPBReaderSkipValueWithTag() & 1) == 0)
            {
              v34 = objc_opt_class();
              NSStringFromClass(v34);
              v36 = v35 = error;
              v37 = *&v7[*v10];
              v11 = CCSkipFieldErrorForMessage();

              error = v35;
              dataCopy = v44;
              goto LABEL_44;
            }

            goto LABEL_39;
          }

          v32 = CCPBReaderReadStringNoCopy();
          v33 = 40;
        }
      }

      else
      {
        if (v24 != 1)
        {
          if (v24 == 2)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            while (1)
            {
              v28 = *v8;
              v29 = *&v7[v28];
              v30 = v29 + 1;
              if (v29 == -1 || v30 > *&v7[*v9])
              {
                break;
              }

              v31 = *(*&v7[*v12] + v29);
              *&v7[v28] = v30;
              v27 |= (v31 & 0x7F) << v25;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_41;
              }

              v25 += 7;
              v21 = v26++ >= 9;
              if (v21)
              {
                LODWORD(v27) = 0;
                goto LABEL_43;
              }
            }

            *&v7[*v10] = 1;
LABEL_41:
            if (*&v7[*v10])
            {
              LODWORD(v27) = 0;
            }

LABEL_43:
            v11 = 0;
            self->_style = v27;
LABEL_44:
            if (*&v7[*v8] < *&v7[*v9])
            {
              continue;
            }

            break;
          }

          goto LABEL_34;
        }

        v32 = CCPBReaderReadStringNoCopy();
        v33 = 24;
      }

      v38 = *(&self->super.super.isa + v33);
      *(&self->super.super.isa + v33) = v32;

LABEL_39:
      v11 = 0;
      goto LABEL_44;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_49;
  }

LABEL_47:
  if (!*&v7[*v10])
  {
    v42 = 1;
    goto LABEL_51;
  }

LABEL_48:
  v39 = objc_opt_class();
  v11 = NSStringFromClass(v39);
  v40 = *&v7[*v10];
  v41 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_49:
  v42 = 0;
LABEL_51:

  return v42;
}

- (CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon)initWithName:(id)name style:(unsigned int)style foreground:(id)foreground background:(id)background error:(id *)error
{
  nameCopy = name;
  foregroundCopy = foreground;
  backgroundCopy = background;
  v15 = objc_opt_new();
  if (nameCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v17 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_8;
    }

    CCPBDataWriterWriteStringField();
    if (!style)
    {
LABEL_4:
      v18 = v17;
      if (foregroundCopy)
      {
        goto LABEL_5;
      }

LABEL_12:
      v17 = v18;
      if (!backgroundCopy)
      {
LABEL_15:
        immutableData = [v15 immutableData];
        self = [(CCItemMessage *)self initWithData:immutableData error:error];

        selfCopy = self;
        goto LABEL_18;
      }

LABEL_13:
      objc_opt_class();
      v26 = v17;
      v22 = CCValidateIsInstanceOfExpectedClass();
      v23 = v17;

      if (!v22)
      {
        CCSetError();
        selfCopy = 0;
        v17 = v23;
        goto LABEL_18;
      }

      CCPBDataWriterWriteStringField();
      v17 = v23;
      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
    if (!style)
    {
      goto LABEL_4;
    }
  }

  v21 = CCValidateEnumField();
  v18 = v17;

  if (!v21)
  {
    CCSetError();
    selfCopy = 0;
    v17 = v18;
    goto LABEL_18;
  }

  CCPBDataWriterWriteUint32Field();
  if (!foregroundCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  v19 = CCValidateIsInstanceOfExpectedClass();
  v17 = v18;

  if (v19)
  {
    CCPBDataWriterWriteStringField();
    if (!backgroundCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_8:
  CCSetError();
  selfCopy = 0;
LABEL_18:

  return selfCopy;
}

@end