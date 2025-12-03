@interface NSError(CloudKitHelpers)
- (id)underlyingCKError;
- (id)updatedServerChangedShare;
@end

@implementation NSError(CloudKitHelpers)

- (id)updatedServerChangedShare
{
  underlyingCKError = [self underlyingCKError];
  domain = [underlyingCKError domain];
  v3 = [domain isEqualToString:*MEMORY[0x1E695B740]];

  if (v3 && [underlyingCKError code] == 14)
  {
    userInfo = [underlyingCKError userInfo];
    v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695B7C0]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)underlyingCKError
{
  v27 = *MEMORY[0x1E69E9840];
  domain = [self domain];
  v3 = *MEMORY[0x1E695B740];
  v4 = [domain isEqualToString:*MEMORY[0x1E695B740]];

  if (v4)
  {
LABEL_15:
    selfCopy = self;
    goto LABEL_18;
  }

  userInfo = [self userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

  userInfo2 = [self userInfo];
  v8 = [userInfo2 objectForKey:*MEMORY[0x1E696A750]];

  domain2 = [v6 domain];
  v10 = [domain2 isEqual:v3];

  if (!v10)
  {
    if (v8)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = v8;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            domain3 = [v17 domain];
            v19 = [domain3 isEqualToString:v3];

            if (v19)
            {
              selfCopy = v17;

              v8 = v21;
              goto LABEL_17;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v8 = v21;
    }

    goto LABEL_15;
  }

  selfCopy = v6;
LABEL_17:

LABEL_18:

  return selfCopy;
}

@end