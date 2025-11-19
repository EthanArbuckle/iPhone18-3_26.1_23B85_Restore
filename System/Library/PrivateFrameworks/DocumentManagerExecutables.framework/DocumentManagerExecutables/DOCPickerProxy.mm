@interface DOCPickerProxy
+ (id)pickerExtensionForRemoteViewController:(id)a3 errorHandler:(id)a4;
@end

@implementation DOCPickerProxy

+ (id)pickerExtensionForRemoteViewController:(id)a3 errorHandler:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__DOCPickerProxy_pickerExtensionForRemoteViewController_errorHandler___block_invoke;
  v9[3] = &unk_278FA23A8;
  v10 = v5;
  v6 = v5;
  v7 = [a3 serviceViewControllerProxyWithErrorHandler:v9];

  return v7;
}

@end