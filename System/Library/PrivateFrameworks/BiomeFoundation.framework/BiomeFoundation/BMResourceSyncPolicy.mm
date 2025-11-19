@interface BMResourceSyncPolicy
- (BMResourceSyncPolicy)initWithPolicyDictionary:(id)a3;
- (BOOL)supportsSyncingWithPlatform:(int64_t)a3 overTransport:(unint64_t)a4 inDirection:(unint64_t)a5 fromPlatform:(int64_t)a6;
- (BOOL)supportsTransport:(unint64_t)a3 direction:(unint64_t)a4 fromPlatform:(int64_t)a5;
- (unint64_t)directionsSupportedForTransport:(unint64_t)a3 fromPlatform:(int64_t)a4;
@end

@implementation BMResourceSyncPolicy

- (BMResourceSyncPolicy)initWithPolicyDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BMResourceSyncPolicy;
  v5 = [(BMResourceSyncPolicy *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    platformPolicies = v5->_platformPolicies;
    v5->_platformPolicies = v6;

    v5->_currentPlatform = +[BMDeviceMetadataUtils platform];
  }

  return v5;
}

- (unint64_t)directionsSupportedForTransport:(unint64_t)a3 fromPlatform:(int64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    platformPolicies = self->_platformPolicies;
    v6 = BMDevicePlatformAsKeyString(a4);
    v7 = [(NSDictionary *)platformPolicies objectForKeyedSubscript:v6];

    if (v7)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v17 + 1) + 8 * i);
            if ([v13 transportType] == a3)
            {
              v14 = [v13 direction];
              goto LABEL_14;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v14 = 0;
LABEL_14:
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)supportsTransport:(unint64_t)a3 direction:(unint64_t)a4 fromPlatform:(int64_t)a5
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0;
  }

  v6 = [BMResourceSyncPolicy directionsSupportedForTransport:"directionsSupportedForTransport:fromPlatform:" fromPlatform:?];
  v7 = (v6 & 3) != 0;
  if (a4 != 3)
  {
    v7 = 0;
  }

  if (a4 - 1 >= 2)
  {
    return v7;
  }

  else
  {
    return (a4 & ~v6) == 0;
  }
}

- (BOOL)supportsSyncingWithPlatform:(int64_t)a3 overTransport:(unint64_t)a4 inDirection:(unint64_t)a5 fromPlatform:(int64_t)a6
{
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 2 || a5 == 0)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v12 = [(BMResourceSyncPolicy *)self directionsSupportedForTransport:a4 fromPlatform:a6];
    v13 = [(BMResourceSyncPolicy *)self supportsTransport:a4 direction:a5 fromPlatform:a6];
    if (v13)
    {
      if (a4 == 3)
      {
        LOBYTE(v13) = 1;
      }

      else
      {
        if (a5 == 1)
        {
          v14 = 2;
        }

        else if (a5 == 2)
        {
          v14 = 1;
        }

        else if (a5 == 3 && v12 - 1 < 3)
        {
          v14 = qword_1AC1975F8[v12 - 1];
        }

        else
        {
          v14 = 0;
        }

        LOBYTE(v13) = [(BMResourceSyncPolicy *)self supportsTransport:a4 direction:v14 fromPlatform:a3];
      }
    }
  }

  return v13;
}

@end