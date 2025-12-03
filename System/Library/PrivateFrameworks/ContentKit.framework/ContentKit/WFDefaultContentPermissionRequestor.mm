@interface WFDefaultContentPermissionRequestor
- (WFContactStore)contactStore;
- (void)allowContactsAccessWithCompletionHandler:(id)handler;
- (void)allowNetworkAccessAfterPromptingForURLs:(id)ls completionHandler:(id)handler;
- (void)requestUserConsentToLoadWebContentAtURL:(id)l completionHandler:(id)handler;
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

- (void)allowNetworkAccessAfterPromptingForURLs:(id)ls completionHandler:(id)handler
{
  v8 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = getWFSecurityLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[WFDefaultContentPermissionRequestor allowNetworkAccessAfterPromptingForURLs:completionHandler:]";
    _os_log_impl(&dword_21E1BD000, v5, OS_LOG_TYPE_DEFAULT, "%s Denying unrestricted network access due to missing WFContentPermissionRequestor", &v6, 0xCu);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
}

- (void)allowContactsAccessWithCompletionHandler:(id)handler
{
  v8 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v4 = getWFContentGraphLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[WFDefaultContentPermissionRequestor allowContactsAccessWithCompletionHandler:]";
    _os_log_impl(&dword_21E1BD000, v4, OS_LOG_TYPE_DEFAULT, "%s Client requested -makeContactAccessResourceAvailable, but no WFContentPermissionRequestor was provided, using default contact store.", &v6, 0xCu);
  }

  v5 = objc_opt_new();
  handlerCopy[2](handlerCopy, v5, 0);
}

- (void)requestUserConsentToLoadWebContentAtURL:(id)l completionHandler:(id)handler
{
  v8 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = getWFSecurityLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[WFDefaultContentPermissionRequestor requestUserConsentToLoadWebContentAtURL:completionHandler:]";
    _os_log_impl(&dword_21E1BD000, v5, OS_LOG_TYPE_DEFAULT, "%s Denying load of external web resources due to missing WFContentPermissionRequestor.", &v6, 0xCu);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
}

@end