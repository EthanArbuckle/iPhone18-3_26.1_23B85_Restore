@interface CMSExtensionEndpointConfiguration
- (CMSExtensionEndpointConfiguration)init;
- (CMSExtensionEndpointConfiguration)initWithDictionary:(id)a3 endpoint:(id)a4 baseURL:(id)a5 groupHeaders:(id)a6;
@end

@implementation CMSExtensionEndpointConfiguration

- (CMSExtensionEndpointConfiguration)init
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:&stru_2856A7BB0];
  v4 = [(CMSExtensionEndpointConfiguration *)self initWithDictionary:MEMORY[0x277CBEC10] endpoint:@"/" baseURL:v3 groupHeaders:MEMORY[0x277CBEC10]];

  return v4;
}

- (CMSExtensionEndpointConfiguration)initWithDictionary:(id)a3 endpoint:(id)a4 baseURL:(id)a5 groupHeaders:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = CMSExtensionEndpointConfiguration;
  v14 = [(CMSExtensionEndpointConfiguration *)&v28 init];
  if (v14)
  {
    v15 = [v10 cmsOptionalStringForKey:@"url"];
    v16 = v15;
    if (v15)
    {
      if (![v15 length])
      {
        goto LABEL_9;
      }

      v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];
      endpointURL = v14->_endpointURL;
      v14->_endpointURL = v17;

      v19 = v14->_endpointURL;
      if (!v19)
      {
        goto LABEL_9;
      }

      v20 = [(NSURL *)v19 baseURL];

      if (v20)
      {
        goto LABEL_9;
      }

      v21 = MEMORY[0x277CBEBC0];
      v22 = v16;
    }

    else
    {
      v21 = MEMORY[0x277CBEBC0];
      v22 = v11;
    }

    v23 = [v21 URLWithString:v22 relativeToURL:v12];
    v24 = v14->_endpointURL;
    v14->_endpointURL = v23;

LABEL_9:
    objc_storeStrong(&v14->_groupHeaders, a6);
    v25 = [v10 cmsOptionalDictionaryForKey:@"hdr"];
    headers = v14->_headers;
    v14->_headers = v25;
  }

  return v14;
}

@end