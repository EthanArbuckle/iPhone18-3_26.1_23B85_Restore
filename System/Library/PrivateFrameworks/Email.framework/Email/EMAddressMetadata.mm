@interface EMAddressMetadata
- (EMAddressMetadata)initWithCapabilities:(id)capabilities date:(id)date;
- (EMAddressMetadata)initWithCoder:(id)coder;
- (EMAddressMetadata)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMAddressMetadata

- (EMAddressMetadata)initWithCapabilities:(id)capabilities date:(id)date
{
  capabilitiesCopy = capabilities;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = EMAddressMetadata;
  v9 = [(EMAddressMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, date);
    objc_storeStrong(&v10->_capabilities, capabilities);
    v10->_supportsEncryptedSubject = [capabilitiesCopy ef_any:&__block_literal_global_0];
  }

  return v10;
}

uint64_t __47__EMAddressMetadata_initWithCapabilities_date___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E699B220] oidStringForEncryptedSubject];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (EMAddressMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  v6 = MEMORY[0x1E695E0F0];
  if (dictionaryCopy)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"smime_capabilities"];
    v8 = [v5 objectForKeyedSubscript:@"smime_capabilities_date"];
    v9 = [v7 dataUsingEncoding:4];
    v15 = 0;
    v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:1 error:&v15];

    if (v10)
    {
      v6 = v10;
    }

    if (v8)
    {
      v11 = 0;
      distantPast = v8;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = 0;
  }

  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v8 = 0;
  v11 = 1;
LABEL_8:
  v13 = [(EMAddressMetadata *)self initWithCapabilities:v6 date:distantPast];
  if (v11)
  {
  }

  return v13;
}

- (EMAddressMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_capabilities"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_date"];
  v7 = [(EMAddressMetadata *)self initWithCapabilities:v5 date:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  capabilities = [(EMAddressMetadata *)self capabilities];
  [coderCopy encodeObject:capabilities forKey:@"EFPropertyKey_capabilities"];

  date = [(EMAddressMetadata *)self date];
  [coderCopy encodeObject:date forKey:@"EFPropertyKey_date"];
}

@end