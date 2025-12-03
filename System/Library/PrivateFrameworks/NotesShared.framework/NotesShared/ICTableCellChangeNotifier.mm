@interface ICTableCellChangeNotifier
- (ICTableCellChangeNotifier)init;
- (void)addObserver:(id)observer;
- (void)notifyOfChangeAtColumnID:(id)d rowID:(id)iD delta:(int64_t)delta;
- (void)removeObserver:(id)observer;
@end

@implementation ICTableCellChangeNotifier

- (ICTableCellChangeNotifier)init
{
  v6.receiver = self;
  v6.super_class = ICTableCellChangeNotifier;
  v2 = [(ICTableCellChangeNotifier *)&v6 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(ICTableCellChangeNotifier *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(ICTableCellChangeNotifier *)self observers];
  [observers removeObject:observerCopy];
}

- (void)notifyOfChangeAtColumnID:(id)d rowID:(id)iD delta:(int64_t)delta
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  observers = [(ICTableCellChangeNotifier *)self observers];
  v11 = [observers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(observers);
        }

        [*(*(&v15 + 1) + 8 * v14++) tableValueDidChangeAtColumnID:dCopy rowID:iDCopy delta:delta];
      }

      while (v12 != v14);
      v12 = [observers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

@end