@interface NUChannelAllMatching
- (BOOL)match:(id)match;
- (id)description;
@end

@implementation NUChannelAllMatching

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  predicates = [(NUChannelAnyMatching *)self predicates];
  v4 = [predicates componentsJoinedByString:{@", "}];
  v5 = [v2 stringWithFormat:@"ALL(%@)", v4];

  return v5;
}

- (BOOL)match:(id)match
{
  v17 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  predicates = [(NUChannelAnyMatching *)self predicates];
  v6 = [predicates countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(predicates);
        }

        if (![*(*(&v12 + 1) + 8 * i) match:matchCopy])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [predicates countByEnumeratingWithState:&v12 objects:v16 count:16];
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