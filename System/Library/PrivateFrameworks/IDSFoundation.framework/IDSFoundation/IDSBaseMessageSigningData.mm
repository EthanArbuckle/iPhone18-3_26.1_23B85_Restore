@interface IDSBaseMessageSigningData
- (IDSBaseMessageSigningData)initWithSHA256Digest:(id)digest requestBody:(id)body serverTimestamp:(id)timestamp includeIcloudBAA:(BOOL)a;
@end

@implementation IDSBaseMessageSigningData

- (IDSBaseMessageSigningData)initWithSHA256Digest:(id)digest requestBody:(id)body serverTimestamp:(id)timestamp includeIcloudBAA:(BOOL)a
{
  digestCopy = digest;
  bodyCopy = body;
  timestampCopy = timestamp;
  v17.receiver = self;
  v17.super_class = IDSBaseMessageSigningData;
  v14 = [(IDSBaseMessageSigningData *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sha256Digest, digest);
    objc_storeStrong(&v15->_requestBody, body);
    objc_storeStrong(&v15->_serverTimestamp, timestamp);
    v15->_includeIcloudBAAHeaders = a;
  }

  return v15;
}

@end