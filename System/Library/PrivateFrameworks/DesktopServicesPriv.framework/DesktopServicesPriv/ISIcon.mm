@interface ISIcon
- (id)ds_copyFolderConfig;
- (id)ds_folderIconType;
- (id)ds_simplifiedFolderIcon;
@end

@implementation ISIcon

- (id)ds_folderIconType
{
  if (objc_opt_respondsToSelector())
  {
    type = [(ISIcon *)self type];
    v4 = sub_10002491C(type);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)ds_copyFolderConfig
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(ISIcon *)self iconConfig], v3 = objc_claimAutoreleasedReturnValue(), sub_10005E5AC(v3), v4 = objc_claimAutoreleasedReturnValue(), v3, v4))
  {
    v5 = objc_alloc_init(ISFolderIconConfiguration);
    [v5 setFolderEmpty:{objc_msgSend(v4, "folderEmpty")}];
    [v5 setSystemTintColor:{objc_msgSend(v4, "systemTintColor")}];
    symbolName = [v4 symbolName];
    v7 = sub_100024518(symbolName);
    [v5 setSymbolName:v7];

    emoji = [v4 emoji];
    v9 = sub_100024518(emoji);
    [v5 setEmoji:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)ds_simplifiedFolderIcon
{
  ds_copyFolderConfig = [(ISIcon *)self ds_copyFolderConfig];
  v3 = ds_copyFolderConfig;
  if (ds_copyFolderConfig)
  {
    [ds_copyFolderConfig setSymbolName:0];
    [v3 setEmoji:0];
    v4 = [ISIcon alloc];
    identifier = [UTTypeFolder identifier];
    v6 = [v4 initWithType:identifier iconConfiguration:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end