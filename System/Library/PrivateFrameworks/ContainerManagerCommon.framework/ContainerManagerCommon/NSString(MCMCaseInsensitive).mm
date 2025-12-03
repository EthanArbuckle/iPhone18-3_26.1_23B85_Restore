@interface NSString(MCMCaseInsensitive)
- (uint64_t)MCM_isEqualToString:()MCMCaseInsensitive caseSensitive:;
@end

@implementation NSString(MCMCaseInsensitive)

- (uint64_t)MCM_isEqualToString:()MCMCaseInsensitive caseSensitive:
{
  v8 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v4 = *MEMORY[0x1E69E9840];
    v5 = *MEMORY[0x1E69E9840];

    return [self isEqualToString:?];
  }

  else
  {
    result = [self compare:a3 options:1] == 0;
    v7 = *MEMORY[0x1E69E9840];
  }

  return result;
}

@end