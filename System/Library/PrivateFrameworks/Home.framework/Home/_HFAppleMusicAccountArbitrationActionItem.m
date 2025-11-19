@interface _HFAppleMusicAccountArbitrationActionItem
+ (id)loginActionItemForAccessories:(id)a3 account:(id)a4 contextGenerator:(id)a5;
+ (id)logoutActionItemForAccessories:(id)a3 desiredAccount:(id)a4;
- (id)description;
@end

@implementation _HFAppleMusicAccountArbitrationActionItem

+ (id)logoutActionItemForAccessories:(id)a3 desiredAccount:(id)a4
{
  v7 = a4;
  v8 = a3;
  if (![v8 count])
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"HFAppleMusicAccountArbitrator.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"accessories.count > 0"}];
  }

  v9 = objc_opt_new();
  v10 = [v8 na_filter:&__block_literal_global_218];

  if (v7)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __91___HFAppleMusicAccountArbitrationActionItem_logoutActionItemForAccessories_desiredAccount___block_invoke_2;
    v22[3] = &unk_277DF3888;
    v23 = v7;
    v11 = [v10 na_filter:v22];

    v10 = v11;
  }

  v12 = [v10 na_filter:&__block_literal_global_58_3];

  [v9 setAccessories:v12];
  v13 = [v12 count];
  v14 = MEMORY[0x277D2C900];
  if (v13)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91___HFAppleMusicAccountArbitrationActionItem_logoutActionItemForAccessories_desiredAccount___block_invoke_5;
    v20[3] = &unk_277DF29A0;
    v21 = v12;
    v15 = [v14 lazyFutureWithBlock:v20];
    [v9 setFuture:v15];

    v16 = v21;
  }

  else
  {
    v16 = [MEMORY[0x277D2C900] lazyFutureWithBlock:&__block_literal_global_60_1];
    [v9 setFuture:v16];
  }

  if (v7)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Accessory Logout for accessories which are not '%@'", v7];
    [v9 setActionItemDescription:v17];
  }

  else
  {
    [v9 setActionItemDescription:@"Accessory Logout"];
  }

  return v9;
}

+ (id)loginActionItemForAccessories:(id)a3 account:(id)a4 contextGenerator:(id)a5
{
  v58[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![v9 count])
  {
    v38 = [MEMORY[0x277CCA890] currentHandler];
    [v38 handleFailureInMethod:a2 object:a1 file:@"HFAppleMusicAccountArbitrator.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"accessories.count > 0"}];
  }

  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = @"Proxy ('Manual') Login Plan";
  if (!v12)
  {
    v13 = @"Companion ('Magic') ->Proxy ('Manual') Login Plan";
  }

  if (v10)
  {
    v14 = @"Companion ('Magic') Login Plan";
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = objc_opt_new();
  [v16 setAccessories:v9];
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v57 = @"accessoryUUIDToAuthKitContext";
  v58[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
  [v16 setUserInfo:v19];

  if (v11)
  {
    v39 = v15;
    v40 = v16;
    v20 = v11;
    v41 = v9;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [v16 accessories];
    v21 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v53;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          v25 = v17;
          if (*v53 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v52 + 1) + 8 * i);
          v27 = MEMORY[0x277D2C900];
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke;
          v48[3] = &unk_277E01318;
          v51 = v20;
          v48[4] = v26;
          v49 = v10;
          v50 = v18;
          v28 = [v27 lazyFutureWithBlock:v48];
          v17 = v25;
          [v25 addObject:v28];
        }

        v22 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v22);
    }

    v16 = v40;
    v9 = v41;
    v11 = v20;
    v15 = v39;
  }

  v29 = MEMORY[0x277CCACA8];
  v30 = [v16 accessories];
  v31 = [v29 stringWithFormat:@"%@ Login for Accessories %@", v15, v30];
  [v16 setActionItemDescription:v31];

  v32 = [v9 count];
  v33 = MEMORY[0x277D2C900];
  if (v32)
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_4;
    v43[3] = &unk_277DFD1F8;
    v44 = v10;
    v45 = v9;
    v46 = v17;
    v47 = v18;
    v34 = [v33 lazyFutureWithBlock:v43];
    [v16 setFuture:v34];

    v35 = v44;
  }

  else
  {
    v35 = [MEMORY[0x277D2C900] lazyFutureWithBlock:&__block_literal_global_87_0];
    [v16 setFuture:v35];
  }

  v36 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(_HFAppleMusicAccountArbitrationActionItem *)self actionItemDescription];
  [v3 appendString:v4 withName:@"actionItemDescription"];

  v5 = [(_HFAppleMusicAccountArbitrationActionItem *)self accessories];
  v6 = [v3 appendObject:v5 withName:@"accessories"];

  v7 = [(_HFAppleMusicAccountArbitrationActionItem *)self future];
  v8 = [v3 appendObject:v7 withName:@"future"];

  v9 = [(_HFAppleMusicAccountArbitrationActionItem *)self userInfo];
  [v3 appendDictionarySection:v9 withName:@"userInfo" skipIfEmpty:1];

  v10 = [v3 build];

  return v10;
}

@end