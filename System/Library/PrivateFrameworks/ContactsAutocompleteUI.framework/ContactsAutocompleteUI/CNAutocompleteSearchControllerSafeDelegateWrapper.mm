@interface CNAutocompleteSearchControllerSafeDelegateWrapper
+ (id)log;
- (BOOL)searchController:(id)controller imageDataForRecipient:(id)recipient imageUpdateBlock:(id)block;
- (BOOL)searchController:(id)controller supplementalGroupsForSearchQuery:(id)query completionHandler:(id)handler;
- (CNAutocompleteSearchControllerInternalDelegate)delegate;
- (CNAutocompleteSearchControllerSafeDelegateWrapper)initWithDelegate:(id)delegate;
- (id)searchController:(id)controller composeRecipientForAddress:(id)address;
- (id)searchController:(id)controller contextMenuConfigurationForRecipient:(id)recipient;
- (id)searchController:(id)controller preferredRecipientForRecipient:(id)recipient;
- (id)searchController:(id)controller tintColorForRecipient:(id)recipient;
- (unint64_t)searchController:(id)controller presentationOptionsForRecipient:(id)recipient;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller anchoredToView:(id)view;
- (void)searchController:(id)controller didAddRecipient:(id)recipient;
- (void)searchController:(id)controller didAddRecipientByResultsController:(id)resultsController;
- (void)searchController:(id)controller didAddRecipientBySuggestionsController:(id)suggestionsController;
- (void)searchController:(id)controller didEndDisplayingRowForRecipient:(id)recipient;
- (void)searchController:(id)controller didHideResultsView:(id)view;
- (void)searchController:(id)controller didRemoveRecipient:(id)recipient;
- (void)searchController:(id)controller didShowResultsView:(id)view;
- (void)searchController:(id)controller didTapTableAccessoryForRecipient:(id)recipient;
- (void)searchController:(id)controller textViewDidChangeSize:(CGSize)size;
- (void)searchController:(id)controller textViewTextDidChange:(id)change;
- (void)searchController:(id)controller textViewWillChangeSize:(CGSize)size;
- (void)searchController:(id)controller willDisplayRowForRecipient:(id)recipient;
- (void)searchController:(id)controller willHideResultsView:(id)view;
- (void)searchController:(id)controller willShowResultsView:(id)view;
@end

@implementation CNAutocompleteSearchControllerSafeDelegateWrapper

- (CNAutocompleteSearchControllerSafeDelegateWrapper)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v54.receiver = self;
  v54.super_class = CNAutocompleteSearchControllerSafeDelegateWrapper;
  v5 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)&v54 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1);

    delegate2 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFFFD | v9);

    delegate3 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v11 = 128;
    }

    else
    {
      v11 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFF7F | v11);

    delegate4 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFFFB | v13);

    delegate5 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFFF7 | v15);

    delegate6 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v17 = 16;
    }

    else
    {
      v17 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFFEF | v17);

    delegate7 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v19 = 32;
    }

    else
    {
      v19 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFFDF | v19);

    delegate8 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v21 = 64;
    }

    else
    {
      v21 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFFBF | v21);

    delegate9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFEFF | v23);

    delegate10 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v25 = 512;
    }

    else
    {
      v25 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFDFF | v25);

    delegate11 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v27 = 1024;
    }

    else
    {
      v27 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFBFF | v27);

    delegate12 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v29 = 2048;
    }

    else
    {
      v29 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFF7FF | v29);

    delegate13 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v31 = 4096;
    }

    else
    {
      v31 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFEFFF | v31);

    delegate14 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v33 = 0x2000;
    }

    else
    {
      v33 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFDFFF | v33);

    delegate15 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v35 = 0x4000;
    }

    else
    {
      v35 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFBFFF | v35);

    delegate16 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v37 = 0x8000;
    }

    else
    {
      v37 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFF7FFF | v37);

    delegate17 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v39 = 0x10000;
    }

    else
    {
      v39 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFEFFFF | v39);

    delegate18 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v41 = 0x20000;
    }

    else
    {
      v41 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFDFFFF | v41);

    delegate19 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v43 = 0x40000;
    }

    else
    {
      v43 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFBFFFF | v43);

    delegate20 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v45 = 0x80000;
    }

    else
    {
      v45 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFF7FFFF | v45);

    delegate21 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v47 = 0x100000;
    }

    else
    {
      v47 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFEFFFFF | v47);

    delegate22 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v49 = 0x200000;
    }

    else
    {
      v49 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFDFFFFF | v49);

    delegate23 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v51 = 0x400000;
    }

    else
    {
      v51 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFBFFFFF | v51);

    v52 = v6;
  }

  return v6;
}

