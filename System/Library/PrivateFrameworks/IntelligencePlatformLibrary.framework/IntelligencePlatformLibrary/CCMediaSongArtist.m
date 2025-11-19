@interface CCMediaSongArtist
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCMediaSongArtist)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCMediaSongArtist)initWithName:(id)a3 error:(id *)a4;
- (NSString)name;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCMediaSongArtist

- (CCMediaSongArtist)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"name"];
    v10 = [[CCMediaSongArtist alloc] initWithName:v9 error:a4];
  }

  else
  {
    CCSetError();
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_name)
  {
    v4 = [(CCMediaSongArtist *)self name];
    [v3 setObject:v4 forKeyedSubscript:@"name"];
  }

  v5 = [v3 copy];

  return v5;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  if (self->_name)
  {
    v6 = MEMORY[0x1E69939F0];
    v7 = a3;
    v8 = [[v6 alloc] initWithFieldType:18564 stringValue:self->_name];
    (*(a3 + 2))(v7, v8);
  }
}

- (NSString)name
{
  v2 = [(NSString *)self->_name copy];

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
    goto LABEL_30;
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
        if (v17 == -1 || v17 >= *&v6[*v8])
        {
          break;
        }

        v18 = *(*&v6[*v11] + v17);
        *&v6[v16] = v17 + 1;
        v15 |= (v18 & 0x7F) << v13;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v20 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_31;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v21 = *&v6[*v9];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15;
      }

      if (v21)
      {
        goto LABEL_31;
      }

LABEL_21:
      if ((v20 >> 3) == 1)
      {
        v22 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        name = self->_name;
        self->_name = v22;
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v10 = 0;
          goto LABEL_27;
        }

        v24 = objc_opt_class();
        name = NSStringFromClass(v24);
        v25 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
      }

LABEL_27:
      if (*&v6[*v7] < *&v6[*v8])
      {
        continue;
      }
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_32;
  }

LABEL_30:
  if (!*&v6[*v9])
  {
    v29 = 1;
    goto LABEL_34;
  }

LABEL_31:
  v26 = objc_opt_class();
  v10 = NSStringFromClass(v26);
  v27 = *&v6[*v9];
  v28 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_32:
  v29 = 0;
LABEL_34:

  return v29;
}

- (CCMediaSongArtist)initWithName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  if (v6)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v9 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v11 = 0;
      goto LABEL_7;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 immutableData];
  self = [(CCItemMessage *)self initWithData:v10 error:a4];

  v11 = self;
LABEL_7:

  return v11;
}

@end