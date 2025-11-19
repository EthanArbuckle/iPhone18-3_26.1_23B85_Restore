@interface CCToolKitToolTypedValue
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValue)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValue)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5;
- (CCToolKitToolTypedValueCodableValue)codable;
- (CCToolKitToolTypedValueCollectionValue)collection;
- (CCToolKitToolTypedValueDeferredValue)deferred;
- (CCToolKitToolTypedValueEntityIdentifierValue)entityIdentifier;
- (CCToolKitToolTypedValueEntityValue)entity;
- (CCToolKitToolTypedValueEnumerationValue)enumeration;
- (CCToolKitToolTypedValuePrimitiveValue)primitive;
- (CCToolKitToolTypedValueQueryValue)query;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypedValue

- (CCToolKitToolTypedValue)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v55[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"primitive"];
    if (v9)
    {
      v55[0] = 0;
      v10 = [[CCToolKitToolTypedValuePrimitiveValue alloc] initWithJSONDictionary:v9 error:v55];
      v11 = v55[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v25 = 0;
LABEL_72:

        goto LABEL_73;
      }

      v9 = v10;
    }

    v12 = [v6 objectForKeyedSubscript:@"enumeration"];
    if (v12)
    {
      v54 = 0;
      v13 = [[CCToolKitToolTypedValueEnumerationValue alloc] initWithJSONDictionary:v12 error:&v54];
      v14 = v54;
      v10 = v14;
      if (!v13 || v14)
      {
        CCSetError();
        v25 = 0;
LABEL_71:

        goto LABEL_72;
      }

      v12 = v13;
    }

    v10 = [v6 objectForKeyedSubscript:@"entity"];
    if (v10)
    {
      v53 = 0;
      v15 = [[CCToolKitToolTypedValueEntityValue alloc] initWithJSONDictionary:v10 error:&v53];
      v16 = v53;
      v13 = v16;
      if (!v15 || v16)
      {
        CCSetError();
        v25 = 0;
LABEL_70:

        goto LABEL_71;
      }

      v10 = v15;
    }

    v13 = [v6 objectForKeyedSubscript:@"collection"];
    if (v13)
    {
      v52 = 0;
      v17 = [[CCToolKitToolTypedValueCollectionValue alloc] initWithJSONDictionary:v13 error:&v52];
      v18 = v52;
      v15 = v18;
      if (!v17 || v18)
      {
        CCSetError();
        v25 = 0;
LABEL_69:

        goto LABEL_70;
      }

      v13 = v17;
    }

    v15 = [v6 objectForKeyedSubscript:@"query"];
    if (v15)
    {
      v45 = self;
      v51 = 0;
      v19 = v15;
      v15 = [[CCToolKitToolTypedValueQueryValue alloc] initWithJSONDictionary:v15 error:&v51];
      v20 = v51;
      v17 = v20;
      v47 = v15;
      if (!v15 || v20)
      {
        CCSetError();
        v25 = 0;
        v15 = v19;
        self = v45;
LABEL_68:

        goto LABEL_69;
      }

      self = v45;
    }

    v21 = [v6 objectForKeyedSubscript:@"entityIdentifier"];
    v44 = v15;
    if (v21)
    {
      v17 = v21;
      v50 = 0;
      v22 = [[CCToolKitToolTypedValueEntityIdentifierValue alloc] initWithJSONDictionary:v21 error:&v50];
      v23 = v50;
      v46 = v22;
      if (!v22 || v23)
      {
        v47 = v23;
        CCSetError();
        v25 = 0;
        v15 = v44;
LABEL_67:

        goto LABEL_68;
      }

      v15 = v44;
      v24 = v46;
    }

    else
    {
      v24 = 0;
    }

    v43 = v24;
    v26 = [v6 objectForKeyedSubscript:@"deferred"];
    if (v26)
    {
      v49 = 0;
      v47 = v26;
      v27 = [[CCToolKitToolTypedValueDeferredValue alloc] initWithJSONDictionary:v26 error:&v49];
      v28 = v49;
      if (!v27 || v28)
      {
        v46 = v28;
        CCSetError();
        goto LABEL_48;
      }

      v47 = v27;
      v15 = v44;
    }

    else
    {
      v47 = 0;
    }

    v29 = [v6 objectForKeyedSubscript:@"codable"];
    if (!v29)
    {
      v32 = 0;
      goto LABEL_45;
    }

    v48 = 0;
    v46 = v29;
    v30 = [[CCToolKitToolTypedValueCodableValue alloc] initWithJSONDictionary:v29 error:&v48];
    v31 = v48;
    v27 = v31;
    if (v30 && !v31)
    {

      v32 = v30;
      v15 = v44;
LABEL_45:
      v46 = v32;
      if (v9)
      {
        v33 = v9;
        v34 = 1;
      }

      else
      {
        v34 = 0;
      }

      v27 = v9;
      if (v12)
      {
        v27 = v12;

        v34 = 2;
      }

      if (v10)
      {
        v37 = v10;

        v34 = 3;
        v27 = v37;
      }

      if (v13)
      {
        v38 = v13;

        v34 = 4;
        v27 = v38;
      }

      if (v15)
      {
        v39 = v15;

        v34 = 5;
        v27 = v39;
      }

      if (v43)
      {
        v40 = v43;

        v34 = 6;
        v27 = v40;
      }

      if (v47)
      {
        v41 = v47;

        v34 = 7;
        v27 = v41;
      }

      if (v46)
      {
        v36 = v46;

        v42 = 8;
        v27 = v36;
      }

      else
      {
        v42 = v34;
      }

      v25 = [[CCToolKitToolTypedValue alloc] initWithKind:v27 kindType:v42 error:a4];
      goto LABEL_66;
    }

    CCSetError();

