@interface NSMutableString(Trimming)
- (void)_hk_trimCharactersInSet:()Trimming;
- (void)_hk_trimString:()Trimming;
- (void)_hk_trimStrings:()Trimming;
@end

@implementation NSMutableString(Trimming)

- (void)_hk_trimStrings:()Trimming
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [self _hk_trimString:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_hk_trimString:()Trimming
{
  v8 = a3;
  v4 = [self rangeOfString:?];
  if (v5)
  {
    [self deleteCharactersInRange:{v4, v5}];
  }

  v6 = [self rangeOfString:v8 options:4];
  if (v7)
  {
    [self deleteCharactersInRange:{v6, v7}];
  }
}

- (void)_hk_trimCharactersInSet:()Trimming
{
  v8 = a3;
  v4 = [self rangeOfCharacterFromSet:?];
  if (v5)
  {
    [self deleteCharactersInRange:{v4, v5}];
  }

  v6 = [self rangeOfCharacterFromSet:v8 options:4];
  if (v7)
  {
    [self deleteCharactersInRange:{v6, v7}];
  }
}

@end