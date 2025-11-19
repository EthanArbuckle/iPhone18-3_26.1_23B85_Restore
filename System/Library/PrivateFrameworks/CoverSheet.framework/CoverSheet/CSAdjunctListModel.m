@interface CSAdjunctListModel
- (CSAdjunctListModel)init;
- (CSAdjunctListModelDelegate)delegate;
- (void)_reallyAddOrUpdateItem:(id)a3;
- (void)_replayPendingChanges;
- (void)addOrUpdateItem:(id)a3;
- (void)removeItemForIdentifier:(id)a3;
@end

@implementation CSAdjunctListModel

- (CSAdjunctListModel)init
{
  v9.receiver = self;
  v9.super_class = CSAdjunctListModel;
  v2 = [(CSAdjunctListModel *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_suspended = 1;
    v4 = [MEMORY[0x277CBEB38] dictionary];
    identifiersToItems = v3->_identifiersToItems;
    v3->_identifiersToItems = v4;

    v6 = [MEMORY[0x277CBEB58] set];
    pendingItems = v3->_pendingItems;
    v3->_pendingItems = v6;
  }

  return v3;
}

- (void)addOrUpdateItem:(id)a3
{
  if (self->_suspended)
  {
    [(NSMutableSet *)self->_pendingItems addObject:a3];
  }

  else
  {
    [(CSAdjunctListModel *)self _reallyAddOrUpdateItem:a3];
  }
}

- (void)removeItemForIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    pendingItems = self->_pendingItems;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__CSAdjunctListModel_removeItemForIdentifier___block_invoke;
    v12[3] = &unk_27838DA30;
    v7 = v4;
    v13 = v7;
    v8 = [(NSMutableSet *)pendingItems objectsPassingTest:v12];
    v9 = [v8 anyObject];

    if (v9)
    {
      [(NSMutableSet *)self->_pendingItems removeObject:v9];
    }

    v10 = [(NSMutableDictionary *)self->_identifiersToItems objectForKey:v7];
    if (v10)
    {
      [(NSMutableDictionary *)self->_identifiersToItems removeObjectForKey:v7];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained adjunctListModel:self didRemoveItem:v10];
    }
  }
}

uint64_t __46__CSAdjunctListModel_removeItemForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_reallyAddOrUpdateItem:(id)a3
{
  v4 = a3;
  v7 = [v4 identifier];
  v5 = [(NSMutableDictionary *)self->_identifiersToItems objectForKeyedSubscript:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(NSMutableDictionary *)self->_identifiersToItems setObject:v4 forKey:v7];
  if (v5)
  {
    [WeakRetained adjunctListModel:self didUpdateItem:v5 withItem:v4];
  }

  else
  {
    [WeakRetained adjunctListModel:self didAddItem:v4];
  }
}

- (void)_replayPendingChanges
{
  pendingItems = self->_pendingItems;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__CSAdjunctListModel__replayPendingChanges__block_invoke;
  v4[3] = &unk_27838DA58;
  v4[4] = self;
  [(NSMutableSet *)pendingItems enumerateObjectsUsingBlock:v4];
  [(NSMutableSet *)self->_pendingItems removeAllObjects];
}

- (CSAdjunctListModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end