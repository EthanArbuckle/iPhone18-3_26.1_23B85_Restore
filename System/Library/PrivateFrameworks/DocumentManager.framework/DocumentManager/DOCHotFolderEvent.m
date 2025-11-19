@interface DOCHotFolderEvent
- (DOCHotFolderEvent)initWithRowId:(id)a3 appBundleIdentifier:(id)a4 folderItem:(id)a5 type:(unint64_t)a6 lastUsedDate:(id)a7 frecency:(double)a8;
@end

@implementation DOCHotFolderEvent

- (DOCHotFolderEvent)initWithRowId:(id)a3 appBundleIdentifier:(id)a4 folderItem:(id)a5 type:(unint64_t)a6 lastUsedDate:(id)a7 frecency:(double)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v22.receiver = self;
  v22.super_class = DOCHotFolderEvent;
  v19 = [(DOCHotFolderEvent *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_rowId, a3);
    objc_storeStrong(&v20->_appBundleIdentifier, a4);
    objc_storeStrong(&v20->_folderItem, a5);
    v20->_type = a6;
    [(DOCFrecencyBasedEvent *)v20 setLastUsedDate:v18];
    [(DOCFrecencyBasedEvent *)v20 setFrecency:a8];
  }

  return v20;
}

@end