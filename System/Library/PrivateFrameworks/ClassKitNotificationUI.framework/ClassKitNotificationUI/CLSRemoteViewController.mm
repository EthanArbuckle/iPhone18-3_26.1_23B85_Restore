@interface CLSRemoteViewController
+ (id)instantiateViewControllerWithInputItems:(id)items identifier:(id)identifier connectionHandler:(id)handler;
- (void)presentModallyInNewWindowWithCompletion:(id)completion;
- (void)viewDidInvalidateIntrinsicContentSize;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation CLSRemoteViewController

+ (id)instantiateViewControllerWithInputItems:(id)items identifier:(id)identifier connectionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  handlerCopy = handler;
  v10 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEB38], v9, identifier, *MEMORY[0x277CCA0E0]);
  v27 = 0;
  v12 = objc_msgSend_extensionsWithMatchingAttributes_error_(MEMORY[0x277CCA9C8], v11, v10, &v27);
  v15 = v27;
  if (v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v29 = v10;
    v30 = 2114;
    v31 = v15;
    _os_log_error_impl(&dword_24351C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get privacy disclosure extension for attributes: %{public}@. Error: %{public}@", buf, 0x16u);
  }

  v16 = objc_msgSend_firstObject(v12, v13, v14);
  if (v16)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_243520188;
    v22[3] = &unk_278DBEFE0;
    v17 = &v23;
    v23 = handlerCopy;
    objc_msgSend_instantiateViewControllerWithInputItems_listenerEndpoint_connectionHandler_(v16, v18, itemsCopy, 0, v22);
    v19 = v16;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_243520170;
    block[3] = &unk_278DBF030;
    v17 = &v26;
    v26 = handlerCopy;
    v25 = v15;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)viewDidInvalidateIntrinsicContentSize
{
  v5 = objc_msgSend_serviceViewControllerProxy(self, a2, v2);
  objc_msgSend_viewDidInvalidateIntrinsicContentSize(v5, v3, v4);
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = errorCopy;
  if (errorCopy && objc_msgSend_code(errorCopy, v5, v6) != 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v7;
    _os_log_error_impl(&dword_24351C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "viewServiceDidTerminateWithError Terminated with error: %@", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = CLSRemoteViewController;
  [(_UIRemoteViewController *)&v9 viewServiceDidTerminateWithError:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)presentModallyInNewWindowWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_243520568;
  v6[3] = &unk_278DBF030;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

@end