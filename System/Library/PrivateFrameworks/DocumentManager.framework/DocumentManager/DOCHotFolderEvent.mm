@interface DOCHotFolderEvent
- (DOCHotFolderEvent)initWithRowId:(id)id appBundleIdentifier:(id)identifier folderItem:(id)item type:(unint64_t)type lastUsedDate:(id)date frecency:(double)frecency;
@end

@implementation DOCHotFolderEvent

- (DOCHotFolderEvent)initWithRowId:(id)id appBundleIdentifier:(id)identifier folderItem:(id)item type:(unint64_t)type lastUsedDate:(id)date frecency:(double)frecency
{
  idCopy = id;
  identifierCopy = identifier;
  itemCopy = item;
  dateCopy = date;
  v22.receiver = self;
  v22.super_class = DOCHotFolderEvent;
  v19 = [(DOCHotFolderEvent *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_rowId, id);
    objc_storeStrong(&v20->_appBundleIdentifier, identifier);
    objc_storeStrong(&v20->_folderItem, item);
    v20->_type = type;
    [(DOCFrecencyBasedEvent *)v20 setLastUsedDate:dateCopy];
    [(DOCFrecencyBasedEvent *)v20 setFrecency:frecency];
  }

  return v20;
}

@end