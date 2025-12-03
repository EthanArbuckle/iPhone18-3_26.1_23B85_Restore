@interface SUUISuggestedHandlesSettingsHeaderFooterDescription
- (SUUISuggestedHandlesSettingsHeaderFooterDescription)initWithSuggestedHandles:(id)handles clientContext:(id)context delegate:(id)delegate;
- (SUUISuggestedHandlesSettingsHeaderFooterDescriptionDelegate)delegate;
- (id)helpText;
- (id)suggestedHandles;
- (void)selectedHandleAtIndex:(unint64_t)index;
@end

@implementation SUUISuggestedHandlesSettingsHeaderFooterDescription

- (SUUISuggestedHandlesSettingsHeaderFooterDescription)initWithSuggestedHandles:(id)handles clientContext:(id)context delegate:(id)delegate
{
  handlesCopy = handles;
  contextCopy = context;
  delegateCopy = delegate;
  v11 = [(SUUISuggestedHandlesSettingsHeaderFooterDescription *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_clientContext, context);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v13 = [handlesCopy copy];
    suggestedHandles = v12->_suggestedHandles;
    v12->_suggestedHandles = v13;
  }

  return v12;
}

- (id)helpText
{
  v3 = [(NSArray *)self->_suggestedHandles count];
  clientContext = self->_clientContext;
  if (v3)
  {
    if (clientContext)
    {
      v5 = @"SETTINGS_PROFILE_EDIT_HANDLE_TAKEN_WITH_SUGGESTIONS";
LABEL_6:
      v6 = [(SUUIClientContext *)clientContext localizedStringForKey:v5 inTable:@"Settings"];
      goto LABEL_10;
    }

    v7 = @"SETTINGS_PROFILE_EDIT_HANDLE_TAKEN_WITH_SUGGESTIONS";
  }

  else
  {
    if (clientContext)
    {
      v5 = @"SETTINGS_PROFILE_EDIT_HANDLE_TAKEN";
      goto LABEL_6;
    }

    v7 = @"SETTINGS_PROFILE_EDIT_HANDLE_TAKEN";
  }

  v6 = [SUUIClientContext localizedStringForKey:v7 inBundles:0 inTable:@"Settings"];
LABEL_10:

  return v6;
}

- (void)selectedHandleAtIndex:(unint64_t)index
{
  v9 = [(NSArray *)self->_suggestedHandles objectAtIndex:index];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 suggestedHandlesSettingsHeaderFooterDescription:self didSelectSuggestedHandle:v9];
    }
  }
}

- (id)suggestedHandles
{
  v2 = [(NSArray *)self->_suggestedHandles copy];

  return v2;
}

- (SUUISuggestedHandlesSettingsHeaderFooterDescriptionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end