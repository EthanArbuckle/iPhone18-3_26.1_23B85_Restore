@interface CNComposeDropTarget
+ (id)os_log;
- (BOOL)_delegateCanDropItemsWithDropSession:(id)a3;
- (BOOL)_sessionContainsOnlyAcceptableTypeIdentifiers:(id)a3;
- (BOOL)canLoadContactObjectsFromSession:(id)a3;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (BOOL)shouldHandleContactItemsFromSession:(id)a3;
- (CNComposeDropTarget)initWithView:(id)a3 delegate:(id)a4;
- (CNComposeDropTargetDelegate)delegate;
- (UIView)targetView;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)emailRecipientForContact:(id)a3;
- (id)unifiedEmailRecipientForContact:(id)a3;
- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (unint64_t)composeAddressKind:(unint64_t)a3;
- (void)_delegateDidDropItemsWithDropSession:(id)a3;
- (void)_updateDelegateFlags;
- (void)addContactItemsToTargetViewFromSession:(id)a3;
- (void)addDroppedContacts:(id)a3 toTargetView:(id)a4 forSession:(id)a5;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)handleDropOfContactItemProviders:(id)a3;
@end

@implementation CNComposeDropTarget

+ (id)os_log
{
  if (os_log_cn_once_token_7_1 != -1)
  {
    +[CNComposeDropTarget os_log];
  }

  v3 = os_log_cn_once_object_7_1;

  return v3;
}

uint64_t __29__CNComposeDropTarget_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.autocomplete.ui", "composedroptarget");
  v1 = os_log_cn_once_object_7_1;
  os_log_cn_once_object_7_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNComposeDropTarget)initWithView:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CNComposeDropTarget;
  v8 = [(CNComposeDropTarget *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_targetView, v6);
    v10 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:v9];
    dropInteraction = v9->_dropInteraction;
    v9->_dropInteraction = v10;

    [v6 addInteraction:v9->_dropInteraction];
    objc_storeWeak(&v9->_delegate, v7);
    [(CNComposeDropTarget *)v9 _updateDelegateFlags];
  }

  return v9;
}

- (void)_updateDelegateFlags
{
  v3 = [(CNComposeDropTarget *)self delegate];
  self->_delegateFlags.respondsToCanDropDraggedItemsAtPoint = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDragEntered = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDragExited = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDragDidMoveToPoint = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDidDropItemsAtPoint = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToDataOwner = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToShouldHandleDroppedContacts = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToSendingAddressForTargetView = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToAddressKind = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.respondsToComposeRecipientsForDroppedContacts = objc_opt_respondsToSelector() & 1;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CNComposeDropTarget *)v6 dropInteraction:v7 sessionDidEnter:v8, v9, v10, v11, v12, v13];
  }

  if (self->_delegateFlags.respondsToDragEntered)
  {
    v14 = [(CNComposeDropTarget *)self delegate];
    v15 = [(CNComposeDropTarget *)self targetView];
    [v5 locationInView:v15];
    v17 = v16;
    v19 = v18;

    [v14 dropTarget:self dragEnteredAtPoint:{v17, v19}];
  }
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CNComposeDropTarget *)v5 dropInteraction:v6 sessionDidExit:v7, v8, v9, v10, v11, v12];
  }

  if (self->_delegateFlags.respondsToDragExited)
  {
    v13 = [(CNComposeDropTarget *)self delegate];
    [v13 dropTargetDragExited:self];
  }
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v5 = a4;
  v6 = ([(CNComposeDropTarget *)self _delegateHandlesDrops]|| [(CNComposeDropTarget *)self shouldHandleContactItemsFromSession:v5]) && [(CNComposeDropTarget *)self _sessionContainsOnlyAcceptableTypeIdentifiers:v5];

  return v6;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_delegateFlags.respondsToDragDidMoveToPoint)
  {
    v8 = [(CNComposeDropTarget *)self targetView];
    [v7 locationInView:v8];
    v10 = v9;
    v12 = v11;

    v13 = [(CNComposeDropTarget *)self delegate];
    [v13 dropTarget:self dragDidMoveToPoint:{v10, v12}];
  }

  if ([v7 allowsMoveOperation])
  {
    v14 = [v7 localDragSession];
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v15 = 2;
  }

  v16 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:v15];

  return v16;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CNComposeDropTarget *)v6 dropInteraction:v7 performDrop:v8, v9, v10, v11, v12, v13];
  }

  [(CNComposeDropTarget *)self _delegateDidDropItemsWithDropSession:v5];
}

- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  if (!self->_delegateFlags.respondsToDataOwner)
  {
    return 3;
  }

  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained dropTarget:self dataOwnerForSession:v5];

  return v7;
}

