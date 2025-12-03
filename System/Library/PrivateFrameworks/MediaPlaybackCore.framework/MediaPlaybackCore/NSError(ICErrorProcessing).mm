@interface NSError(ICErrorProcessing)
+ (id)errorForICError:()ICErrorProcessing response:;
+ (uint64_t)_isAgeVerificationError:()ICErrorProcessing;
@end

@implementation NSError(ICErrorProcessing)

+ (uint64_t)_isAgeVerificationError:()ICErrorProcessing
{
  v3 = a3;
  domain = [v3 domain];
  v5 = *MEMORY[0x1E69E42B8];

  v6 = [v3 code] == 3770 || objc_msgSend(v3, "code") == 3771 || objc_msgSend(v3, "code") == 3772;
  return (domain == v5) & v6;
}

+ (id)errorForICError:()ICErrorProcessing response:
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 conformsToProtocol:&unk_1F45FD488])
  {
    serverError = [v7 serverError];
    v9 = serverError;
    if (serverError)
    {
      domain = [serverError domain];
      code = [v9 code];
      userInfo = [v6 userInfo];
      v13 = [userInfo mutableCopy];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v17 = v15;

      dialog = [v7 dialog];
      responseDictionary = [dialog responseDictionary];

      if ([responseDictionary count])
      {
        [v17 setObject:responseDictionary forKey:@"MPCErrorUserInfoKeyStoreDialogDictionary"];
      }

      if ([self _isAgeVerificationError:v9])
      {
        v20 = @"MPCError";

        [v17 removeObjectForKey:@"MPCErrorUserInfoKeyStoreDialogDictionary"];
        v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = [responseDictionary objectForKeyedSubscript:*MEMORY[0x1E69E4278]];
          v23 = v22;
          v24 = @"Unspecified explanation";
          if (v22)
          {
            v24 = v22;
          }

          v26 = 138543362;
          v27 = v24;
          _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_ERROR, "Playback failed due to age verification requirement: %{public}@", &v26, 0xCu);
        }

        domain = @"MPCError";
        code = 40;
      }

      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:domain code:code userInfo:v17];
    }

    else
    {
      v16 = v6;
    }
  }

  else
  {
    v16 = v6;
  }

  return v16;
}

@end