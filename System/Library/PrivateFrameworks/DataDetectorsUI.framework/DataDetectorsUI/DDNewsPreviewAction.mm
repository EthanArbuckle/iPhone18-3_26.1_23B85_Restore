@interface DDNewsPreviewAction
+ (BOOL)handlesUrl:(id)url result:(__DDResult *)result;
+ (id)urlForURL:(id)l result:(__DDResult *)result;
- (id)commitURL;
- (id)createViewController;
- (id)menuActions;
@end

@implementation DDNewsPreviewAction

+ (BOOL)handlesUrl:(id)url result:(__DDResult *)result
{
  v4 = [self urlForURL:url result:result];
  if (v4 && (Helper_x8__OBJC_CLASS___NSSNewsViewController = gotLoadHelper_x8__OBJC_CLASS___NSSNewsViewController(v5), [*(v7 + 3096) canOpenURL:{v4, Helper_x8__OBJC_CLASS___NSSNewsViewController}]))
  {
    v8 = applicationWithBundleIdentifierIsRestricted(@"com.apple.news") ^ 1;

    return v8;
  }

  else
  {

    return 0;
  }
}

- (id)createViewController
{
  v3 = [DDNewsPreviewAction urlForURL:self->super.super._url result:self->super.super._result];
  gotLoadHelper_x20__OBJC_CLASS___NSSNewsViewController(v4);
  if ([*(v2 + 3096) canOpenURL:v3])
  {
    v5 = [objc_alloc(*(v2 + 3096)) initWithURL:v3];
    [v5 setLinkPreviewing:1];

    v6 = v5;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)commitURL
{
  v2 = [DDNewsPreviewAction urlForURL:self->super.super._url result:self->super.super._result];
  Helper_x8__OBJC_CLASS___NSSNewsViewController = gotLoadHelper_x8__OBJC_CLASS___NSSNewsViewController(v3);
  if ([*(v5 + 3096) canOpenURL:{v2, Helper_x8__OBJC_CLASS___NSSNewsViewController}])
  {
    v6 = v2;

    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

+ (id)urlForURL:(id)l result:(__DDResult *)result
{
  lCopy = l;
  v6 = lCopy;
  if (result)
  {
    v7 = DDResultCopyExtractedURL();
    if (v7)
    {
      v6 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)menuActions
{
  v3 = [DDNewsPreviewAction urlForURL:self->super.super._url result:self->super.super._result];
  Helper_x8__OBJC_CLASS___NSSNewsViewController = gotLoadHelper_x8__OBJC_CLASS___NSSNewsViewController(v4);
  if ([*(v6 + 3096) canOpenURL:{v3, Helper_x8__OBJC_CLASS___NSSNewsViewController}])
  {
    v7 = +[DDActionGroup emptyGroup];
    v8 = [(DDAction *)DDOpenURLAction actionsWithURL:v3 result:self->super.super._result context:self->super.super._context];
    [(DDActionGroup *)v7 appendActions:v8];

    if (+[DDAddToReadingListAction isAvailable])
    {
      v9 = [(DDAction *)[DDAddToReadingListAction alloc] initWithURL:v3 result:self->super.super._result context:self->super.super._context];
      [(DDActionGroup *)v7 appendAction:v9];
    }

    v10 = [[DDCopyAction alloc] initWithURL:self->super.super._url result:self->super.super._result context:self->super.super._context];
    [(DDActionGroup *)v7 appendAction:v10];

    v11 = [[DDShareAction alloc] initWithURL:v3 result:self->super.super._result context:self->super.super._context];
    [(DDActionGroup *)v7 appendAction:v11];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end