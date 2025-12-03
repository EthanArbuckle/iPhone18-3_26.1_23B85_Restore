@interface NSURL
- (BOOL)_isValidMessageID:(_BOOL8)d;
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

- (BOOL)_isValidMessageID:(_BOOL8)d
{
  v3 = a2;
  v4 = v3;
  if (d)
  {
    d = [v3 length] >= 3 && objc_msgSend(v4, "characterAtIndex:", 0) == 60 && objc_msgSend(v4, "characterAtIndex:", objc_msgSend(v4, "length") - 1) == 62;
  }

  return d;
}

- (id)_databaseID
{
  if (self && [self ef_hasScheme:@"x-apple-mail"] && objc_msgSend(self, "ef_hasHost:", @"message") && (objc_msgSend(self, "pathComponents"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3 >= 2) && (objc_msgSend(self, "path"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    path = [self path];
    if ([path hasPrefix:@"/"])
    {
      v6 = [path substringFromIndex:1];

      path = v6;
    }

    v7 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v7 setNumberStyle:0];
    v8 = [v7 numberFromString:path];
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