@interface CCToolKitToolRuntimeRequirementDeviceCapability
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolRuntimeRequirementDeviceCapability)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolRuntimeRequirementDeviceCapability)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5;
- (CCToolKitToolRuntimeRequirementDeviceCapabilityMobileGestalt)mobileGestalt;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolRuntimeRequirementDeviceCapability

- (CCToolKitToolRuntimeRequirementDeviceCapability)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v17[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"mobileGestalt"];
    if (v9)
    {
      v17[0] = 0;
      v10 = [[CCToolKitToolRuntimeRequirementDeviceCapabilityMobileGestalt alloc] initWithJSONDictionary:v9 error:v17];
      v11 = v17[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v15 = 0;
LABEL_14:

        goto LABEL_15;
      }

      v9 = v10;
    }

    v12 = [v6 objectForKeyedSubscript:@"capability"];
    if (v9)
    {
      v13 = v9;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    v10 = v9;
    if (v12)
    {
      v10 = v12;

      v14 = 2;
    }

    v15 = [[CCToolKitToolRuntimeRequirementDeviceCapability alloc] initWithKind:v10 kindType:v14 error:a4];
    goto LABEL_14;
  }

  CCSetError();
  v15 = 0;
LABEL_15:

  return v15;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    if (!self->_mobileGestalt)
    {
      goto LABEL_6;
    }

    v5 = [(CCToolKitToolRuntimeRequirementDeviceCapability *)self mobileGestalt];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"mobileGestalt"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolRuntimeRequirementDeviceCapability capability](self, "capability")}];
    [v3 setObject:v7 forKeyedSubscript:@"capability"];
  }

LABEL_6:
  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v9 = a3;
  if (self->_mobileGestalt)
  {
    v5 = objc_alloc(MEMORY[0x1E69939F0]);
    v6 = *MEMORY[0x1E69939A8];
    v7 = [v5 initWithFieldType:v6 subMessageValue:self->_mobileGestalt];
    v9[2](v9, v7);
  }

  else
  {
    v6 = *MEMORY[0x1E69939A8];
  }

  v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_capability];
  v9[2](v9, v8);
}

- (CCToolKitToolRuntimeRequirementDeviceCapabilityMobileGestalt)mobileGestalt
{
  v2 = [(CCToolKitToolRuntimeRequirementDeviceCapabilityMobileGestalt *)self->_mobileGestalt copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v43 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v43];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  v8 = MEMORY[0x1E6993AA8];
  if (*&v5[*MEMORY[0x1E6993AB8]] >= *&v5[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_42;
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
      v19 = v13++ >= 9;
      if (v19)
      {
        v20 = 0;
        if (*&v5[*v8])
        {
          goto LABEL_43;
        }

        goto LABEL_21;
      }
    }

    *&v5[*v8] = 1;
LABEL_17:
    v21 = *&v5[*v8];
    if (v21)
    {
      v20 = 0;
    }

    else
    {
      v20 = v14;
    }

    if (v21)
    {
      goto LABEL_43;
    }

LABEL_21:
    if ((v20 >> 3) == 1)
    {
      v29 = [CCToolKitToolRuntimeRequirementDeviceCapabilityMobileGestalt alloc];
      v30 = CCPBReaderReadDataNoCopy();
      v44 = 0;
      v31 = [(CCItemMessage *)v29 initWithData:v30 error:&v44];
      v9 = v44;
      mobileGestalt = self->_mobileGestalt;
      self->_mobileGestalt = v31;

      if (!v9)
      {
        self->_kindType = 1;
        self->_capability = 0;
      }
    }

    else if ((v20 >> 3) == 2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v25 = *v6;
        v26 = *&v5[v25];
        v27 = v26 + 1;
        if (v26 == -1 || v27 > *&v5[*v7])
        {
          break;
        }

        v28 = *(*&v5[*v10] + v26);
        *&v5[v25] = v27;
        v24 |= (v28 & 0x7F) << v22;
        if ((v28 & 0x80) == 0)
        {
          goto LABEL_35;
        }

        v22 += 7;
        v19 = v23++ >= 9;
        if (v19)
        {
          LODWORD(v24) = 0;
          goto LABEL_37;
        }
      }

      *&v5[*v8] = 1;
LABEL_35:
      if (*&v5[*v8])
      {
        LODWORD(v24) = 0;
      }

LABEL_37:
      self->_capability = v24;
      v33 = self->_mobileGestalt;
      self->_mobileGestalt = 0;

      v9 = 0;
      self->_kindType = 2;
    }

    else if (CCPBReaderSkipValueWithTag())
    {
      v9 = 0;
    }

    else
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = *&v5[*v8];
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
LABEL_42:
    if (!*&v5[*v8])
    {
      v9 = 0;
      v41 = 1;
      goto LABEL_46;
    }

LABEL_43:
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = *&v5[*v8];
    v40 = CCInvalidBufferErrorForMessage();
    CCSetError();

    v9 = 0;
  }

  v41 = 0;
LABEL_46:

  return v41;
}

- (CCToolKitToolRuntimeRequirementDeviceCapability)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  if (v8 && a4 == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v17 = 0;
      goto LABEL_13;
    }

    v12 = [v8 data];
    CCPBDataWriterWriteDataField();
  }

  else
  {
    v11 = 0;
    if (v8 && a4 == 2)
    {
      objc_opt_class();
      v13 = CCValidateIsInstanceOfExpectedClass();
      v14 = 0;
      if (!v13)
      {
        CCSetError();
        v17 = 0;
        v11 = v14;
        goto LABEL_13;
      }

      [v8 unsignedIntegerValue];
      v15 = CCValidateEnumField();
      v11 = v14;

      if (v15)
      {
        CCPBDataWriterWriteUint32Field();
      }
    }
  }

  v16 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v16 error:a5];

  v17 = self;
LABEL_13:

  return v17;
}

@end