@interface ENDownloadEndpointState
- (ENDownloadEndpointState)initWithCoder:(id)coder;
- (ENDownloadEndpointState)initWithEndpoint:(id)endpoint;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENDownloadEndpointState

- (ENDownloadEndpointState)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v14.receiver = self;
  v14.super_class = ENDownloadEndpointState;
  v6 = [(ENDownloadEndpointState *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, endpoint);
    uUID = [MEMORY[0x277CCAD70] UUID];
    identifier = v7->_identifier;
    v7->_identifier = uUID;

    uUIDString = [(NSUUID *)v7->_identifier UUIDString];
    v11 = [uUIDString substringToIndex:8];
    shortIdentifier = v7->_shortIdentifier;
    v7->_shortIdentifier = v11;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  endpoint = self->_endpoint;
  coderCopy = coder;
  serverBaseURL = [(ENDownloadEndpoint *)endpoint serverBaseURL];
  absoluteString = [serverBaseURL absoluteString];
  [coderCopy encodeObject:absoluteString forKey:@"url"];

  serverIndexURL = [(ENDownloadEndpoint *)self->_endpoint serverIndexURL];
  absoluteString2 = [serverIndexURL absoluteString];
  [coderCopy encodeObject:absoluteString2 forKey:@"indexURL"];

  [(ENDownloadEndpoint *)self->_endpoint downloadInterval];
  [coderCopy encodeDouble:@"interval" forKey:?];
  [coderCopy encodeBool:-[ENDownloadEndpoint enabled](self->_endpoint forKey:{"enabled"), @"enable"}];
  region = [(ENDownloadEndpoint *)self->_endpoint region];
  [coderCopy encodeObject:region forKey:@"region"];

  [coderCopy encodeObject:self->_identifier forKey:@"id"];
  [coderCopy encodeObject:self->_lastFetchAttemptDate forKey:@"lastAttempt"];
  [coderCopy encodeObject:self->_lastSuccessfulFetchDate forKey:@"lastSuccess"];
  [coderCopy encodeObject:self->_lastDownloadedFilePath forKey:@"lastFile"];
}

- (ENDownloadEndpointState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [MEMORY[0x277CBEBC8] URLWithString:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"indexURL"];
    v8 = [MEMORY[0x277CBEBC8] URLWithString:v7];
    if (!v8)
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"regionPath"];
      if (!v9)
      {
        selfCopy = 0;
LABEL_12:

        goto LABEL_13;
      }

      v10 = v9;
      v11 = [v6 URLByAppendingPathComponent:v9];
      v8 = [v11 URLByAppendingPathComponent:@"index.txt"];
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    if (v12)
    {
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
      [coderCopy decodeDoubleForKey:@"interval"];
      v15 = -[ENDownloadEndpoint initWithBaseURL:indexURL:interval:enabled:region:]([ENDownloadEndpoint alloc], "initWithBaseURL:indexURL:interval:enabled:region:", v6, v8, [coderCopy decodeBoolForKey:@"enable"], v13, v14);
      v16 = [(ENDownloadEndpointState *)self initWithEndpoint:v15];
      if (v16)
      {
        v17 = [v12 copy];
        identifier = v16->_identifier;
        v16->_identifier = v17;

        v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastAttempt"];
        lastFetchAttemptDate = v16->_lastFetchAttemptDate;
        v16->_lastFetchAttemptDate = v19;

        v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSuccess"];
        lastSuccessfulFetchDate = v16->_lastSuccessfulFetchDate;
        v16->_lastSuccessfulFetchDate = v21;

        v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastFile"];
        lastDownloadedFilePath = v16->_lastDownloadedFilePath;
        v16->_lastDownloadedFilePath = v23;
      }

      self = v16;

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    goto LABEL_12;
  }

  selfCopy = 0;
LABEL_13:

  return selfCopy;
}

@end