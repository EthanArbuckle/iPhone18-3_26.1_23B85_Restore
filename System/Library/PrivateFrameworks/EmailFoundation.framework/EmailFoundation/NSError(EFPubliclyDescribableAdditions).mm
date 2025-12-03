@interface NSError(EFPubliclyDescribableAdditions)
+ (void)ef_setDecoder:()EFPubliclyDescribableAdditions forDomain:;
- (id)ef_publicDescription;
@end

@implementation NSError(EFPubliclyDescribableAdditions)

- (id)ef_publicDescription
{
  if (initErrorDecodersOnce_onceToken != -1)
  {
    [NSError(EFPubliclyDescribableAdditions) ef_publicDescription];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__NSError_EFPubliclyDescribableAdditions__ef_publicDescription__block_invoke;
  block[3] = &unk_1E82486C0;
  block[4] = self;
  block[5] = &v25;
  dispatch_sync(sErrorDecodeQueue, block);
  v2 = v26[5];
  if (v2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Code=%@(%ld)", v2, objc_msgSend(self, "code")];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Code=%ld", objc_msgSend(self, "code")];
  }
  v3 = ;
  userInfo = [self userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"EFPublicErrorInfoKey"];
  string = [MEMORY[0x1E696AD60] string];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __stringForPublicInfo_block_invoke;
    v31[3] = &unk_1E82490C8;
    v32 = string;
    [v5 enumerateKeysAndObjectsUsingBlock:v31];
  }

  v7 = +[EFDevice currentDevice];
  isInternal = [v7 isInternal];

  if (isInternal)
  {
    v9 = [self description];
    if (v26[5])
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Code=%ld", objc_msgSend(self, "code")];
      v11 = [v9 stringByReplacingOccurrencesOfString:v10 withString:v3];

      v9 = v11;
    }

    v12 = truncatedDescriptionToMaxAllowableSize(string, 0x96uLL);
    v13 = [v9 stringByAppendingString:v12];
  }

  else
  {
    userInfo2 = [self userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (v9)
    {
      v15 = MEMORY[0x1E696AEC0];
      ef_publicDescription = [v9 ef_publicDescription];
      v12 = [v15 stringWithFormat:@" UnderlyingError=%@", ef_publicDescription];
    }

    else
    {
      v12 = &stru_1F459BF68;
    }

    if ([string length])
    {
      if ([(__CFString *)v12 length])
      {
        v17 = 75;
      }

      else
      {
        v17 = 150;
      }
    }

    else
    {
      v17 = 150;
    }

    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    domain = [self domain];
    v21 = truncatedDescriptionToMaxAllowableSize(string, v17);
    v22 = truncatedDescriptionToMaxAllowableSize(v12, v17);
    v13 = [v18 stringWithFormat:@"%@ Domain=%@ %@%@%@", v19, domain, v3, v21, v22];
  }

  _Block_object_dispose(&v25, 8);

  return v13;
}

+ (void)ef_setDecoder:()EFPubliclyDescribableAdditions forDomain:
{
  v5 = a3;
  v6 = a4;
  if (initErrorDecodersOnce_onceToken != -1)
  {
    [NSError(EFPubliclyDescribableAdditions) ef_publicDescription];
  }

  v7 = sErrorDecodeQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__NSError_EFPubliclyDescribableAdditions__ef_setDecoder_forDomain___block_invoke;
  v10[3] = &unk_1E82490A0;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

@end