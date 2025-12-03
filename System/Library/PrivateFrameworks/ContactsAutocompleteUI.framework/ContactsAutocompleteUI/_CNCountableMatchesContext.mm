@interface _CNCountableMatchesContext
- (_CNCountableMatchesContext)init;
- (void)countInstances:(id)instances usingPredicate:(id)predicate;
@end

@implementation _CNCountableMatchesContext

- (_CNCountableMatchesContext)init
{
  v8.receiver = self;
  v8.super_class = _CNCountableMatchesContext;
  v2 = [(_CNCountableMatchesContext *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    contactsCount = v2->_contactsCount;
    v2->_contactsCount = dictionary;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    highestMatches = v2->_highestMatches;
    v2->_highestMatches = v5;
  }

  return v2;
}

- (void)countInstances:(id)instances usingPredicate:(id)predicate
{
  v29 = *MEMORY[0x1E69E9840];
  instancesCopy = instances;
  predicateCopy = predicate;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [instancesCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v23 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(instancesCopy);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = predicateCopy[2](predicateCopy, v11);
        if (v12)
        {
          v13 = v12;
          contactsCount = self->_contactsCount;
          identifier = [v11 identifier];
          v16 = [(NSMutableDictionary *)contactsCount objectForKeyedSubscript:identifier];
          integerValue = [v16 integerValue];

          v18 = integerValue + v13;
          maxCount = self->_maxCount;
          if (v18 == maxCount)
          {
            if (v18 <= 0)
            {
              goto LABEL_13;
            }
          }

          else
          {
            if (v18 <= maxCount)
            {
              goto LABEL_13;
            }

            self->_maxCount = v18;
            [(NSMutableSet *)self->_highestMatches removeAllObjects];
            if (v18 < 1)
            {
              goto LABEL_13;
            }
          }

          [(NSMutableSet *)self->_highestMatches addObject:v11];
LABEL_13:
          v20 = [MEMORY[0x1E696AD98] numberWithInteger:v18];
          v21 = self->_contactsCount;
          identifier2 = [v11 identifier];
          [(NSMutableDictionary *)v21 setObject:v20 forKeyedSubscript:identifier2];

          continue;
        }
      }

      v9 = [instancesCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }
}

@end