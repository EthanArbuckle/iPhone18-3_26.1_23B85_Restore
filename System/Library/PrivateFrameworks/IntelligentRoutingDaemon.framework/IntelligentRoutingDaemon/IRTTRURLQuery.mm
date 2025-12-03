@interface IRTTRURLQuery
- (IRTTRURLQuery)init;
- (id)build;
@end

@implementation IRTTRURLQuery

- (IRTTRURLQuery)init
{
  v11.receiver = self;
  v11.super_class = IRTTRURLQuery;
  v2 = [(IRTTRURLQuery *)&v11 init];
  v3 = v2;
  if (v2)
  {
    classification = v2->_classification;
    v2->_classification = @"UI/Usability";

    componentName = v3->_componentName;
    v3->_componentName = @"Coriander LiveOn";

    componentVersion = v3->_componentVersion;
    v3->_componentVersion = @"All";

    componentID = v3->_componentID;
    v3->_componentID = @"1609607";

    reproducibility = v3->_reproducibility;
    v3->_reproducibility = @"I Didn't Try";

    v9 = v3;
  }

  return v3;
}

- (id)build
{
  v22 = *MEMORY[0x277D85DE8];
  uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v4 = [@"tap-to-radar://new" mutableCopy];
  v5 = [(NSString *)self->_title stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
  [v4 appendFormat:@"?Title=%@", v5];

  v6 = [(NSString *)self->_classification stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
  [v4 appendFormat:@"&Classification=%@", v6];

  v7 = [(NSString *)self->_componentName stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
  [v4 appendFormat:@"&ComponentName=%@", v7];

  v8 = [(NSString *)self->_componentVersion stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
  [v4 appendFormat:@"&ComponentVersion=%@", v8];

  v9 = [(NSString *)self->_componentID stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
  [v4 appendFormat:@"&ComponentID=%@", v9];

  v10 = [(NSString *)self->_reproducibility stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
  [v4 appendFormat:@"&Reproducibility=%@", v10];

  v11 = [(NSArray *)self->_extensionIdentifiers componentsJoinedByString:@", "];
  v12 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
  [v4 appendFormat:@"&ExtensionIdentifiers=%@", v12];

  v13 = [(NSArray *)self->_remoteDeviceSelections componentsJoinedByString:@", "];
  v14 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
  [v4 appendFormat:@"&RemoteDeviceSelections=%@", v14];

  v15 = [(NSString *)self->_radarDescription stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
  [v4 appendFormat:@"&Description=%@", v15];

  v16 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_25543D000, v16, OS_LOG_TYPE_INFO, "#ttr, URL: %@", buf, 0xCu);
  }

  v17 = [MEMORY[0x277CBEBC0] URLWithString:v4];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end