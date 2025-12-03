@interface HMHomeManager(HFApplicationData)
- (void)hf_updateApplicationData:()HFApplicationData handleError:completionHandler:;
@end

@implementation HMHomeManager(HFApplicationData)

- (void)hf_updateApplicationData:()HFApplicationData handleError:completionHandler:
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__HMHomeManager_HFApplicationData__hf_updateApplicationData_handleError_completionHandler___block_invoke;
  v10[3] = &unk_277DFF000;
  v12 = a4;
  v11 = v8;
  v9 = v8;
  [self updateApplicationData:a3 completionHandler:v10];
}

@end