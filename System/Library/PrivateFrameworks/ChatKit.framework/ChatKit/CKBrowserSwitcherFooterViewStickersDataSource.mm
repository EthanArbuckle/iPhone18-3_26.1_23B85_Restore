@interface CKBrowserSwitcherFooterViewStickersDataSource
- (CKBrowserSwitcherFooterViewStickersDataSource)init;
- (id)switcherView:(id)view indexPathOfModelWithIdentifier:(id)identifier;
- (id)switcherView:(id)view modelAtIndexPath:(id)path type:(int64_t *)type;
- (unint64_t)numberOfPluginsInSwitcherView:(id)view forSection:(unint64_t)section;
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

- (unint64_t)numberOfPluginsInSwitcherView:(id)view forSection:(unint64_t)section
{
  if (section)
  {
    return 0;
  }

  pluginManager = [(CKBrowserSwitcherFooterViewStickersDataSource *)self pluginManager];
  combinedStickerApps = [pluginManager combinedStickerApps];
  v6 = [combinedStickerApps count];

  return v6;
}

- (id)switcherView:(id)view modelAtIndexPath:(id)path type:(int64_t *)type
{
  pathCopy = path;
  pluginManager = [(CKBrowserSwitcherFooterViewStickersDataSource *)self pluginManager];
  orderedCombinedStickerApps = [pluginManager orderedCombinedStickerApps];
  item = [pathCopy item];
  if (item < [orderedCombinedStickerApps count])
  {
    v11 = [orderedCombinedStickerApps objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
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

        if (!type)
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
  if (type)
  {
LABEL_11:
    *type = v12;
  }

LABEL_12:

  return v13;
}

- (id)switcherView:(id)view indexPathOfModelWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pluginManager = [(CKBrowserSwitcherFooterViewStickersDataSource *)self pluginManager];
  combinedStickersAppsIndexPathMap = [pluginManager combinedStickersAppsIndexPathMap];
  v8 = [combinedStickersAppsIndexPathMap objectForKey:identifierCopy];

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