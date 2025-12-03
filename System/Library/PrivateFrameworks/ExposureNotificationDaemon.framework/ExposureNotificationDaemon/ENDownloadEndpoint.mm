@interface ENDownloadEndpoint
- (ENDownloadEndpoint)initWithBaseURL:(id)l indexURL:(id)rL interval:(double)interval enabled:(BOOL)enabled region:(id)region;
@end

@implementation ENDownloadEndpoint

- (ENDownloadEndpoint)initWithBaseURL:(id)l indexURL:(id)rL interval:(double)interval enabled:(BOOL)enabled region:(id)region
{
  lCopy = l;
  rLCopy = rL;
  regionCopy = region;
  v23.receiver = self;
  v23.super_class = ENDownloadEndpoint;
  v15 = [(ENDownloadEndpoint *)&v23 init];
  if (v15)
  {
    v16 = [lCopy copy];
    serverBaseURL = v15->_serverBaseURL;
    v15->_serverBaseURL = v16;

    v18 = [rLCopy copy];
    serverIndexURL = v15->_serverIndexURL;
    v15->_serverIndexURL = v18;

    v15->_downloadInterval = interval;
    v15->_enabled = enabled;
    v20 = [regionCopy copy];
    region = v15->_region;
    v15->_region = v20;
  }

  return v15;
}

@end