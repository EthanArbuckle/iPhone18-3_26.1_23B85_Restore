@interface NUApplicationURLHandler
- (void)openURL:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation NUApplicationURLHandler

- (void)openURL:(id)a3 options:(id)a4 completion:(id)a5
{
  v14 = a3;
  v7 = a5;
  v8 = MEMORY[0x277D75128];
  v9 = a4;
  v10 = [v8 sharedApplication];
  v11 = [v9 mutableCopy];

  [v11 setObject:MEMORY[0x277CBEC38] forKey:@"urlWasOpenedFromNews"];
  if ([v14 fc_isNewsURL] && (objc_msgSend(v10, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "application:openURL:options:", v10, v14, v11), v12, v13))
  {
    if (v7)
    {
      v7[2](v7, 1);
    }
  }

  else
  {
    [v10 openURL:v14 options:v11 completionHandler:v7];
  }
}

@end