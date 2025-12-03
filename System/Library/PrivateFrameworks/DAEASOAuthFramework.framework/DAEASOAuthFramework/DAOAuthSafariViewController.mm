@interface DAOAuthSafariViewController
+ (id)authenticationSessionWithURL:(id)l callbackURLScheme:(id)scheme handler:(id)handler;
@end

@implementation DAOAuthSafariViewController

+ (id)authenticationSessionWithURL:(id)l callbackURLScheme:(id)scheme handler:(id)handler
{
  lCopy = l;
  schemeCopy = scheme;
  handlerCopy = handler;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"http"])
  {
  }

  else
  {
    scheme2 = [lCopy scheme];
    v12 = [scheme2 isEqualToString:@"https"];

    if (!v12)
    {
      v17 = 0;
      goto LABEL_12;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v13 = MEMORY[0x277CBA9E0];
    if (schemeCopy)
    {
      scheme4 = [MEMORY[0x277CBA9E0] callbackWithCustomScheme:schemeCopy];
    }

    else
    {
      scheme3 = [lCopy scheme];
      scheme4 = [v13 callbackWithCustomScheme:scheme3];
    }

    v16 = [objc_alloc(MEMORY[0x277CBA9D8]) initWithURL:lCopy callback:scheme4 completionHandler:handlerCopy];
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CBA9D8]);
    scheme4 = [lCopy scheme];
    v16 = [v15 initWithURL:lCopy callbackURLScheme:scheme4 completionHandler:handlerCopy];
  }

  v17 = v16;

LABEL_12:

  return v17;
}

@end