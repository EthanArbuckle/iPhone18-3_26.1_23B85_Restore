@interface CCToolKitToolContentItemClassDescriptor
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolContentItemClassDescriptor)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolContentItemClassDescriptor)initWithKind:(id)kind kindType:(unsigned int)type error:(id *)error;
- (CCToolKitToolContentItemClassDescriptorLinkCodableContentItemClass)linkCodableContentItemClass;
- (CCToolKitToolContentItemClassDescriptorLinkEntityContentItemClass)linkEntityContentItemClass;
- (CCToolKitToolContentItemClassDescriptorLinkEnumContentItemClass)linkEnumContentItemClass;
- (NSString)regularContentItemClass;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolContentItemClassDescriptor

- (CCToolKitToolContentItemClassDescriptor)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v28[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"regularContentItemClass"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"linkEntityContentItemClass"];
    if (v10)
    {
      v28[0] = 0;
      v11 = [[CCToolKitToolContentItemClassDescriptorLinkEntityContentItemClass alloc] initWithJSONDictionary:v10 error:v28];
      v12 = v28[0];
      v13 = v12;
      if (!v11 || v12)
      {
        CCSetError();
        v20 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v10 = v11;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"linkEnumContentItemClass"];
    if (v13)
    {
      v27 = 0;
      v14 = [[CCToolKitToolContentItemClassDescriptorLinkEnumContentItemClass alloc] initWithJSONDictionary:v13 error:&v27];
      v15 = v27;
      v11 = v15;
      if (!v14 || v15)
      {
        CCSetError();
        goto LABEL_20;
      }

      v13 = v14;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"linkCodableContentItemClass"];
    if (!v11)
    {
LABEL_14:
      if (v9)
      {
        v18 = v9;
        v19 = 1;
      }

      else
      {
        v19 = 0;
      }

      selfCopy = self;
      v14 = v9;
      if (v10)
      {
        v14 = v10;

        v19 = 2;
      }

      v21 = v9;
      if (v13)
      {
        v22 = v13;

        v19 = 3;
        v14 = v22;
      }

      if (v11)
      {
        v23 = v11;

        v19 = 4;
        v14 = v23;
      }

      v9 = v21;
      v20 = [[CCToolKitToolContentItemClassDescriptor alloc] initWithKind:v14 kindType:v19 error:error];
      self = selfCopy;
      goto LABEL_29;
    }

    v26 = 0;
    v16 = [[CCToolKitToolContentItemClassDescriptorLinkCodableContentItemClass alloc] initWithJSONDictionary:v11 error:&v26];
    v17 = v26;
    v14 = v17;
    if (v16 && !v17)
    {

      v11 = v16;
      goto LABEL_14;
    }

    CCSetError();

LABEL_20:
    v20 = 0;
LABEL_29:

    goto LABEL_30;
  }

  CCSetError();
  v20 = 0;
LABEL_31:

  return v20;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    if (!self->_regularContentItemClass)
    {
      goto LABEL_13;
    }

    regularContentItemClass = [(CCToolKitToolContentItemClassDescriptor *)self regularContentItemClass];
    [v3 setObject:regularContentItemClass forKeyedSubscript:@"regularContentItemClass"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    if (!self->_linkEntityContentItemClass)
    {
      goto LABEL_13;
    }

    linkEntityContentItemClass = [(CCToolKitToolContentItemClassDescriptor *)self linkEntityContentItemClass];
    jsonDictionary = [linkEntityContentItemClass jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"linkEntityContentItemClass"];

    kindType = self->_kindType;
  }

  if (kindType == 3)
  {
    if (!self->_linkEnumContentItemClass)
    {
      goto LABEL_13;
    }

    linkEnumContentItemClass = [(CCToolKitToolContentItemClassDescriptor *)self linkEnumContentItemClass];
    jsonDictionary2 = [linkEnumContentItemClass jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"linkEnumContentItemClass"];

    kindType = self->_kindType;
  }

  if (kindType == 4 && self->_linkCodableContentItemClass)
  {
    linkCodableContentItemClass = [(CCToolKitToolContentItemClassDescriptor *)self linkCodableContentItemClass];
    jsonDictionary3 = [linkCodableContentItemClass jsonDictionary];
    [v3 setObject:jsonDictionary3 forKeyedSubscript:@"linkCodableContentItemClass"];
  }

LABEL_13:
  v12 = [v3 copy];

  return v12;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v12 = blockCopy;
  if (self->_regularContentItemClass)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_regularContentItemClass];
    v12[2](v12, v7);
  }

  if (self->_linkEntityContentItemClass)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_linkEntityContentItemClass];
    v12[2](v12, v8);
  }

  if (self->_linkEnumContentItemClass)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_linkEnumContentItemClass];
    v12[2](v12, v9);
  }

  v10 = v12;
  if (self->_linkCodableContentItemClass)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_linkCodableContentItemClass];
    v12[2](v12, v11);

    v10 = v12;
  }
}

- (CCToolKitToolContentItemClassDescriptorLinkCodableContentItemClass)linkCodableContentItemClass
{
  v2 = [(CCToolKitToolContentItemClassDescriptorLinkCodableContentItemClass *)self->_linkCodableContentItemClass copy];

  return v2;
}

- (CCToolKitToolContentItemClassDescriptorLinkEnumContentItemClass)linkEnumContentItemClass
{
  v2 = [(CCToolKitToolContentItemClassDescriptorLinkEnumContentItemClass *)self->_linkEnumContentItemClass copy];

  return v2;
}

