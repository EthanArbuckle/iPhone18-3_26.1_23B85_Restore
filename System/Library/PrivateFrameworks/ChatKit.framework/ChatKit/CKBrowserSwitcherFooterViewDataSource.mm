@interface CKBrowserSwitcherFooterViewDataSource
- (CKBrowserSwitcherFooterViewDataSource)init;
- (id)switcherView:(id)view indexPathOfModelWithIdentifier:(id)identifier;
- (id)switcherView:(id)view modelAtIndexPath:(id)path type:(int64_t *)type;
- (unint64_t)numberOfPluginsInSwitcherView:(id)view forSection:(unint64_t)section;
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

- (unint64_t)numberOfPluginsInSwitcherView:(id)view forSection:(unint64_t)section
{
  viewCopy = view;
  if (section)
  {
    if (section != 1)
    {
      v10 = 0;
      goto LABEL_7;
    }

    pluginManager = [(CKBrowserSwitcherFooterViewDataSource *)self pluginManager];
    visibleRecentAppStripPlugins = [pluginManager visibleRecentAppStripPlugins];
  }

  else
  {
    pluginManager = [(CKBrowserSwitcherFooterViewDataSource *)self pluginManager];
    visibleRecentAppStripPlugins = [pluginManager visibleFavoriteAppStripPlugins];
  }

  v9 = visibleRecentAppStripPlugins;
  v10 = [visibleRecentAppStripPlugins count];

LABEL_7:
  return v10;
}

- (id)switcherView:(id)view modelAtIndexPath:(id)path type:(int64_t *)type
{
  pathCopy = path;
  pluginManager = [(CKBrowserSwitcherFooterViewDataSource *)self pluginManager];
  visibleFavoriteAppStripPlugins = [pluginManager visibleFavoriteAppStripPlugins];
  visibleRecentAppStripPlugins = [pluginManager visibleRecentAppStripPlugins];
  if ([pathCopy section])
  {
    v11 = visibleRecentAppStripPlugins;
  }

  else
  {
    v11 = visibleFavoriteAppStripPlugins;
  }

  v12 = v11;
  item = [pathCopy item];
  if (item < [v12 count])
  {
    v14 = [v12 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
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

        if (!type)
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
  if (type)
  {
LABEL_14:
    *type = v15;
  }

LABEL_15:

  return v16;
}

- (id)switcherView:(id)view indexPathOfModelWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pluginManager = [(CKBrowserSwitcherFooterViewDataSource *)self pluginManager];
  pluginIndexPathMap = [pluginManager pluginIndexPathMap];
  v8 = [pluginIndexPathMap objectForKey:identifierCopy];

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