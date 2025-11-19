@interface IMChat(CKAdditions)
+ (id)waterMarkMessageIDCache;
+ (id)waterMarkTimeCache;
- (id)__ck_watermarkDate;
- (uint64_t)__ck_sendReadReceipts;
- (uint64_t)__ck_watermarkMessageID;
- (void)__ck_saveWatermark;
- (void)__ck_updateWatermarkToMessageID:()CKAdditions date:;
@end

@implementation IMChat(CKAdditions)

- (id)__ck_watermarkDate
{
  v2 = [objc_opt_class() waterMarkTimeCache];
  v3 = [a1 guid];
  v4 = [v2 objectForKey:v3];

  if ((v4 || ([a1 valueForChatProperty:@"CKChatWatermarkTime"], (v4 = objc_claimAutoreleasedReturnValue()) != 0)) && (objc_msgSend(v4, "doubleValue"), v5 > 0.0))
  {
    v6 = MEMORY[0x1E695DF00];
    [v4 doubleValue];
    v7 = [v6 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)waterMarkTimeCache
{
  if (waterMarkTimeCache_onceToken != -1)
  {
    +[IMChat(CKAdditions) waterMarkTimeCache];
  }

  v1 = waterMarkTimeCache__waterMarkTimeCache;

  return v1;
}

+ (id)waterMarkMessageIDCache
{
  if (waterMarkMessageIDCache_onceToken != -1)
  {
    +[IMChat(CKAdditions) waterMarkMessageIDCache];
  }

  v1 = waterMarkMessageIDCache__waterMarkMessageIDCache;

  return v1;
}

- (uint64_t)__ck_watermarkMessageID
{
  v2 = [objc_opt_class() waterMarkMessageIDCache];
  v3 = [a1 guid];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    result = [a1 valueForChatProperty:@"CKChatWatermarkMessageID"];
    if (!result)
    {
      return result;
    }

    v4 = result;
  }

  v6 = [v4 longLongValue];

  return v6;
}

- (void)__ck_updateWatermarkToMessageID:()CKAdditions date:
{
  v18 = a4;
  v6 = [a1 guid];

  if (v6)
  {
    v7 = [a1 __ck_watermarkMessageID];
    if (v7 > a3)
    {
      a3 = v7;
    }

    v8 = [objc_opt_class() waterMarkMessageIDCache];
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    v10 = [a1 guid];
    [v8 setValue:v9 forKey:v10];

    v11 = [a1 __ck_watermarkDate];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 laterDate:v18];

      if (v13)
      {
LABEL_6:
        v14 = MEMORY[0x1E696AD98];
        [v13 timeIntervalSince1970];
        v15 = [v14 numberWithDouble:?];
LABEL_9:
        v16 = [objc_opt_class() waterMarkTimeCache];
        v17 = [a1 guid];
        [v16 setValue:v15 forKey:v17];

        goto LABEL_10;
      }
    }

    else
    {
      v13 = v18;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    v15 = &unk_1F04E8928;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)__ck_saveWatermark
{
  v2 = [objc_opt_class() waterMarkMessageIDCache];
  v3 = [a1 guid];
  v11 = [v2 objectForKey:v3];

  v4 = [objc_opt_class() waterMarkTimeCache];
  v5 = [a1 guid];
  v6 = [v4 objectForKey:v5];

  if (v11)
  {
    [a1 setValue:v11 forChatProperty:@"CKChatWatermarkMessageID"];
    v7 = [objc_opt_class() waterMarkMessageIDCache];
    v8 = [a1 guid];
    [v7 removeObjectForKey:v8];
  }

  if (v6)
  {
    [a1 setValue:v6 forChatProperty:@"CKChatWatermarkTime"];
    v9 = [objc_opt_class() waterMarkTimeCache];
    v10 = [a1 guid];
    [v9 removeObjectForKey:v10];
  }
}

- (uint64_t)__ck_sendReadReceipts
{
  v2 = IMGetDomainBoolForKey();
  v3 = IMGetDomainBoolForKey();
  v4 = [a1 valueForChatProperty:*MEMORY[0x1E69A6B68]];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = v2 | v3;
  }

  return v6 & 1;
}

@end