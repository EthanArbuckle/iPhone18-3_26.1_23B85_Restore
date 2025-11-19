@interface CKDGlobalConfigurationURLRequest
- (id)additionalHeaderValues;
- (id)url;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
- (void)requestDidParsePlistObject:(id)a3;
@end

@implementation CKDGlobalConfigurationURLRequest

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKDGlobalConfigurationURLRequest;
  [(CKDURLRequest *)&v3 fillOutEquivalencyPropertiesBuilder:a3];
}

- (id)additionalHeaderValues
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = 0x28387C540;
  v3 = objc_msgSend_container(self, a2, v2);
  v6 = objc_msgSend_containerID(v3, v4, v5);
  v9 = objc_msgSend_containerIdentifier(v6, v7, v8);
  v15[0] = v9;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v15, &v14, 1);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)url
{
  v3 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  v6 = objc_msgSend_configBaseURL(v3, v4, v5);

  v8 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x277CCACE0], v7, v6, 1);
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v12 = objc_msgSend_path(v8, v10, v11);
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_path(v8, v13, v14);
    v19 = objc_msgSend_length(v16, v17, v18);

    if (v19)
    {
      v21 = objc_msgSend_path(v8, v13, v20);
      objc_msgSend_appendString_(v9, v22, v21);
    }
  }

  objc_msgSend_appendString_(v9, v13, @"/configurations/internetservices/cloudkit/cloudkit-1.0.plist");
  objc_msgSend_setPath_(v8, v23, v9);
  v26 = objc_msgSend_URL(v8, v24, v25);

  return v26;
}

- (void)requestDidParsePlistObject:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v9 = objc_msgSend_requestUUID(self, v7, v8);
    v15 = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "req: %{public}@, Fetched configuration plist from server: %{public}@", &v15, 0x16u);
  }

  v10 = [CKDServerConfiguration alloc];
  v12 = objc_msgSend_initWithValues_(v10, v11, v4);
  configuration = self->_configuration;
  self->_configuration = v12;

  v14 = *MEMORY[0x277D85DE8];
}

@end