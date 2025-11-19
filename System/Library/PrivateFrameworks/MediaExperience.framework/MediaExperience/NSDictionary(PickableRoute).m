@interface NSDictionary(PickableRoute)
- (uint64_t)matchesUID:()PickableRoute;
@end

@implementation NSDictionary(PickableRoute)

- (uint64_t)matchesUID:()PickableRoute
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [a1 objectForKey:AVController_RouteDescriptionKey_RouteUID];
  if (v5 && [v5 rangeOfString:a3] != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_14:
    result = 1;
    goto LABEL_15;
  }

  result = [a1 objectForKey:AVController_RouteDescriptionKey_AlternateUIDs];
  if (result)
  {
    v7 = result;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    result = [result countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (result)
    {
      v8 = result;
      v9 = *v14;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (v11)
        {
          if ([v11 rangeOfString:a3] != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_14;
          }
        }

        if (v8 == ++v10)
        {
          v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
          result = 0;
          if (v8)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

LABEL_15:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

@end