+ (id)log
{
  if (log_cn_once_token_1 != -1)
  {
    +[CNAutocompleteSearchControllerSafeDelegateWrapper log];
  }

  v3 = log_cn_once_object_1;

  return v3;
}

uint64_t __56__CNAutocompleteSearchControllerSafeDelegateWrapper_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.autocomplete.ui", "delegate wrapper");
  v1 = log_cn_once_object_1;
  log_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)searchController:(id)controller didAddRecipient:(id)recipient
{
  if (*&self->_delegateFlags)
  {
    recipientCopy = recipient;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate searchController:controllerCopy didAddRecipient:recipientCopy];
  }
}

- (void)searchController:(id)controller didRemoveRecipient:(id)recipient
{
  if ((*&self->_delegateFlags & 2) != 0)
  {
    recipientCopy = recipient;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate searchController:controllerCopy didRemoveRecipient:recipientCopy];
  }
}

- (id)searchController:(id)controller composeRecipientForAddress:(id)address
{
  if ((*&self->_delegateFlags & 4) != 0)
  {
    addressCopy = address;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    v4 = [delegate searchController:controllerCopy composeRecipientForAddress:addressCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)searchController:(id)controller willShowResultsView:(id)view
{
  if ((*&self->_delegateFlags & 8) != 0)
  {
    viewCopy = view;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate searchController:controllerCopy willShowResultsView:viewCopy];
  }
}

- (void)searchController:(id)controller didShowResultsView:(id)view
{
  if ((*&self->_delegateFlags & 0x10) != 0)
  {
    viewCopy = view;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate searchController:controllerCopy didShowResultsView:viewCopy];
  }
}

- (void)searchController:(id)controller willHideResultsView:(id)view
{
  if ((*&self->_delegateFlags & 0x20) != 0)
  {
    viewCopy = view;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate searchController:controllerCopy willHideResultsView:viewCopy];
  }
}

- (void)searchController:(id)controller didHideResultsView:(id)view
{
  if ((*&self->_delegateFlags & 0x40) != 0)
  {
    viewCopy = view;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate searchController:controllerCopy didHideResultsView:viewCopy];
  }
}

- (void)searchController:(id)controller textViewTextDidChange:(id)change
{
  if ((*&self->_delegateFlags & 0x80) != 0)
  {
    changeCopy = change;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate searchController:controllerCopy textViewTextDidChange:changeCopy];
  }
}

- (unint64_t)searchController:(id)controller presentationOptionsForRecipient:(id)recipient
{
  if ((*(&self->_delegateFlags + 1) & 1) == 0)
  {
    return 0;
  }

  recipientCopy = recipient;
  controllerCopy = controller;
  delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
  v10 = [delegate searchController:controllerCopy presentationOptionsForRecipient:recipientCopy];

  return v10;
}

- (id)searchController:(id)controller preferredRecipientForRecipient:(id)recipient
{
  if ((*(&self->_delegateFlags + 1) & 2) != 0)
  {
    recipientCopy = recipient;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    v4 = [delegate searchController:controllerCopy preferredRecipientForRecipient:recipientCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)searchController:(id)controller tintColorForRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  if ((*(&self->_delegateFlags + 1) & 4) != 0)
  {
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    v10 = [delegate searchController:controllerCopy tintColorForRecipient:recipientCopy];

    systemBlueColor = v10;
  }

  return systemBlueColor;
}

- (void)searchController:(id)controller textViewWillChangeSize:(CGSize)size
{
  if ((*(&self->_delegateFlags + 1) & 8) != 0)
  {
    height = size.height;
    width = size.width;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate searchController:controllerCopy textViewWillChangeSize:{width, height}];
  }
}

