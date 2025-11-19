@interface CNUIUserActionUserActivityItem
@end

@implementation CNUIUserActionUserActivityItem

void __60___CNUIUserActionUserActivityItem_performActionWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionRecorder];
  [v2 recordUserAction:*(a1 + 40)];
}

uint64_t __43___CNUIUserActionUserActivityItem_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) type];
  v4 = [*(a1 + 40) type];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __43___CNUIUserActionUserActivityItem_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) label];
  v4 = [*(a1 + 40) label];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __43___CNUIUserActionUserActivityItem_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) targetHandle];
  v4 = [*(a1 + 40) targetHandle];
  v5 = [v2 isString:v3 localizedCaseInsensitiveEqualToOther:v4];

  return v5;
}

uint64_t __43___CNUIUserActionUserActivityItem_isEqual___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) bundleIdentifier];
  v4 = [*(a1 + 40) bundleIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __43___CNUIUserActionUserActivityItem_isEqual___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 userActivity];
  v4 = [v3 interaction];
  v5 = [v4 intent];
  v6 = [*(a1 + 40) userActivity];
  v7 = [v6 interaction];
  v8 = [v7 intent];
  v9 = [v2 _isIntent:v5 equalToOther:v8];

  return v9;
}

uint64_t __39___CNUIUserActionUserActivityItem_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) type];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __39___CNUIUserActionUserActivityItem_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) label];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __39___CNUIUserActionUserActivityItem_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) targetHandle];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __39___CNUIUserActionUserActivityItem_hash__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __39___CNUIUserActionUserActivityItem_hash__block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 userActivity];
  v3 = [v2 interaction];
  v4 = [v3 intent];
  v5 = [v1 _hashForIntent:v4];

  return v5;
}

uint64_t __58___CNUIUserActionUserActivityItem__isIntent_equalToOther___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) personHandle];
  v4 = [v3 value];
  v5 = [*(a1 + 40) personHandle];
  v6 = [v5 value];
  v7 = [v2 isString:v4 localizedCaseInsensitiveEqualToOther:v6];

  return v7;
}

uint64_t __58___CNUIUserActionUserActivityItem__isIntent_equalToOther___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) contactIdentifier];
  v4 = [*(a1 + 40) contactIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __50___CNUIUserActionUserActivityItem__hashForIntent___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) personHandle];
  v3 = [v2 value];
  v4 = [v1 objectHash:v3];

  return v4;
}

uint64_t __50___CNUIUserActionUserActivityItem__hashForIntent___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) contactIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

@end