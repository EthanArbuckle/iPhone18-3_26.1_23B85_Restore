@interface HUMediaSystemEditorUtilities
+ (BOOL)wouldPairingAccessoriesNecessitateConfiguration:(id)a3;
@end

@implementation HUMediaSystemEditorUtilities

+ (BOOL)wouldPairingAccessoriesNecessitateConfiguration:(id)a3
{
  v3 = a3;
  if ([v3 na_any:&__block_literal_global_215])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [v3 anyObject];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__HUMediaSystemEditorUtilities_wouldPairingAccessoriesNecessitateConfiguration___block_invoke_2;
    v10[3] = &unk_277DB8EC0;
    v6 = v5;
    v11 = v6;
    if ([v3 na_all:v10])
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __80__HUMediaSystemEditorUtilities_wouldPairingAccessoriesNecessitateConfiguration___block_invoke_3;
      v8[3] = &unk_277DB8EC0;
      v9 = v6;
      v4 = [v3 na_all:v8] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

BOOL __80__HUMediaSystemEditorUtilities_wouldPairingAccessoriesNecessitateConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 remoteLoginHandler];
  v5 = [v4 loggedInAccount];
  v6 = [v5 username];
  v7 = [v3 remoteLoginHandler];

  v8 = [v7 loggedInAccount];
  v9 = [v8 username];
  v10 = [v6 compare:v9 options:1] == 0;

  return v10;
}

uint64_t __80__HUMediaSystemEditorUtilities_wouldPairingAccessoriesNecessitateConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 room];
  v4 = [*(a1 + 32) room];
  v5 = [v3 isEqual:v4];

  return v5;
}

@end