LABEL_48:
    v25 = 0;
    v15 = v44;
LABEL_66:

    v17 = v43;
    goto LABEL_67;
  }

  CCSetError();
  v25 = 0;
LABEL_73:

  return v25;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    if (!self->_primitive)
    {
      goto LABEL_25;
    }

    v5 = [(CCToolKitToolTypedValue *)self primitive];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"primitive"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    if (!self->_enumeration)
    {
      goto LABEL_25;
    }

    v7 = [(CCToolKitToolTypedValue *)self enumeration];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"enumeration"];

    kindType = self->_kindType;
  }

  if (kindType == 3)
  {
    if (!self->_entity)
    {
      goto LABEL_25;
    }

    v9 = [(CCToolKitToolTypedValue *)self entity];
    v10 = [v9 jsonDictionary];
    [v3 setObject:v10 forKeyedSubscript:@"entity"];

    kindType = self->_kindType;
  }

  if (kindType == 4)
  {
    if (!self->_collection)
    {
      goto LABEL_25;
    }

    v11 = [(CCToolKitToolTypedValue *)self collection];
    v12 = [v11 jsonDictionary];
    [v3 setObject:v12 forKeyedSubscript:@"collection"];

    kindType = self->_kindType;
  }

  if (kindType == 5)
  {
    if (!self->_query)
    {
      goto LABEL_25;
    }

    v13 = [(CCToolKitToolTypedValue *)self query];
    v14 = [v13 jsonDictionary];
    [v3 setObject:v14 forKeyedSubscript:@"query"];

    kindType = self->_kindType;
  }

  if (kindType == 6)
  {
    if (!self->_entityIdentifier)
    {
      goto LABEL_25;
    }

    v15 = [(CCToolKitToolTypedValue *)self entityIdentifier];
    v16 = [v15 jsonDictionary];
    [v3 setObject:v16 forKeyedSubscript:@"entityIdentifier"];

    kindType = self->_kindType;
  }

  if (kindType == 7)
  {
    if (!self->_deferred)
    {
      goto LABEL_25;
    }

    v17 = [(CCToolKitToolTypedValue *)self deferred];
    v18 = [v17 jsonDictionary];
    [v3 setObject:v18 forKeyedSubscript:@"deferred"];

    kindType = self->_kindType;
  }

  if (kindType == 8 && self->_codable)
  {
    v19 = [(CCToolKitToolTypedValue *)self codable];
    v20 = [v19 jsonDictionary];
    [v3 setObject:v20 forKeyedSubscript:@"codable"];
  }

LABEL_25:
  v21 = [v3 copy];

  return v21;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v16 = v5;
  if (self->_primitive)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_primitive];
    v16[2](v16, v7);
  }

  if (self->_enumeration)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_enumeration];
    v16[2](v16, v8);
  }

  if (self->_entity)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_entity];
    v16[2](v16, v9);
  }

  if (self->_collection)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_collection];
    v16[2](v16, v10);
  }

  if (self->_query)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_query];
    v16[2](v16, v11);
  }

  if (self->_entityIdentifier)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_entityIdentifier];
    v16[2](v16, v12);
  }

  if (self->_deferred)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_deferred];
    v16[2](v16, v13);
  }

  v14 = v16;
  if (self->_codable)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_codable];
    v16[2](v16, v15);

    v14 = v16;
  }
}

- (CCToolKitToolTypedValueCodableValue)codable
{
  v2 = [(CCToolKitToolTypedValueCodableValue *)self->_codable copy];

  return v2;
}