- (BOOL)_sessionContainsOnlyAcceptableTypeIdentifiers:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v5 = [v4 items];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__CNComposeDropTarget__sessionContainsOnlyAcceptableTypeIdentifiers___block_invoke;
  v7[3] = &unk_1E7CD2D58;
  v7[4] = self;
  v7[5] = &v8;
  [v5 enumerateObjectsUsingBlock:v7];

  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return self;
}

void __69__CNComposeDropTarget__sessionContainsOnlyAcceptableTypeIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = [a2 itemProvider];
  v8 = [v7 registeredTypeIdentifiers];
  v10 = [v6 setWithArray:v8];

  v9 = [*(a1 + 32) acceptableUTIs];
  LOBYTE(v7) = [v9 intersectsSet:v10];

  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)_delegateDidDropItemsWithDropSession:(id)a3
{
  v12 = a3;
  if (-[CNComposeDropTarget shouldHandleContactItemsFromSession:](self, "shouldHandleContactItemsFromSession:") && ([v12 localDragSession], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    [(CNComposeDropTarget *)self addContactItemsToTargetViewFromSession:v12];
  }

  else if ([(CNComposeDropTarget *)self _delegateHandlesDrops])
  {
    v5 = [(CNComposeDropTarget *)self targetView];
    [v12 locationInView:v5];
    v7 = v6;
    v9 = v8;

    v10 = [(CNComposeDropTarget *)self delegate];
    v11 = [v12 items];
    [v10 dropTarget:self didDropDragItems:v11 atPoint:{v7, v9}];
  }
}

- (BOOL)_delegateCanDropItemsWithDropSession:(id)a3
{
  if (!self->_delegateFlags.respondsToCanDropDraggedItemsAtPoint)
  {
    return 1;
  }

  v3 = self;
  v4 = a3;
  v5 = [(CNComposeDropTarget *)v3 delegate];
  v6 = [(CNComposeDropTarget *)v3 targetView];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  LOBYTE(v3) = [v5 dropTarget:v3 canDropDraggedItemsAtPoint:{v8, v10}];
  return v3;
}

- (BOOL)shouldHandleContactItemsFromSession:(id)a3
{
  v4 = a3;
  if (self->_delegateFlags.respondsToShouldHandleDroppedContacts && (WeakRetained = objc_loadWeakRetained(&self->_delegate), -[CNComposeDropTarget targetView](self, "targetView"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [WeakRetained dropTarget:self shouldAddDroppedContactsToTargetView:v6 forSession:v4], v6, WeakRetained, v7))
  {
    if (v4)
    {
      v8 = [(CNComposeDropTarget *)self canLoadContactObjectsFromSession:v4];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canLoadContactObjectsFromSession:(id)a3
{
  v3 = a3;
  v4 = [v3 canLoadObjectsOfClass:objc_opt_class()];

  return v4;
}

- (void)addContactItemsToTargetViewFromSession:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(CNComposeDropTarget *)self targetView];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x1E695D1B8];
    v9 = MEMORY[0x1E695CD58];
    v10 = +[CNComposeRecipient descriptorsForRequiredKeysForContact];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[CNComposeDropTarget addContactItemsToTargetViewFromSession:]"];
    v12 = [v9 descriptorWithKeyDescriptors:v10 description:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__CNComposeDropTarget_addContactItemsToTargetViewFromSession___block_invoke;
    v13[3] = &unk_1E7CD2D80;
    v13[4] = self;
    v14 = v7;
    v15 = v4;
    [v8 provideContactsForDropSession:v15 withKeys:v12 completionBlock:v13];
  }
}

- (void)addDroppedContacts:(id)a3 toTargetView:(id)a4 forSession:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__CNComposeDropTarget_addDroppedContacts_toTargetView_forSession___block_invoke;
  v16[3] = &unk_1E7CD2DA8;
  v16[4] = self;
  v10 = [a3 _cn_map:v16];
  if (self->_delegateFlags.respondsToComposeRecipientsForDroppedContacts)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [WeakRetained dropTarget:self proposedRecipientsForDroppedContacts:v10 forSession:v9];

    v10 = v12;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__CNComposeDropTarget_addDroppedContacts_toTargetView_forSession___block_invoke_2;
  v14[3] = &unk_1E7CD2D10;
  v15 = v8;
  v13 = v8;
  [v10 _cn_each:v14];
}

void __66__CNComposeDropTarget_addDroppedContacts_toTargetView_forSession___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__CNComposeDropTarget_addDroppedContacts_toTargetView_forSession___block_invoke_3;
  v5[3] = &unk_1E7CD1E08;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)handleDropOfContactItemProviders:(id)a3
{
  v4 = a3;
  if ([(CNComposeDropTarget *)self shouldHandleContactItemsFromSession:0]&& ((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    objc_opt_class();
    v5 = [(CNComposeDropTarget *)self targetView];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __56__CNComposeDropTarget_handleDropOfContactItemProviders___block_invoke;
      v8[3] = &unk_1E7CD2DF8;
      v8[4] = self;
      v9 = v7;
      [v4 _cn_each:v8];
    }
  }
}

void __56__CNComposeDropTarget_handleDropOfContactItemProviders___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 canLoadObjectOfClass:objc_opt_class()])
  {
    v4 = objc_opt_class();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__CNComposeDropTarget_handleDropOfContactItemProviders___block_invoke_2;
    v7[3] = &unk_1E7CD2DD0;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v5;
    v6 = [v3 loadObjectOfClass:v4 completionHandler:v7];
  }
}

