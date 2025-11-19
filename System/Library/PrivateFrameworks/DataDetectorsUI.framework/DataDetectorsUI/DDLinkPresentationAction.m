@interface DDLinkPresentationAction
+ (BOOL)handlesUrl:(id)a3 result:(__DDResult *)a4;
+ (id)urlForURL:(id)a3 result:(__DDResult *)a4;
- (id)createViewController;
- (id)menuActions;
- (id)previewActionsWithValidatedURL:(id)a3;
@end

@implementation DDLinkPresentationAction

+ (BOOL)handlesUrl:(id)a3 result:(__DDResult *)a4
{
  v4 = [a1 urlForURL:a3 result:a4];
  isApple = [(NSURL *)v4 dd_isAppleStore];

  return isApple;
}

- (id)createViewController
{
  v2 = [DDLinkPresentationAction urlForURL:self->super.super._url result:self->super.super._result];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D28]);
    [v3 setPreferredContentSize:{350.0, 74.0}];
    gotLoadHelper_x8__OBJC_CLASS___LPMetadataProvider(v4);
    v6 = objc_alloc_init(*(v5 + 1760));
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__DDLinkPresentationAction_createViewController__block_invoke;
    v9[3] = &unk_278291088;
    v7 = v3;
    v10 = v7;
    [v6 startFetchingMetadataForURL:v2 completionHandler:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __48__DDLinkPresentationAction_createViewController__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __48__DDLinkPresentationAction_createViewController__block_invoke_cold_1(v6);
    }
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__DDLinkPresentationAction_createViewController__block_invoke_3;
    v7[3] = &unk_278290BC8;
    v8 = v5;
    v9 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

void __48__DDLinkPresentationAction_createViewController__block_invoke_3(uint64_t a1, double a2)
{
  gotLoadHelper_x8__OBJC_CLASS___LPLinkView(a2);
  v4 = [objc_alloc(*(v3 + 1744)) initWithMetadata:*(a1 + 32)];
  [v4 _setDisablePlaybackControls:1];
  [v4 _setDisableAutoPlay:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [*(a1 + 40) view];
  [v4 intrinsicContentSize];
  [*(a1 + 40) setPreferredContentSize:?];
  [v4 setAlpha:0.1];
  [v5 addSubview:v4];
  v6 = [v5 centerYAnchor];
  v7 = [v4 centerYAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v8 setActive:1];

  v9 = [v5 centerXAnchor];
  v10 = [v4 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [v5 widthAnchor];
  v13 = [v4 widthAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [v5 heightAnchor];
  v16 = [v4 heightAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  [v4 sizeToFit];
  v18 = MEMORY[0x277D75D18];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__DDLinkPresentationAction_createViewController__block_invoke_2;
  v20[3] = &unk_278290BC8;
  v21 = v4;
  v22 = *(a1 + 40);
  v19 = v4;
  [v18 animateWithDuration:v20 animations:&__block_literal_global_4 completion:0.2];
}

uint64_t __48__DDLinkPresentationAction_createViewController__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 32) intrinsicContentSize];
  v2 = *(a1 + 40);

  return [v2 setPreferredContentSize:?];
}

+ (id)urlForURL:(id)a3 result:(__DDResult *)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
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

- (id)previewActionsWithValidatedURL:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = self->super.super._result;
  context = self->super.super._context;
  v6 = a3;
  v7 = [(DDAction *)DDOpenURLAction actionsWithURL:v6 result:v4 context:context];
  v8 = [[DDCopyAction alloc] initWithURL:self->super.super._url result:self->super.super._result context:self->super.super._context];
  v14[0] = v8;
  v9 = [[DDShareAction alloc] initWithURL:v6 result:self->super.super._result context:self->super.super._context];

  v14[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v11 = [v7 arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)menuActions
{
  v3 = [DDLinkPresentationAction urlForURL:self->super.super._url result:self->super.super._result];
  v4 = +[DDActionGroup emptyGroup];
  v5 = [(DDAction *)DDOpenURLAction actionsWithURL:v3 result:self->super.super._result context:self->super.super._context];
  [(DDActionGroup *)v4 appendActions:v5];

  v6 = [[DDCopyAction alloc] initWithURL:self->super.super._url result:self->super.super._result context:self->super.super._context];
  [(DDActionGroup *)v4 appendAction:v6];

  v7 = [[DDShareAction alloc] initWithURL:v3 result:self->super.super._result context:self->super.super._context];
  [(DDActionGroup *)v4 appendAction:v7];

  return v4;
}

void __48__DDLinkPresentationAction_createViewController__block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Couldn't load link preview metadata. Error: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end