- (CCToolKitToolTypedValueDeferredValue)deferred
{
  v2 = [(CCToolKitToolTypedValueDeferredValue *)self->_deferred copy];

  return v2;
}

- (CCToolKitToolTypedValueEntityIdentifierValue)entityIdentifier
{
  v2 = [(CCToolKitToolTypedValueEntityIdentifierValue *)self->_entityIdentifier copy];

  return v2;
}

- (CCToolKitToolTypedValueQueryValue)query
{
  v2 = [(CCToolKitToolTypedValueQueryValue *)self->_query copy];

  return v2;
}

- (CCToolKitToolTypedValueCollectionValue)collection
{
  v2 = [(CCToolKitToolTypedValueCollectionValue *)self->_collection copy];

  return v2;
}

- (CCToolKitToolTypedValueEntityValue)entity
{
  v2 = [(CCToolKitToolTypedValueEntityValue *)self->_entity copy];

  return v2;
}

- (CCToolKitToolTypedValueEnumerationValue)enumeration
{
  v2 = [(CCToolKitToolTypedValueEnumerationValue *)self->_enumeration copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValue)primitive
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValue *)self->_primitive copy];

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
    goto LABEL_61;
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
            goto LABEL_62;
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
        goto LABEL_62;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) <= 4)
      {
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            v70 = [CCToolKitToolTypedValueEntityValue alloc];
            v71 = CCPBReaderReadDataNoCopy();
            v105 = 0;
            v72 = [(CCItemMessage *)v70 initWithData:v71 error:&v105];
            v10 = v105;
            entity = self->_entity;
            self->_entity = v72;

            if (v10)
            {
              goto LABEL_52;
            }

            primitive = self->_primitive;
            self->_primitive = 0;

            enumeration = self->_enumeration;
            self->_enumeration = 0;

            self->_kindType = 3;
            goto LABEL_47;
          }

          if (v23 == 4)
          {
            v38 = [CCToolKitToolTypedValueCollectionValue alloc];
            v39 = CCPBReaderReadDataNoCopy();
            v104 = 0;
            v40 = [(CCItemMessage *)v38 initWithData:v39 error:&v104];
            v10 = v104;
            collection = self->_collection;
            self->_collection = v40;

            if (v10)
            {
              goto LABEL_52;
            }

            v42 = self->_primitive;
            self->_primitive = 0;

            v43 = self->_enumeration;
            self->_enumeration = 0;

            v44 = self->_entity;
            self->_entity = 0;

            self->_kindType = 4;
            goto LABEL_48;
          }
        }

        else
        {
          if (v23 == 1)
          {
            v56 = [CCToolKitToolTypedValuePrimitiveValue alloc];
            v57 = CCPBReaderReadDataNoCopy();
            v107 = 0;
            v58 = [(CCItemMessage *)v56 initWithData:v57 error:&v107];
            v10 = v107;
            v59 = self->_primitive;
            self->_primitive = v58;

            if (v10)
            {
              goto LABEL_52;
            }

            self->_kindType = 1;
            v60 = self->_enumeration;
            self->_enumeration = 0;

            goto LABEL_42;
          }

          if (v23 == 2)
          {
            v24 = [CCToolKitToolTypedValueEnumerationValue alloc];
            v25 = CCPBReaderReadDataNoCopy();
            v106 = 0;
            v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v106];
            v10 = v106;
            v27 = self->_enumeration;
            self->_enumeration = v26;

            if (v10)
            {
              goto LABEL_52;
            }

            v28 = self->_primitive;
            self->_primitive = 0;

            self->_kindType = 2;
LABEL_42:
            v61 = self->_entity;
            self->_entity = 0;

LABEL_47:
            v76 = self->_collection;
            self->_collection = 0;

LABEL_48:
            query = self->_query;
            self->_query = 0;

LABEL_49:
            entityIdentifier = self->_entityIdentifier;
            self->_entityIdentifier = 0;

LABEL_50:
            deferred = self->_deferred;
            self->_deferred = 0;

LABEL_51:
            codable = self->_codable;
            self->_codable = 0;

            goto LABEL_52;
          }
        }

        goto LABEL_56;
      }

      if (v23 <= 6)
      {
        if (v23 == 5)
        {
          v62 = [CCToolKitToolTypedValueQueryValue alloc];
          v63 = CCPBReaderReadDataNoCopy();
          v103 = 0;
          v64 = [(CCItemMessage *)v62 initWithData:v63 error:&v103];
          v10 = v103;
          v65 = self->_query;
          self->_query = v64;

          if (v10)
          {
            goto LABEL_52;
          }

          v66 = self->_primitive;
          self->_primitive = 0;

          v67 = self->_enumeration;
          self->_enumeration = 0;

          v68 = self->_entity;
          self->_entity = 0;

          v69 = self->_collection;
          self->_collection = 0;

          self->_kindType = 5;
          goto LABEL_49;
        }

        if (v23 == 6)
        {
          v29 = [CCToolKitToolTypedValueEntityIdentifierValue alloc];
          v30 = CCPBReaderReadDataNoCopy();
          v102 = 0;
          v31 = [(CCItemMessage *)v29 initWithData:v30 error:&v102];
          v10 = v102;
          v32 = self->_entityIdentifier;
          self->_entityIdentifier = v31;

          if (v10)
          {
            goto LABEL_52;
          }

          v33 = self->_primitive;
          self->_primitive = 0;

          v34 = self->_enumeration;
          self->_enumeration = 0;

          v35 = self->_entity;
          self->_entity = 0;

          v36 = self->_collection;
          self->_collection = 0;

          v37 = self->_query;
          self->_query = 0;

          self->_kindType = 6;
          goto LABEL_50;
        }

        goto LABEL_56;
      }

      if (v23 == 7)
      {
        v81 = [CCToolKitToolTypedValueDeferredValue alloc];
        v82 = CCPBReaderReadDataNoCopy();
        v101 = 0;
        v83 = [(CCItemMessage *)v81 initWithData:v82 error:&v101];
        v10 = v101;
        v84 = self->_deferred;
        self->_deferred = v83;

        if (!v10)
        {
          v85 = self->_primitive;
          self->_primitive = 0;

          v86 = self->_enumeration;
          self->_enumeration = 0;

          v87 = self->_entity;
          self->_entity = 0;

          v88 = self->_collection;
          self->_collection = 0;

          v89 = self->_query;
          self->_query = 0;

          v90 = self->_entityIdentifier;
          self->_entityIdentifier = 0;

          self->_kindType = 7;
          goto LABEL_51;
        }
      }

      else
      {
        if (v23 != 8)
        {
LABEL_56:
          if (CCPBReaderSkipValueWithTag())
          {
            v10 = 0;
          }

          else
          {
            v91 = objc_opt_class();
            v92 = NSStringFromClass(v91);
            v93 = *&v6[*v9];
            v10 = CCSkipFieldErrorForMessage();
          }

          goto LABEL_52;
        }

        v45 = [CCToolKitToolTypedValueCodableValue alloc];
        v46 = CCPBReaderReadDataNoCopy();
        v100 = 0;
        v47 = [(CCItemMessage *)v45 initWithData:v46 error:&v100];
        v10 = v100;
        v48 = self->_codable;
        self->_codable = v47;

        if (!v10)
        {
          v49 = self->_primitive;
          self->_primitive = 0;

          v50 = self->_enumeration;
          self->_enumeration = 0;

          v51 = self->_entity;
          self->_entity = 0;

          v52 = self->_collection;
          self->_collection = 0;

          v53 = self->_query;
          self->_query = 0;

          v54 = self->_entityIdentifier;
          self->_entityIdentifier = 0;

          v55 = self->_deferred;
          self->_deferred = 0;

          self->_kindType = 8;
        }
      }

