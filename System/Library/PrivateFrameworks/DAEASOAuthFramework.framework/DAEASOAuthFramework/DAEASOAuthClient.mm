@interface DAEASOAuthClient
+ (id)_defaultScopeWithDomainForOAuthType:(unint64_t)a3;
+ (id)_defaultScopeWithoutDomainForOAuthType:(unint64_t)a3 forToken:(BOOL)a4;
+ (id)clientIDForOAuthType:(unint64_t)a3;
+ (id)clientRedirectForOAuthType:(unint64_t)a3;
+ (id)clientRedirectURLSchemeForOAuthType:(unint64_t)a3;
@end

@implementation DAEASOAuthClient

+ (id)clientIDForOAuthType:(unint64_t)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v3 = [@"91:ef870.a438-57cd.99ce-3b3543e71d71" length];
    MEMORY[0x28223BE20]();
    v5 = v16 - v4;
    v6 = [@"91:ef870.a438-57cd.99ce-3b3543e71d71" UTF8String];
    if (v3 >= 1)
    {
      v7 = 0;
      v8 = v3 & 0x7FFFFFFF;
      do
      {
        v5[v7] = *(v6 + v7) - ((v7 + 1) & 1);
        ++v7;
      }

      while (v8 != v7);
      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
LABEL_12:
    v5[v8] = 0;
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
    goto LABEL_14;
  }

  if (a3 == 2)
  {
    v9 = [@"g8e99a:6.0:9:-53g5.8bf4-79:72c8bc433" length];
    MEMORY[0x28223BE20]();
    v5 = v16 - v10;
    v11 = [@"g8e99a:6.0:9:-53g5.8bf4-79:72c8bc433" UTF8String];
    if (v9 >= 1)
    {
      v12 = 0;
      v8 = v9 & 0x7FFFFFFF;
      do
      {
        v5[v12] = *(v11 + v12) - ((v12 + 1) & 1);
        ++v12;
      }

      while (v8 != v12);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = 0;
LABEL_14:
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_defaultScopeWithDomainForOAuthType:(unint64_t)a3
{
  if (a3 == 2)
  {
    return &unk_2859F07D8;
  }

  else
  {
    return 0;
  }
}

+ (id)_defaultScopeWithoutDomainForOAuthType:(unint64_t)a3 forToken:(BOOL)a4
{
  switch(a3)
  {
    case 1uLL:
      v4 = &unk_2859F0808;
      break;
    case 3uLL:
      v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2859F0820];
      v4 = v6;
      if (!a4)
      {
        [v6 addObjectsFromArray:&unk_2859F0838];
      }

      break;
    case 2uLL:
      v4 = &unk_2859F07F0;
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

+ (id)clientRedirectForOAuthType:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [v3 stringWithFormat:@"%@://%@", v5, @"oauth-redirect"];
  }

  else
  {
    v6 = @"urn:ietf:wg:oauth:2.0:oob";
  }

  return v6;
}

+ (id)clientRedirectURLSchemeForOAuthType:(unint64_t)a3
{
  v3 = [a1 clientRedirectForOAuthType:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v3];
    v5 = [v4 scheme];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end