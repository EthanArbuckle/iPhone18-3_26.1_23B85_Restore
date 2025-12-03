@interface DDClientPreviewAction
+ (BOOL)clientCanPerformActionWithUrl:(id)url;
+ (id)clientActionsDelegate;
+ (id)clientMenuActionProviderForUrl:(id)url context:(id)context;
+ (void)setClientActionsDelegate:(id)delegate;
- (id)iconName;
- (id)localizedName;
- (id)viewController;
- (void)localizedName;
- (void)performFromView:(id)view;
@end

@implementation DDClientPreviewAction

+ (void)setClientActionsDelegate:(id)delegate
{
  obj = self;
  delegateCopy = delegate;
  objc_sync_enter(obj);
  objc_storeWeak(&_clientActionsDelegate_0, delegateCopy);

  objc_sync_exit(obj);
}

+ (id)clientActionsDelegate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&_clientActionsDelegate_0);
  objc_sync_exit(selfCopy);

  return WeakRetained;
}

+ (BOOL)clientCanPerformActionWithUrl:(id)url
{
  urlCopy = url;
  scheme = [urlCopy scheme];
  v5 = [scheme isEqualToString:@"x-apple-data-detectors-clientdefined"];

  if (v5)
  {
    v6 = +[DDAction clientActionsDelegate];
    if (v6 && (objc_opt_respondsToSelector() & 1) != 0 && ([v6 canHandleClientActionFromUrl:urlCopy] & 1) != 0)
    {

      return 1;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDClientPreviewAction clientCanPerformActionWithUrl:urlCopy];
    }
  }

  return 0;
}

+ (id)clientMenuActionProviderForUrl:(id)url context:(id)context
{
  urlCopy = url;
  contextCopy = context;
  scheme = [urlCopy scheme];
  v8 = [scheme isEqualToString:@"x-apple-data-detectors-clientdefined"];

  if (v8)
  {
    v9 = +[DDAction clientActionsDelegate];
    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v10 = [v9 menuActionProviderForClientActionFromUrl:urlCopy context:contextCopy];

      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDClientPreviewAction clientCanPerformActionWithUrl:urlCopy];
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)localizedName
{
  if (!self->super.super._url)
  {
    v4 = 0;
    if ([0 length])
    {
      goto LABEL_7;
    }

LABEL_11:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(DDClientPreviewAction *)&self->super.super._url localizedName];
    }

    v7 = DDLocalizedString(@"Action");

    v5 = v7;

    return v5;
  }

  v3 = +[DDAction clientActionsDelegate];
  if (!v3 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = 0;

    if ([0 length])
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v4 = [v3 localizedTitleForClientActionFromUrl:self->super.super._url context:self->super.super._context];

  if (![v4 length])
  {
    goto LABEL_11;
  }

LABEL_7:
  v5 = v4;

  return v5;
}

- (id)iconName
{
  if (self->super.super._url)
  {
    v3 = +[DDAction clientActionsDelegate];
    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v4 = [v3 glyphForClientActionFromUrl:self->super.super._url];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)performFromView:(id)view
{
  viewCopy = view;
  if (self->super.super._url)
  {
    v5 = +[DDAction clientActionsDelegate];
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 handleClientActionFromUrl:self->super.super._url context:self->super.super._context];

LABEL_5:
      return;
    }
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_5;
  }

  [DDClientPreviewAction performFromView:?];
}

- (id)viewController
{
  if (self->super.super._url)
  {
    v3 = +[DDAction clientActionsDelegate];
    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v4 = [v3 previewForClientActionFromUrl:self->super.super._url];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)clientCanPerformActionWithUrl:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 scheme];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_5(&dword_21AB70000, MEMORY[0x277D86220], v2, "The custom action delegate answered that it could not handle url %p (%@)", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)localizedName
{
  v9 = *MEMORY[0x277D85DE8];
  scheme = [*self scheme];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_5(&dword_21AB70000, MEMORY[0x277D86220], v2, "The custom action delegate did not return a title for url %p (%@)", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)performFromView:(id *)a1 .cold.1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*a1 scheme];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_5(&dword_21AB70000, MEMORY[0x277D86220], v2, "The custom action delegate did not handle url %p (%@)", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

@end