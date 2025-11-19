@interface NSProxy(MCMRedaction)
- (__CFString)redactedDescription;
@end

@implementation NSProxy(MCMRedaction)

- (__CFString)redactedDescription
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [a1 description];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 redactedDescription];
  }

  else
  {
    v2 = @"<~~~>";
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end