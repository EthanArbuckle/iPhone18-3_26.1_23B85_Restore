@interface NSProxy(MCMRedaction)
- (__CFString)redactedDescription;
@end

@implementation NSProxy(MCMRedaction)

- (__CFString)redactedDescription
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [self description];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    redactedDescription = [v1 redactedDescription];
  }

  else
  {
    redactedDescription = @"<~~~>";
  }

  v3 = *MEMORY[0x1E69E9840];

  return redactedDescription;
}

@end