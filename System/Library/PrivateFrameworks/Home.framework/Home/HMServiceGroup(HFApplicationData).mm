@interface HMServiceGroup(HFApplicationData)
- (void)_hf_didUpdateApplicationData:()HFApplicationData;
- (void)hf_updateApplicationData:()HFApplicationData handleError:completionHandler:;
@end

@implementation HMServiceGroup(HFApplicationData)

- (void)_hf_didUpdateApplicationData:()HFApplicationData
{
  v4 = a3;
  applicationData = [self applicationData];

  if (applicationData == v4)
  {
    v6 = +[HFHomeKitDispatcher sharedDispatcher];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__HMServiceGroup_HFApplicationData___hf_didUpdateApplicationData___block_invoke;
    v7[3] = &unk_277DF2CB8;
    v7[4] = self;
    [v6 dispatchHomeObserverMessage:v7 sender:0];
  }
}

- (void)hf_updateApplicationData:()HFApplicationData handleError:completionHandler:
{
  v8 = a3;
  v9 = a5;
  [self _hf_didUpdateApplicationData:v8];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__HMServiceGroup_HFApplicationData__hf_updateApplicationData_handleError_completionHandler___block_invoke;
  v11[3] = &unk_277DFEFD8;
  v11[4] = self;
  v14 = a4;
  objc_copyWeak(&v13, &location);
  v10 = v9;
  v12 = v10;
  [self updateApplicationData:v8 completionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

@end