LABEL_52:
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
    goto LABEL_63;
  }

LABEL_61:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v98 = 1;
    goto LABEL_65;
  }

LABEL_62:
  v94 = objc_opt_class();
  v95 = NSStringFromClass(v94);
  v96 = *&v6[*v9];
  v97 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_63:
  v98 = 0;
LABEL_65:

  return v98;
}

- (CCToolKitToolTypedValue)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5
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
      goto LABEL_32;
    }

LABEL_34:
    CCSetError();
    v21 = 0;
    goto LABEL_35;
  }

  if (v8 && a4 == 2)
  {
    objc_opt_class();
    v12 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v12)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (v8 && a4 == 3)
  {
    objc_opt_class();
    v13 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v13)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (v8 && a4 == 4)
  {
    objc_opt_class();
    v14 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v14)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (v8 && a4 == 5)
  {
    objc_opt_class();
    v15 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v15)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (v8 && a4 == 6)
  {
    objc_opt_class();
    v16 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v16)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (v8 && a4 == 7)
  {
    objc_opt_class();
    v17 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v17)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  v11 = 0;
  if (!v8 || a4 != 8)
  {
    goto LABEL_33;
  }

  objc_opt_class();
  v23 = 0;
  v18 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if ((v18 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_32:
  v19 = [v8 data];
  CCPBDataWriterWriteDataField();

LABEL_33:
  v20 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v20 error:a5];

  v21 = self;
LABEL_35:

  return v21;
}

@end