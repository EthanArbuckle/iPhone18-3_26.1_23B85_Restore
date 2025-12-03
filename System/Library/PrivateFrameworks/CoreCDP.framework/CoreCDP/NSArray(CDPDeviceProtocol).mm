@interface NSArray(CDPDeviceProtocol)
- (uint64_t)hasMixedSecretType;
- (uint64_t)prevailingLocalSecretType;
@end

@implementation NSArray(CDPDeviceProtocol)

- (uint64_t)prevailingLocalSecretType
{
  v16 = *MEMORY[0x1E69E9840];
  if ([self count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    selfCopy = self;
    v3 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      v6 = 1;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if ([v8 conformsToProtocol:{&unk_1F5A1CB00, v11}])
        {
          if ([v8 localSecretType] == 1)
          {
            break;
          }
        }

        if (v4 == ++v7)
        {
          v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)hasMixedSecretType
{
  v16 = *MEMORY[0x1E69E9840];
  if ([self count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    selfCopy = self;
    v3 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(selfCopy);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 conformsToProtocol:{&unk_1F5A1CB00, v11}])
          {
            if (v4 & v5)
            {
              LOBYTE(v3) = 1;
              goto LABEL_17;
            }

            if ([v8 localSecretType] == 1)
            {
              v4 = 1;
            }

            else
            {
              v5 |= [v8 localSecretType] == 2;
            }
          }
        }

        v3 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }

      LOBYTE(v3) = v4 & v5;
    }

LABEL_17:
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3 & 1;
}

@end