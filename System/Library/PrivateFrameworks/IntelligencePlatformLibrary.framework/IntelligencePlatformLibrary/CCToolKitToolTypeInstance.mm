@interface CCToolKitToolTypeInstance
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTypeIdentifier)type;
- (CCToolKitToolTypeInstance)collection;
- (CCToolKitToolTypeInstance)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypeInstance)initWithKind:(id)kind kindType:(unsigned int)type error:(id *)error;
- (CCToolKitToolTypeInstanceConstrained)constrained;
- (CCToolKitToolTypeInstanceDeferred)deferred;
- (CCToolKitToolTypeInstanceOptional)optionalVariant;
- (CCToolKitToolTypeInstanceRestricted)restricted;
- (CCToolKitToolTypeInstanceUnion)unionType;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypeInstance

- (CCToolKitToolTypeInstance)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v44[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    if (v9)
    {
      v44[0] = 0;
      v10 = [[CCToolKitToolTypeIdentifier alloc] initWithJSONDictionary:v9 error:v44];
      v11 = v44[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v27 = 0;
LABEL_61:

        goto LABEL_62;
      }

      v9 = v10;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"collection"];
    if (v12)
    {
      v43 = 0;
      v13 = [[CCToolKitToolTypeInstance alloc] initWithJSONDictionary:v12 error:&v43];
      v14 = v43;
      v10 = v14;
      if (!v13 || v14)
      {
        CCSetError();
        v27 = 0;
LABEL_60:

        goto LABEL_61;
      }

      v12 = v13;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"optionalVariant"];
    if (v10)
    {
      v42 = 0;
      v15 = [[CCToolKitToolTypeInstanceOptional alloc] initWithJSONDictionary:v10 error:&v42];
      v16 = v42;
      v13 = v16;
      if (!v15 || v16)
      {
        CCSetError();
        v27 = 0;
LABEL_59:

        goto LABEL_60;
      }

      v10 = v15;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"unionType"];
    if (v13)
    {
      v41 = 0;
      v17 = [[CCToolKitToolTypeInstanceUnion alloc] initWithJSONDictionary:v13 error:&v41];
      v18 = v41;
      v15 = v18;
      if (!v17 || v18)
      {
        CCSetError();
        v27 = 0;
LABEL_58:

        goto LABEL_59;
      }

      v13 = v17;
    }

    selfCopy = self;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"restricted"];
    if (v15)
    {
      v40 = 0;
      v19 = [[CCToolKitToolTypeInstanceRestricted alloc] initWithJSONDictionary:v15 error:&v40];
      v20 = v40;
      v17 = v20;
      v37 = v19;
      if (!v19 || v20)
      {
        CCSetError();
        v27 = 0;
        self = selfCopy;
LABEL_57:

        goto LABEL_58;
      }

      v15 = v19;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"deferred"];
    if (v21)
    {
      v39 = 0;
      v36 = v21;
      v21 = [[CCToolKitToolTypeInstanceDeferred alloc] initWithJSONDictionary:v21 error:&v39];
      v22 = v39;
      if (!v21 || v22)
      {
        v37 = v22;
        CCSetError();
        goto LABEL_40;
      }
    }

    v36 = v21;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"constrained"];
    if (!v23)
    {
LABEL_30:
      v37 = v23;
      if (v9)
      {
        v25 = v9;
        v26 = 1;
      }

      else
      {
        v26 = 0;
      }

      self = selfCopy;
      v21 = v9;
      if (v12)
      {
        v21 = v12;

        v26 = 2;
      }

      if (v10)
      {
        v31 = v10;

        v26 = 3;
        v21 = v31;
      }

      if (v13)
      {
        v32 = v13;

        v26 = 4;
        v21 = v32;
      }

      if (v15)
      {
        v33 = v15;

        v26 = 5;
        v21 = v33;
      }

      if (v36)
      {
        v34 = v36;

        v26 = 6;
        v21 = v34;
      }

      if (v37)
      {
        v29 = v37;

        v35 = 7;
        v21 = v29;
      }

      else
      {
        v35 = v26;
      }

      v27 = [[CCToolKitToolTypeInstance alloc] initWithKind:v21 kindType:v35 error:error];
      goto LABEL_56;
    }

    v37 = v23;
    v38 = 0;
    v23 = [[CCToolKitToolTypeInstanceConstrained alloc] initWithJSONDictionary:v23 error:&v38];
    v24 = v38;
    v21 = v24;
    if (v23 && !v24)
    {

      goto LABEL_30;
    }

    CCSetError();

