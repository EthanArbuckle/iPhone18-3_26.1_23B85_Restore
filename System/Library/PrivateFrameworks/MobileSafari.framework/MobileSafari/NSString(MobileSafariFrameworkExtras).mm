@interface NSString(MobileSafariFrameworkExtras)
+ (id)safari_listOfLinksForTabs:()MobileSafariFrameworkExtras;
- (uint64_t)safari_isConfigProfileMIMEType;
- (uint64_t)safari_isSingleEmoji;
@end

@implementation NSString(MobileSafariFrameworkExtras)

- (uint64_t)safari_isSingleEmoji
{
  v2 = [self length];
  if (!v2 || v2 == 1 && [self characterAtIndex:0] < 0x100)
  {
    return 0;
  }

  return [self _isSingleEmoji];
}

+ (id)safari_listOfLinksForTabs:()MobileSafariFrameworkExtras
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([MEMORY[0x1E69E20D8] linkCountForTabs:v3])
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      v9 = &stru_1EFF36230;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [*(*(&v17 + 1) + 8 * i) url];
          v12 = v11;
          if (v11)
          {
            absoluteString = [v11 absoluteString];
            [v4 appendFormat:@"%@%@", v9, absoluteString];

            v9 = @"\n";
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v14 = [v4 copy];
    v3 = v16;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (uint64_t)safari_isConfigProfileMIMEType
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  acceptedMIMETypes = [mEMORY[0x1E69ADFB8] acceptedMIMETypes];

  v4 = [acceptedMIMETypes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(acceptedMIMETypes);
        }

        if (![self caseInsensitiveCompare:*(*(&v10 + 1) + 8 * v7)])
        {
          v8 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [acceptedMIMETypes countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

@end