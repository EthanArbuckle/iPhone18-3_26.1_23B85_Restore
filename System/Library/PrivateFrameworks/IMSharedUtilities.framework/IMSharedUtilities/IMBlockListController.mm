@interface IMBlockListController
+ (id)sharedBlockList;
+ (void)_createCMFItemRefWithUnsanitizedAddress:(id)a3;
- (BOOL)addressIsBlocked:(id)a3;
- (BOOL)blockItem:(id)a3;
- (BOOL)itemIsBlocked:(id)a3;
- (IMBlockListController)init;
- (id)_addressForCMItemRef:(void *)a3;
- (id)blockListItems;
- (void)_buildBlockList;
- (void)_unblockCMFItem:(void *)a3;
- (void)blockContact:(id)a3;
- (void)dealloc;
- (void)listenToCNNotifications;
- (void)removeCNNotifications;
- (void)unblockContact:(id)a3;
- (void)unblockItem:(id)a3;
@end

@implementation IMBlockListController

+ (id)sharedBlockList
{
  v2 = qword_1EB30A880;
  if (!qword_1EB30A880)
  {
    v3 = objc_alloc_init(IMBlockListController);
    v4 = qword_1EB30A880;
    qword_1EB30A880 = v3;

    v2 = qword_1EB30A880;
  }

  return v2;
}

- (IMBlockListController)init
{
  v13.receiver = self;
  v13.super_class = IMBlockListController;
  v2 = [(IMBlockListController *)&v13 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = *MEMORY[0x1E6995900];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = sub_1A8616754;
    v10 = &unk_1E7826150;
    objc_copyWeak(&v11, &location);
    v5 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:&v7];
    [(IMBlockListController *)v2 setCmfBlockListUpdatedObserver:v5, v7, v8, v9, v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(IMBlockListController *)self cmfBlockListUpdatedObserver];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = [(IMBlockListController *)self cmfBlockListUpdatedObserver];
    [v4 removeObserver:v5];
  }

  [(IMBlockListController *)self removeCNNotifications];
  v6.receiver = self;
  v6.super_class = IMBlockListController;
  [(IMBlockListController *)&v6 dealloc];
}

- (id)blockListItems
{
  imBlockItemList = self->_imBlockItemList;
  if (!imBlockItemList)
  {
    [(IMBlockListController *)self _buildBlockList];
    imBlockItemList = self->_imBlockItemList;
  }

  return imBlockItemList;
}

- (void)listenToCNNotifications
{
  v3 = [(IMBlockListController *)self cnDatabaseChangedExternallyObserver];

  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *MEMORY[0x1E695C3D8];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = sub_1A86169EC;
    v10 = &unk_1E7826150;
    objc_copyWeak(&v11, &location);
    v6 = [v4 addObserverForName:v5 object:0 queue:0 usingBlock:&v7];
    [(IMBlockListController *)self setCnDatabaseChangedExternallyObserver:v6, v7, v8, v9, v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)removeCNNotifications
{
  v3 = [(IMBlockListController *)self cnDatabaseChangedExternallyObserver];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = [(IMBlockListController *)self cnDatabaseChangedExternallyObserver];
    [v4 removeObserver:v5];

    [(IMBlockListController *)self setCnDatabaseChangedExternallyObserver:0];
  }
}

- (BOOL)itemIsBlocked:(id)a3
{
  if (a3)
  {
    return 0;
  }

  [0 cmfItem];
  return CMFBlockListIsItemBlocked() != 0;
}

- (BOOL)addressIsBlocked:(id)a3
{
  v3 = a3;
  if (v3 && (v4 = [IMBlockListController _createCMFItemRefWithUnsanitizedAddress:v3]) != 0)
  {
    v5 = v4;
    v6 = CMFBlockListIsItemBlocked() != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)blockItem:(id)a3
{
  [a3 cmfItem];

  return MEMORY[0x1EEE66B58](self, sel__blockCMFItemRef_);
}

- (void)blockContact:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[IMCTBlockList sharedBlockList];
    [v4 blockContact:v3 completion:&unk_1F1BA5788];
  }
}

- (void)unblockItem:(id)a3
{
  [a3 cmfItem];

  MEMORY[0x1EEE66B58](self, sel__unblockCMFItem_);
}

- (void)unblockContact:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[IMCTBlockList sharedBlockList];
    [v4 unblockContact:v3 completion:&unk_1F1BA57A8];
  }
}

+ (void)_createCMFItemRefWithUnsanitizedAddress:(id)a3
{
  v3 = a3;
  if (qword_1EB30ACF8 != -1)
  {
    sub_1A88C02CC();
  }

  v4 = [v3 stringByTrimmingCharactersInSet:qword_1EB30ACF0];
  if (!MEMORY[0x1AC570A50]())
  {
    if (IMStringIsEmail())
    {
      v9 = CMFItemCreateWithEmailAddress();
      goto LABEL_9;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [v5 objectForKey:*MEMORY[0x1E695D978]];
  [v6 lowercaseString];

  v7 = CFPhoneNumberCreate();
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = CMFItemCreateWithPhoneNumber();
  CFRelease(v8);
LABEL_9:

  return v9;
}

- (void)_buildBlockList
{
  CMFBlockListCopyItemsForAllServicesService();
  v3 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:0];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  if ([v3 count])
  {
    v6 = 0;
    do
    {
      v7 = [v3 objectAtIndex:v6];
      v8 = [(IMBlockListController *)self _addressForCMItemRef:v7];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 associatedPerson];
        v11 = [[IMBlockListItem alloc] initWithPerson:v10 address:v9 cmfItemRef:v7];
        [v4 addObject:v9];
        [v5 addObject:v11];
      }

      ++v6;
    }

    while (v6 < [v3 count]);
  }

  v12 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v5];
  imBlockItemList = self->_imBlockItemList;
  self->_imBlockItemList = v12;
}

- (id)_addressForCMItemRef:(void *)a3
{
  if (CMFItemGetType())
  {
    CMFItemCopyEmailAddress();
    v3 = 0;
  }

  else
  {
    CMFItemCopyPhoneNumber();
    v3 = IMFormattedPhoneNumberForCFPhoneNumberRef();
  }

  return v3;
}

- (void)_unblockCMFItem:(void *)a3
{
  if (a3 && CMFBlockListIsItemBlocked())
  {
    CMFBlockListRemoveItemFromAllServices();
    imBlockItemList = self->_imBlockItemList;
    self->_imBlockItemList = 0;
  }
}

@end