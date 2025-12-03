@interface EscrowUpdateBlobRequest
- (EscrowUpdateBlobRequest)initWithRequest:(id)request;
- (id)bodyDictionary;
- (id)urlString;
@end

@implementation EscrowUpdateBlobRequest

- (EscrowUpdateBlobRequest)initWithRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = EscrowUpdateBlobRequest;
  v5 = [(EscrowGenericRequest *)&v8 initWithRequest:requestCopy];
  if (v5)
  {
    prerecord = [requestCopy prerecord];
    [(EscrowUpdateBlobRequest *)v5 setPrerecord:prerecord];
  }

  return v5;
}

- (id)urlString
{
  baseURL = [(EscrowGenericRequest *)self baseURL];
  v3 = [baseURL stringByAppendingString:@"/escrowproxy/api/update_blob"];

  return v3;
}

- (id)bodyDictionary
{
  v15.receiver = self;
  v15.super_class = EscrowUpdateBlobRequest;
  bodyDictionary = [(EscrowGenericRequest *)&v15 bodyDictionary];
  blob = [(EscrowGenericRequest *)self blob];
  v5 = [blob base64EncodedStringWithOptions:0];
  [bodyDictionary setObject:v5 forKeyedSubscript:@"blob"];

  blob2 = [(EscrowGenericRequest *)self blob];
  v7 = sub_10000DD7C(blob2);
  [bodyDictionary setObject:v7 forKeyedSubscript:@"blobDigest"];

  if ([(EscrowGenericRequest *)self duplicate])
  {
    [(EscrowGenericRequest *)self duplicateEncodedMetadata];
  }

  else
  {
    [(EscrowGenericRequest *)self encodedMetadata];
  }
  v8 = ;
  [bodyDictionary setObject:v8 forKeyedSubscript:@"oldMetadata"];

  duplicate = [(EscrowGenericRequest *)self duplicate];
  metadata = [(EscrowGenericRequest *)self metadata];
  if (duplicate)
  {
    v11 = [(EscrowGenericRequest *)self _filteredMetadataForDoubleEnrollment:metadata];

    metadata = v11;
  }

  base64EncodedStringFromDict = [metadata base64EncodedStringFromDict];
  [bodyDictionary setObject:base64EncodedStringFromDict forKeyedSubscript:@"newMetadata"];

  v13 = CloudServicesLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = bodyDictionary;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "EscrowUpdateBlobRequest: bodyDictionary: %@", buf, 0xCu);
  }

  return bodyDictionary;
}

@end