@interface NSExpression(CDLogging)
- (uint64_t)cd_containsSensitiveKeyPath;
@end

@implementation NSExpression(CDLogging)

- (uint64_t)cd_containsSensitiveKeyPath
{
  v17 = *MEMORY[0x1E69E9840];
  expressionType = [self expressionType];
  if (expressionType == 4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    arguments = [self arguments];
    v7 = [arguments countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
LABEL_11:
      v10 = 0;
      while (1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(arguments);
        }

        if ([*(*(&v12 + 1) + 8 * v10) cd_containsSensitiveKeyPath])
        {
          goto LABEL_6;
        }

        if (v8 == ++v10)
        {
          v8 = [arguments countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v8)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }
    }

    goto LABEL_17;
  }

  if (expressionType == 3)
  {
    keyPath = [self keyPath];
    v5 = _DKStringContainsPrivacySensitiveMetadataKey(keyPath);

    if (v5)
    {
      goto LABEL_8;
    }

LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  if (expressionType)
  {
    goto LABEL_18;
  }

  arguments = [self constantValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (_DKStringContainsPrivacySensitiveMetadataKey(arguments) & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_6:

LABEL_8:
  result = 1;
LABEL_19:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end