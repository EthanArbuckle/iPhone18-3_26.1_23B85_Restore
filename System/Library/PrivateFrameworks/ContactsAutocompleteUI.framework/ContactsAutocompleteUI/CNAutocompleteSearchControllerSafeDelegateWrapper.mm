@interface CNAutocompleteSearchControllerSafeDelegateWrapper
+ (id)log;
- (BOOL)searchController:(id)a3 imageDataForRecipient:(id)a4 imageUpdateBlock:(id)a5;
- (BOOL)searchController:(id)a3 supplementalGroupsForSearchQuery:(id)a4 completionHandler:(id)a5;
- (CNAutocompleteSearchControllerInternalDelegate)delegate;
- (CNAutocompleteSearchControllerSafeDelegateWrapper)initWithDelegate:(id)a3;
- (id)searchController:(id)a3 composeRecipientForAddress:(id)a4;
- (id)searchController:(id)a3 contextMenuConfigurationForRecipient:(id)a4;
- (id)searchController:(id)a3 preferredRecipientForRecipient:(id)a4;
- (id)searchController:(id)a3 tintColorForRecipient:(id)a4;
- (unint64_t)searchController:(id)a3 presentationOptionsForRecipient:(id)a4;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3 anchoredToView:(id)a4;
- (void)searchController:(id)a3 didAddRecipient:(id)a4;
- (void)searchController:(id)a3 didAddRecipientByResultsController:(id)a4;
- (void)searchController:(id)a3 didAddRecipientBySuggestionsController:(id)a4;
- (void)searchController:(id)a3 didEndDisplayingRowForRecipient:(id)a4;
- (void)searchController:(id)a3 didHideResultsView:(id)a4;
- (void)searchController:(id)a3 didRemoveRecipient:(id)a4;
- (void)searchController:(id)a3 didShowResultsView:(id)a4;
- (void)searchController:(id)a3 didTapTableAccessoryForRecipient:(id)a4;
- (void)searchController:(id)a3 textViewDidChangeSize:(CGSize)a4;
- (void)searchController:(id)a3 textViewTextDidChange:(id)a4;
- (void)searchController:(id)a3 textViewWillChangeSize:(CGSize)a4;
- (void)searchController:(id)a3 willDisplayRowForRecipient:(id)a4;
- (void)searchController:(id)a3 willHideResultsView:(id)a4;
- (void)searchController:(id)a3 willShowResultsView:(id)a4;
@end

@implementation CNAutocompleteSearchControllerSafeDelegateWrapper

- (CNAutocompleteSearchControllerSafeDelegateWrapper)initWithDelegate:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = CNAutocompleteSearchControllerSafeDelegateWrapper;
  v5 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)&v54 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1);

    v8 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFFFD | v9);

    v10 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v11 = 128;
    }

    else
    {
      v11 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFF7F | v11);

    v12 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFFFB | v13);

    v14 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFFF7 | v15);

    v16 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v17 = 16;
    }

    else
    {
      v17 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFFEF | v17);

    v18 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v19 = 32;
    }

    else
    {
      v19 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFFDF | v19);

    v20 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v21 = 64;
    }

    else
    {
      v21 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFFBF | v21);

    v22 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFEFF | v23);

    v24 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v25 = 512;
    }

    else
    {
      v25 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFDFF | v25);

    v26 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v27 = 1024;
    }

    else
    {
      v27 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFFBFF | v27);

    v28 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v29 = 2048;
    }

    else
    {
      v29 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFF7FF | v29);

    v30 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v31 = 4096;
    }

    else
    {
      v31 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFEFFF | v31);

    v32 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v33 = 0x2000;
    }

    else
    {
      v33 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFDFFF | v33);

    v34 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v35 = 0x4000;
    }

    else
    {
      v35 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFFBFFF | v35);

    v36 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v37 = 0x8000;
    }

    else
    {
      v37 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFF7FFF | v37);

    v38 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v39 = 0x10000;
    }

    else
    {
      v39 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFEFFFF | v39);

    v40 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v41 = 0x20000;
    }

    else
    {
      v41 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFDFFFF | v41);

    v42 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v43 = 0x40000;
    }

    else
    {
      v43 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFFBFFFF | v43);

    v44 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v45 = 0x80000;
    }

    else
    {
      v45 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFF7FFFF | v45);

    v46 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v47 = 0x100000;
    }

    else
    {
      v47 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFEFFFFF | v47);

    v48 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v49 = 0x200000;
    }

    else
    {
      v49 = 0;
    }

    v6->_delegateFlags = (*&v6->_delegateFlags & 0xFFDFFFFF | v49);

    v50 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)v6 delegate];
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

- (void)searchController:(id)a3 didAddRecipient:(id)a4
{
  if (*&self->_delegateFlags)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v9 searchController:v8 didAddRecipient:v7];
  }
}

- (void)searchController:(id)a3 didRemoveRecipient:(id)a4
{
  if ((*&self->_delegateFlags & 2) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v9 searchController:v8 didRemoveRecipient:v7];
  }
}

- (id)searchController:(id)a3 composeRecipientForAddress:(id)a4
{
  if ((*&self->_delegateFlags & 4) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    v4 = [v9 searchController:v8 composeRecipientForAddress:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)searchController:(id)a3 willShowResultsView:(id)a4
{
  if ((*&self->_delegateFlags & 8) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v9 searchController:v8 willShowResultsView:v7];
  }
}

- (void)searchController:(id)a3 didShowResultsView:(id)a4
{
  if ((*&self->_delegateFlags & 0x10) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v9 searchController:v8 didShowResultsView:v7];
  }
}

