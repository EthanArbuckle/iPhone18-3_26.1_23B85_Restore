@interface _GDSHMACGenerator
+ (id)HMACSignedRequest:(id)a3 secret:(id)a4 secretVersion:(id)a5;
+ (id)HMAC_SHA256Digest:(id)a3 key:(id)a4;
+ (id)SHA256_HashStringFromData:(id)a3;
+ (id)bucketedEpochTimeStamp;
+ (id)encodeStringToBase64:(id)a3;
+ (id)generateURLRequest:(id)a3 secretVersion:(id)a4 signature:(id)a5 content:(id)a6 timestamp:(id)a7;
@end

@implementation _GDSHMACGenerator

+ (id)HMAC_SHA256Digest:(id)a3 key:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [a4 cStringUsingEncoding:1];
  v9 = [v7 cStringUsingEncoding:1];

  v10 = strlen(v8);
  v11 = strlen(v9);
  CCHmac(2u, v8, v10, v9, v11, macOut);
  v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:macOut length:32];
  v13 = [v12 base64EncodedStringWithOptions:0];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)SHA256_HashStringFromData:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)HMACSignedRequest:(id)a3 secret:(id)a4 secretVersion:(id)a5
{
  v45[7] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v41 = a4;
  v10 = [v8 HTTPMethod];
  v11 = [v10 lowercaseString];

  v12 = [v8 URL];
  v13 = [v12 path];
  v14 = [v13 lowercaseString];

  v15 = [v8 HTTPBody];
  v43 = v8;
  v16 = [v8 URL];
  v17 = [v16 query];

  v40 = v15;
  v18 = [a1 SHA256_HashStringFromData:v15];
  v19 = [a1 bucketedEpochTimeStamp];
  v20 = [MEMORY[0x277CBEB18] array];
  v44 = v11;
  v21 = [a1 encodeStringToBase64:v11];
  [v20 addObject:v21];

  v42 = v14;
  v22 = [a1 encodeStringToBase64:v14];
  [v20 addObject:v22];

  if ([v17 length])
  {
    v23 = [a1 encodeStringToBase64:v17];
    [v20 addObject:v23];
  }

  v24 = [a1 encodeStringToBase64:@"X-Apple-Content-SHA256"];
  v45[0] = v24;
  v25 = [a1 encodeStringToBase64:v18];
  v45[1] = v25;
  [a1 encodeStringToBase64:@"X-Apple-HMAC-Secret-Version"];
  v26 = v38 = v18;
  v45[2] = v26;
  v27 = [a1 encodeStringToBase64:v9];
  v45[3] = v27;
  [a1 encodeStringToBase64:@"X-Apple-HMAC-Sent-Timestamp"];
  v39 = v17;
  v29 = v28 = v9;
  v45[4] = v29;
  [a1 encodeStringToBase64:v19];
  v30 = v37 = v19;
  v45[5] = v30;
  v45[6] = &stru_2862C4D88;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:7];
  [v20 addObjectsFromArray:v31];

  v32 = [v20 componentsJoinedByString:@"|"];
  v33 = [a1 HMAC_SHA256Digest:v32 key:v41];

  v34 = [a1 generateURLRequest:v43 secretVersion:v28 signature:v33 content:v38 timestamp:v37];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (id)generateURLRequest:(id)a3 secretVersion:(id)a4 signature:(id)a5 content:(id)a6 timestamp:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [a3 mutableCopy];
  [v15 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v15 setValue:v12 forHTTPHeaderField:@"X-Apple-Content-SHA256"];

  [v15 setValue:v14 forHTTPHeaderField:@"X-Apple-HMAC-Secret-Version"];
  [v15 setValue:v11 forHTTPHeaderField:@"X-Apple-HMAC-Sent-Timestamp"];

  [v15 setValue:v13 forHTTPHeaderField:@"X-Apple-HMAC-Digest"];

  return v15;
}

+ (id)bucketedEpochTimeStamp
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSince1970];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.0f", floor(v3 * 1000.0 / 300000.0) * 300000.0];

  return v4;
}

+ (id)encodeStringToBase64:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

@end