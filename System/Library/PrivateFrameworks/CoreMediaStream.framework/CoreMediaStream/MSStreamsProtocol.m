@interface MSStreamsProtocol
- (MSStreamsProtocol)initWithPersonID:(id)a3 baseURL:(id)a4;
- (NSURL)deleteURL;
- (NSURL)getURL;
- (NSURL)putURL;
- (NSURL)reauthorizeURL;
- (NSURL)resetURL;
- (NSURL)uploadCompleteURL;
- (id)deviceInfoDict;
- (void)_didFindServerSideConfigurationVersion:(id)a3;
- (void)_didReceiveRetryAfterDate:(id)a3;
- (void)_refreshAuthTokenForContext:(__MSSPCContext *)a3;
@end

@implementation MSStreamsProtocol

- (void)_refreshAuthTokenForContext:(__MSSPCContext *)a3
{
  authToken = a3->authToken;
  if (authToken)
  {
    CFRelease(authToken);
  }

  v6 = MSPlatform();
  a3->authToken = [v6 authTokenForPersonID:self->_personID];
}

- (void)_didReceiveRetryAfterDate:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(MSStreamsProtocolDelegate *)self->_delegate protocol:self didReceiveRetryAfterDate:v4];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v6 = v9;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ retrieved a retry-after header, but we're ignoring it.", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_didFindServerSideConfigurationVersion:(id)a3
{
  v4 = a3;
  v7 = MSPlatform();
  v5 = [v7 theDaemon];
  v6 = [(MSStreamsProtocol *)self personID];
  [v5 didReceiveServerSideConfigurationVersion:v4 forPersonID:v6];
}

- (id)deviceInfoDict
{
  v2 = [(MSStreamsProtocol *)self personID];
  v3 = [MSProtocolUtilities deviceInfoDictForPersonID:v2];

  return v3;
}

- (NSURL)deleteURL
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/streams/deletemetadata", self->_personID];
  v5 = MSPlatform();
  v6 = [v5 baseURLForPersonID:self->_personID];
  v7 = [v3 URLWithString:v4 relativeToURL:v6];

  return v7;
}

- (NSURL)uploadCompleteURL
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/streams/uploadcomplete", self->_personID];
  v5 = MSPlatform();
  v6 = [v5 baseURLForPersonID:self->_personID];
  v7 = [v3 URLWithString:v4 relativeToURL:v6];

  return v7;
}

- (NSURL)reauthorizeURL
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/streams/gettokens", self->_personID];
  v5 = MSPlatform();
  v6 = [v5 baseURLForPersonID:self->_personID];
  v7 = [v3 URLWithString:v4 relativeToURL:v6];

  return v7;
}

- (NSURL)resetURL
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/streams/reset", self->_personID];
  v5 = MSPlatform();
  v6 = [v5 baseURLForPersonID:self->_personID];
  v7 = [v3 URLWithString:v4 relativeToURL:v6];

  return v7;
}

- (NSURL)putURL
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/streams/putmetadata", self->_personID];
  v5 = MSPlatform();
  v6 = [v5 baseURLForPersonID:self->_personID];
  v7 = [v3 URLWithString:v4 relativeToURL:v6];

  return v7;
}

- (NSURL)getURL
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/streams/getmetadata", self->_personID];
  v5 = MSPlatform();
  v6 = [v5 baseURLForPersonID:self->_personID];
  v7 = [v3 URLWithString:v4 relativeToURL:v6];

  return v7;
}

- (MSStreamsProtocol)initWithPersonID:(id)a3 baseURL:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = MSStreamsProtocol;
  v7 = [(MSStreamsProtocol *)&v13 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  objc_storeStrong(&v7->_personID, a3);
  v9 = MSPlatform();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v10 = MSPlatform();
  if (([v10 shouldEnableNewFeatures] & 1) == 0)
  {

    goto LABEL_7;
  }

  v11 = _MSSPCForcedProtocolVersionString;

  if (!v11)
  {
    _MSSPCForcedProtocolVersionString = @"kfjVrXr0t5Dl";
  }

LABEL_8:

  return v8;
}

@end