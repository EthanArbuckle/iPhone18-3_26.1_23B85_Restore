@interface CKPersistentDetailsTabInfo
- (CKPersistentDetailsTabInfo)initWithExistingAsyncTabs:(id)a3 selectedDetailsTabID:(id)a4;
@end

@implementation CKPersistentDetailsTabInfo

- (CKPersistentDetailsTabInfo)initWithExistingAsyncTabs:(id)a3 selectedDetailsTabID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CKPersistentDetailsTabInfo;
  v9 = [(CKPersistentDetailsTabInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_existingAsyncTabs, a3);
    objc_storeStrong(&v10->_selectedDetailsTabID, a4);
  }

  return v10;
}

@end