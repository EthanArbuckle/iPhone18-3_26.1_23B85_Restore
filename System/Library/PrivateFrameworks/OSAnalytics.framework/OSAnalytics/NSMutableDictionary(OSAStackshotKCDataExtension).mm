@interface NSMutableDictionary(OSAStackshotKCDataExtension)
- (void)addTurnstileInfoDesc:()OSAStackshotKCDataExtension count:elSize:;
- (void)addWaitInfoDesc:()OSAStackshotKCDataExtension count:elSize:;
- (void)parsePortLabelContainer:()OSAStackshotKCDataExtension;
@end

@implementation NSMutableDictionary(OSAStackshotKCDataExtension)

- (void)addTurnstileInfoDesc:()OSAStackshotKCDataExtension count:elSize:
{
  array = [MEMORY[0x1E695DF70] array];
  if (a4)
  {
    v10 = 0;
    v11 = 0;
    v12 = MEMORY[0x1E69E9820];
    do
    {
      v13[0] = v12;
      v13[1] = 3221225472;
      v14 = __86__NSMutableDictionary_OSAStackshotKCDataExtension__addTurnstileInfoDesc_count_elSize___block_invoke;
      v15 = &unk_1E7A26E50;
      selfCopy = self;
      v17 = array;
      v14(v13, v11, a3 + v10);

      ++v11;
      v10 += a5;
    }

    while (a4 != v11);
  }

  if ([array count])
  {
    [self setObject:array forKeyedSubscript:@"turnstileInfo"];
  }
}

- (void)addWaitInfoDesc:()OSAStackshotKCDataExtension count:elSize:
{
  array = [MEMORY[0x1E695DF70] array];
  if (a4)
  {
    v10 = 0;
    v11 = 0;
    v12 = MEMORY[0x1E69E9820];
    do
    {
      v13[0] = v12;
      v13[1] = 3221225472;
      v14 = __81__NSMutableDictionary_OSAStackshotKCDataExtension__addWaitInfoDesc_count_elSize___block_invoke;
      v15 = &unk_1E7A26E78;
      selfCopy = self;
      v17 = array;
      v14(v13, v11, a3 + v10);

      ++v11;
      v10 += a5;
    }

    while (a4 != v11);
  }

  if ([array count])
  {
    [self setObject:array forKeyedSubscript:@"waitInfo"];
  }
}

- (void)parsePortLabelContainer:()OSAStackshotKCDataExtension
{
  v7 = [self objectForKeyedSubscript:@"portlabels"];

  if (!v7)
  {
    v8 = objc_opt_new();
    [self setObject:v8 forKeyedSubscript:@"portlabels"];
  }

  v9 = a3 + 16;
  if (a3 + 16 <= a4)
  {
    v10 = 0xFFFFFFFFLL;
    v17 = @"(unknown)";
    do
    {
      if (v9 + *(a3 + 4) > a4)
      {
        break;
      }

      v11 = *a3;
      if (*a3 == -242132755)
      {
        break;
      }

      if ((v11 & 0xFFFFFFF0) == 0x20)
      {
        v11 = 17;
      }

      switch(v11)
      {
        case 19:
          if (*(a3 + 16) != 2356)
          {
            [NSMutableDictionary(OSAStackshotKCDataExtension) parsePortLabelContainer:];
          }

          v10 = *(a3 + 8);
          break;
        case 2357:
          if (v10 != *(a3 + 16))
          {
            [NSMutableDictionary(OSAStackshotKCDataExtension) parsePortLabelContainer:];
          }

          v13 = (*(a3 + 18) & 2) != 0 ? " (service throttled by launchd)" : "";
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v10];
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%s", v17, v13];
          v16 = [self objectForKeyedSubscript:@"portlabels"];
          [v16 setObject:v15 forKeyedSubscript:v14];

          break;
        case 2358:
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3 + 16];

          v17 = v12;
          break;
        default:
          goto LABEL_22;
      }

      a3 = v9 + *(a3 + 4);
      v9 = a3 + 16;
    }

    while (a3 + 16 <= a4);
  }

  else
  {
    v17 = @"(unknown)";
  }

LABEL_22:
}

@end