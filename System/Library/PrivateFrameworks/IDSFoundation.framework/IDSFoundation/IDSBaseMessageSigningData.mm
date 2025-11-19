@interface IDSBaseMessageSigningData
- (IDSBaseMessageSigningData)initWithSHA256Digest:(id)a3 requestBody:(id)a4 serverTimestamp:(id)a5 includeIcloudBAA:(BOOL)a6;
@end

@implementation IDSBaseMessageSigningData

- (IDSBaseMessageSigningData)initWithSHA256Digest:(id)a3 requestBody:(id)a4 serverTimestamp:(id)a5 includeIcloudBAA:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = IDSBaseMessageSigningData;
  v14 = [(IDSBaseMessageSigningData *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sha256Digest, a3);
    objc_storeStrong(&v15->_requestBody, a4);
    objc_storeStrong(&v15->_serverTimestamp, a5);
    v15->_includeIcloudBAAHeaders = a6;
  }

  return v15;
}

@end