LABEL_40:
    v27 = 0;
    self = selfCopy;
LABEL_56:

    v17 = v36;
    goto LABEL_57;
  }

  CCSetError();
  v27 = 0;
LABEL_62:

  return v27;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    if (!self->_type)
    {
      goto LABEL_22;
    }

    type = [(CCToolKitToolTypeInstance *)self type];
    jsonDictionary = [type jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"type"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    if (!self->_collection)
    {
      goto LABEL_22;
    }

    collection = [(CCToolKitToolTypeInstance *)self collection];
    jsonDictionary2 = [collection jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"collection"];

    kindType = self->_kindType;
  }

  if (kindType == 3)
  {
    if (!self->_optionalVariant)
    {
      goto LABEL_22;
    }

    optionalVariant = [(CCToolKitToolTypeInstance *)self optionalVariant];
    jsonDictionary3 = [optionalVariant jsonDictionary];
    [v3 setObject:jsonDictionary3 forKeyedSubscript:@"optionalVariant"];

    kindType = self->_kindType;
  }

  if (kindType == 4)
  {
    if (!self->_unionType)
    {
      goto LABEL_22;
    }

    unionType = [(CCToolKitToolTypeInstance *)self unionType];
    jsonDictionary4 = [unionType jsonDictionary];
    [v3 setObject:jsonDictionary4 forKeyedSubscript:@"unionType"];

    kindType = self->_kindType;
  }

  if (kindType == 5)
  {
    if (!self->_restricted)
    {
      goto LABEL_22;
    }

    restricted = [(CCToolKitToolTypeInstance *)self restricted];
    jsonDictionary5 = [restricted jsonDictionary];
    [v3 setObject:jsonDictionary5 forKeyedSubscript:@"restricted"];

    kindType = self->_kindType;
  }

  if (kindType == 6)
  {
    if (!self->_deferred)
    {
      goto LABEL_22;
    }

    deferred = [(CCToolKitToolTypeInstance *)self deferred];
    jsonDictionary6 = [deferred jsonDictionary];
    [v3 setObject:jsonDictionary6 forKeyedSubscript:@"deferred"];

    kindType = self->_kindType;
  }

  if (kindType == 7 && self->_constrained)
  {
    constrained = [(CCToolKitToolTypeInstance *)self constrained];
    jsonDictionary7 = [constrained jsonDictionary];
    [v3 setObject:jsonDictionary7 forKeyedSubscript:@"constrained"];
  }

LABEL_22:
  v19 = [v3 copy];

  return v19;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v15 = blockCopy;
  if (self->_type)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_type];
    v15[2](v15, v7);
  }

  if (self->_collection)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_collection];
    v15[2](v15, v8);
  }

  if (self->_optionalVariant)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_optionalVariant];
    v15[2](v15, v9);
  }

  if (self->_unionType)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_unionType];
    v15[2](v15, v10);
  }

  if (self->_restricted)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_restricted];
    v15[2](v15, v11);
  }

  if (self->_deferred)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_deferred];
    v15[2](v15, v12);
  }

  v13 = v15;
  if (self->_constrained)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_constrained];
    v15[2](v15, v14);

    v13 = v15;
  }
}

- (CCToolKitToolTypeInstanceConstrained)constrained
{
  v2 = [(CCToolKitToolTypeInstanceConstrained *)self->_constrained copy];

  return v2;
}

