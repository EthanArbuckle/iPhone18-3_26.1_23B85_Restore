@interface HDFHIRResourceData
- (BOOL)isEqual:(id)a3;
- (HDFHIRResourceData)init;
- (HDFHIRResourceData)initWithCoder:(id)a3;
- (HDFHIRResourceData)initWithData:(id)a3 sourceURL:(id)a4 FHIRVersion:(id)a5;
- (id)JSONDictionaryWithError:(id *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDFHIRResourceData

- (HDFHIRResourceData)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDFHIRResourceData)initWithData:(id)a3 sourceURL:(id)a4 FHIRVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HDFHIRResourceData;
  v11 = [(HDFHIRResourceData *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    data = v11->_data;
    v11->_data = v12;

    v14 = [v9 copy];
    sourceURL = v11->_sourceURL;
    v11->_sourceURL = v14;

    v16 = [v10 copy];
    FHIRVersion = v11->_FHIRVersion;
    v11->_FHIRVersion = v16;
  }

  return v11;
}

- (id)JSONDictionaryWithError:(id *)a3
{
  data = self->_data;
  if (data)
  {
    v5 = [MEMORY[0x277CCAAA0] hk_JSONObjectFromFHIRData:data options:0 error:a3];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 description:@"nil data provided"];
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  data = self->_data;
  v5 = a3;
  [v5 encodeObject:data forKey:@"Data"];
  [v5 encodeObject:self->_sourceURL forKey:@"SourceURL"];
  [v5 encodeObject:self->_FHIRVersion forKey:@"FHIRVersion"];
}

- (HDFHIRResourceData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SourceURL"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FHIRVersion"];
  v8 = v7;
  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v10 = 0;
  }

  else
  {
    self = [(HDFHIRResourceData *)self initWithData:v5 sourceURL:v6 FHIRVersion:v7];
    v10 = self;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_data hash];
  v4 = [(NSURL *)self->_sourceURL hash]^ v3;
  return v4 ^ [(HKFHIRVersion *)self->_FHIRVersion hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(FHIRVersion) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      data = self->_data;
      v7 = [(HDFHIRResourceData *)v5 data];
      if (data != v7)
      {
        v8 = [(HDFHIRResourceData *)v5 data];
        if (!v8)
        {
          LOBYTE(FHIRVersion) = 0;
          goto LABEL_27;
        }

        v9 = v8;
        v10 = self->_data;
        v11 = [(HDFHIRResourceData *)v5 data];
        if (![(NSData *)v10 isEqual:v11])
        {
          LOBYTE(FHIRVersion) = 0;
LABEL_26:

          goto LABEL_27;
        }

        v27 = v11;
        v28 = v9;
      }

      sourceURL = self->_sourceURL;
      v14 = [(HDFHIRResourceData *)v5 sourceURL];
      if (sourceURL != v14)
      {
        FHIRVersion = [(HDFHIRResourceData *)v5 sourceURL];
        if (!FHIRVersion)
        {
          goto LABEL_20;
        }

        v15 = self->_sourceURL;
        v16 = [(HDFHIRResourceData *)v5 sourceURL];
        v17 = v15;
        v18 = v16;
        if (([(NSURL *)v17 isEqual:v16]& 1) == 0)
        {

          LOBYTE(FHIRVersion) = 0;
LABEL_25:
          v11 = v27;
          v9 = v28;
          if (data != v7)
          {
            goto LABEL_26;
          }

LABEL_27:

          goto LABEL_28;
        }

        v24 = v18;
        v26 = FHIRVersion;
      }

      FHIRVersion = self->_FHIRVersion;
      v19 = [(HDFHIRResourceData *)v5 FHIRVersion];
      LOBYTE(FHIRVersion) = FHIRVersion == v19;
      if (!FHIRVersion)
      {
        v20 = [(HDFHIRResourceData *)v5 FHIRVersion];
        if (v20)
        {
          v21 = v20;
          FHIRVersion = self->_FHIRVersion;
          v22 = [(HDFHIRResourceData *)v5 FHIRVersion];
          LOBYTE(FHIRVersion) = [FHIRVersion isEqual:v22];

          if (sourceURL != v14)
          {
          }

          goto LABEL_22;
        }
      }

      if (sourceURL == v14)
      {
LABEL_22:

        goto LABEL_25;
      }

LABEL_20:
      v11 = v27;

      v9 = v28;
      if (data == v7)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    LOBYTE(FHIRVersion) = 0;
  }

LABEL_28:

  return FHIRVersion;
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_data encoding:4];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  sourceURL = self->_sourceURL;
  v8 = HKSensitiveLogItem();
  v9 = HKSensitiveLogItem();
  v10 = [v4 stringWithFormat:@"<%@ %p source URL: %@, string data: %@>", v6, self, v8, v9];;

  return v10;
}

@end