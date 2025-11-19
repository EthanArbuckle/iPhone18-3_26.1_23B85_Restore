@interface SUUIHandleRulesSettingsHeaderFooterDescription
- (SUUIHandleRulesSettingsHeaderFooterDescription)initWithClientContext:(id)a3;
- (id)text;
@end

@implementation SUUIHandleRulesSettingsHeaderFooterDescription

- (SUUIHandleRulesSettingsHeaderFooterDescription)initWithClientContext:(id)a3
{
  v5 = a3;
  v6 = [(SUUIHandleRulesSettingsHeaderFooterDescription *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
  }

  return v7;
}

- (id)text
{
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SUUIClientContext *)clientContext localizedStringForKey:@"SETTINGS_PROFILE_EDIT_HANDLE_RULES" inTable:@"Settings"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"SETTINGS_PROFILE_EDIT_HANDLE_RULES" inBundles:0 inTable:@"Settings"];
  }
  v3 = ;

  return v3;
}

@end