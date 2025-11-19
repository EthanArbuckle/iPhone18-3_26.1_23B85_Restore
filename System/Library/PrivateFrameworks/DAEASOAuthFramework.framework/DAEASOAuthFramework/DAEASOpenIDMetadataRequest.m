@interface DAEASOpenIDMetadataRequest
+ (id)openIDrequestURLFor:(id)a3;
@end

@implementation DAEASOpenIDMetadataRequest

+ (id)openIDrequestURLFor:(id)a3
{
  v3 = MEMORY[0x277CCACE0];
  v4 = a3;
  v5 = [[v3 alloc] initWithString:v4];

  v6 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v6 setScheme:@"https"];
  v7 = [v5 host];
  [v6 setHost:v7];

  [v6 setPath:@"/common/v2.0/.well-known/openid-configuration"];
  v8 = MEMORY[0x277CCAD20];
  v9 = [v6 URL];
  v10 = [v8 requestWithURL:v9];

  return v10;
}

@end