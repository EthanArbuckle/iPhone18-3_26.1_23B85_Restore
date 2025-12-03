@interface BMResourceSyncPolicy
- (BMResourceSyncPolicy)initWithPolicyDictionary:(id)dictionary;
- (BOOL)supportsSyncingWithPlatform:(int64_t)platform overTransport:(unint64_t)transport inDirection:(unint64_t)direction fromPlatform:(int64_t)fromPlatform;
- (BOOL)supportsTransport:(unint64_t)transport direction:(unint64_t)direction fromPlatform:(int64_t)platform;
- (unint64_t)directionsSupportedForTransport:(unint64_t)transport fromPlatform:(int64_t)platform;
@end

@implementation BMResourceSyncPolicy

- (BMResourceSyncPolicy)initWithPolicyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = BMResourceSyncPolicy;
  v5 = [(BMResourceSyncPolicy *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    platformPolicies = v5->_platformPolicies;
    v5->_platformPolicies = v6;

    v5->_currentPlatform = +[BMDeviceMetadataUtils platform];
  }

  return v5;
}

- (unint64_t)directionsSupportedForTransport:(unint64_t)transport fromPlatform:(int64_t)platform
{
  v22 = *MEMORY[0x1E69E9840];
  if ((transport & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    platformPolicies = self->_platformPolicies;
    v6 = BMDevicePlatformAsKeyString(platform);
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
            if ([v13 transportType] == transport)
            {
              direction = [v13 direction];
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

      direction = 0;
LABEL_14:
    }

    else
    {
      direction = 0;
    }
  }

  else
  {
    direction = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return direction;
}

- (BOOL)supportsTransport:(unint64_t)transport direction:(unint64_t)direction fromPlatform:(int64_t)platform
{
  if ((transport & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0;
  }

  v6 = [BMResourceSyncPolicy directionsSupportedForTransport:"directionsSupportedForTransport:fromPlatform:" fromPlatform:?];
  v7 = (v6 & 3) != 0;
  if (direction != 3)
  {
    v7 = 0;
  }

  if (direction - 1 >= 2)
  {
    return v7;
  }

  else
  {
    return (direction & ~v6) == 0;
  }
}

- (BOOL)supportsSyncingWithPlatform:(int64_t)platform overTransport:(unint64_t)transport inDirection:(unint64_t)direction fromPlatform:(int64_t)fromPlatform
{
  if ((transport & 0xFFFFFFFFFFFFFFFELL) != 2 || direction == 0)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v12 = [(BMResourceSyncPolicy *)self directionsSupportedForTransport:transport fromPlatform:fromPlatform];
    v13 = [(BMResourceSyncPolicy *)self supportsTransport:transport direction:direction fromPlatform:fromPlatform];
    if (v13)
    {
      if (transport == 3)
      {
        LOBYTE(v13) = 1;
      }

      else
      {
        if (direction == 1)
        {
          v14 = 2;
        }

        else if (direction == 2)
        {
          v14 = 1;
        }

        else if (direction == 3 && v12 - 1 < 3)
        {
          v14 = qword_1AC1975F8[v12 - 1];
        }

        else
        {
          v14 = 0;
        }

        LOBYTE(v13) = [(BMResourceSyncPolicy *)self supportsTransport:transport direction:v14 fromPlatform:platform];
      }
    }
  }

  return v13;
}

@end