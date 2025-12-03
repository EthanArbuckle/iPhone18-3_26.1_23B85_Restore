@interface _GDSHMACGenerator
+ (id)HMACSignedRequest:(id)request secret:(id)secret secretVersion:(id)version;
+ (id)HMAC_SHA256Digest:(id)digest key:(id)key;
+ (id)SHA256_HashStringFromData:(id)data;
+ (id)bucketedEpochTimeStamp;
+ (id)encodeStringToBase64:(id)base64;
+ (id)generateURLRequest:(id)request secretVersion:(id)version signature:(id)signature content:(id)content timestamp:(id)timestamp;
@end

@implementation _GDSHMACGenerator

+ (id)HMAC_SHA256Digest:(id)digest key:(id)key
{
  v17 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  digestCopy = digest;
  v8 = [key cStringUsingEncoding:1];
  v9 = [digestCopy cStringUsingEncoding:1];

  v10 = strlen(v8);
  v11 = strlen(v9);
  CCHmac(2u, v8, v10, v9, v11, macOut);
  v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:macOut length:32];
  v13 = [v12 base64EncodedStringWithOptions:0];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)SHA256_HashStringFromData:(id)data
{
  v9 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  CC_SHA256([dataCopy bytes], objc_msgSend(dataCopy, "length"), md);
  v4 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)HMACSignedRequest:(id)request secret:(id)secret secretVersion:(id)version
{
  v45[7] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  versionCopy = version;
  secretCopy = secret;
  hTTPMethod = [requestCopy HTTPMethod];
  lowercaseString = [hTTPMethod lowercaseString];

  v12 = [requestCopy URL];
  path = [v12 path];
  lowercaseString2 = [path lowercaseString];

  hTTPBody = [requestCopy HTTPBody];
  v43 = requestCopy;
  v16 = [requestCopy URL];
  query = [v16 query];

  v40 = hTTPBody;
  v18 = [self SHA256_HashStringFromData:hTTPBody];
  bucketedEpochTimeStamp = [self bucketedEpochTimeStamp];
  array = [MEMORY[0x277CBEB18] array];
  v44 = lowercaseString;
  v21 = [self encodeStringToBase64:lowercaseString];
  [array addObject:v21];

  v42 = lowercaseString2;
  v22 = [self encodeStringToBase64:lowercaseString2];
  [array addObject:v22];

  if ([query length])
  {
    v23 = [self encodeStringToBase64:query];
    [array addObject:v23];
  }

  v24 = [self encodeStringToBase64:@"X-Apple-Content-SHA256"];
  v45[0] = v24;
  v25 = [self encodeStringToBase64:v18];
  v45[1] = v25;
  [self encodeStringToBase64:@"X-Apple-HMAC-Secret-Version"];
  v26 = v38 = v18;
  v45[2] = v26;
  v27 = [self encodeStringToBase64:versionCopy];
  v45[3] = v27;
  [self encodeStringToBase64:@"X-Apple-HMAC-Sent-Timestamp"];
  v39 = query;
  v29 = v28 = versionCopy;
  v45[4] = v29;
  [self encodeStringToBase64:bucketedEpochTimeStamp];
  v30 = v37 = bucketedEpochTimeStamp;
  v45[5] = v30;
  v45[6] = &stru_2862C4D88;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:7];
  [array addObjectsFromArray:v31];

  v32 = [array componentsJoinedByString:@"|"];
  v33 = [self HMAC_SHA256Digest:v32 key:secretCopy];

  v34 = [self generateURLRequest:v43 secretVersion:v28 signature:v33 content:v38 timestamp:v37];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (id)generateURLRequest:(id)request secretVersion:(id)version signature:(id)signature content:(id)content timestamp:(id)timestamp
{
  timestampCopy = timestamp;
  contentCopy = content;
  signatureCopy = signature;
  versionCopy = version;
  v15 = [request mutableCopy];
  [v15 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v15 setValue:contentCopy forHTTPHeaderField:@"X-Apple-Content-SHA256"];

  [v15 setValue:versionCopy forHTTPHeaderField:@"X-Apple-HMAC-Secret-Version"];
  [v15 setValue:timestampCopy forHTTPHeaderField:@"X-Apple-HMAC-Sent-Timestamp"];

  [v15 setValue:signatureCopy forHTTPHeaderField:@"X-Apple-HMAC-Digest"];

  return v15;
}

+ (id)bucketedEpochTimeStamp
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.0f", floor(v3 * 1000.0 / 300000.0) * 300000.0];

  return v4;
}

+ (id)encodeStringToBase64:(id)base64
{
  v3 = [base64 dataUsingEncoding:4];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

@end