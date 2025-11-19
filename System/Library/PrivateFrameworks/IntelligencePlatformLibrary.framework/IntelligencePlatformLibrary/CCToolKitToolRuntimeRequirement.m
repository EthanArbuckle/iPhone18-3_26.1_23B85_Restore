@interface CCToolKitToolRuntimeRequirement
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolRuntimeRequirement)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolRuntimeRequirement)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5;
- (CCToolKitToolRuntimeRequirementAvailabilityAnnotation)platform;
- (CCToolKitToolRuntimeRequirementDeviceCapability)deviceCapability;
- (CCToolKitToolRuntimeRequirementFeatureFlag)featureFlag;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolRuntimeRequirement

- (CCToolKitToolRuntimeRequirement)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v26[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"platform"];
    if (v9)
    {
      v26[0] = 0;
      v10 = [[CCToolKitToolRuntimeRequirementAvailabilityAnnotation alloc] initWithJSONDictionary:v9 error:v26];
      v11 = v26[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v19 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = v10;
    }

    v12 = [v6 objectForKeyedSubscript:@"deviceCapability"];
    if (v12)
    {
      v25 = 0;
      v13 = [[CCToolKitToolRuntimeRequirementDeviceCapability alloc] initWithJSONDictionary:v12 error:&v25];
      v14 = v25;
      v10 = v14;
      if (!v13 || v14)
      {
        CCSetError();
        v19 = 0;
LABEL_29:

        goto LABEL_30;
      }

      v12 = v13;
    }

    v10 = [v6 objectForKeyedSubscript:@"featureFlag"];
    if (v10)
    {
      v24 = 0;
      v15 = [[CCToolKitToolRuntimeRequirementFeatureFlag alloc] initWithJSONDictionary:v10 error:&v24];
      v16 = v24;
      v13 = v16;
      if (!v15 || v16)
      {
        CCSetError();
        v19 = 0;
LABEL_28:

        goto LABEL_29;
      }

      v10 = v15;
    }

    v13 = [v6 objectForKeyedSubscript:@"deviceState"];
    if (v9)
    {
      v17 = v9;
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v15 = v9;
    if (v12)
    {
      v15 = v12;

      v18 = 2;
    }

    v23 = self;
    if (v10)
    {
      v20 = v10;

      v18 = 3;
      v15 = v20;
    }

    if (v13)
    {
      v21 = v13;

      v18 = 4;
      v15 = v21;
    }

    self = v23;
    v19 = [[CCToolKitToolRuntimeRequirement alloc] initWithKind:v15 kindType:v18 error:a4];
    goto LABEL_28;
  }

  CCSetError();
  v19 = 0;
LABEL_31:

  return v19;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    if (!self->_platform)
    {
      goto LABEL_12;
    }

    v5 = [(CCToolKitToolRuntimeRequirement *)self platform];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"platform"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    if (!self->_deviceCapability)
    {
      goto LABEL_12;
    }

    v7 = [(CCToolKitToolRuntimeRequirement *)self deviceCapability];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"deviceCapability"];

    kindType = self->_kindType;
  }

  if (kindType == 3)
  {
    if (!self->_featureFlag)
    {
      goto LABEL_12;
    }

    v9 = [(CCToolKitToolRuntimeRequirement *)self featureFlag];
    v10 = [v9 jsonDictionary];
    [v3 setObject:v10 forKeyedSubscript:@"featureFlag"];

    kindType = self->_kindType;
  }

  if (kindType == 4)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolRuntimeRequirement deviceState](self, "deviceState")}];
    [v3 setObject:v11 forKeyedSubscript:@"deviceState"];
  }

LABEL_12:
  v12 = [v3 copy];

  return v12;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v13 = v5;
  if (self->_platform)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_platform];
    v13[2](v13, v7);
  }

  if (self->_deviceCapability)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_deviceCapability];
    v13[2](v13, v8);
  }

  if (self->_featureFlag)
  {
    v9 = objc_alloc(MEMORY[0x1E69939F0]);
    v10 = *v6;
    v11 = [v9 initWithFieldType:v10 subMessageValue:self->_featureFlag];
    v13[2](v13, v11);
  }

  else
  {
    v10 = *v6;
  }

  v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v10 enumValue:self->_deviceState];
  v13[2](v13, v12);
}

- (CCToolKitToolRuntimeRequirementFeatureFlag)featureFlag
{
  v2 = [(CCToolKitToolRuntimeRequirementFeatureFlag *)self->_featureFlag copy];

  return v2;
}

- (CCToolKitToolRuntimeRequirementDeviceCapability)deviceCapability
{
  v2 = [(CCToolKitToolRuntimeRequirementDeviceCapability *)self->_deviceCapability copy];

  return v2;
}

