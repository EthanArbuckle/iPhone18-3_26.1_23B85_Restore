@interface CCToolKitToolTypeIdentifier
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypeIdentifier)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypeIdentifier)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5;
- (CCToolKitToolTypeIdentifierAttributed)attributed;
- (CCToolKitToolTypeIdentifierBuiltin)builtin;
- (CCToolKitToolTypeIdentifierCodable)codable;
- (CCToolKitToolTypeIdentifierCustom)custom;
- (CCToolKitToolTypeIdentifierPrimitive)primitive;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypeIdentifier

- (CCToolKitToolTypeIdentifier)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v33[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"primitive"];
    if (v9)
    {
      v33[0] = 0;
      v10 = [[CCToolKitToolTypeIdentifierPrimitive alloc] initWithJSONDictionary:v9 error:v33];
      v11 = v33[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v23 = 0;
LABEL_44:

        goto LABEL_45;
      }

      v9 = v10;
    }

    v12 = [v6 objectForKeyedSubscript:@"custom"];
    if (v12)
    {
      v32 = 0;
      v13 = [[CCToolKitToolTypeIdentifierCustom alloc] initWithJSONDictionary:v12 error:&v32];
      v14 = v32;
      v10 = v14;
      if (!v13 || v14)
      {
        CCSetError();
        v23 = 0;
LABEL_43:

        goto LABEL_44;
      }

      v12 = v13;
    }

    v10 = [v6 objectForKeyedSubscript:@"builtin"];
    if (v10)
    {
      v31 = 0;
      v15 = [[CCToolKitToolTypeIdentifierBuiltin alloc] initWithJSONDictionary:v10 error:&v31];
      v16 = v31;
      v13 = v16;
      if (!v15 || v16)
      {
        CCSetError();
        v23 = 0;
LABEL_42:

        goto LABEL_43;
      }

      v10 = v15;
    }

    v13 = [v6 objectForKeyedSubscript:@"attributed"];
    v28 = self;
    if (v13)
    {
      v30 = 0;
      v17 = [[CCToolKitToolTypeIdentifierAttributed alloc] initWithJSONDictionary:v13 error:&v30];
      v18 = v30;
      v15 = v18;
      if (!v17 || v18)
      {
        CCSetError();
        goto LABEL_30;
      }

      v13 = v17;
    }

    v15 = [v6 objectForKeyedSubscript:@"codable"];
    if (!v15)
    {
LABEL_22:
      if (v9)
      {
        v21 = v9;
        v22 = 1;
      }

      else
      {
        v22 = 0;
      }

      v17 = v9;
      if (v12)
      {
        v17 = v12;

        v22 = 2;
      }

      if (v10)
      {
        v25 = v10;

        v22 = 3;
        v17 = v25;
      }

      if (v13)
      {
        v26 = v13;

        v22 = 4;
        v17 = v26;
      }

      if (v15)
      {
        v27 = v15;

        v22 = 5;
        v17 = v27;
      }

      v23 = [[CCToolKitToolTypeIdentifier alloc] initWithKind:v17 kindType:v22 error:a4];
      goto LABEL_41;
    }

    v29 = 0;
    v19 = [[CCToolKitToolTypeIdentifierCodable alloc] initWithJSONDictionary:v15 error:&v29];
    v20 = v29;
    v17 = v20;
    if (v19 && !v20)
    {

      v15 = v19;
      goto LABEL_22;
    }

    CCSetError();

LABEL_30:
    v23 = 0;
LABEL_41:

    self = v28;
    goto LABEL_42;
  }

  CCSetError();
  v23 = 0;
LABEL_45:

  return v23;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    if (!self->_primitive)
    {
      goto LABEL_16;
    }

    v5 = [(CCToolKitToolTypeIdentifier *)self primitive];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"primitive"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    if (!self->_custom)
    {
      goto LABEL_16;
    }

    v7 = [(CCToolKitToolTypeIdentifier *)self custom];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"custom"];

    kindType = self->_kindType;
  }

  if (kindType == 3)
  {
    if (!self->_builtin)
    {
      goto LABEL_16;
    }

    v9 = [(CCToolKitToolTypeIdentifier *)self builtin];
    v10 = [v9 jsonDictionary];
    [v3 setObject:v10 forKeyedSubscript:@"builtin"];

    kindType = self->_kindType;
  }

  if (kindType == 4)
  {
    if (!self->_attributed)
    {
      goto LABEL_16;
    }

    v11 = [(CCToolKitToolTypeIdentifier *)self attributed];
    v12 = [v11 jsonDictionary];
    [v3 setObject:v12 forKeyedSubscript:@"attributed"];

    kindType = self->_kindType;
  }

  if (kindType == 5 && self->_codable)
  {
    v13 = [(CCToolKitToolTypeIdentifier *)self codable];
    v14 = [v13 jsonDictionary];
    [v3 setObject:v14 forKeyedSubscript:@"codable"];
  }

LABEL_16:
  v15 = [v3 copy];

  return v15;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v13 = v5;
  if (self->_primitive)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_primitive];
    v13[2](v13, v7);
  }

  if (self->_custom)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_custom];
    v13[2](v13, v8);
  }

  if (self->_builtin)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_builtin];
    v13[2](v13, v9);
  }

  if (self->_attributed)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_attributed];
    v13[2](v13, v10);
  }

  v11 = v13;
  if (self->_codable)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_codable];
    v13[2](v13, v12);

    v11 = v13;
  }
}

- (CCToolKitToolTypeIdentifierCodable)codable
{
  v2 = [(CCToolKitToolTypeIdentifierCodable *)self->_codable copy];

  return v2;
}

