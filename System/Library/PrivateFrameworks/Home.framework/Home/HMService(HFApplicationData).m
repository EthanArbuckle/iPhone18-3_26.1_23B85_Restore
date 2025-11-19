@interface HMService(HFApplicationData)
- (void)_hf_applicationDataUpdated:()HFApplicationData;
- (void)hf_updateApplicationData:()HFApplicationData handleError:completionHandler:;
@end

@implementation HMService(HFApplicationData)

- (void)_hf_applicationDataUpdated:()HFApplicationData
{
  v4 = a3;
  v5 = [a1 applicationData];

  if (v5 == v4)
  {
    v6 = +[HFHomeKitDispatcher sharedDispatcher];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__HMService_HFApplicationData___hf_applicationDataUpdated___block_invoke;
    v7[3] = &unk_277DF27B8;
    v7[4] = a1;
    [v6 dispatchAccessoryObserverMessage:v7 sender:0];
  }
}

- (void)hf_updateApplicationData:()HFApplicationData handleError:completionHandler:
{
  v8 = a3;
  v9 = a5;
  [a1 _hf_applicationDataUpdated:v8];
  objc_initWeak(&location, a1);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__HMService_HFApplicationData__hf_updateApplicationData_handleError_completionHandler___block_invoke;
  v12[3] = &unk_277DFF028;
  v12[4] = a1;
  v16 = a4;
  objc_copyWeak(&v15, &location);
  v10 = v8;
  v13 = v10;
  v11 = v9;
  v14 = v11;
  [a1 updateApplicationData:v10 completionHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

@end