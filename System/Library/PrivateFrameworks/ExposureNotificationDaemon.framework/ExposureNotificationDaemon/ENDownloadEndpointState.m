@interface ENDownloadEndpointState
- (ENDownloadEndpointState)initWithCoder:(id)a3;
- (ENDownloadEndpointState)initWithEndpoint:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENDownloadEndpointState

- (ENDownloadEndpointState)initWithEndpoint:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = ENDownloadEndpointState;
  v6 = [(ENDownloadEndpointState *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, a3);
    v8 = [MEMORY[0x277CCAD70] UUID];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v10 = [(NSUUID *)v7->_identifier UUIDString];
    v11 = [v10 substringToIndex:8];
    shortIdentifier = v7->_shortIdentifier;
    v7->_shortIdentifier = v11;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  endpoint = self->_endpoint;
  v10 = a3;
  v5 = [(ENDownloadEndpoint *)endpoint serverBaseURL];
  v6 = [v5 absoluteString];
  [v10 encodeObject:v6 forKey:@"url"];

  v7 = [(ENDownloadEndpoint *)self->_endpoint serverIndexURL];
  v8 = [v7 absoluteString];
  [v10 encodeObject:v8 forKey:@"indexURL"];

  [(ENDownloadEndpoint *)self->_endpoint downloadInterval];
  [v10 encodeDouble:@"interval" forKey:?];
  [v10 encodeBool:-[ENDownloadEndpoint enabled](self->_endpoint forKey:{"enabled"), @"enable"}];
  v9 = [(ENDownloadEndpoint *)self->_endpoint region];
  [v10 encodeObject:v9 forKey:@"region"];

  [v10 encodeObject:self->_identifier forKey:@"id"];
  [v10 encodeObject:self->_lastFetchAttemptDate forKey:@"lastAttempt"];
  [v10 encodeObject:self->_lastSuccessfulFetchDate forKey:@"lastSuccess"];
  [v10 encodeObject:self->_lastDownloadedFilePath forKey:@"lastFile"];
}

- (ENDownloadEndpointState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [MEMORY[0x277CBEBC8] URLWithString:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"indexURL"];
    v8 = [MEMORY[0x277CBEBC8] URLWithString:v7];
    if (!v8)
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"regionPath"];
      if (!v9)
      {
        v25 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v10 = v9;
      v11 = [v6 URLByAppendingPathComponent:v9];
      v8 = [v11 URLByAppendingPathComponent:@"index.txt"];
    }

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    if (v12)
    {
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
      [v4 decodeDoubleForKey:@"interval"];
      v15 = -[ENDownloadEndpoint initWithBaseURL:indexURL:interval:enabled:region:]([ENDownloadEndpoint alloc], "initWithBaseURL:indexURL:interval:enabled:region:", v6, v8, [v4 decodeBoolForKey:@"enable"], v13, v14);
      v16 = [(ENDownloadEndpointState *)self initWithEndpoint:v15];
      if (v16)
      {
        v17 = [v12 copy];
        identifier = v16->_identifier;
        v16->_identifier = v17;

        v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastAttempt"];
        lastFetchAttemptDate = v16->_lastFetchAttemptDate;
        v16->_lastFetchAttemptDate = v19;

        v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSuccess"];
        lastSuccessfulFetchDate = v16->_lastSuccessfulFetchDate;
        v16->_lastSuccessfulFetchDate = v21;

        v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastFile"];
        lastDownloadedFilePath = v16->_lastDownloadedFilePath;
        v16->_lastDownloadedFilePath = v23;
      }

      self = v16;

      v25 = self;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_12;
  }

  v25 = 0;
LABEL_13:

  return v25;
}

@end