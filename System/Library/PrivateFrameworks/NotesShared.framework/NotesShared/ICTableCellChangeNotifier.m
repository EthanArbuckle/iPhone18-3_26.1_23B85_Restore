@interface ICTableCellChangeNotifier
- (ICTableCellChangeNotifier)init;
- (void)addObserver:(id)a3;
- (void)notifyOfChangeAtColumnID:(id)a3 rowID:(id)a4 delta:(int64_t)a5;
- (void)removeObserver:(id)a3;
@end

@implementation ICTableCellChangeNotifier

- (ICTableCellChangeNotifier)init
{
  v6.receiver = self;
  v6.super_class = ICTableCellChangeNotifier;
  v2 = [(ICTableCellChangeNotifier *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(ICTableCellChangeNotifier *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(ICTableCellChangeNotifier *)self observers];
  [v5 removeObject:v4];
}

- (void)notifyOfChangeAtColumnID:(id)a3 rowID:(id)a4 delta:(int64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(ICTableCellChangeNotifier *)self observers];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) tableValueDidChangeAtColumnID:v8 rowID:v9 delta:a5];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

@end