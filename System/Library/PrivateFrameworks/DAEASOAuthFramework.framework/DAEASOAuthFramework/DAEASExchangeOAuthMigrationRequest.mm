@interface DAEASExchangeOAuthMigrationRequest
+ (id)urlRequestForOAuthTokenFromUsername:(id)username tokenRequestURI:(id)i password:(id)password scope:(id)scope;
@end

@implementation DAEASExchangeOAuthMigrationRequest

+ (id)urlRequestForOAuthTokenFromUsername:(id)username tokenRequestURI:(id)i password:(id)password scope:(id)scope
{
  v9 = MEMORY[0x277CBEBC0];
  scopeCopy = scope;
  passwordCopy = password;
  iCopy = i;
  usernameCopy = username;
  v13 = [v9 URLWithString:iCopy];
  path = [v13 path];
  path2 = [v13 path];
  v16 = @"/common";
  v17 = [path2 hasPrefix:@"/common"];

  if ((v17 & 1) != 0 || ([v13 path], v18 = objc_claimAutoreleasedReturnValue(), v16 = @"/consumers", v19 = objc_msgSend(v18, "hasPrefix:", @"/consumers"), v18, v19))
  {
    v20 = [path rangeOfString:v16];
    v22 = [path stringByReplacingCharactersInRange:v20 withString:{v21, @"/organizations"}];

    path = v22;
  }

  v23 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:iCopy];

  [v23 setPath:path];
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"response_type" value:@"code"];
  [v24 addObject:v25];

  v26 = objc_alloc(MEMORY[0x277CCAD18]);
  v27 = [DAEASOAuthClient clientIDForOAuthType:2];
  v28 = [v26 initWithName:@"client_id" value:v27];
  [v24 addObject:v28];

  v29 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"grant_type" value:@"password"];
  [v24 addObject:v29];

  v30 = objc_alloc(MEMORY[0x277CCAD18]);
  v31 = [scopeCopy componentsJoinedByString:@" "];

  v32 = [v30 initWithName:@"scope" value:v31];
  [v24 addObject:v32];

  v33 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"username" value:usernameCopy];
  [v24 addObject:v33];

  v34 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"password" value:passwordCopy];
  [v24 addObject:v34];

  [v23 setQueryItems:v24];
  v35 = MEMORY[0x277CCAB70];
  v36 = [v23 URL];
  v37 = [v35 requestWithURL:v36];

  percentEncodedQuery = [v23 percentEncodedQuery];
  v39 = [percentEncodedQuery dataUsingEncoding:4];
  [v37 setHTTPBody:v39];

  [v37 setCachePolicy:1];
  [v37 setHTTPMethod:@"POST"];
  [v37 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];

  return v37;
}

@end