@interface NSString(CPLAdditions)
- (id)cplStringByAppendingPathExtension:()CPLAdditions fallbackExtension:;
- (id)cpl_redactedShareURL;
@end

@implementation NSString(CPLAdditions)

- (id)cpl_redactedShareURL
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:self];
  cpl_redactedShareURL = [v1 cpl_redactedShareURL];
  absoluteString = [cpl_redactedShareURL absoluteString];

  return absoluteString;
}

- (id)cplStringByAppendingPathExtension:()CPLAdditions fallbackExtension:
{
  v6 = a3;
  v7 = a4;
  if (![v6 length] || (objc_msgSend(self, "stringByAppendingPathExtension:", v6), (selfCopy = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (![v7 length] || (objc_msgSend(self, "stringByAppendingPathExtension:", v7), (selfCopy = objc_claimAutoreleasedReturnValue()) == 0))
    {
      selfCopy = self;
    }
  }

  v9 = selfCopy;

  return v9;
}

@end