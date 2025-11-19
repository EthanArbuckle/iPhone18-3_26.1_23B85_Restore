@interface CNUIUserActionURLItem
@end

@implementation CNUIUserActionURLItem

id __75___CNUIUserActionURLItem_performActionWithContext_shouldCurateIfPerformed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E6996568];
  v5 = [*(a1 + 32) channelIdentifier];
  LOBYTE(v4) = (*(v4 + 16))(v4, v5);

  if (v4)
  {
    v6 = 0;
    goto LABEL_16;
  }

  v7 = objc_alloc(getTUDialRequestClass());
  v6 = [v7 cn_initWithURL:v3];

  if (v6)
  {
    v8 = [v6 provider];
    v9 = [v8 isTelephonyProvider];

    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = [*(a1 + 32) channelIdentifier];
    if ([v10 hasPrefix:@"uuid:"])
    {
      v11 = [v10 substringFromIndex:5];

      v10 = v11;
    }

    v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
    [v6 setLocalSenderIdentityAccountUUID:v12];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v3 resolvingAgainstBaseURL:0];
    v13 = [v10 scheme];
    v12 = [v13 lowercaseString];

    if (([v12 isEqualToString:@"sms"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"imessage"))
    {
      v14 = [v10 queryItems];
      v15 = [v14 _cn_filter:&__block_literal_global_12];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      }

      v18 = v17;

      v19 = [*(a1 + 32) channelIdentifier];
      v20 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
      v21 = [v19 stringByAddingPercentEncodingWithAllowedCharacters:v20];

      v22 = [MEMORY[0x1E696AF60] queryItemWithName:@"simid" value:v21];
      v23 = [v18 arrayByAddingObject:v22];
      [v10 setQueryItems:v23];

      v24 = [v10 URL];

      v6 = 0;
      v3 = v24;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_16:
  if ([*(a1 + 32) isOriginatingFromFavorites])
  {
    if (!v6)
    {
      v25 = objc_alloc(getTUDialRequestClass());
      v6 = [v25 cn_initWithURL:v3];
    }

    v26 = [v6 provider];
    v27 = [v26 isFaceTimeProvider];

    if (v27)
    {
      [v6 setOriginatingUIType:9];
    }
  }

  if (v6)
  {
    v28 = [v6 URL];

    v3 = v28;
  }

  if (_CFMZEnabled() || ![*(a1 + 40) shouldOpenToBundleIdentifier])
  {
    v29 = 0;
  }

  else
  {
    v29 = [*(a1 + 40) bundleIdentifier];
  }

  v30 = [*(a1 + 32) urlOpener];
  v31 = [*(a1 + 40) isSensitive];
  v32 = [*(a1 + 32) connectionEndpoint];
  v33 = [MEMORY[0x1E6996818] globalAsyncScheduler];
  v34 = [v30 openURL:v3 isSensitive:v31 connectionEndpoint:v32 bundleIdentifier:v29 withScheduler:v33];

  return v34;
}

uint64_t __75___CNUIUserActionURLItem_performActionWithContext_shouldCurateIfPerformed___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"simid"];

  return v3 ^ 1u;
}

void __75___CNUIUserActionURLItem_performActionWithContext_shouldCurateIfPerformed___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) actionRecorder];
  [v2 recordUserAction:*(a1 + 40)];
}

uint64_t __34___CNUIUserActionURLItem_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) type];
  v4 = [*(a1 + 40) type];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __34___CNUIUserActionURLItem_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) label];
  v4 = [*(a1 + 40) label];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __34___CNUIUserActionURLItem_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) bundleIdentifier];
  v4 = [*(a1 + 40) bundleIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __34___CNUIUserActionURLItem_isEqual___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) targetHandle];
  v4 = [*(a1 + 40) targetHandle];
  v5 = [v2 isString:v3 localizedCaseInsensitiveEqualToOther:v4];

  return v5;
}

uint64_t __30___CNUIUserActionURLItem_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) type];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __30___CNUIUserActionURLItem_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) label];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __30___CNUIUserActionURLItem_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) targetHandle];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __30___CNUIUserActionURLItem_hash__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

@end