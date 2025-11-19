@interface PKSubcredentialEncryptedContainer
- (PKSubcredentialEncryptedContainer)initWithCoder:(id)a3;
- (PKSubcredentialEncryptedContainer)initWithDictionary:(id)a3;
- (PKSubcredentialEncryptedContainer)initWithEncryptionScheme:(id)a3 ephemeralPublicKey:(id)a4 publicKeyHash:(id)a5 data:(id)a6;
- (PKSubcredentialEncryptedContainer)initWithRequest:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSubcredentialEncryptedContainer

- (PKSubcredentialEncryptedContainer)initWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 version];
  v6 = [v4 ephemeralPublicKey];
  v7 = [v6 hexEncoding];
  v8 = [v4 publicKeyHash];
  v9 = [v8 hexEncoding];
  v10 = [v4 encryptedRequest];

  v11 = [(PKSubcredentialEncryptedContainer *)self initWithEncryptionScheme:v5 ephemeralPublicKey:v7 publicKeyHash:v9 data:v10];
  return v11;
}

- (PKSubcredentialEncryptedContainer)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKStringForKey:@"version"];
  v6 = [v4 PKStringForKey:@"ephemeralPublicKey"];
  v7 = [v4 PKStringForKey:@"publicKeyHash"];
  v8 = [v4 PKStringForKey:@"data"];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PKSubcredentialEncryptedContainer *)self initWithEncryptionScheme:v5 ephemeralPublicKey:v6 publicKeyHash:v7 data:v9];

  return v10;
}

- (PKSubcredentialEncryptedContainer)initWithEncryptionScheme:(id)a3 ephemeralPublicKey:(id)a4 publicKeyHash:(id)a5 data:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(PKSubcredentialEncryptedContainer *)self init];
  v16 = v15;
  if (!v15 || (objc_storeStrong(&v15->_encryptionScheme, a3), objc_storeStrong(&v16->_ephemeralPublicKey, a4), objc_storeStrong(&v16->_publicKeyHash, a5), objc_storeStrong(&v16->_data, a6), (encryptionScheme = v16->_encryptionScheme) != 0) && v16->_ephemeralPublicKey && v16->_publicKeyHash && v16->_data)
  {
    v18 = v16;
  }

  else
  {
    v19 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      ephemeralPublicKey = v16->_ephemeralPublicKey;
      publicKeyHash = v16->_publicKeyHash;
      data = v16->_data;
      v24 = 138413058;
      v25 = encryptionScheme;
      v26 = 2112;
      v27 = ephemeralPublicKey;
      v28 = 2112;
      v29 = publicKeyHash;
      v30 = 2112;
      v31 = data;
      _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Received invalid encrypted request: version %@, ephemeral public key: %@, public key hash: %@, data: %@", &v24, 0x2Au);
    }

    v18 = 0;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(PKSubcredentialEncryptedContainer);
  v6 = [(NSString *)self->_encryptionScheme copyWithZone:a3];
  encryptionScheme = v5->_encryptionScheme;
  v5->_encryptionScheme = v6;

  v8 = [(NSString *)self->_ephemeralPublicKey copyWithZone:a3];
  ephemeralPublicKey = v5->_ephemeralPublicKey;
  v5->_ephemeralPublicKey = v8;

  v10 = [(NSString *)self->_publicKeyHash copyWithZone:a3];
  publicKeyHash = v5->_publicKeyHash;
  v5->_publicKeyHash = v10;

  v12 = [(NSData *)self->_data copyWithZone:a3];
  data = v5->_data;
  v5->_data = v12;

  return v5;
}

- (id)dictionaryRepresentation
{
  v10[4] = *MEMORY[0x1E69E9840];
  encryptionScheme = self->_encryptionScheme;
  if (encryptionScheme && (ephemeralPublicKey = self->_ephemeralPublicKey) != 0 && (publicKeyHash = self->_publicKeyHash) != 0 && (data = self->_data) != 0)
  {
    v9[0] = @"version";
    v9[1] = @"ephemeralPublicKey";
    v10[0] = encryptionScheme;
    v10[1] = ephemeralPublicKey;
    v10[2] = publicKeyHash;
    v9[2] = @"publicKeyHash";
    v9[3] = @"data";
    v6 = [(NSData *)data base64EncodedStringWithOptions:0];
    v10[3] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  encryptionScheme = self->_encryptionScheme;
  v5 = a3;
  [v5 encodeObject:encryptionScheme forKey:@"encryptionScheme"];
  [v5 encodeObject:self->_ephemeralPublicKey forKey:@"ephemeralPublicKey"];
  [v5 encodeObject:self->_publicKeyHash forKey:@"publicKeyHash"];
  [v5 encodeObject:self->_data forKey:@"data"];
}

- (PKSubcredentialEncryptedContainer)initWithCoder:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKSubcredentialEncryptedContainer *)self init];
  if (!v5 || ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionScheme"], v6 = objc_claimAutoreleasedReturnValue(), encryptionScheme = v5->_encryptionScheme, v5->_encryptionScheme = v6, encryptionScheme, objc_msgSend(v4, "decodeObjectOfClass:forKey:", objc_opt_class(), @"ephemeralPublicKey"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v5->_ephemeralPublicKey, v5->_ephemeralPublicKey = v8, v9, objc_msgSend(v4, "decodeObjectOfClass:forKey:", objc_opt_class(), @"publicKeyHash"), v10 = objc_claimAutoreleasedReturnValue(), v11 = v5->_publicKeyHash, v5->_publicKeyHash = v10, v11, objc_msgSend(v4, "decodeObjectOfClass:forKey:", objc_opt_class(), @"data"), v12 = objc_claimAutoreleasedReturnValue(), v13 = v5->_data, v5->_data = v12, v13, (v14 = v5->_encryptionScheme) != 0) && v5->_ephemeralPublicKey && v5->_publicKeyHash && v5->_data)
  {
    v15 = v5;
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      ephemeralPublicKey = v5->_ephemeralPublicKey;
      publicKeyHash = v5->_publicKeyHash;
      data = v5->_data;
      v21 = 138413058;
      v22 = v14;
      v23 = 2112;
      v24 = ephemeralPublicKey;
      v25 = 2112;
      v26 = publicKeyHash;
      v27 = 2112;
      v28 = data;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Decoded invalid data: encryptionScheme %@, ephemeral public key: %@, public key hash: %@, data: %@", &v21, 0x2Au);
    }

    v15 = 0;
  }

  return v15;
}

@end