@interface CKPersistentDetailsTabInfo
- (CKPersistentDetailsTabInfo)initWithExistingAsyncTabs:(id)tabs selectedDetailsTabID:(id)d;
@end

@implementation CKPersistentDetailsTabInfo

- (CKPersistentDetailsTabInfo)initWithExistingAsyncTabs:(id)tabs selectedDetailsTabID:(id)d
{
  tabsCopy = tabs;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = CKPersistentDetailsTabInfo;
  v9 = [(CKPersistentDetailsTabInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_existingAsyncTabs, tabs);
    objc_storeStrong(&v10->_selectedDetailsTabID, d);
  }

  return v10;
}

@end