@interface NSString(CPLAdditions)
- (id)cplStringByAppendingPathExtension:()CPLAdditions fallbackExtension:;
- (id)cpl_redactedShareURL;
@end

@implementation NSString(CPLAdditions)

- (id)cpl_redactedShareURL
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:a1];
  v2 = [v1 cpl_redactedShareURL];
  v3 = [v2 absoluteString];

  return v3;
}

- (id)cplStringByAppendingPathExtension:()CPLAdditions fallbackExtension:
{
  v6 = a3;
  v7 = a4;
  if (![v6 length] || (objc_msgSend(a1, "stringByAppendingPathExtension:", v6), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (![v7 length] || (objc_msgSend(a1, "stringByAppendingPathExtension:", v7), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v8 = a1;
    }
  }

  v9 = v8;

  return v9;
}

@end