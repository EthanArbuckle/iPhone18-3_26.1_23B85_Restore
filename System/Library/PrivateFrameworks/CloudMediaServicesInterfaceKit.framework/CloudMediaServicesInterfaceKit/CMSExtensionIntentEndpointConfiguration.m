@interface CMSExtensionIntentEndpointConfiguration
- (CMSExtensionIntentEndpointConfiguration)init;
- (CMSExtensionIntentEndpointConfiguration)initWithDictionary:(id)a3 endpoint:(id)a4 baseURL:(id)a5 groupHeaders:(id)a6;
- (id)description;
@end

@implementation CMSExtensionIntentEndpointConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CMSExtensionEndpointConfiguration *)self endpointURL];
  v5 = [(CMSExtensionEndpointConfiguration *)self groupHeaders];
  v6 = [(CMSExtensionEndpointConfiguration *)self headers];
  v7 = [v3 stringWithFormat:@"<CMSExtensionIntentEndpointConfiguration: endpointURL:%@ groupHeaders:%@ headers:%@ optionalMethods:%@>", v4, v5, v6, self->_optionalMethods];

  return v7;
}

- (CMSExtensionIntentEndpointConfiguration)init
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:&stru_2856A7BB0];
  v4 = [(CMSExtensionIntentEndpointConfiguration *)self initWithDictionary:MEMORY[0x277CBEC10] endpoint:@"/" baseURL:v3 groupHeaders:MEMORY[0x277CBEC10]];

  return v4;
}

- (CMSExtensionIntentEndpointConfiguration)initWithDictionary:(id)a3 endpoint:(id)a4 baseURL:(id)a5 groupHeaders:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v37.receiver = self;
  v37.super_class = CMSExtensionIntentEndpointConfiguration;
  v12 = [(CMSExtensionEndpointConfiguration *)&v37 initWithDictionary:v10 endpoint:v11 baseURL:a5 groupHeaders:a6];
  if (v12)
  {
    v13 = [v10 cmsOptionalArrayOfClass:objc_opt_class() forKey:@"opt"];
    v32 = [MEMORY[0x277CBEB58] set];
    if (v13)
    {
      v30 = v12;
      v31 = v10;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v29 = v13;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v34;
        do
        {
          v18 = 0;
          do
          {
            if (*v34 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v33 + 1) + 8 * v18);
            v20 = MEMORY[0x277CCACA8];
            v21 = CMSProtocolNameForExtensionEndpoint(v11);
            v22 = [v20 stringWithFormat:@"%@.%@", v21, v19];

            v23 = CMSExtensionEndpointForProtocolMethodName(v22);
            LODWORD(v21) = [v23 isEqual:v11];

            if (v21)
            {
              [v32 addObject:v22];
            }

            else
            {
              v24 = _CMSILogingFacility();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v39 = v19;
                v40 = 2114;
                v41 = v11;
              }
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v16);
      }

      v12 = v30;
      v10 = v31;
      v13 = v29;
    }

    v25 = [v32 copy];
    optionalMethods = v12->_optionalMethods;
    v12->_optionalMethods = v25;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

@end