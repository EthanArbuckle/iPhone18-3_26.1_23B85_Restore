@interface MSServerSideConfigProtocol
- (MSServerSideConfigProtocol)initWithPersonID:(id)a3 baseURL:(id)a4;
- (void)dealloc;
- (void)queryConfiguration;
@end

@implementation MSServerSideConfigProtocol

- (void)queryConfiguration
{
  configURL = self->_configURL;
  v4 = MSPURLConnectionProperties();

  MSSSCPCQueryConfiguration(&self->_context._super.owner, configURL, v4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MSServerSideConfigProtocol;
  [(MSServerSideConfigProtocol *)&v3 dealloc];
}

- (MSServerSideConfigProtocol)initWithPersonID:(id)a3 baseURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = MSServerSideConfigProtocol;
  v9 = [(MSServerSideConfigProtocol *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_personID, a3);
    v10->_context._super.owner = v10;
    v11 = v7;
    v10->_context._super.personID = v11;
    v12 = MSPlatform();
    v10->_context._super.authToken = [v12 authTokenForPersonID:v11];

    v10->_context._super.deviceInfo = [MSProtocolUtilities deviceInfoDictForPersonID:v11];
    v10->_context._super.connectionTimeout = 0.0;
    v10->_context.didFinishCallback = _didFinish_2251;
    v10->_context.didFailAuthenticationCallback = _didFailAuthentication_2250;
    if (v8)
    {
      v13 = objc_alloc(MEMORY[0x277CBEBC0]);
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/streams/configuration", v11];
      v15 = [v13 initWithString:v14 relativeToURL:v8];
      configURL = v10->_configURL;
      v10->_configURL = v15;
    }
  }

  return v10;
}

@end