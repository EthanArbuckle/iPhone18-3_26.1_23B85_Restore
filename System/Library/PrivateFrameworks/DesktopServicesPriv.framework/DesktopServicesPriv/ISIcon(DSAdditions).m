@interface ISIcon(DSAdditions)
- (id)ds_copyFolderConfig;
- (id)ds_folderIconType;
- (id)ds_simplifiedFolderIcon;
@end

@implementation ISIcon(DSAdditions)

- (id)ds_folderIconType
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 type];
    v3 = static_objc_cast<NSString,objc_object * {__strong}>(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)ds_copyFolderConfig
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([a1 iconConfig], v2 = objc_claimAutoreleasedReturnValue(), objc_cast<ISFolderIconConfiguration,objc_object  {objcproto19ISIconConfiguration}* {__strong}>(v2), v3 = objc_claimAutoreleasedReturnValue(), v2, v3))
  {
    v4 = objc_alloc_init(MEMORY[0x1E69A89F0]);
    [v4 setFolderEmpty:{objc_msgSend(v3, "folderEmpty")}];
    [v4 setSystemTintColor:{objc_msgSend(v3, "systemTintColor")}];
    v5 = [v3 symbolName];
    v6 = Copy<NSMutableArray<FILocalAppContainerNode *>>(v5);
    [v4 setSymbolName:v6];

    v7 = [v3 emoji];
    v8 = Copy<NSMutableArray<FILocalAppContainerNode *>>(v7);
    [v4 setEmoji:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)ds_simplifiedFolderIcon
{
  v1 = [a1 ds_copyFolderConfig];
  v2 = v1;
  if (v1)
  {
    [v1 setSymbolName:0];
    [v2 setEmoji:0];
    v3 = objc_alloc(MEMORY[0x1E69A8A00]);
    v4 = [*MEMORY[0x1E6982DC8] identifier];
    v5 = [v3 initWithType:v4 iconConfiguration:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end