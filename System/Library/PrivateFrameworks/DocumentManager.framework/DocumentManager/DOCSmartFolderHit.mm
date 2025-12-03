@interface DOCSmartFolderHit
- (DOCSmartFolderHit)initWithRowId:(id)id folder:(id)folder type:(unint64_t)type value:(id)value lastUsedDate:(id)date frecency:(double)frecency;
@end

@implementation DOCSmartFolderHit

- (DOCSmartFolderHit)initWithRowId:(id)id folder:(id)folder type:(unint64_t)type value:(id)value lastUsedDate:(id)date frecency:(double)frecency
{
  idCopy = id;
  folderCopy = folder;
  valueCopy = value;
  dateCopy = date;
  v22.receiver = self;
  v22.super_class = DOCSmartFolderHit;
  v19 = [(DOCSmartFolderHit *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_rowId, id);
    objc_storeStrong(&v20->_folderItem, folder);
    v20->_type = type;
    objc_storeStrong(&v20->_value, value);
    [(DOCFrecencyBasedEvent *)v20 setLastUsedDate:dateCopy];
    [(DOCFrecencyBasedEvent *)v20 setFrecency:frecency];
  }

  return v20;
}

@end