@interface HUUserAvatarHeaderView
@end

@implementation HUUserAvatarHeaderView

void __54___HUUserAvatarHeaderView_initWithUser_home_delegate___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!a3)
  {
    v7 = [a1[4] uniqueIdentifier];
    v8 = [v7 UUIDString];
    v9 = [v5 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = a1[5];
      v11 = [a1[4] uniqueIdentifier];
      v12 = [v11 UUIDString];
      v13 = [v5 objectForKeyedSubscript:v12];
      [v10 addObject:v13];

      v14 = MEMORY[0x277D2C900];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __54___HUUserAvatarHeaderView_initWithUser_home_delegate___block_invoke_2;
      v16[3] = &unk_277DB8200;
      v17 = WeakRetained;
      v18 = a1[5];
      v15 = [v14 futureWithBlock:v16];
    }
  }
}

void __54___HUUserAvatarHeaderView_initWithUser_home_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 contactView];
  [v4 setAccounts:*(a1 + 40)];

  [v5 finishWithNoResult];
}

uint64_t __47___HUUserAvatarHeaderView_setAccounts_forHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 accountType];
    v7 = [v6 identifier];
    v8 = [v7 isEqualToString:*MEMORY[0x277CB8D58]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end