@interface CMSExtensionQueuesContentProtectionEndpointConfiguration
- (CMSExtensionQueuesContentProtectionEndpointConfiguration)init;
- (CMSExtensionQueuesContentProtectionEndpointConfiguration)initWithDictionary:(id)a3 endpoint:(id)a4 baseURL:(id)a5 groupHeaders:(id)a6;
- (id)description;
@end

@implementation CMSExtensionQueuesContentProtectionEndpointConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CMSExtensionEndpointConfiguration *)self endpointURL];
  v5 = [(CMSExtensionEndpointConfiguration *)self groupHeaders];
  v6 = [(CMSExtensionEndpointConfiguration *)self headers];
  keySystemIdentifier = self->_keySystemIdentifier;
  v8 = [v3 stringWithFormat:@"<CMSExtensionQueuesContentProtectionEndpointConfiguration: endpointURL:%@ groupHeaders:%@ headers:%@ keySystem:%@ certURL:%@>", v4, v5, v6, keySystemIdentifier, self->_fairPlayKeySystemCertificateUrl];

  return v8;
}

- (CMSExtensionQueuesContentProtectionEndpointConfiguration)init
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:&stru_2856A7BB0];
  v4 = [(CMSExtensionQueuesContentProtectionEndpointConfiguration *)self initWithDictionary:MEMORY[0x277CBEC10] endpoint:&stru_2856A7BB0 baseURL:v3 groupHeaders:MEMORY[0x277CBEC10]];

  return v4;
}

- (CMSExtensionQueuesContentProtectionEndpointConfiguration)initWithDictionary:(id)a3 endpoint:(id)a4 baseURL:(id)a5 groupHeaders:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24.receiver = self;
  v24.super_class = CMSExtensionQueuesContentProtectionEndpointConfiguration;
  v13 = [(CMSExtensionEndpointConfiguration *)&v24 initWithDictionary:v10 endpoint:v11 baseURL:v12 groupHeaders:a6];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = [v10 cmsOptionalDictionaryForKey:@"cks"];
  if (!v14)
  {
    v15 = _CMSILogingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMSExtensionQueuesContentProtectionEndpointConfiguration initWithDictionary:endpoint:baseURL:groupHeaders:];
    }

    goto LABEL_13;
  }

  v15 = v14;
  v16 = [v14 cmsOptionalStringForKey:@"keySystem"];
  v17 = v16;
  if (!v16 || ([v16 isEqualToString:@"ContentKeySystemFairPlayStreaming"] & 1) == 0)
  {
    v18 = _CMSILogingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CMSExtensionQueuesContentProtectionEndpointConfiguration initWithDictionary:endpoint:baseURL:groupHeaders:];
    }

    goto LABEL_10;
  }

  objc_storeStrong(&v13->_keySystemIdentifier, *MEMORY[0x277CE5D20]);
  v18 = [v15 cmsOptionalStringForKey:@"certUrl"];
  if (![v18 length])
  {
    v23 = _CMSILogingFacility();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CMSExtensionQueuesContentProtectionEndpointConfiguration initWithDictionary:endpoint:baseURL:groupHeaders:];
    }

LABEL_10:
LABEL_13:

    v21 = 0;
    goto LABEL_14;
  }

  v19 = [MEMORY[0x277CBEBC0] URLWithString:v18 relativeToURL:v12];
  fairPlayKeySystemCertificateUrl = v13->_fairPlayKeySystemCertificateUrl;
  v13->_fairPlayKeySystemCertificateUrl = v19;

LABEL_7:
  v21 = v13;
LABEL_14:

  return v21;
}

- (void)initWithDictionary:endpoint:baseURL:groupHeaders:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:endpoint:baseURL:groupHeaders:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2114;
  v5 = v0;
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:endpoint:baseURL:groupHeaders:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v6 = *MEMORY[0x277D85DE8];
}

@end