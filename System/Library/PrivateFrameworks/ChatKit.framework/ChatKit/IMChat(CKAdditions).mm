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
  waterMarkTimeCache = [objc_opt_class() waterMarkTimeCache];
  guid = [self guid];
  v4 = [waterMarkTimeCache objectForKey:guid];

  if ((v4 || ([self valueForChatProperty:@"CKChatWatermarkTime"], (v4 = objc_claimAutoreleasedReturnValue()) != 0)) && (objc_msgSend(v4, "doubleValue"), v5 > 0.0))
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
  waterMarkMessageIDCache = [objc_opt_class() waterMarkMessageIDCache];
  guid = [self guid];
  v4 = [waterMarkMessageIDCache objectForKey:guid];

  if (!v4)
  {
    result = [self valueForChatProperty:@"CKChatWatermarkMessageID"];
    if (!result)
    {
      return result;
    }

    v4 = result;
  }

  longLongValue = [v4 longLongValue];

  return longLongValue;
}

- (void)__ck_updateWatermarkToMessageID:()CKAdditions date:
{
  v18 = a4;
  guid = [self guid];

  if (guid)
  {
    __ck_watermarkMessageID = [self __ck_watermarkMessageID];
    if (__ck_watermarkMessageID > a3)
    {
      a3 = __ck_watermarkMessageID;
    }

    waterMarkMessageIDCache = [objc_opt_class() waterMarkMessageIDCache];
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    guid2 = [self guid];
    [waterMarkMessageIDCache setValue:v9 forKey:guid2];

    __ck_watermarkDate = [self __ck_watermarkDate];
    if (__ck_watermarkDate)
    {
      v12 = __ck_watermarkDate;
      v13 = [__ck_watermarkDate laterDate:v18];

      if (v13)
      {
LABEL_6:
        v14 = MEMORY[0x1E696AD98];
        [v13 timeIntervalSince1970];
        v15 = [v14 numberWithDouble:?];
LABEL_9:
        waterMarkTimeCache = [objc_opt_class() waterMarkTimeCache];
        guid3 = [self guid];
        [waterMarkTimeCache setValue:v15 forKey:guid3];

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
  waterMarkMessageIDCache = [objc_opt_class() waterMarkMessageIDCache];
  guid = [self guid];
  v11 = [waterMarkMessageIDCache objectForKey:guid];

  waterMarkTimeCache = [objc_opt_class() waterMarkTimeCache];
  guid2 = [self guid];
  v6 = [waterMarkTimeCache objectForKey:guid2];

  if (v11)
  {
    [self setValue:v11 forChatProperty:@"CKChatWatermarkMessageID"];
    waterMarkMessageIDCache2 = [objc_opt_class() waterMarkMessageIDCache];
    guid3 = [self guid];
    [waterMarkMessageIDCache2 removeObjectForKey:guid3];
  }

  if (v6)
  {
    [self setValue:v6 forChatProperty:@"CKChatWatermarkTime"];
    waterMarkTimeCache2 = [objc_opt_class() waterMarkTimeCache];
    guid4 = [self guid];
    [waterMarkTimeCache2 removeObjectForKey:guid4];
  }
}

- (uint64_t)__ck_sendReadReceipts
{
  v2 = IMGetDomainBoolForKey();
  v3 = IMGetDomainBoolForKey();
  v4 = [self valueForChatProperty:*MEMORY[0x1E69A6B68]];
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = v2 | v3;
  }

  return bOOLValue & 1;
}

@end