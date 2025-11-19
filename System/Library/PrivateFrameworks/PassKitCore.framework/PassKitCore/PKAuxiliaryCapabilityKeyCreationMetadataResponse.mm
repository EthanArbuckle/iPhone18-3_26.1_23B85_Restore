@interface PKAuxiliaryCapabilityKeyCreationMetadataResponse
- (PKAuxiliaryCapabilityKeyCreationMetadataResponse)initWithData:(id)a3;
- (id)entriesForCapabilities:(id)a3;
@end

@implementation PKAuxiliaryCapabilityKeyCreationMetadataResponse

- (PKAuxiliaryCapabilityKeyCreationMetadataResponse)initWithData:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKAuxiliaryCapabilityKeyCreationMetadataResponse;
  v3 = [(PKWebServiceResponse *)&v15 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(PKAuxiliaryCapabilityKeyCreationMetadataResponse *)v6 PKArrayContaining:objc_opt_class() forKey:@"entries"];
      entryDicts = v4->_entryDicts;
      v4->_entryDicts = v7;

      p_super = &v4->super.super.super.super;
      if (v4->_entryDicts)
      {
LABEL_9:

        return v4;
      }
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(0x1DuLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138543618;
        v17 = v11;
        v18 = 2114;
        v19 = v13;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }

      v6 = v4;
    }

    v4 = 0;
    goto LABEL_9;
  }

  return v4;
}

- (id)entriesForCapabilities:(id)a3
{
  v4 = [a3 pk_indexDictionaryByApplyingBlock:&__block_literal_global_123];
  entryDicts = self->_entryDicts;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__PKAuxiliaryCapabilityKeyCreationMetadataResponse_entriesForCapabilities___block_invoke_2;
  v9[3] = &unk_1E79CC0D8;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)entryDicts pk_arrayBySafelyApplyingBlock:v9];

  return v7;
}

PKAuxiliaryCapabilityKeyCreationMetadataResponseEntry *__75__PKAuxiliaryCapabilityKeyCreationMetadataResponse_entriesForCapabilities___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 PKDictionaryForKey:@"capability"];
  v5 = [v4 PKStringForKey:@"role"];
  v6 = v5;
  if (v5)
  {
    v7 = PKAuxiliaryCapabilityRoleFromString(v5);
    if (v7 == 2)
    {
      v8 = PKPassAuxiliaryRegistrationSignatureRequirement;
    }

    else
    {
      if (v7 != 1)
      {
        goto LABEL_15;
      }

      v8 = PKPassAuxiliaryRegistrationDecryptionRequirement;
    }

    v10 = [[v8 alloc] initWithDictionary:v4];
    if (v10)
    {
LABEL_9:
      v11 = [v3 PKDictionaryForKey:@"metadata"];
      v12 = [PKPassAuxiliaryCapabilityKeyCreationMetadata createMetadataFromDictionary:v11 forCapability:v10];

      if (v12)
      {
        v13 = [[PKAuxiliaryCapabilityKeyCreationMetadataResponseEntry alloc] initWithCapability:v10 metadata:v12];
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v9 = [v4 PKStringForKey:@"identifier"];
    if (v9)
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:v9];
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      goto LABEL_9;
    }
  }

LABEL_15:
  v13 = 0;
LABEL_16:

  return v13;
}

@end