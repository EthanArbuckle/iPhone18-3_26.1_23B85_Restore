@interface DOCSmartFolderHit
- (DOCSmartFolderHit)initWithRowId:(id)a3 folder:(id)a4 type:(unint64_t)a5 value:(id)a6 lastUsedDate:(id)a7 frecency:(double)a8;
@end

@implementation DOCSmartFolderHit

- (DOCSmartFolderHit)initWithRowId:(id)a3 folder:(id)a4 type:(unint64_t)a5 value:(id)a6 lastUsedDate:(id)a7 frecency:(double)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v22.receiver = self;
  v22.super_class = DOCSmartFolderHit;
  v19 = [(DOCSmartFolderHit *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_rowId, a3);
    objc_storeStrong(&v20->_folderItem, a4);
    v20->_type = a5;
    objc_storeStrong(&v20->_value, a6);
    [(DOCFrecencyBasedEvent *)v20 setLastUsedDate:v18];
    [(DOCFrecencyBasedEvent *)v20 setFrecency:a8];
  }

  return v20;
}

@end