- (void)searchController:(id)controller textViewDidChangeSize:(CGSize)size
{
  if ((*(&self->_delegateFlags + 1) & 0x10) != 0)
  {
    height = size.height;
    width = size.width;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate searchController:controllerCopy textViewDidChangeSize:{width, height}];
  }
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller
{
  if ((*(&self->_delegateFlags + 1) & 0x20) != 0)
  {
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate didTapTextViewAccessoryButtonForSearchController:controllerCopy];
  }
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller anchoredToView:(id)view
{
  viewCopy = view;
  delegateFlags = self->_delegateFlags;
  controllerCopy = controller;
  if ((*&delegateFlags & 0x4000) != 0)
  {
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate didTapTextViewAccessoryButtonForSearchController:controllerCopy anchoredToView:viewCopy];

    controllerCopy = delegate;
  }

  else
  {
    [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self didTapTextViewAccessoryButtonForSearchController:controllerCopy];
  }
}

- (void)searchController:(id)controller didTapTableAccessoryForRecipient:(id)recipient
{
  if ((*(&self->_delegateFlags + 1) & 0x80) != 0)
  {
    recipientCopy = recipient;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate searchController:controllerCopy didTapTableAccessoryForRecipient:recipientCopy];
  }
}

- (id)searchController:(id)controller contextMenuConfigurationForRecipient:(id)recipient
{
  if (*(&self->_delegateFlags + 2))
  {
    recipientCopy = recipient;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    v4 = [delegate searchController:controllerCopy contextMenuConfigurationForRecipient:recipientCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)searchController:(id)controller supplementalGroupsForSearchQuery:(id)query completionHandler:(id)handler
{
  if ((*(&self->_delegateFlags + 2) & 2) == 0)
  {
    return 0;
  }

  handlerCopy = handler;
  queryCopy = query;
  controllerCopy = controller;
  delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
  v13 = [delegate searchController:controllerCopy supplementalGroupsForSearchQuery:queryCopy completionHandler:handlerCopy];

  return v13;
}

- (BOOL)searchController:(id)controller imageDataForRecipient:(id)recipient imageUpdateBlock:(id)block
{
  if ((*(&self->_delegateFlags + 2) & 4) == 0)
  {
    return 0;
  }

  blockCopy = block;
  recipientCopy = recipient;
  controllerCopy = controller;
  delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
  v13 = [delegate searchController:controllerCopy imageDataForRecipient:recipientCopy imageUpdateBlock:blockCopy];

  return v13;
}

- (void)searchController:(id)controller willDisplayRowForRecipient:(id)recipient
{
  recipientCopy = recipient;
  if ((*(&self->_delegateFlags + 2) & 8) != 0)
  {
    controllerCopy = controller;
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CNAutocompleteSearchControllerSafeDelegateWrapper searchController:recipientCopy willDisplayRowForRecipient:v8];
    }

    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate searchController:controllerCopy willDisplayRowForRecipient:recipientCopy];
  }
}

- (void)searchController:(id)controller didEndDisplayingRowForRecipient:(id)recipient
{
  recipientCopy = recipient;
  if ((*(&self->_delegateFlags + 2) & 0x10) != 0)
  {
    controllerCopy = controller;
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CNAutocompleteSearchControllerSafeDelegateWrapper searchController:recipientCopy didEndDisplayingRowForRecipient:v8];
    }

    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate searchController:controllerCopy didEndDisplayingRowForRecipient:recipientCopy];
  }
}

- (void)searchController:(id)controller didAddRecipientByResultsController:(id)resultsController
{
  if ((*(&self->_delegateFlags + 2) & 0x20) != 0)
  {
    resultsControllerCopy = resultsController;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate searchController:controllerCopy didAddRecipientByResultsController:resultsControllerCopy];
  }
}

- (void)searchController:(id)controller didAddRecipientBySuggestionsController:(id)suggestionsController
{
  if ((*(&self->_delegateFlags + 2) & 0x40) != 0)
  {
    suggestionsControllerCopy = suggestionsController;
    controllerCopy = controller;
    delegate = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [delegate searchController:controllerCopy didAddRecipientBySuggestionsController:suggestionsControllerCopy];
  }
}

- (CNAutocompleteSearchControllerInternalDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)searchController:(uint64_t)a1 willDisplayRowForRecipient:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B8106000, a2, OS_LOG_TYPE_DEBUG, "willDisplayRowForRecipient for %@", &v2, 0xCu);
}

- (void)searchController:(uint64_t)a1 didEndDisplayingRowForRecipient:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B8106000, a2, OS_LOG_TYPE_DEBUG, "didEndDisplayingRowForRecipient for %@", &v2, 0xCu);
}

@end