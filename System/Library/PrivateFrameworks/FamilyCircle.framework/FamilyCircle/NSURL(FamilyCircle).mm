@interface NSURL(FamilyCircle)
- (id)fa_URLByAddingAirdropInviteParams;
- (id)fa_URLByAddingQueryParams:()FamilyCircle;
@end

@implementation NSURL(FamilyCircle)

- (id)fa_URLByAddingQueryParams:()FamilyCircle
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:a1 resolvingAgainstBaseURL:0];
  v6 = [v5 queryItems];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  }

  v10 = v9;

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__NSURL_FamilyCircle__fa_URLByAddingQueryParams___block_invoke;
  v14[3] = &unk_1E7CA5070;
  v15 = v10;
  v11 = v10;
  [v4 enumerateKeysAndObjectsUsingBlock:v14];
  [v5 setQueryItems:v11];
  v12 = [v5 URL];

  return v12;
}

- (id)fa_URLByAddingAirdropInviteParams
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"familyInviteSource";
  v7[0] = @"airdrop";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [a1 fa_URLByAddingQueryParams:v2];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end