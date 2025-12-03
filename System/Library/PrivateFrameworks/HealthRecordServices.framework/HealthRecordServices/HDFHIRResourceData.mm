@interface HDFHIRResourceData
- (BOOL)isEqual:(id)equal;
- (HDFHIRResourceData)init;
- (HDFHIRResourceData)initWithCoder:(id)coder;
- (HDFHIRResourceData)initWithData:(id)data sourceURL:(id)l FHIRVersion:(id)version;
- (id)JSONDictionaryWithError:(id *)error;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HDFHIRResourceData)initWithData:(id)data sourceURL:(id)l FHIRVersion:(id)version
{
  dataCopy = data;
  lCopy = l;
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = HDFHIRResourceData;
  v11 = [(HDFHIRResourceData *)&v19 init];
  if (v11)
  {
    v12 = [dataCopy copy];
    data = v11->_data;
    v11->_data = v12;

    v14 = [lCopy copy];
    sourceURL = v11->_sourceURL;
    v11->_sourceURL = v14;

    v16 = [versionCopy copy];
    FHIRVersion = v11->_FHIRVersion;
    v11->_FHIRVersion = v16;
  }

  return v11;
}

- (id)JSONDictionaryWithError:(id *)error
{
  data = self->_data;
  if (data)
  {
    v5 = [MEMORY[0x277CCAAA0] hk_JSONObjectFromFHIRData:data options:0 error:error];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"nil data provided"];
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  data = self->_data;
  coderCopy = coder;
  [coderCopy encodeObject:data forKey:@"Data"];
  [coderCopy encodeObject:self->_sourceURL forKey:@"SourceURL"];
  [coderCopy encodeObject:self->_FHIRVersion forKey:@"FHIRVersion"];
}

- (HDFHIRResourceData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceURL"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FHIRVersion"];
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
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  else
  {
    self = [(HDFHIRResourceData *)self initWithData:v5 sourceURL:v6 FHIRVersion:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_data hash];
  v4 = [(NSURL *)self->_sourceURL hash]^ v3;
  return v4 ^ [(HKFHIRVersion *)self->_FHIRVersion hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(FHIRVersion) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      data = self->_data;
      data = [(HDFHIRResourceData *)v5 data];
      if (data != data)
      {
        data2 = [(HDFHIRResourceData *)v5 data];
        if (!data2)
        {
          LOBYTE(FHIRVersion) = 0;
          goto LABEL_27;
        }

        v9 = data2;
        v10 = self->_data;
        data3 = [(HDFHIRResourceData *)v5 data];
        if (![(NSData *)v10 isEqual:data3])
        {
          LOBYTE(FHIRVersion) = 0;
LABEL_26:

          goto LABEL_27;
        }

        v27 = data3;
        v28 = v9;
      }

      sourceURL = self->_sourceURL;
      sourceURL = [(HDFHIRResourceData *)v5 sourceURL];
      if (sourceURL != sourceURL)
      {
        FHIRVersion = [(HDFHIRResourceData *)v5 sourceURL];
        if (!FHIRVersion)
        {
          goto LABEL_20;
        }

        v15 = self->_sourceURL;
        sourceURL2 = [(HDFHIRResourceData *)v5 sourceURL];
        v17 = v15;
        v18 = sourceURL2;
        if (([(NSURL *)v17 isEqual:sourceURL2]& 1) == 0)
        {

          LOBYTE(FHIRVersion) = 0;
LABEL_25:
          data3 = v27;
          v9 = v28;
          if (data != data)
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
      fHIRVersion = [(HDFHIRResourceData *)v5 FHIRVersion];
      LOBYTE(FHIRVersion) = FHIRVersion == fHIRVersion;
      if (!FHIRVersion)
      {
        fHIRVersion2 = [(HDFHIRResourceData *)v5 FHIRVersion];
        if (fHIRVersion2)
        {
          v21 = fHIRVersion2;
          FHIRVersion = self->_FHIRVersion;
          fHIRVersion3 = [(HDFHIRResourceData *)v5 FHIRVersion];
          LOBYTE(FHIRVersion) = [FHIRVersion isEqual:fHIRVersion3];

          if (sourceURL != sourceURL)
          {
          }

          goto LABEL_22;
        }
      }

      if (sourceURL == sourceURL)
      {
LABEL_22:

        goto LABEL_25;
      }

LABEL_20:
      data3 = v27;

      v9 = v28;
      if (data == data)
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