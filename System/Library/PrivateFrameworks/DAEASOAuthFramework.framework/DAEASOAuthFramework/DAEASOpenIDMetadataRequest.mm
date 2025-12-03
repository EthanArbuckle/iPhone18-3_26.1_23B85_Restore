@interface DAEASOpenIDMetadataRequest
+ (id)openIDrequestURLFor:(id)for;
@end

@implementation DAEASOpenIDMetadataRequest

+ (id)openIDrequestURLFor:(id)for
{
  v3 = MEMORY[0x277CCACE0];
  forCopy = for;
  v5 = [[v3 alloc] initWithString:forCopy];

  v6 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v6 setScheme:@"https"];
  host = [v5 host];
  [v6 setHost:host];

  [v6 setPath:@"/common/v2.0/.well-known/openid-configuration"];
  v8 = MEMORY[0x277CCAD20];
  v9 = [v6 URL];
  v10 = [v8 requestWithURL:v9];

  return v10;
}

@end