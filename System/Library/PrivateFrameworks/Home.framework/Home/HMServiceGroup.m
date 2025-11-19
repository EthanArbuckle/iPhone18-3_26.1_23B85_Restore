@interface HMServiceGroup
@end

@implementation HMServiceGroup

uint64_t __56__HMServiceGroup_AbstractionAdditions__hf_accessoryType__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

uint64_t __52__HMServiceGroup_AbstractionAdditions__hf_isInRoom___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 room];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

uint64_t __58__HMServiceGroup_HFAdditions__hf_areAllServicesInSameRoom__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_parentRoom];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __62__HMServiceGroup_HFHomeKitObjectConformance__hf_isValidObject__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __66__HMServiceGroup_HFApplicationData___hf_didUpdateApplicationData___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) services];
    v4 = [v3 firstObject];
    v5 = [v4 home];
    [v6 home:v5 didUpdateApplicationDataForServiceGroup:*(a1 + 32)];
  }
}

void __92__HMServiceGroup_HFApplicationData__hf_updateApplicationData_handleError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 homeManager];
  if ([v4 hasOptedToHH2])
  {
    v5 = [*(a1 + 32) services];
    v6 = [v5 firstObject];
    v7 = [v6 home];
    v8 = [v7 residentDevices];
    v9 = [v8 count];

    v10 = HFOperationUpdateApplicationDataResidentSync;
    if (!v9)
    {
      v10 = HFOperationUpdateApplicationDataCloudSync;
    }
  }

  else
  {

    v10 = HFOperationUpdateApplicationDataCloudSync;
  }

  v11 = *(a1 + 56);
  v12 = *v10;
  v13 = +[HFErrorHandler sharedHandler];
  v14 = v13;
  if (v11 == 1)
  {
    [v13 handleError:v17 operationType:v12 options:0 retryBlock:0 cancelBlock:0];
  }

  else
  {
    [v13 logError:v17 operationDescription:v12];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v16 = [WeakRetained applicationData];
  [WeakRetained _hf_didUpdateApplicationData:v16];

  (*(*(a1 + 40) + 16))();
}

@end