@interface EscrowUpdateBlobRequest
- (EscrowUpdateBlobRequest)initWithRequest:(id)a3;
- (id)bodyDictionary;
- (id)urlString;
@end

@implementation EscrowUpdateBlobRequest

- (EscrowUpdateBlobRequest)initWithRequest:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EscrowUpdateBlobRequest;
  v5 = [(EscrowGenericRequest *)&v8 initWithRequest:v4];
  if (v5)
  {
    v6 = [v4 prerecord];
    [(EscrowUpdateBlobRequest *)v5 setPrerecord:v6];
  }

  return v5;
}

- (id)urlString
{
  v2 = [(EscrowGenericRequest *)self baseURL];
  v3 = [v2 stringByAppendingString:@"/escrowproxy/api/update_blob"];

  return v3;
}

- (id)bodyDictionary
{
  v15.receiver = self;
  v15.super_class = EscrowUpdateBlobRequest;
  v3 = [(EscrowGenericRequest *)&v15 bodyDictionary];
  v4 = [(EscrowGenericRequest *)self blob];
  v5 = [v4 base64EncodedStringWithOptions:0];
  [v3 setObject:v5 forKeyedSubscript:@"blob"];

  v6 = [(EscrowGenericRequest *)self blob];
  v7 = sub_10000DD7C(v6);
  [v3 setObject:v7 forKeyedSubscript:@"blobDigest"];

  if ([(EscrowGenericRequest *)self duplicate])
  {
    [(EscrowGenericRequest *)self duplicateEncodedMetadata];
  }

  else
  {
    [(EscrowGenericRequest *)self encodedMetadata];
  }
  v8 = ;
  [v3 setObject:v8 forKeyedSubscript:@"oldMetadata"];

  v9 = [(EscrowGenericRequest *)self duplicate];
  v10 = [(EscrowGenericRequest *)self metadata];
  if (v9)
  {
    v11 = [(EscrowGenericRequest *)self _filteredMetadataForDoubleEnrollment:v10];

    v10 = v11;
  }

  v12 = [v10 base64EncodedStringFromDict];
  [v3 setObject:v12 forKeyedSubscript:@"newMetadata"];

  v13 = CloudServicesLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "EscrowUpdateBlobRequest: bodyDictionary: %@", buf, 0xCu);
  }

  return v3;
}

@end