- (CCToolKitToolTypeInstanceDeferred)deferred
{
  v2 = [(CCToolKitToolTypeInstanceDeferred *)self->_deferred copy];

  return v2;
}

- (CCToolKitToolTypeInstanceRestricted)restricted
{
  v2 = [(CCToolKitToolTypeInstanceRestricted *)self->_restricted copy];

  return v2;
}

- (CCToolKitToolTypeInstanceUnion)unionType
{
  v2 = [(CCToolKitToolTypeInstanceUnion *)self->_unionType copy];

  return v2;
}

- (CCToolKitToolTypeInstanceOptional)optionalVariant
{
  v2 = [(CCToolKitToolTypeInstanceOptional *)self->_optionalVariant copy];

  return v2;
}

- (CCToolKitToolTypeInstance)collection
{
  v2 = [(CCToolKitToolTypeInstance *)self->_collection copy];

  return v2;
}

- (CCToolKitToolTypeIdentifier)type
{
  v2 = [(CCToolKitToolTypeIdentifier *)self->_type copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_56;
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
            goto LABEL_57;
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
        goto LABEL_57;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 3)
      {
        if (v23 <= 5)
        {
          if (v23 != 4)
          {
            if (v23 == 5)
            {
              v24 = [CCToolKitToolTypeInstanceRestricted alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v90 = 0;
              v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v90];
              v10 = v90;
              restricted = self->_restricted;
              self->_restricted = v26;

              if (v10)
              {
                goto LABEL_51;
              }

              type = self->_type;
              self->_type = 0;

              collection = self->_collection;
              self->_collection = 0;

              optionalVariant = self->_optionalVariant;
              self->_optionalVariant = 0;

              unionType = self->_unionType;
              self->_unionType = 0;

              self->_kindType = 5;
              goto LABEL_49;
            }

            goto LABEL_38;
          }

          v53 = [CCToolKitToolTypeInstanceUnion alloc];
          v54 = CCPBReaderReadDataNoCopy();
          v91 = 0;
          v55 = [(CCItemMessage *)v53 initWithData:v54 error:&v91];
          v10 = v91;
          v56 = self->_unionType;
          self->_unionType = v55;

          if (v10)
          {
            goto LABEL_51;
          }

          v57 = self->_type;
          self->_type = 0;

          v58 = self->_collection;
          self->_collection = 0;

          v59 = self->_optionalVariant;
          self->_optionalVariant = 0;

          self->_kindType = 4;
LABEL_48:
          v76 = self->_restricted;
          self->_restricted = 0;

LABEL_49:
          deferred = self->_deferred;
          self->_deferred = 0;

LABEL_50:
          constrained = self->_constrained;
          self->_constrained = 0;

          goto LABEL_51;
        }

        if (v23 == 6)
        {
          v60 = [CCToolKitToolTypeInstanceDeferred alloc];
          v61 = CCPBReaderReadDataNoCopy();
          v89 = 0;
          v62 = [(CCItemMessage *)v60 initWithData:v61 error:&v89];
          v10 = v89;
          v63 = self->_deferred;
          self->_deferred = v62;

          if (v10)
          {
            goto LABEL_51;
          }

          v64 = self->_type;
          self->_type = 0;

          v65 = self->_collection;
          self->_collection = 0;

          v66 = self->_optionalVariant;
          self->_optionalVariant = 0;

          v67 = self->_unionType;
          self->_unionType = 0;

          v68 = self->_restricted;
          self->_restricted = 0;

          self->_kindType = 6;
          goto LABEL_50;
        }

        if (v23 == 7)
        {
          v38 = [CCToolKitToolTypeInstanceConstrained alloc];
          v39 = CCPBReaderReadDataNoCopy();
          v88 = 0;
          v40 = [(CCItemMessage *)v38 initWithData:v39 error:&v88];
          v10 = v88;
          v41 = self->_constrained;
          self->_constrained = v40;

          if (!v10)
          {
            v42 = self->_type;
            self->_type = 0;

            v43 = self->_collection;
            self->_collection = 0;

            v44 = self->_optionalVariant;
            self->_optionalVariant = 0;

            v45 = self->_unionType;
            self->_unionType = 0;

            v46 = self->_restricted;
            self->_restricted = 0;

            v47 = self->_deferred;
            self->_deferred = 0;

            self->_kindType = 7;
          }

LABEL_51:
          if (*&v6[*v7] < *&v6[*v8])
          {
            continue;
          }

          break;
        }

LABEL_38:
        if (CCPBReaderSkipValueWithTag())
        {
          v10 = 0;
        }

        else
        {
          v79 = objc_opt_class();
          v80 = NSStringFromClass(v79);
          v81 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
        }

        goto LABEL_51;
      }

      switch(v23)
      {
        case 1:
          v48 = [CCToolKitToolTypeIdentifier alloc];
          v49 = CCPBReaderReadDataNoCopy();
          v94 = 0;
          v50 = [(CCItemMessage *)v48 initWithData:v49 error:&v94];
          v10 = v94;
          v51 = self->_type;
          self->_type = v50;

          if (v10)
          {
            goto LABEL_51;
          }

          self->_kindType = 1;
          v52 = self->_collection;
          self->_collection = 0;

          break;
        case 2:
          v69 = [CCToolKitToolTypeInstance alloc];
          v70 = CCPBReaderReadDataNoCopy();
          v93 = 0;
          v71 = [(CCItemMessage *)v69 initWithData:v70 error:&v93];
          v10 = v93;
          v72 = self->_collection;
          self->_collection = v71;

          if (v10)
          {
            goto LABEL_51;
          }

          v73 = self->_type;
          self->_type = 0;

          self->_kindType = 2;
          break;
        case 3:
          v32 = [CCToolKitToolTypeInstanceOptional alloc];
          v33 = CCPBReaderReadDataNoCopy();
          v92 = 0;
          v34 = [(CCItemMessage *)v32 initWithData:v33 error:&v92];
          v10 = v92;
          v35 = self->_optionalVariant;
          self->_optionalVariant = v34;

          if (v10)
          {
            goto LABEL_51;
          }

          v36 = self->_type;
          self->_type = 0;

          v37 = self->_collection;
          self->_collection = 0;

          self->_kindType = 3;
LABEL_47:
          v75 = self->_unionType;
          self->_unionType = 0;

          goto LABEL_48;
        default:
          goto LABEL_38;
      }

      v74 = self->_optionalVariant;
      self->_optionalVariant = 0;

      goto LABEL_47;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_58;
  }

