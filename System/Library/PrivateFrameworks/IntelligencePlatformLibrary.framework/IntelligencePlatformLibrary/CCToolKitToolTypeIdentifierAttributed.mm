@interface CCToolKitToolTypeIdentifierAttributed
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolContainerDefinition)attributionContainer;
- (CCToolKitToolContainerDefinition)sourceContainer;
- (CCToolKitToolTypeIdentifierAttributed)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypeIdentifierAttributed)initWithSourceContainer:(id)a3 attributionContainer:(id)a4 typeName:(id)a5 error:(id *)a6;
- (NSString)typeName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypeIdentifierAttributed

- (CCToolKitToolTypeIdentifierAttributed)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v19[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"sourceContainer"];
    if (v9)
    {
      v19[0] = 0;
      v10 = [[CCToolKitToolContainerDefinition alloc] initWithJSONDictionary:v9 error:v19];
      v11 = v19[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        goto LABEL_15;
      }

      v9 = v10;
    }

    v13 = [v6 objectForKeyedSubscript:@"attributionContainer"];
    if (!v13)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v12 = v13;
    v18 = 0;
    v14 = [[CCToolKitToolContainerDefinition alloc] initWithJSONDictionary:v13 error:&v18];
    v15 = v18;
    v10 = v15;
    if (v14 && !v15)
    {

LABEL_13:
      v10 = [v6 objectForKeyedSubscript:@"typeName"];
      v16 = [[CCToolKitToolTypeIdentifierAttributed alloc] initWithSourceContainer:v9 attributionContainer:v14 typeName:v10 error:a4];
      v12 = v14;
LABEL_16:

      goto LABEL_17;
    }

    CCSetError();

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  CCSetError();
  v16 = 0;
LABEL_17:

  return v16;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_sourceContainer)
  {
    v4 = [(CCToolKitToolTypeIdentifierAttributed *)self sourceContainer];
    v5 = [v4 jsonDictionary];
    [v3 setObject:v5 forKeyedSubscript:@"sourceContainer"];
  }

  if (self->_attributionContainer)
  {
    v6 = [(CCToolKitToolTypeIdentifierAttributed *)self attributionContainer];
    v7 = [v6 jsonDictionary];
    [v3 setObject:v7 forKeyedSubscript:@"attributionContainer"];
  }

  if (self->_typeName)
  {
    v8 = [(CCToolKitToolTypeIdentifierAttributed *)self typeName];
    [v3 setObject:v8 forKeyedSubscript:@"typeName"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v11 = v5;
  if (self->_sourceContainer)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_sourceContainer];
    v11[2](v11, v7);
  }

  if (self->_attributionContainer)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_attributionContainer];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_typeName)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_typeName];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (NSString)typeName
{
  v2 = [(NSString *)self->_typeName copy];

  return v2;
}

- (CCToolKitToolContainerDefinition)attributionContainer
{
  v2 = [(CCToolKitToolContainerDefinition *)self->_attributionContainer copy];

  return v2;
}

- (CCToolKitToolContainerDefinition)sourceContainer
{
  v2 = [(CCToolKitToolContainerDefinition *)self->_sourceContainer copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_35;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v7;
        v17 = *&v6[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v6[*v8])
        {
          break;
        }

        v19 = *(*&v6[*v11] + v17);
        *&v6[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v22 = *&v6[*v9];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v22)
      {
        goto LABEL_36;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 3)
      {
        v30 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        typeName = self->_typeName;
        self->_typeName = v30;
        goto LABEL_31;
      }

      if (v23 == 2)
      {
        v28 = [CCToolKitToolContainerDefinition alloc];
        typeName = CCPBReaderReadDataNoCopy();
        v39 = 0;
        v26 = [(CCItemMessage *)v28 initWithData:typeName error:&v39];
        v10 = v39;
        v27 = 24;
      }

      else
      {
        if (v23 != 1)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v10 = 0;
            goto LABEL_32;
          }

          v31 = objc_opt_class();
          typeName = NSStringFromClass(v31);
          v32 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
LABEL_31:

LABEL_32:
          if (*&v6[*v7] < *&v6[*v8])
          {
            continue;
          }

          break;
        }

        v24 = [CCToolKitToolContainerDefinition alloc];
        typeName = CCPBReaderReadDataNoCopy();
        v40 = 0;
        v26 = [(CCItemMessage *)v24 initWithData:typeName error:&v40];
        v10 = v40;
        v27 = 16;
      }

      v29 = *(&self->super.super.isa + v27);
      *(&self->super.super.isa + v27) = v26;

      goto LABEL_31;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_37;
  }

LABEL_35:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v37 = 1;
    goto LABEL_39;
  }

LABEL_36:
  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  v35 = *&v6[*v9];
  v36 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_37:
  v37 = 0;
LABEL_39:

  return v37;
}

- (CCToolKitToolTypeIdentifierAttributed)initWithSourceContainer:(id)a3 attributionContainer:(id)a4 typeName:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  if (v10)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    v16 = [v10 data];
    CCPBDataWriterWriteDataField();

    if (!v11)
    {
LABEL_4:
      v17 = v15;
      if (v12)
      {
        goto LABEL_5;
      }

LABEL_11:
      v15 = v17;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v20 = CCValidateIsInstanceOfExpectedClass();
  v17 = v15;

  if (!v20)
  {
    CCSetError();
    v19 = 0;
    v15 = v17;
    goto LABEL_14;
  }

  v21 = [v11 data];
  CCPBDataWriterWriteDataField();

  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v18 = CCValidateIsInstanceOfExpectedClass();
  v15 = v17;

  if (v18)
  {
    CCPBDataWriterWriteStringField();
LABEL_12:
    v22 = [v13 immutableData];
    self = [(CCItemMessage *)self initWithData:v22 error:a6];

    v19 = self;
    goto LABEL_14;
  }

LABEL_7:
  CCSetError();
  v19 = 0;
LABEL_14:

  return v19;
}

@end