@interface DMTAllowedPayloadTypesValidator
- (BOOL)validateProfile:(id)profile error:(id *)error;
@end

@implementation DMTAllowedPayloadTypesValidator

- (BOOL)validateProfile:(id)profile error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  allowedPayloadTypes = [(DMTAllowedPayloadTypesValidator *)self allowedPayloadTypes];
  requireAllPayloadTypes = [(DMTAllowedPayloadTypesValidator *)self requireAllPayloadTypes];
  v9 = [requireAllPayloadTypes mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  payloads = [profileCopy payloads];
  v11 = [payloads countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(payloads);
        }

        type = [*(*(&v21 + 1) + 8 * i) type];
        if (([allowedPayloadTypes containsObject:type] & 1) == 0 && (objc_msgSend(requireAllPayloadTypes, "containsObject:", type) & 1) == 0)
        {
          if (error)
          {
            v27[0] = @"kDMTInvalidConfigurationProfileValueErrorKey";
            v27[1] = @"PayloadType";
            v28[0] = @"PayloadContent";
            v28[1] = type;
            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
            *error = DMTErrorWithCodeAndUserInfo(77, v18);
          }

          v17 = 0;
          goto LABEL_16;
        }

        [v9 removeObject:type];
      }

      v12 = [payloads countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = [v9 count];
  v17 = 1;
  if (error && v16)
  {
    v26[0] = @"PayloadContent";
    v25[0] = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v25[1] = @"PayloadType";
    payloads = [v9 anyObject];
    v26[1] = payloads;
    type = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    *error = DMTErrorWithCodeAndUserInfo(76, type);
LABEL_16:
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

@end