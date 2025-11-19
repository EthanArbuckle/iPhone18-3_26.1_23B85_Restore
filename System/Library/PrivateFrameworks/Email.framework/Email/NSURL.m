@interface NSURL
- (BOOL)_isValidMessageID:(_BOOL8)a1;
- (id)_databaseID;
- (uint64_t)_hasAccountScheme;
@end

@implementation NSURL

void __52__NSURL_EMNSURLAdditions__em_mailToFromQueryItemKey__block_invoke()
{
  v0 = [MEMORY[0x1E696AEC0] ef_UUID];
  v1 = em_mailToFromQueryItemKey_mailToFromQueryItem;
  em_mailToFromQueryItemKey_mailToFromQueryItem = v0;
}

- (BOOL)_isValidMessageID:(_BOOL8)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    a1 = [v3 length] >= 3 && objc_msgSend(v4, "characterAtIndex:", 0) == 60 && objc_msgSend(v4, "characterAtIndex:", objc_msgSend(v4, "length") - 1) == 62;
  }

  return a1;
}

- (id)_databaseID
{
  if (a1 && [a1 ef_hasScheme:@"x-apple-mail"] && objc_msgSend(a1, "ef_hasHost:", @"message") && (objc_msgSend(a1, "pathComponents"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3 >= 2) && (objc_msgSend(a1, "path"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [a1 path];
    if ([v5 hasPrefix:@"/"])
    {
      v6 = [v5 substringFromIndex:1];

      v5 = v6;
    }

    v7 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v7 setNumberStyle:0];
    v8 = [v7 numberFromString:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)_hasAccountScheme
{
  if (result)
  {
    v1 = result;
    if ([result ef_hasScheme:@"as"] & 1) != 0 || (objc_msgSend(v1, "ef_hasScheme:", @"ews") & 1) != 0 || (objc_msgSend(v1, "ef_hasScheme:", @"imap") & 1) != 0 || (objc_msgSend(v1, "ef_hasScheme:", @"local"))
    {
      return 1;
    }

    else
    {

      return [v1 ef_hasScheme:@"pop"];
    }
  }

  return result;
}

@end