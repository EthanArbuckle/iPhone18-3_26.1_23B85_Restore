@interface NSString(MobileContainerManagerAdditions)
+ (id)stringWithFileSystemRepresentation:()MobileContainerManagerAdditions length:;
+ (uint64_t)stringWithFileSystemRepresentation:()MobileContainerManagerAdditions;
- (uint64_t)containsDotDotPathComponents;
@end

@implementation NSString(MobileContainerManagerAdditions)

- (uint64_t)containsDotDotPathComponents
{
  v14 = *MEMORY[0x1E69E9840];
  [a1 pathComponents];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v10 + 1) + 8 * v5) isEqualToString:@".."])
        {
          v6 = 1;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v9 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (uint64_t)stringWithFileSystemRepresentation:()MobileContainerManagerAdditions
{
  v4 = strlen(__s);
  v5 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69E9840];
  v7 = v4;
  v8 = MEMORY[0x1E696AEC0];

  return [v8 stringWithFileSystemRepresentation:__s length:v7];
}

+ (id)stringWithFileSystemRepresentation:()MobileContainerManagerAdditions length:
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a3 length:a4 encoding:_NSDefaultFileSystemEncoding()];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end