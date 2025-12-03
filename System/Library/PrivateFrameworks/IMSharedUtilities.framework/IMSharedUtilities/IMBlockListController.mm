@interface IMBlockListController
+ (id)sharedBlockList;
+ (void)_createCMFItemRefWithUnsanitizedAddress:(id)address;
- (BOOL)addressIsBlocked:(id)blocked;
- (BOOL)blockItem:(id)item;
- (BOOL)itemIsBlocked:(id)blocked;
- (IMBlockListController)init;
- (id)_addressForCMItemRef:(void *)ref;
- (id)blockListItems;
- (void)_buildBlockList;
- (void)_unblockCMFItem:(void *)item;
- (void)blockContact:(id)contact;
- (void)dealloc;
- (void)listenToCNNotifications;
- (void)removeCNNotifications;
- (void)unblockContact:(id)contact;
- (void)unblockItem:(id)item;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = *MEMORY[0x1E6995900];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = sub_1A8616754;
    v10 = &unk_1E7826150;
    objc_copyWeak(&v11, &location);
    v5 = [defaultCenter addObserverForName:v4 object:0 queue:0 usingBlock:&v7];
    [(IMBlockListController *)v2 setCmfBlockListUpdatedObserver:v5, v7, v8, v9, v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  cmfBlockListUpdatedObserver = [(IMBlockListController *)self cmfBlockListUpdatedObserver];

  if (cmfBlockListUpdatedObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    cmfBlockListUpdatedObserver2 = [(IMBlockListController *)self cmfBlockListUpdatedObserver];
    [defaultCenter removeObserver:cmfBlockListUpdatedObserver2];
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
  cnDatabaseChangedExternallyObserver = [(IMBlockListController *)self cnDatabaseChangedExternallyObserver];

  if (!cnDatabaseChangedExternallyObserver)
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *MEMORY[0x1E695C3D8];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = sub_1A86169EC;
    v10 = &unk_1E7826150;
    objc_copyWeak(&v11, &location);
    v6 = [defaultCenter addObserverForName:v5 object:0 queue:0 usingBlock:&v7];
    [(IMBlockListController *)self setCnDatabaseChangedExternallyObserver:v6, v7, v8, v9, v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)removeCNNotifications
{
  cnDatabaseChangedExternallyObserver = [(IMBlockListController *)self cnDatabaseChangedExternallyObserver];

  if (cnDatabaseChangedExternallyObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    cnDatabaseChangedExternallyObserver2 = [(IMBlockListController *)self cnDatabaseChangedExternallyObserver];
    [defaultCenter removeObserver:cnDatabaseChangedExternallyObserver2];

    [(IMBlockListController *)self setCnDatabaseChangedExternallyObserver:0];
  }
}

- (BOOL)itemIsBlocked:(id)blocked
{
  if (blocked)
  {
    return 0;
  }

  [0 cmfItem];
  return CMFBlockListIsItemBlocked() != 0;
}

- (BOOL)addressIsBlocked:(id)blocked
{
  blockedCopy = blocked;
  if (blockedCopy && (v4 = [IMBlockListController _createCMFItemRefWithUnsanitizedAddress:blockedCopy]) != 0)
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

- (BOOL)blockItem:(id)item
{
  [item cmfItem];

  return MEMORY[0x1EEE66B58](self, sel__blockCMFItemRef_);
}

- (void)blockContact:(id)contact
{
  if (contact)
  {
    contactCopy = contact;
    v4 = +[IMCTBlockList sharedBlockList];
    [v4 blockContact:contactCopy completion:&unk_1F1BA5788];
  }
}

- (void)unblockItem:(id)item
{
  [item cmfItem];

  MEMORY[0x1EEE66B58](self, sel__unblockCMFItem_);
}

- (void)unblockContact:(id)contact
{
  if (contact)
  {
    contactCopy = contact;
    v4 = +[IMCTBlockList sharedBlockList];
    [v4 unblockContact:contactCopy completion:&unk_1F1BA57A8];
  }
}

+ (void)_createCMFItemRefWithUnsanitizedAddress:(id)address
{
  addressCopy = address;
  if (qword_1EB30ACF8 != -1)
  {
    sub_1A88C02CC();
  }

  v4 = [addressCopy stringByTrimmingCharactersInSet:qword_1EB30ACF0];
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

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];
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
        associatedPerson = [v8 associatedPerson];
        v11 = [[IMBlockListItem alloc] initWithPerson:associatedPerson address:v9 cmfItemRef:v7];
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

- (id)_addressForCMItemRef:(void *)ref
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

- (void)_unblockCMFItem:(void *)item
{
  if (item && CMFBlockListIsItemBlocked())
  {
    CMFBlockListRemoveItemFromAllServices();
    imBlockItemList = self->_imBlockItemList;
    self->_imBlockItemList = 0;
  }
}

@end