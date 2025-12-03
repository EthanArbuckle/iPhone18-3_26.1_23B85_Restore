@interface DOCPickerProxy
+ (id)pickerExtensionForRemoteViewController:(id)controller errorHandler:(id)handler;
@end

@implementation DOCPickerProxy

+ (id)pickerExtensionForRemoteViewController:(id)controller errorHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__DOCPickerProxy_pickerExtensionForRemoteViewController_errorHandler___block_invoke;
  v9[3] = &unk_278FA23A8;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [controller serviceViewControllerProxyWithErrorHandler:v9];

  return v7;
}

@end