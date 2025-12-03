@interface _MSCountableMatchesContext
- (_MSCountableMatchesContext)init;
- (void)countInstances:(id)instances usingPredicate:(id)predicate;
@end

@implementation _MSCountableMatchesContext

- (_MSCountableMatchesContext)init
{
  v8.receiver = self;
  v8.super_class = _MSCountableMatchesContext;
  v2 = [(_MSCountableMatchesContext *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    contactsCount = v2->_contactsCount;
    v2->_contactsCount = dictionary;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    highestMatches = v2->_highestMatches;
    v2->_highestMatches = v5;
  }

  return v2;
}

- (void)countInstances:(id)instances usingPredicate:(id)predicate
{
  v29 = *MEMORY[0x277D85DE8];
  instancesCopy = instances;
  predicateCopy = predicate;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = instancesCopy;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v23 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = predicateCopy[2](predicateCopy, v10);
        if (v11)
        {
          contactsCount = self->_contactsCount;
          identifier = [v10 identifier];
          v14 = [(NSMutableDictionary *)contactsCount objectForKeyedSubscript:identifier];
          integerValue = [v14 integerValue];

          v16 = integerValue + v11;
          maxCount = self->_maxCount;
          if (integerValue + v11 == maxCount)
          {
            if (v16 <= 0)
            {
              goto LABEL_13;
            }
          }

          else
          {
            if (integerValue + v11 <= maxCount)
            {
              goto LABEL_13;
            }

            self->_maxCount = v16;
            [(NSMutableSet *)self->_highestMatches removeAllObjects];
            if (v16 < 1)
            {
              goto LABEL_13;
            }
          }

          [(NSMutableSet *)self->_highestMatches addObject:v10];
LABEL_13:
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + v11];
          v19 = self->_contactsCount;
          identifier2 = [v10 identifier];
          [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:identifier2];

          continue;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end