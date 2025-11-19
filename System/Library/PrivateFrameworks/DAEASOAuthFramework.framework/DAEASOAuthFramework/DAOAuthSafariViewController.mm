@interface DAOAuthSafariViewController
+ (id)authenticationSessionWithURL:(id)a3 callbackURLScheme:(id)a4 handler:(id)a5;
@end

@implementation DAOAuthSafariViewController

+ (id)authenticationSessionWithURL:(id)a3 callbackURLScheme:(id)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 scheme];
  if ([v10 isEqualToString:@"http"])
  {
  }

  else
  {
    v11 = [v7 scheme];
    v12 = [v11 isEqualToString:@"https"];

    if (!v12)
    {
      v17 = 0;
      goto LABEL_12;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v13 = MEMORY[0x277CBA9E0];
    if (v8)
    {
      v14 = [MEMORY[0x277CBA9E0] callbackWithCustomScheme:v8];
    }

    else
    {
      v18 = [v7 scheme];
      v14 = [v13 callbackWithCustomScheme:v18];
    }

    v16 = [objc_alloc(MEMORY[0x277CBA9D8]) initWithURL:v7 callback:v14 completionHandler:v9];
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CBA9D8]);
    v14 = [v7 scheme];
    v16 = [v15 initWithURL:v7 callbackURLScheme:v14 completionHandler:v9];
  }

  v17 = v16;

LABEL_12:

  return v17;
}

@end