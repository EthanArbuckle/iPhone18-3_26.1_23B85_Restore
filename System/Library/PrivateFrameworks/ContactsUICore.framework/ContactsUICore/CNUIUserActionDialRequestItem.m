@interface CNUIUserActionDialRequestItem
@end

@implementation CNUIUserActionDialRequestItem

void __59___CNUIUserActionDialRequestItem_performActionWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionRecorder];
  [v2 recordUserAction:*(a1 + 40)];
}

uint64_t __42___CNUIUserActionDialRequestItem_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) type];
  v4 = [*(a1 + 40) type];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __42___CNUIUserActionDialRequestItem_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) label];
  v4 = [*(a1 + 40) label];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __42___CNUIUserActionDialRequestItem_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) targetHandle];
  v4 = [*(a1 + 40) targetHandle];
  v5 = [v2 isString:v3 localizedCaseInsensitiveEqualToOther:v4];

  return v5;
}

uint64_t __42___CNUIUserActionDialRequestItem_isEqual___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) bundleIdentifier];
  v4 = [*(a1 + 40) bundleIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __42___CNUIUserActionDialRequestItem_isEqual___block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) dialRequest];
  v4 = [v3 handle];
  v5 = [v4 value];
  v6 = [*(a1 + 40) dialRequest];
  v7 = [v6 handle];
  v8 = [v7 value];
  v9 = [v2 isString:v5 localizedCaseInsensitiveEqualToOther:v8];

  return v9;
}

uint64_t __42___CNUIUserActionDialRequestItem_isEqual___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) dialRequest];
  v4 = [v3 handle];
  v5 = [v4 type];
  v6 = [*(a1 + 40) dialRequest];
  v7 = [v6 handle];
  v8 = [v2 isInteger:v5 equalToOther:{objc_msgSend(v7, "type")}];

  return v8;
}

uint64_t __42___CNUIUserActionDialRequestItem_isEqual___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) dialRequest];
  v4 = [v3 contactIdentifier];
  v5 = [*(a1 + 40) dialRequest];
  v6 = [v5 contactIdentifier];
  v7 = [v2 isObject:v4 equalToOther:v6];

  return v7;
}

uint64_t __42___CNUIUserActionDialRequestItem_isEqual___block_invoke_8(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) dialRequest];
  v4 = [v3 isVideo];
  v5 = [*(a1 + 40) dialRequest];
  v6 = [v2 isBool:v4 equalToOther:{objc_msgSend(v5, "isVideo")}];

  return v6;
}

uint64_t __38___CNUIUserActionDialRequestItem_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) type];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __38___CNUIUserActionDialRequestItem_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) label];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __38___CNUIUserActionDialRequestItem_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) targetHandle];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __38___CNUIUserActionDialRequestItem_hash__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __38___CNUIUserActionDialRequestItem_hash__block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) dialRequest];
  v3 = [v2 handle];
  v4 = [v1 objectHash:v3];

  return v4;
}

uint64_t __38___CNUIUserActionDialRequestItem_hash__block_invoke_6(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) dialRequest];
  v3 = [v2 contactIdentifier];
  v4 = [v1 objectHash:v3];

  return v4;
}

uint64_t __38___CNUIUserActionDialRequestItem_hash__block_invoke_7(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) dialRequest];
  v3 = [v1 BOOLHash:{objc_msgSend(v2, "isVideo")}];

  return v3;
}

@end