- (CCToolKitToolTypeIdentifierAttributed)attributed
{
  v2 = [(CCToolKitToolTypeIdentifierAttributed *)self->_attributed copy];

  return v2;
}

- (CCToolKitToolTypeIdentifierBuiltin)builtin
{
  v2 = [(CCToolKitToolTypeIdentifierBuiltin *)self->_builtin copy];

  return v2;
}

- (CCToolKitToolTypeIdentifierCustom)custom
{
  v2 = [(CCToolKitToolTypeIdentifierCustom *)self->_custom copy];

  return v2;
}

- (CCToolKitToolTypeIdentifierPrimitive)primitive
{
  v2 = [(CCToolKitToolTypeIdentifierPrimitive *)self->_primitive copy];

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
    goto LABEL_46;
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
            goto LABEL_47;
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
        goto LABEL_47;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) <= 2)
      {
        if (v23 == 1)
        {
          v50 = [CCToolKitToolTypeIdentifierPrimitive alloc];
          v51 = CCPBReaderReadDataNoCopy();
          v71 = 0;
          v52 = [(CCItemMessage *)v50 initWithData:v51 error:&v71];
          v10 = v71;
          primitive = self->_primitive;
          self->_primitive = v52;

          if (v10)
          {
            goto LABEL_43;
          }

          self->_kindType = 1;
          custom = self->_custom;
          self->_custom = 0;
        }

        else
        {
          if (v23 != 2)
          {
            goto LABEL_40;
          }

          v32 = [CCToolKitToolTypeIdentifierCustom alloc];
          v33 = CCPBReaderReadDataNoCopy();
          v70 = 0;
          v34 = [(CCItemMessage *)v32 initWithData:v33 error:&v70];
          v10 = v70;
          v35 = self->_custom;
          self->_custom = v34;

          if (v10)
          {
            goto LABEL_43;
          }

          v36 = self->_primitive;
          self->_primitive = 0;

          self->_kindType = 2;
        }

        builtin = self->_builtin;
        self->_builtin = 0;
      }

      else
      {
        if (v23 != 3)
        {
          if (v23 != 4)
          {
            if (v23 == 5)
            {
              v24 = [CCToolKitToolTypeIdentifierCodable alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v67 = 0;
              v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v67];
              v10 = v67;
              codable = self->_codable;
              self->_codable = v26;

              if (!v10)
              {
                v28 = self->_primitive;
                self->_primitive = 0;

                v29 = self->_custom;
                self->_custom = 0;

                v30 = self->_builtin;
                self->_builtin = 0;

                attributed = self->_attributed;
                self->_attributed = 0;

                self->_kindType = 5;
              }

LABEL_43:
              if (*&v6[*v7] < *&v6[*v8])
              {
                continue;
              }

              break;
            }

LABEL_40:
            if (CCPBReaderSkipValueWithTag())
            {
              v10 = 0;
            }

            else
            {
              v58 = objc_opt_class();
              v59 = NSStringFromClass(v58);
              v60 = *&v6[*v9];
              v10 = CCSkipFieldErrorForMessage();
            }

            goto LABEL_43;
          }

          v43 = [CCToolKitToolTypeIdentifierAttributed alloc];
          v44 = CCPBReaderReadDataNoCopy();
          v68 = 0;
          v45 = [(CCItemMessage *)v43 initWithData:v44 error:&v68];
          v10 = v68;
          v46 = self->_attributed;
          self->_attributed = v45;

          if (v10)
          {
            goto LABEL_43;
          }

          v47 = self->_primitive;
          self->_primitive = 0;

          v48 = self->_custom;
          self->_custom = 0;

          v49 = self->_builtin;
          self->_builtin = 0;

          self->_kindType = 4;
LABEL_39:
          v57 = self->_codable;
          self->_codable = 0;

          goto LABEL_43;
        }

        v37 = [CCToolKitToolTypeIdentifierBuiltin alloc];
        v38 = CCPBReaderReadDataNoCopy();
        v69 = 0;
        v39 = [(CCItemMessage *)v37 initWithData:v38 error:&v69];
        v10 = v69;
        v40 = self->_builtin;
        self->_builtin = v39;

        if (v10)
        {
          goto LABEL_43;
        }

        v41 = self->_primitive;
        self->_primitive = 0;

        v42 = self->_custom;
        self->_custom = 0;

        self->_kindType = 3;
      }

      v56 = self->_attributed;
      self->_attributed = 0;

      goto LABEL_39;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_48;
  }

LABEL_46:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v65 = 1;
    goto LABEL_50;
  }

LABEL_47:
  v61 = objc_opt_class();
  v62 = NSStringFromClass(v61);
  v63 = *&v6[*v9];
  v64 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_48:
  v65 = 0;
LABEL_50:

  return v65;
}

- (CCToolKitToolTypeIdentifier)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  if (v8 && a4 == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      goto LABEL_20;
    }

LABEL_22:
    CCSetError();
    v18 = 0;
    goto LABEL_23;
  }

  if (v8 && a4 == 2)
  {
    objc_opt_class();
    v12 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v12)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if (v8 && a4 == 3)
  {
    objc_opt_class();
    v13 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v13)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if (v8 && a4 == 4)
  {
    objc_opt_class();
    v14 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v14)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v11 = 0;
  if (!v8 || a4 != 5)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  v15 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if ((v15 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  v16 = [v8 data];
  CCPBDataWriterWriteDataField();

LABEL_21:
  v17 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v17 error:a5];

  v18 = self;
LABEL_23:

  return v18;
}

@end