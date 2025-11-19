@interface HMHome(HFUserHandleAdditions)
- (HFUserHandle)hf_handleForUser:()HFUserHandleAdditions;
- (id)hf_userForHandle:()HFUserHandleAdditions;
@end

@implementation HMHome(HFUserHandleAdditions)

- (id)hf_userForHandle:()HFUserHandleAdditions
{
  v5 = a3;
  v6 = [v5 type];
  if (v6 == 1)
  {
    v8 = [a1 users];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__HMHome_HFUserHandleAdditions__hf_userForHandle___block_invoke;
    v11[3] = &unk_277DF55C0;
    v12 = v5;
    v7 = [v8 na_firstObjectPassingTest:v11];
  }

  else if (v6)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"HFUserHandle.m" lineNumber:83 description:{@"Unknown user handle %@", v5}];

    v7 = 0;
  }

  else
  {
    v7 = [a1 currentUser];
  }

  return v7;
}

- (HFUserHandle)hf_handleForUser:()HFUserHandleAdditions
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 currentUser];
  v6 = [v5 isEqual:v4];

  v7 = [v4 userID];

  if (v7 || (v6 & 1) != 0)
  {
    v10 = [HFUserHandle alloc];
    v11 = [v4 userID];
    v9 = [(HFUserHandle *)v10 initWithType:v6 ^ 1u userID:v11];
  }

  else
  {
    v8 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Can't create HFUserHandle from HMUser because HMUser.userID is nil: %@", &v14, 0xCu);
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

@end