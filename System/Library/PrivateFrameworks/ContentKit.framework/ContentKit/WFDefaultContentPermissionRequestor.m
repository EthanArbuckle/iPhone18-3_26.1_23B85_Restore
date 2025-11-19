@interface WFDefaultContentPermissionRequestor
- (WFContactStore)contactStore;
- (void)allowContactsAccessWithCompletionHandler:(id)a3;
- (void)allowNetworkAccessAfterPromptingForURLs:(id)a3 completionHandler:(id)a4;
- (void)requestUserConsentToLoadWebContentAtURL:(id)a3 completionHandler:(id)a4;
@end

@implementation WFDefaultContentPermissionRequestor

- (WFContactStore)contactStore
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = getWFContentGraphLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[WFDefaultContentPermissionRequestor contactStore]";
    _os_log_impl(&dword_21E1BD000, v3, OS_LOG_TYPE_DEFAULT, "%s Returning default contact store.", &v8, 0xCu);
  }

  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v5 = objc_opt_new();
    v6 = self->_contactStore;
    self->_contactStore = v5;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (void)allowNetworkAccessAfterPromptingForURLs:(id)a3 completionHandler:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = getWFSecurityLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[WFDefaultContentPermissionRequestor allowNetworkAccessAfterPromptingForURLs:completionHandler:]";
    _os_log_impl(&dword_21E1BD000, v5, OS_LOG_TYPE_DEFAULT, "%s Denying unrestricted network access due to missing WFContentPermissionRequestor", &v6, 0xCu);
  }

  (*(v4 + 2))(v4, 0, 0);
}

- (void)allowContactsAccessWithCompletionHandler:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = getWFContentGraphLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[WFDefaultContentPermissionRequestor allowContactsAccessWithCompletionHandler:]";
    _os_log_impl(&dword_21E1BD000, v4, OS_LOG_TYPE_DEFAULT, "%s Client requested -makeContactAccessResourceAvailable, but no WFContentPermissionRequestor was provided, using default contact store.", &v6, 0xCu);
  }

  v5 = objc_opt_new();
  v3[2](v3, v5, 0);
}

- (void)requestUserConsentToLoadWebContentAtURL:(id)a3 completionHandler:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = getWFSecurityLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[WFDefaultContentPermissionRequestor requestUserConsentToLoadWebContentAtURL:completionHandler:]";
    _os_log_impl(&dword_21E1BD000, v5, OS_LOG_TYPE_DEFAULT, "%s Denying load of external web resources due to missing WFContentPermissionRequestor.", &v6, 0xCu);
  }

  (*(v4 + 2))(v4, 0, 0);
}

@end