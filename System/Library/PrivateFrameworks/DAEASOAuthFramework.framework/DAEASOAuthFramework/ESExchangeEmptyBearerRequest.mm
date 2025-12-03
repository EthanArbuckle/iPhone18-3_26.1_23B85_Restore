@interface ESExchangeEmptyBearerRequest
+ (id)emptyBearerRequestForHost:(id)host;
@end

@implementation ESExchangeEmptyBearerRequest

+ (id)emptyBearerRequestForHost:(id)host
{
  v3 = MEMORY[0x277CCACE0];
  hostCopy = host;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:@"https"];
  [v5 setHost:hostCopy];

  [v5 setPath:@"/Microsoft-Server-ActiveSync"];
  v6 = MEMORY[0x277CCAB70];
  v7 = [v5 URL];
  v8 = [v6 requestWithURL:v7];

  [v8 setValue:@"Bearer" forHTTPHeaderField:@"Authorization"];
  v9 = [v8 copy];

  return v9;
}

@end