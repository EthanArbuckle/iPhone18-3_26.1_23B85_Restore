@interface NUApplicationURLHandler
- (void)openURL:(id)l options:(id)options completion:(id)completion;
@end

@implementation NUApplicationURLHandler

- (void)openURL:(id)l options:(id)options completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = MEMORY[0x277D75128];
  optionsCopy = options;
  sharedApplication = [v8 sharedApplication];
  v11 = [optionsCopy mutableCopy];

  [v11 setObject:MEMORY[0x277CBEC38] forKey:@"urlWasOpenedFromNews"];
  if ([lCopy fc_isNewsURL] && (objc_msgSend(sharedApplication, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "application:openURL:options:", sharedApplication, lCopy, v11), v12, v13))
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    [sharedApplication openURL:lCopy options:v11 completionHandler:completionCopy];
  }
}

@end