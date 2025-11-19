@interface NSString(FDR)
- (id)dataIdentifier;
- (id)dataKey;
@end

@implementation NSString(FDR)

- (id)dataKey
{
  v2 = [a1 rangeOfString:@"-"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = handleForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(NSString(FDR) *)a1 dataKey];
    }

    v4 = 0;
  }

  else
  {
    v4 = [a1 substringToIndex:v2];
  }

  return v4;
}

- (id)dataIdentifier
{
  v2 = [a1 rangeOfString:@"-"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = handleForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(NSString(FDR) *)a1 dataIdentifier];
    }

    v4 = 0;
  }

  else
  {
    v4 = [a1 substringFromIndex:v2 + 1];
  }

  return v4;
}

@end