- (CCToolKitToolRuntimeRequirementAvailabilityAnnotation)platform
{
  v2 = [(CCToolKitToolRuntimeRequirementAvailabilityAnnotation *)self->_platform copy];

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
    goto LABEL_51;
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
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_52;
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
        goto LABEL_52;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 2)
      {
        if (v23 == 3)
        {
          v42 = [CCToolKitToolRuntimeRequirementFeatureFlag alloc];
          v43 = CCPBReaderReadDataNoCopy();
          v60 = 0;
          v44 = [(CCItemMessage *)v42 initWithData:v43 error:&v60];
          v10 = v60;
          featureFlag = self->_featureFlag;
          self->_featureFlag = v44;

          if (v10)
          {
            goto LABEL_48;
          }

          platform = self->_platform;
          self->_platform = 0;

          deviceCapability = self->_deviceCapability;
          self->_deviceCapability = 0;

          self->_kindType = 3;
          goto LABEL_42;
        }

        if (v23 == 4)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            v33 = *&v6[v32];
            v34 = v33 + 1;
            if (v33 == -1 || v34 > *&v6[*v8])
            {
              break;
            }

            v35 = *(*&v6[*v11] + v33);
            *&v6[v32] = v34;
            v31 |= (v35 & 0x7F) << v29;
            if ((v35 & 0x80) == 0)
            {
              goto LABEL_44;
            }

            v29 += 7;
            v20 = v30++ >= 9;
            if (v20)
            {
              LODWORD(v31) = 0;
              goto LABEL_46;
            }
          }

          *&v6[*v9] = 1;
LABEL_44:
          if (*&v6[*v9])
          {
            LODWORD(v31) = 0;
          }

LABEL_46:
          self->_deviceState = v31;
          v48 = self->_platform;
          self->_platform = 0;

          v49 = self->_deviceCapability;
          self->_deviceCapability = 0;

          v50 = self->_featureFlag;
          self->_featureFlag = 0;

          v10 = 0;
          self->_kindType = 4;
LABEL_48:
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
          v36 = [CCToolKitToolRuntimeRequirementAvailabilityAnnotation alloc];
          v37 = CCPBReaderReadDataNoCopy();
          v62 = 0;
          v38 = [(CCItemMessage *)v36 initWithData:v37 error:&v62];
          v10 = v62;
          v39 = self->_platform;
          self->_platform = v38;

          if (v10)
          {
            goto LABEL_48;
          }

          self->_kindType = 1;
          v40 = self->_deviceCapability;
          self->_deviceCapability = 0;

          goto LABEL_39;
        }

        if (v23 == 2)
        {
          v24 = [CCToolKitToolRuntimeRequirementDeviceCapability alloc];
          v25 = CCPBReaderReadDataNoCopy();
          v61 = 0;
          v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v61];
          v10 = v61;
          v27 = self->_deviceCapability;
          self->_deviceCapability = v26;

          if (v10)
          {
            goto LABEL_48;
          }

          v28 = self->_platform;
          self->_platform = 0;

          self->_kindType = 2;
LABEL_39:
          v41 = self->_featureFlag;
          self->_featureFlag = 0;

LABEL_42:
          self->_deviceState = 0;
          goto LABEL_48;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
      }

      else
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v53 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
      }

      goto LABEL_48;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_53;
  }

LABEL_51:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v58 = 1;
    goto LABEL_55;
  }

LABEL_52:
  v54 = objc_opt_class();
  v55 = NSStringFromClass(v54);
  v56 = *&v6[*v9];
  v57 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_53:
  v58 = 0;
LABEL_55:

  return v58;
}

- (CCToolKitToolRuntimeRequirement)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5
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
      goto LABEL_12;
    }

LABEL_14:
    CCSetError();
    v16 = 0;
    goto LABEL_15;
  }

  if (v8 && a4 == 2)
  {
    objc_opt_class();
    v12 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v12)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (!v8 || a4 != 3)
  {
    v11 = 0;
    if (v8 && a4 == 4)
    {
      objc_opt_class();
      v18 = CCValidateIsInstanceOfExpectedClass();
      v19 = 0;
      if (!v18)
      {
        CCSetError();
        v16 = 0;
        v11 = v19;
        goto LABEL_15;
      }

      [v8 unsignedIntegerValue];
      v20 = CCValidateEnumField();
      v11 = v19;

      if (v20)
      {
        CCPBDataWriterWriteUint32Field();
      }
    }

    goto LABEL_13;
  }

  objc_opt_class();
  v13 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_12:
  v14 = [v8 data];
  CCPBDataWriterWriteDataField();

LABEL_13:
  v15 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v15 error:a5];

  v16 = self;
LABEL_15:

  return v16;
}

@end