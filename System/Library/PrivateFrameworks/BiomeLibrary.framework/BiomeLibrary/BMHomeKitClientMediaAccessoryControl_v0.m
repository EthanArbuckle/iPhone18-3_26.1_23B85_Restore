@interface BMHomeKitClientMediaAccessoryControl_v0
- (id)accessoryState;
@end

@implementation BMHomeKitClientMediaAccessoryControl_v0

- (id)accessoryState
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = BMHomeKitClientMediaAccessoryControl_v0;
  v2 = [(BMHomeKitClientMediaAccessoryControl *)&v24 accessoryState];
  v19 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [BMHomeKitAccessoryState_v0 alloc];
        v9 = [v7 mediaPropertyType];
        v10 = [v7 valueType];
        v11 = [v7 dataValue];
        v12 = [v7 stringValue];
        v13 = MEMORY[0x1E696AD98];
        [v7 numValue];
        v14 = [v13 numberWithDouble:?];
        v15 = [(BMHomeKitAccessoryState *)v8 initWithMediaPropertyType:v9 valueType:v10 dataValue:v11 stringValue:v12 numValue:v14];
        [v19 addObject:v15];
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v19;
}

@end