@interface NSURL
@end

@implementation NSURL

id __55__NSURL_CalClassAdditions__isEqualToURLIgnoringScheme___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 hostWithoutWWW];
  v4 = [v3 lowercaseString];

  if ([v4 length])
  {
    v5 = [MEMORY[0x1E696AD60] stringWithString:v4];
    v6 = [v2 path];
    if ([v6 length])
    {
      [v5 appendString:v6];
    }

    v7 = [v2 query];

    if ([v7 length])
    {
      [v5 appendFormat:@"?%@", v7];
    }

    v8 = [v2 fragment];

    if ([v8 length])
    {
      [v5 appendFormat:@"#%@", v8];
    }

    v9 = [v5 stringByRemovingPercentEscapes];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end