void __56__CNComposeDropTarget_handleDropOfContactItemProviders___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x1E695D1B8];
    v14[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v9 = MEMORY[0x1E695CD58];
    v10 = +[CNComposeRecipient descriptorsForRequiredKeysForContact];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[CNComposeDropTarget handleDropOfContactItemProviders:]_block_invoke_2"];
    v12 = [v9 descriptorWithKeyDescriptors:v10 description:v11];
    v13 = [v7 contactsFromDraggingContacts:v8 withKeys:v12];

    [*(a1 + 32) addDroppedContacts:v13 toTargetView:*(a1 + 40) forSession:0];
  }
}

- (id)emailRecipientForContact:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E6996530];
  v6 = [v4 emailAddresses];
  LODWORD(v5) = (*(v5 + 16))(v5, v6);

  if (v5)
  {
    v7 = [CNComposeRecipient alloc];
    v8 = [MEMORY[0x1E695CD80] stringFromContact:v4 style:0];
    v9 = [(CNComposeRecipient *)v7 initWithContact:v4 address:v8 kind:0];
  }

  else
  {
    v9 = [(CNComposeDropTarget *)self unifiedEmailRecipientForContact:v4];
  }

  return v9;
}

- (id)unifiedEmailRecipientForContact:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E6996368] factoryWithPriorityDomain:0 sendingAddress:0];
  if (self->_delegateFlags.respondsToAddressKind)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [(CNComposeDropTarget *)self targetView];
    v8 = [WeakRetained addressKindForDropTarget:self withTargetView:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 emailAddresses];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __55__CNComposeDropTarget_unifiedEmailRecipientForContact___block_invoke;
  v26[3] = &unk_1E7CD2E20;
  v10 = v5;
  v27 = v10;
  v11 = v4;
  v28 = v11;
  v29 = self;
  v30 = v8;
  v12 = [v9 _cn_map:v26];

  if (self->_delegateFlags.respondsToSendingAddressForTargetView)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = [(CNComposeDropTarget *)self targetView];
    v15 = [v13 sendingAddressForDropTarget:self withTargetView:v14];

    v16 = [MEMORY[0x1E699AFD0] rangeOfAddressDomainFromAddress:v15];
    v18 = [v15 substringWithRange:{v16, v17}];
  }

  else
  {
    v18 = 0;
  }

  v19 = [MEMORY[0x1E695CEF0] bestGuessEmailAddressForContact:v11 sendingAddressDomain:v18];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __55__CNComposeDropTarget_unifiedEmailRecipientForContact___block_invoke_2;
  v24[3] = &unk_1E7CD1BE0;
  v25 = v19;
  v20 = v19;
  v21 = [v12 _cn_firstObjectPassingTest:v24];
  v22 = [[CNUnifiedComposeRecipient alloc] initWithChildren:v12 defaultChild:v21];

  return v22;
}

CNComposeRecipient *__55__CNComposeDropTarget_unifiedEmailRecipientForContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6996370];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 value];
  [v5 setAddress:v6];

  [v5 setAddressType:1];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) identifier];
  v9 = [v7 localContactResultWithDisplayName:0 value:v5 nameComponents:0 contactIdentifier:v8];

  v10 = [CNComposeRecipient alloc];
  v11 = *(a1 + 40);
  v12 = [v4 value];

  v13 = -[CNComposeRecipient initWithContact:address:kind:](v10, "initWithContact:address:kind:", v11, v12, [*(a1 + 48) composeAddressKind:*(a1 + 56)]);
  [(CNComposeRecipient *)v13 setAutocompleteResult:v9];

  return v13;
}

uint64_t __55__CNComposeDropTarget_unifiedEmailRecipientForContact___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 address];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (unint64_t)composeAddressKind:(unint64_t)a3
{
  if (a3)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (UIView)targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  return WeakRetained;
}

- (CNComposeDropTargetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end