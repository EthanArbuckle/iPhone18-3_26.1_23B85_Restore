@interface CKBrowserSwitcherFooterViewDataSource
- (CKBrowserSwitcherFooterViewDataSource)init;
- (id)switcherView:(id)a3 indexPathOfModelWithIdentifier:(id)a4;
- (id)switcherView:(id)a3 modelAtIndexPath:(id)a4 type:(int64_t *)a5;
- (unint64_t)numberOfPluginsInSwitcherView:(id)a3 forSection:(unint64_t)a4;
@end

@implementation CKBrowserSwitcherFooterViewDataSource

- (CKBrowserSwitcherFooterViewDataSource)init
{
  v5.receiver = self;
  v5.super_class = CKBrowserSwitcherFooterViewDataSource;
  v2 = [(CKBrowserSwitcherFooterViewDataSource *)&v5 init];
  if (v2)
  {
    v3 = +[CKBalloonPluginManager sharedInstance];
    [v3 updateAppInstallations];
  }

  return v2;
}

- (unint64_t)numberOfPluginsInSwitcherView:(id)a3 forSection:(unint64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 != 1)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v7 = [(CKBrowserSwitcherFooterViewDataSource *)self pluginManager];
    v8 = [v7 visibleRecentAppStripPlugins];
  }

  else
  {
    v7 = [(CKBrowserSwitcherFooterViewDataSource *)self pluginManager];
    v8 = [v7 visibleFavoriteAppStripPlugins];
  }

  v9 = v8;
  v10 = [v8 count];

LABEL_7:
  return v10;
}

- (id)switcherView:(id)a3 modelAtIndexPath:(id)a4 type:(int64_t *)a5
{
  v7 = a4;
  v8 = [(CKBrowserSwitcherFooterViewDataSource *)self pluginManager];
  v9 = [v8 visibleFavoriteAppStripPlugins];
  v10 = [v8 visibleRecentAppStripPlugins];
  if ([v7 section])
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
  v13 = [v7 item];
  if (v13 < [v12 count])
  {
    v14 = [v12 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 1;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = 0;
        v15 = 0;
LABEL_13:

        if (!a5)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v15 = 2;
    }

    v16 = v14;
    goto LABEL_13;
  }

  v16 = 0;
  v15 = 0;
  if (a5)
  {
LABEL_14:
    *a5 = v15;
  }

LABEL_15:

  return v16;
}

- (id)switcherView:(id)a3 indexPathOfModelWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(CKBrowserSwitcherFooterViewDataSource *)self pluginManager];
  v7 = [v6 pluginIndexPathMap];
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