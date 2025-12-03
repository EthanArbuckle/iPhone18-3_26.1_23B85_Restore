@interface DDURLPreviewAction
+ (BOOL)handlesUrl:(id)url result:(__DDResult *)result;
+ (id)validatedURLWithURL:(id)l result:(__DDResult *)result;
- (id)createViewController;
- (id)menuActions;
@end

@implementation DDURLPreviewAction

- (id)menuActions
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(DDAction *)self url];
  if (v3 || [(DDAction *)self result]&& (_DDURLFromResult([(DDAction *)self result]), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [DDURLPreviewAction validatedURLWithURL:v3 result:0];
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [(DDAction *)DDOpenURLAction actionsWithURL:v5 result:0 context:self->super.super._context, 0];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 addObject:*(*(&v19 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    if (+[DDAddToReadingListAction isAvailable])
    {
      v12 = [(DDAction *)[DDAddToReadingListAction alloc] initWithURL:v5 result:0 context:self->super.super._context];
      [v6 addObject:v12];
    }

    v13 = [[DDCopyAction alloc] initWithURL:v4 result:0 context:self->super.super._context];
    [v6 addObject:v13];

    v14 = [[DDShareAction alloc] initWithURL:v5 result:0 context:self->super.super._context];
    [v6 addObject:v14];

    v15 = [DDActionGroup groupWithActions:v6];

    v16 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = 0;
    v18 = *MEMORY[0x277D85DE8];
  }

  return v15;
}

+ (id)validatedURLWithURL:(id)l result:(__DDResult *)result
{
  lCopy = l;
  if (result)
  {
    v6 = DDShipmentTrackingUrlForResult();
    if (v6)
    {
      v7 = v6;
LABEL_17:

      v12 = v7;

      return v12;
    }

    v8 = DDResultCopyExtractedURL();
    if (v8)
    {
      v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    }

    else
    {
      v9 = 0;
    }

    lCopy = v9;
  }

  if (lCopy)
  {
    scheme = [lCopy scheme];
    lowercaseString = [scheme lowercaseString];

    if (dd_schemeIsHttp(lowercaseString) && ([lCopy dd_isMaps:1] & 1) == 0)
    {
      v7 = lCopy;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_17;
  }

  v12 = 0;

  return v12;
}

+ (BOOL)handlesUrl:(id)url result:(__DDResult *)result
{
  if (!(url | result))
  {
    v4 = 0;
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v4 = [self validatedURLWithURL:? result:?];
  if (!v4 || (applicationWithBundleIdentifierIsRestricted(@"com.apple.mobilesafari") & 1) != 0)
  {
    goto LABEL_14;
  }

  v5 = [MEMORY[0x277CCACE0] componentsWithURL:v4 resolvingAgainstBaseURL:0];
  host = [v5 host];
  lowercaseString = [host lowercaseString];

  if (([lowercaseString isEqualToString:@"www.icloud.com"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"icloud.com") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"icloud-sharing") & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"icloud-vetting"))
  {
    scheme = [v5 scheme];
    lowercaseString2 = [scheme lowercaseString];

    if (dd_schemeIsHttp(lowercaseString2))
    {
      path = [v5 path];
      lowercaseString3 = [path lowercaseString];

      v12 = !lowercaseString3 || [lowercaseString3 rangeOfString:@"^/(pages|numbers|keynote|iclouddrive|share|notes|photos|reminders)/.+" options:1033] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(lowercaseString3, "rangeOfString:options:", @"^/(v)/.+", 1033) == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

LABEL_15:
  return v12;
}

- (id)createViewController
{
  v3 = [DDURLPreviewAction validatedURLWithURL:self->super.super._url result:self->super.super._result];
  viewController = self->super.super._viewController;
  if (!viewController)
  {
    v5 = [objc_alloc(MEMORY[0x277CDB700]) initWithURL:v3];
    v6 = self->super.super._viewController;
    self->super.super._viewController = v5;

    viewController = self->super.super._viewController;
  }

  v7 = viewController;

  return viewController;
}

@end