@interface ENDownloadEndpoint
- (ENDownloadEndpoint)initWithBaseURL:(id)a3 indexURL:(id)a4 interval:(double)a5 enabled:(BOOL)a6 region:(id)a7;
@end

@implementation ENDownloadEndpoint

- (ENDownloadEndpoint)initWithBaseURL:(id)a3 indexURL:(id)a4 interval:(double)a5 enabled:(BOOL)a6 region:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = ENDownloadEndpoint;
  v15 = [(ENDownloadEndpoint *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    serverBaseURL = v15->_serverBaseURL;
    v15->_serverBaseURL = v16;

    v18 = [v13 copy];
    serverIndexURL = v15->_serverIndexURL;
    v15->_serverIndexURL = v18;

    v15->_downloadInterval = a5;
    v15->_enabled = a6;
    v20 = [v14 copy];
    region = v15->_region;
    v15->_region = v20;
  }

  return v15;
}

@end