LABEL_56:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v86 = 1;
    goto LABEL_60;
  }

LABEL_57:
  v82 = objc_opt_class();
  v83 = NSStringFromClass(v82);
  v84 = *&v6[*v9];
  v85 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_58:
  v86 = 0;
LABEL_60:

  return v86;
}

- (CCToolKitToolTypeInstance)initWithKind:(id)kind kindType:(unsigned int)type error:(id *)error
{
  kindCopy = kind;
  v9 = objc_opt_new();
  if (kindCopy && type == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      goto LABEL_28;
    }

LABEL_30:
    CCSetError();
    selfCopy = 0;
    goto LABEL_31;
  }

  if (kindCopy && type == 2)
  {
    objc_opt_class();
    v12 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v12)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (kindCopy && type == 3)
  {
    objc_opt_class();
    v13 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v13)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (kindCopy && type == 4)
  {
    objc_opt_class();
    v14 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v14)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (kindCopy && type == 5)
  {
    objc_opt_class();
    v15 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (kindCopy && type == 6)
  {
    objc_opt_class();
    v16 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v16)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v11 = 0;
  if (!kindCopy || type != 7)
  {
    goto LABEL_29;
  }

  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_28:
  data = [kindCopy data];
  CCPBDataWriterWriteDataField();

LABEL_29:
  immutableData = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_31:

  return selfCopy;
}

@end