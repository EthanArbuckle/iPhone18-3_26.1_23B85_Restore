@interface NSArray(MRAVAdditions)
- (id)mr_replaceEndpointsWithEndpoints:()MRAVAdditions;
- (id)mr_replaceOutputDevicesWithOutputDevices:()MRAVAdditions;
- (uint64_t)mr_isEqualToOutputDevicesArray:()MRAVAdditions;
@end

@implementation NSArray(MRAVAdditions)

- (uint64_t)mr_isEqualToOutputDevicesArray:()MRAVAdditions
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = NSStringFromSelector("uid");
  v7 = [a1 valueForKeyPath:v6];
  v8 = [v4 setWithArray:v7];

  v9 = MEMORY[0x1E695DFD8];
  v10 = NSStringFromSelector("uid");
  v11 = [v5 valueForKeyPath:v10];

  v12 = [v9 setWithArray:v11];

  v13 = [v8 isEqualToSet:v12];
  return v13;
}

- (id)mr_replaceOutputDevicesWithOutputDevices:()MRAVAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 uid];
        v13 = [v4 objectForKeyedSubscript:v12];

        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v11;
        }

        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)mr_replaceEndpointsWithEndpoints:()MRAVAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 uniqueIdentifier];
        v13 = [v4 objectForKeyedSubscript:v12];

        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v11;
        }

        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

@end