- (void)searchController:(id)a3 willHideResultsView:(id)a4
{
  if ((*&self->_delegateFlags & 0x20) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v9 searchController:v8 willHideResultsView:v7];
  }
}

- (void)searchController:(id)a3 didHideResultsView:(id)a4
{
  if ((*&self->_delegateFlags & 0x40) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v9 searchController:v8 didHideResultsView:v7];
  }
}

- (void)searchController:(id)a3 textViewTextDidChange:(id)a4
{
  if ((*&self->_delegateFlags & 0x80) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v9 searchController:v8 textViewTextDidChange:v7];
  }
}

- (unint64_t)searchController:(id)a3 presentationOptionsForRecipient:(id)a4
{
  if ((*(&self->_delegateFlags + 1) & 1) == 0)
  {
    return 0;
  }

  v7 = a4;
  v8 = a3;
  v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
  v10 = [v9 searchController:v8 presentationOptionsForRecipient:v7];

  return v10;
}

- (id)searchController:(id)a3 preferredRecipientForRecipient:(id)a4
{
  if ((*(&self->_delegateFlags + 1) & 2) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    v4 = [v9 searchController:v8 preferredRecipientForRecipient:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)searchController:(id)a3 tintColorForRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69DC888] systemBlueColor];
  if ((*(&self->_delegateFlags + 1) & 4) != 0)
  {
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    v10 = [v9 searchController:v6 tintColorForRecipient:v7];

    v8 = v10;
  }

  return v8;
}

- (void)searchController:(id)a3 textViewWillChangeSize:(CGSize)a4
{
  if ((*(&self->_delegateFlags + 1) & 8) != 0)
  {
    height = a4.height;
    width = a4.width;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v9 searchController:v8 textViewWillChangeSize:{width, height}];
  }
}

- (void)searchController:(id)a3 textViewDidChangeSize:(CGSize)a4
{
  if ((*(&self->_delegateFlags + 1) & 0x10) != 0)
  {
    height = a4.height;
    width = a4.width;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v9 searchController:v8 textViewDidChangeSize:{width, height}];
  }
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3
{
  if ((*(&self->_delegateFlags + 1) & 0x20) != 0)
  {
    v5 = a3;
    v6 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v6 didTapTextViewAccessoryButtonForSearchController:v5];
  }
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3 anchoredToView:(id)a4
{
  v9 = a4;
  delegateFlags = self->_delegateFlags;
  v7 = a3;
  if ((*&delegateFlags & 0x4000) != 0)
  {
    v8 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v8 didTapTextViewAccessoryButtonForSearchController:v7 anchoredToView:v9];

    v7 = v8;
  }

  else
  {
    [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self didTapTextViewAccessoryButtonForSearchController:v7];
  }
}

- (void)searchController:(id)a3 didTapTableAccessoryForRecipient:(id)a4
{
  if ((*(&self->_delegateFlags + 1) & 0x80) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v9 searchController:v8 didTapTableAccessoryForRecipient:v7];
  }
}

- (id)searchController:(id)a3 contextMenuConfigurationForRecipient:(id)a4
{
  if (*(&self->_delegateFlags + 2))
  {
    v7 = a4;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    v4 = [v9 searchController:v8 contextMenuConfigurationForRecipient:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)searchController:(id)a3 supplementalGroupsForSearchQuery:(id)a4 completionHandler:(id)a5
{
  if ((*(&self->_delegateFlags + 2) & 2) == 0)
  {
    return 0;
  }

  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
  v13 = [v12 searchController:v11 supplementalGroupsForSearchQuery:v10 completionHandler:v9];

  return v13;
}

- (BOOL)searchController:(id)a3 imageDataForRecipient:(id)a4 imageUpdateBlock:(id)a5
{
  if ((*(&self->_delegateFlags + 2) & 4) == 0)
  {
    return 0;
  }

  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
  v13 = [v12 searchController:v11 imageDataForRecipient:v10 imageUpdateBlock:v9];

  return v13;
}

- (void)searchController:(id)a3 willDisplayRowForRecipient:(id)a4
{
  v6 = a4;
  if ((*(&self->_delegateFlags + 2) & 8) != 0)
  {
    v7 = a3;
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CNAutocompleteSearchControllerSafeDelegateWrapper searchController:v6 willDisplayRowForRecipient:v8];
    }

    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v9 searchController:v7 willDisplayRowForRecipient:v6];
  }
}

- (void)searchController:(id)a3 didEndDisplayingRowForRecipient:(id)a4
{
  v6 = a4;
  if ((*(&self->_delegateFlags + 2) & 0x10) != 0)
  {
    v7 = a3;
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CNAutocompleteSearchControllerSafeDelegateWrapper searchController:v6 didEndDisplayingRowForRecipient:v8];
    }

    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v9 searchController:v7 didEndDisplayingRowForRecipient:v6];
  }
}

- (void)searchController:(id)a3 didAddRecipientByResultsController:(id)a4
{
  if ((*(&self->_delegateFlags + 2) & 0x20) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v9 searchController:v8 didAddRecipientByResultsController:v7];
  }
}

- (void)searchController:(id)a3 didAddRecipientBySuggestionsController:(id)a4
{
  if ((*(&self->_delegateFlags + 2) & 0x40) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(CNAutocompleteSearchControllerSafeDelegateWrapper *)self delegate];
    [v9 searchController:v8 didAddRecipientBySuggestionsController:v7];
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