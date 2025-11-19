@interface CKBrowserSwitcherFooterViewStickersDataSource
- (CKBrowserSwitcherFooterViewStickersDataSource)init;
- (id)switcherView:(id)a3 indexPathOfModelWithIdentifier:(id)a4;
- (id)switcherView:(id)a3 modelAtIndexPath:(id)a4 type:(int64_t *)a5;
- (unint64_t)numberOfPluginsInSwitcherView:(id)a3 forSection:(unint64_t)a4;
@end

@implementation CKBrowserSwitcherFooterViewStickersDataSource

- (CKBrowserSwitcherFooterViewStickersDataSource)init
{
  v5.receiver = self;
  v5.super_class = CKBrowserSwitcherFooterViewStickersDataSource;
  v2 = [(CKBrowserSwitcherFooterViewStickersDataSource *)&v5 init];
  if (v2)
  {
    v3 = +[CKBalloonPluginManager sharedInstance];
    [v3 updateAppInstallations];
  }

  return v2;
}

- (unint64_t)numberOfPluginsInSwitcherView:(id)a3 forSection:(unint64_t)a4
{
  if (a4)
  {
    return 0;
  }

  v4 = [(CKBrowserSwitcherFooterViewStickersDataSource *)self pluginManager];
  v5 = [v4 combinedStickerApps];
  v6 = [v5 count];

  return v6;
}

- (id)switcherView:(id)a3 modelAtIndexPath:(id)a4 type:(int64_t *)a5
{
  v7 = a4;
  v8 = [(CKBrowserSwitcherFooterViewStickersDataSource *)self pluginManager];
  v9 = [v8 orderedCombinedStickerApps];
  v10 = [v7 item];
  if (v10 < [v9 count])
  {
    v11 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 1;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = 0;
        v12 = 0;
LABEL_10:

        if (!a5)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v12 = 2;
    }

    v13 = v11;
    goto LABEL_10;
  }

  v13 = 0;
  v12 = 0;
  if (a5)
  {
LABEL_11:
    *a5 = v12;
  }

LABEL_12:

  return v13;
}

- (id)switcherView:(id)a3 indexPathOfModelWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(CKBrowserSwitcherFooterViewStickersDataSource *)self pluginManager];
  v7 = [v6 combinedStickersAppsIndexPathMap];
  v8 = [v7 objectForKey:v5];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
  }

  v10 = v9;

  return v10;
}

@end