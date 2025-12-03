@interface _UIKeyboardArbiterDebugEntryDictionaries
+ (id)entryWithDictionaries:(id)dictionaries;
- (void)enumerateContents:(id)contents;
@end

@implementation _UIKeyboardArbiterDebugEntryDictionaries

+ (id)entryWithDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v6 = objc_alloc_init(self);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, dictionaries);
  }

  return v7;
}

- (void)enumerateContents:(id)contents
{
  v17 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  v15.receiver = self;
  v15.super_class = _UIKeyboardArbiterDebugEntryDictionaries;
  [(_UIKeyboardArbiterDebugEntry *)&v15 enumerateContents:contentsCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_dictionaries;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        contentsCopy[2](contentsCopy, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end