- (CCToolKitToolContentItemClassDescriptorLinkEntityContentItemClass)linkEntityContentItemClass
{
  v2 = [(CCToolKitToolContentItemClassDescriptorLinkEntityContentItemClass *)self->_linkEntityContentItemClass copy];

  return v2;
}

- (NSString)regularContentItemClass
{
  v2 = [(NSString *)self->_regularContentItemClass copy];

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
    goto LABEL_40;
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
            goto LABEL_41;
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
        goto LABEL_41;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 2)
      {
        if (v23 == 3)
        {
          v45 = [CCToolKitToolContentItemClassDescriptorLinkEnumContentItemClass alloc];
          v46 = CCPBReaderReadDataNoCopy();
          v59 = 0;
          v47 = [(CCItemMessage *)v45 initWithData:v46 error:&v59];
          v10 = v59;
          linkEnumContentItemClass = self->_linkEnumContentItemClass;
          self->_linkEnumContentItemClass = v47;

          if (v10)
          {
            goto LABEL_37;
          }

          regularContentItemClass = self->_regularContentItemClass;
          self->_regularContentItemClass = 0;

          linkEntityContentItemClass = self->_linkEntityContentItemClass;
          self->_linkEntityContentItemClass = 0;

          self->_kindType = 3;
          goto LABEL_36;
        }

        if (v23 == 4)
        {
          v30 = [CCToolKitToolContentItemClassDescriptorLinkCodableContentItemClass alloc];
          v31 = CCPBReaderReadDataNoCopy();
          v58 = 0;
          v32 = [(CCItemMessage *)v30 initWithData:v31 error:&v58];
          v10 = v58;
          linkCodableContentItemClass = self->_linkCodableContentItemClass;
          self->_linkCodableContentItemClass = v32;

          if (!v10)
          {
            v34 = self->_regularContentItemClass;
            self->_regularContentItemClass = 0;

            v35 = self->_linkEntityContentItemClass;
            self->_linkEntityContentItemClass = 0;

            v36 = self->_linkEnumContentItemClass;
            self->_linkEnumContentItemClass = 0;

            self->_kindType = 4;
          }

LABEL_37:
          if (*&v6[*v7] < *&v6[*v8])
          {
            continue;
          }

          break;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v40 = CCPBReaderReadStringNoCopy();
          v41 = self->_regularContentItemClass;
          self->_regularContentItemClass = v40;

          self->_kindType = 1;
          v42 = self->_linkEntityContentItemClass;
          self->_linkEntityContentItemClass = 0;

          v43 = self->_linkEnumContentItemClass;
          self->_linkEnumContentItemClass = 0;

          v44 = self->_linkCodableContentItemClass;
          self->_linkCodableContentItemClass = 0;

LABEL_33:
          v10 = 0;
          goto LABEL_37;
        }

        if (v23 == 2)
        {
          v24 = [CCToolKitToolContentItemClassDescriptorLinkEntityContentItemClass alloc];
          v25 = CCPBReaderReadDataNoCopy();
          v60 = 0;
          v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v60];
          v10 = v60;
          v27 = self->_linkEntityContentItemClass;
          self->_linkEntityContentItemClass = v26;

          if (v10)
          {
            goto LABEL_37;
          }

          v28 = self->_regularContentItemClass;
          self->_regularContentItemClass = 0;

          self->_kindType = 2;
          v29 = self->_linkEnumContentItemClass;
          self->_linkEnumContentItemClass = 0;

LABEL_36:
          v51 = self->_linkCodableContentItemClass;
          self->_linkCodableContentItemClass = 0;

          goto LABEL_37;
        }
      }

      if ((CCPBReaderSkipValueWithTag() & 1) == 0)
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();

        goto LABEL_37;
      }

      goto LABEL_33;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_42;
  }

LABEL_40:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v56 = 1;
    goto LABEL_44;
  }

LABEL_41:
  v52 = objc_opt_class();
  v53 = NSStringFromClass(v52);
  v54 = *&v6[*v9];
  v55 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_42:
  v56 = 0;
LABEL_44:

  return v56;
}

- (CCToolKitToolContentItemClassDescriptor)initWithKind:(id)kind kindType:(unsigned int)type error:(id *)error
{
  kindCopy = kind;
  v9 = objc_opt_new();
  if (!kindCopy || type != 1)
  {
    if (kindCopy && type == 2)
    {
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v11 = 0;
      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_18;
      }
    }

    else if (kindCopy && type == 3)
    {
      objc_opt_class();
      v13 = CCValidateIsInstanceOfExpectedClass();
      v11 = 0;
      if (!v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = 0;
      if (!kindCopy || type != 4)
      {
        goto LABEL_17;
      }

      objc_opt_class();
      v19 = 0;
      v14 = CCValidateIsInstanceOfExpectedClass();
      v11 = 0;
      if (!v14)
      {
LABEL_18:
        CCSetError();
        selfCopy = 0;
        goto LABEL_19;
      }
    }

    data = [kindCopy data];
    CCPBDataWriterWriteDataField();

    goto LABEL_17;
  }

  objc_opt_class();
  v10 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if (!v10)
  {
    goto LABEL_18;
  }

  CCPBDataWriterWriteStringField();
LABEL_17:
  immutableData = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_19:

  return selfCopy;
}

@end