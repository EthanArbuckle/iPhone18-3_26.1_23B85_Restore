@interface NSString(FDR)
- (id)dataIdentifier;
- (id)dataKey;
@end

@implementation NSString(FDR)

- (id)dataKey
{
  v2 = [self rangeOfString:@"-"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = handleForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(NSString(FDR) *)self dataKey];
    }

    v4 = 0;
  }

  else
  {
    v4 = [self substringToIndex:v2];
  }

  return v4;
}

- (id)dataIdentifier
{
  v2 = [self rangeOfString:@"-"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = handleForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(NSString(FDR) *)self dataIdentifier];
    }

    v4 = 0;
  }

  else
  {
    v4 = [self substringFromIndex:v2 + 1];
  }

  return v4;
}

@end