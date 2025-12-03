@interface DDGenericURLPreviewAction
+ (BOOL)handlesUrl:(id)url result:(__DDResult *)result;
- (id)commitURL;
- (id)menuActions;
@end

@implementation DDGenericURLPreviewAction

+ (BOOL)handlesUrl:(id)url result:(__DDResult *)result
{
  urlCopy = url;
  if (!urlCopy)
  {
    if (!_DDResultIsURL(result))
    {
      return 0;
    }

    urlCopy = _DDURLFromResult(result);
    if (!urlCopy)
    {
      return 0;
    }
  }

  v6 = urlCopy;
  scheme = [urlCopy scheme];
  lowercaseString = [scheme lowercaseString];
  if ([lowercaseString isEqualToString:@"upi"])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = dd_urlLooksSuspicious(v6) ^ 1;
  }

  return v9;
}

- (id)menuActions
{
  v3 = [(DDAction *)self url];
  if (v3 || [(DDAction *)self result]&& (_DDURLFromResult([(DDAction *)self result]), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    p_result = &self->super.super._result;
    p_context = &self->super.super._context;
    if ([DDTextMessageAction isShowMessageURL:v4])
    {
      v8 = [[DDTextMessageAction alloc] initWithURL:v4 result:self->super.super._result context:self->super.super._context];
      v9 = off_2782900E8;
    }

    else
    {
      v10 = [(DDAction *)DDOpenURLAction actionsWithURL:v4 result:self->super.super._result context:self->super.super._context];
      [v5 addObjectsFromArray:v10];

      v8 = [[DDCopyAction alloc] initWithURL:v4 result:*p_result context:*p_context];
      v9 = off_278290138;
    }

    [v5 addObject:v8];

    v11 = [objc_alloc(*v9) initWithURL:v4 result:*p_result context:*p_context];
    [v5 addObject:v11];

    v12 = [DDActionGroup groupWithActions:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)commitURL
{
  v3 = self->super.super._url;
  if (v3 || (v3 = self->super.super._result) == 0)
  {
  }

  else
  {
    v3 = _DDURLFromResult(v3);
  }

  return v3;
}

@end