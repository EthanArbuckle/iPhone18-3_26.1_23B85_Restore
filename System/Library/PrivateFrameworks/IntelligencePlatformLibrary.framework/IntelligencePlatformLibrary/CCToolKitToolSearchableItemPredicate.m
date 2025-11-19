@interface CCToolKitToolSearchableItemPredicate
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolSearchableItemPredicate)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolSearchableItemPredicate)initWithSearchableItem:(id)a3 error:(id *)a4;
- (NSData)searchableItem;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolSearchableItemPredicate

- (CCToolKitToolSearchableItemPredicate)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"searchableItem"];
    if (v9)
    {
      objc_opt_class();
      v10 = CCValidateIsInstanceOfExpectedClass();
      v11 = v8;

      if ((v10 & 1) == 0)
      {
        CCSetError();
        v13 = 0;
        goto LABEL_9;
      }

      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];

      v9 = v12;
    }

    else
    {
      v11 = v8;
    }

    v13 = [[CCToolKitToolSearchableItemPredicate alloc] initWithSearchableItem:v9 error:a4];
LABEL_9:

    v8 = v11;
    goto LABEL_10;
  }

  CCSetError();
  v13 = 0;
LABEL_10:

  return v13;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_searchableItem)
  {
    v4 = [(CCToolKitToolSearchableItemPredicate *)self searchableItem];
    v5 = [v4 base64EncodedStringWithOptions:0];
    [v3 setObject:v5 forKeyedSubscript:@"searchableItem"];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  if (self->_searchableItem)
  {
    v6 = MEMORY[0x1E69939F0];
    v7 = a3;
    v8 = [v6 alloc];
    v9 = [v8 initWithFieldType:*MEMORY[0x1E69939A8] bytesValue:self->_searchableItem];
    (*(a3 + 2))(v7, v9);
  }
}

- (NSData)searchableItem
{
  v2 = [(NSData *)self->_searchableItem copy];

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
            goto LABEL_31;
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
        goto LABEL_31;
      }

LABEL_21:
      if ((v21 >> 3) == 1)
      {
        v23 = CCPBReaderReadData();
        v10 = 0;
        searchableItem = self->_searchableItem;
        self->_searchableItem = v23;
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v10 = 0;
          goto LABEL_27;
        }

        v25 = objc_opt_class();
        searchableItem = NSStringFromClass(v25);
        v26 = *&v6[*v9];
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
    v30 = 1;
    goto LABEL_34;
  }

LABEL_31:
  v27 = objc_opt_class();
  v10 = NSStringFromClass(v27);
  v28 = *&v6[*v9];
  v29 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_32:
  v30 = 0;
LABEL_34:

  return v30;
}

- (CCToolKitToolSearchableItemPredicate)initWithSearchableItem:(id)a3 error:(id *)a4
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

    CCPBDataWriterWriteDataField();
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