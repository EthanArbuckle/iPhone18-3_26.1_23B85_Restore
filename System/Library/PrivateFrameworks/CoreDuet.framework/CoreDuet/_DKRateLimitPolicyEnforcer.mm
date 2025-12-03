@interface _DKRateLimitPolicyEnforcer
+ (id)rateLimitPolicyEnforcer;
- (id)filterObjectsByEnforcingRateLimit:(id)limit;
- (void)creditForDeletion:(id)deletion;
@end

@implementation _DKRateLimitPolicyEnforcer

+ (id)rateLimitPolicyEnforcer
{
  if (rateLimitPolicyEnforcer_onceToken != -1)
  {
    +[_DKRateLimitPolicyEnforcer rateLimitPolicyEnforcer];
  }

  v3 = rateLimitPolicyEnforcer_enforcer;

  return v3;
}

- (id)filterObjectsByEnforcingRateLimit:(id)limit
{
  v21 = *MEMORY[0x1E69E9840];
  limitCopy = limit;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = limitCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_8;
        }

        stream = [v10 stream];
        name = [stream name];

        v13 = [_CDEventStreams rateLimiterForEventStreamName:name];

        if (!v13)
        {
LABEL_8:
          v13 = +[_CDRateLimiter sharedRateLimiter];
        }

        if ([v13 debited])
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)creditForDeletion:(id)deletion
{
  v18 = *MEMORY[0x1E69E9840];
  deletionCopy = deletion;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [deletionCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(deletionCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stream = [v8 stream];
          name = [stream name];

          v11 = [_CDEventStreams rateLimiterForEventStreamName:name];
          if (!v11)
          {
            v11 = +[_CDRateLimiter sharedRateLimiter];
          }

          [v11 credit];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [deletionCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end