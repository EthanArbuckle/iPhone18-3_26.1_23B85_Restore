@interface CPLExpungeableResourceState
+ (id)normalizedExpungeableResourceStatesFromExpungeableResourceStates:(id)states;
- (CPLExpungeableResourceState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CPLExpungeableResourceState

+ (id)normalizedExpungeableResourceStatesFromExpungeableResourceStates:(id)states
{
  v32[16] = *MEMORY[0x1E69E9840];
  statesCopy = states;
  v4 = statesCopy;
  if (statesCopy)
  {
    if ([statesCopy count])
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v7)
      {
        v8 = *v29;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v28 + 1) + 8 * i);
            v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "resourceType")}];
            [v5 setObject:v10 forKey:v11];
          }

          v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v7);
      }

      v12 = +[CPLResource countOfResourceTypes];
      v13 = &v20[-1] - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v13, 8 * v12);
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __96__CPLExpungeableResourceState_normalizedExpungeableResourceStatesFromExpungeableResourceStates___block_invoke;
      v20[3] = &unk_1E861D9E0;
      v14 = v5;
      v22 = &v24;
      v23 = v13;
      v21 = v14;
      [CPLResource enumerateResourceTypesWithBlock:v20];
      if (v25[3])
      {
        v15 = objc_alloc(MEMORY[0x1E695DEC8]);
        v16 = [v15 initWithObjects:v13 count:v25[3]];
      }

      else
      {
        v16 = MEMORY[0x1E695E0F0];
      }

      _Block_object_dispose(&v24, 8);
    }

    else
    {
      v16 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __96__CPLExpungeableResourceState_normalizedExpungeableResourceStatesFromExpungeableResourceStates___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    *(a1[6] + 8 * (*(*(a1[5] + 8) + 24))++) = v5;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [CPLResource shortDescriptionForResourceType:[(CPLExpungeableResourceState *)self resourceType]];
  expungedState = [(CPLExpungeableResourceState *)self expungedState];
  expungedDate = [(CPLExpungeableResourceState *)self expungedDate];
  v8 = [v3 stringWithFormat:@"[%@ %@ expungedState: %lu expungedDate: %@]", v4, v5, expungedState, expungedDate];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLExpungeableResourceState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CPLExpungeableResourceState;
  v5 = [(CPLExpungeableResourceState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:coderCopy];
  }

  return v6;
}

@end