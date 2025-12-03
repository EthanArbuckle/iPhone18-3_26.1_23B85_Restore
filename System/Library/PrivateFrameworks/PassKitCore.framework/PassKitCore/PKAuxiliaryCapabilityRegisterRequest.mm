@interface PKAuxiliaryCapabilityRegisterRequest
- (id)_dataToSign;
- (id)_groupedKeyMaterial;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKAuxiliaryCapabilityRegisterRequest

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v27[6] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  informationCopy = information;
  lCopy = l;
  pass = [(PKAuxiliaryCapabilityWebServiceRequest *)self pass];
  v27[0] = @"devices";
  v27[1] = identifierCopy;
  v27[2] = @"passes";
  passTypeIdentifier = [pass passTypeIdentifier];
  v27[3] = passTypeIdentifier;
  serialNumber = [pass serialNumber];
  v27[4] = serialNumber;
  v27[5] = @"register";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:6];
  v15 = [(PKAuxiliaryCapabilityWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v14 queryParameters:0 appleAccountInformation:informationCopy];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_validCertificatesOnDevice forKey:@"validCertificatesOnDevice"];
  [dictionary setObject:self->_dpanIdentifiers forKey:@"dpanIdentifiers"];
  if (self->_externalSupplementalPrivateDataString)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v17 setObject:self->_externalSupplementalPrivateDataString forKey:@"externalSupplementalPrivateData"];
    [dictionary setObject:v17 forKey:@"supplementaryRegistrationInfo"];
  }

  deviceOwnedKeyMaterials = self->_deviceOwnedKeyMaterials;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __107__PKAuxiliaryCapabilityRegisterRequest__urlRequestWithServiceURL_deviceIdentifier_appleAccountInformation___block_invoke;
  v25 = &unk_1E79CC6D8;
  v26 = dictionary;
  v19 = dictionary;
  [(NSDictionary *)deviceOwnedKeyMaterials enumerateKeysAndObjectsUsingBlock:&v22];
  v20 = [objc_opt_class() _HTTPBodyWithDictionary:{v19, v22, v23, v24, v25}];
  [v15 setHTTPBody:v20];

  [v15 setHTTPMethod:@"POST"];
  PKUpdateURLRequestWithSignatureDataAndInfo(v15, self->_signatureData, self->_signatureInfo);

  return v15;
}

void __107__PKAuxiliaryCapabilityRegisterRequest__urlRequestWithServiceURL_deviceIdentifier_appleAccountInformation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  v6 = PKAuxiliaryCapabilityRoleToString([v5 role]);
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }

  v8 = [v11 dictionaryRepresentation];
  v9 = [v8 mutableCopy];

  v10 = [v5 dictionaryRepresentation];

  [v9 setObject:v10 forKeyedSubscript:@"requirement"];
  [v7 addObject:v9];
}

- (id)_dataToSign
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  dpanIdentifiers = self->_dpanIdentifiers;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __51__PKAuxiliaryCapabilityRegisterRequest__dataToSign__block_invoke;
  v27[3] = &unk_1E79CC700;
  v5 = v3;
  v28 = v5;
  [(NSArray *)dpanIdentifiers enumerateObjectsUsingBlock:v27];
  v6 = [@"-" dataUsingEncoding:4];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PKAuxiliaryCapabilityRegisterRequest__dataToSign__block_invoke_2;
  aBlock[3] = &unk_1E79CC728;
  v7 = v5;
  v25 = v7;
  v26 = v6;
  v8 = _Block_copy(aBlock);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __51__PKAuxiliaryCapabilityRegisterRequest__dataToSign__block_invoke_3;
  v20 = &unk_1E79CC750;
  v21 = v7;
  v22 = v6;
  v23 = v8;
  v9 = v8;
  v10 = v7;
  v11 = _Block_copy(&v17);
  v12 = [(PKAuxiliaryCapabilityRegisterRequest *)self _groupedKeyMaterial:v17];
  v13 = [v12 objectForKeyedSubscript:@"deviceDecryptions"];
  v11[2](v11, v13);

  v14 = [v12 objectForKeyedSubscript:@"deviceSignatures"];
  v11[2](v11, v14);

  sHA256Hash = [v10 SHA256Hash];

  return sHA256Hash;
}

void __51__PKAuxiliaryCapabilityRegisterRequest__dataToSign__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dataUsingEncoding:4];
  [v2 appendData:v3];
}

void __51__PKAuxiliaryCapabilityRegisterRequest__dataToSign__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 32) appendData:{*(*(&v10 + 1) + 8 * v9++), v10}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [*(a1 + 32) appendData:*(a1 + 40)];
  }
}

void __51__PKAuxiliaryCapabilityRegisterRequest__dataToSign__block_invoke_3(void *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  obj = a2;
  if (obj)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v26)
    {
      v25 = *v32;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v4 = [*(*(&v31 + 1) + 8 * i) contents];
          if ([v4 count])
          {
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v5 = v4;
            v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v6)
            {
              v7 = v6;
              v8 = *v28;
              do
              {
                for (j = 0; j != v7; ++j)
                {
                  if (*v28 != v8)
                  {
                    objc_enumerationMutation(v5);
                  }

                  v10 = *(*(&v27 + 1) + 8 * j);
                  v11 = a1[4];
                  v12 = [v10 publicKey];
                  v13 = v12;
                  if (!v12)
                  {
                    v13 = a1[5];
                  }

                  [v11 appendData:v13];

                  v14 = a1[6];
                  v15 = [v10 attestation];
                  (*(v14 + 16))(v14, v15);

                  v16 = a1[6];
                  v17 = [v10 secondaryAttestation];
                  (*(v16 + 16))(v16, v17);

                  v18 = a1[4];
                  v19 = [v10 authorization];
                  v20 = v19;
                  if (!v19)
                  {
                    v20 = a1[5];
                  }

                  [v18 appendData:v20];

                  v21 = a1[4];
                  v22 = [v10 signature];
                  v23 = v22;
                  if (!v22)
                  {
                    v23 = a1[5];
                  }

                  [v21 appendData:v23];
                }

                v7 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
              }

              while (v7);
            }
          }

          else
          {
            (*(a1[6] + 16))();
            (*(a1[6] + 16))();
            (*(a1[6] + 16))();
            (*(a1[6] + 16))();
            (*(a1[6] + 16))();
          }
        }

        v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v26);
    }
  }
}

- (id)_groupedKeyMaterial
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  deviceOwnedKeyMaterials = self->_deviceOwnedKeyMaterials;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__PKAuxiliaryCapabilityRegisterRequest__groupedKeyMaterial__block_invoke;
  v8[3] = &unk_1E79CC6D8;
  v9 = v3;
  v5 = v3;
  [(NSDictionary *)deviceOwnedKeyMaterials enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __59__PKAuxiliaryCapabilityRegisterRequest__groupedKeyMaterial__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = PKAuxiliaryCapabilityRoleToString([a2 role]);
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  [v6 addObject:v7];
}

@end