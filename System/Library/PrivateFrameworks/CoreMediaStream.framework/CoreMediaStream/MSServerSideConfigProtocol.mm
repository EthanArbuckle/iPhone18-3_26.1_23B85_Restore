@interface MSServerSideConfigProtocol
- (MSServerSideConfigProtocol)initWithPersonID:(id)d baseURL:(id)l;
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

- (MSServerSideConfigProtocol)initWithPersonID:(id)d baseURL:(id)l
{
  dCopy = d;
  lCopy = l;
  v18.receiver = self;
  v18.super_class = MSServerSideConfigProtocol;
  v9 = [(MSServerSideConfigProtocol *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_personID, d);
    v10->_context._super.owner = v10;
    v11 = dCopy;
    v10->_context._super.personID = v11;
    v12 = MSPlatform();
    v10->_context._super.authToken = [v12 authTokenForPersonID:v11];

    v10->_context._super.deviceInfo = [MSProtocolUtilities deviceInfoDictForPersonID:v11];
    v10->_context._super.connectionTimeout = 0.0;
    v10->_context.didFinishCallback = _didFinish_2251;
    v10->_context.didFailAuthenticationCallback = _didFailAuthentication_2250;
    if (lCopy)
    {
      v13 = objc_alloc(MEMORY[0x277CBEBC0]);
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/streams/configuration", v11];
      v15 = [v13 initWithString:v14 relativeToURL:lCopy];
      configURL = v10->_configURL;
      v10->_configURL = v15;
    }
  }

  return v10;
}

@end