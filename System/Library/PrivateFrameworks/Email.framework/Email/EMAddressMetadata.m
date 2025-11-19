@interface EMAddressMetadata
- (EMAddressMetadata)initWithCapabilities:(id)a3 date:(id)a4;
- (EMAddressMetadata)initWithCoder:(id)a3;
- (EMAddressMetadata)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMAddressMetadata

- (EMAddressMetadata)initWithCapabilities:(id)a3 date:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EMAddressMetadata;
  v9 = [(EMAddressMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, a4);
    objc_storeStrong(&v10->_capabilities, a3);
    v10->_supportsEncryptedSubject = [v7 ef_any:&__block_literal_global_0];
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

- (EMAddressMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v7 = [v4 objectForKeyedSubscript:@"smime_capabilities"];
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
      v12 = v8;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = [MEMORY[0x1E695DF00] distantPast];
  v8 = 0;
  v11 = 1;
LABEL_8:
  v13 = [(EMAddressMetadata *)self initWithCapabilities:v6 date:v12];
  if (v11)
  {
  }

  return v13;
}

- (EMAddressMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_capabilities"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_date"];
  v7 = [(EMAddressMetadata *)self initWithCapabilities:v5 date:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(EMAddressMetadata *)self capabilities];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_capabilities"];

  v5 = [(EMAddressMetadata *)self date];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_date"];
}

@end