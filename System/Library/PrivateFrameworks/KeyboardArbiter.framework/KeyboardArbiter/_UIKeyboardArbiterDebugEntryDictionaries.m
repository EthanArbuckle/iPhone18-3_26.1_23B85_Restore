@interface _UIKeyboardArbiterDebugEntryDictionaries
+ (id)entryWithDictionaries:(id)a3;
- (void)enumerateContents:(id)a3;
@end

@implementation _UIKeyboardArbiterDebugEntryDictionaries

+ (id)entryWithDictionaries:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(a1);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, a3);
  }

  return v7;
}

- (void)enumerateContents:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _UIKeyboardArbiterDebugEntryDictionaries;
  [(_UIKeyboardArbiterDebugEntry *)&v15 enumerateContents:v4];
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

        v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end