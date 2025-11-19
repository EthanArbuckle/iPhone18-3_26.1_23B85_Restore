@interface NUChannelAllMatching
- (BOOL)match:(id)a3;
- (id)description;
@end

@implementation NUChannelAllMatching

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NUChannelAnyMatching *)self predicates];
  v4 = [v3 componentsJoinedByString:{@", "}];
  v5 = [v2 stringWithFormat:@"ALL(%@)", v4];

  return v5;
}

- (BOOL)match:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NUChannelAnyMatching *)self predicates];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![*(*(&v12 + 1) + 8 * i) match:v4])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

@end