@interface MRUUpNextDataSource
- (BOOL)canMoveResponseItemWithIdentifier:(id)a3;
- (MRUUpNextDataSource)init;
- (MRUUpNextDataSourceDelegate)delegate;
- (id)objectForKeyedSubscript:(id)a3;
- (id)responseItemForIdentifier:(id)a3;
- (void)moveReponseItemToNextWithIdentifier:(id)a3 completion:(id)a4;
- (void)moveReponseItemWithIdentifier:(id)a3 afterResponseItemWithIdentifier:(id)a4 completion:(id)a5;
- (void)playItemWithIdentifier:(id)a3 completion:(id)a4;
- (void)removeResponseItemWithIdentifier:(id)a3 completion:(id)a4;
- (void)setResponse:(id)a3;
- (void)updateContentItems;
@end

@implementation MRUUpNextDataSource

- (MRUUpNextDataSource)init
{
  v6.receiver = self;
  v6.super_class = MRUUpNextDataSource;
  v2 = [(MRUUpNextDataSource *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEC8] array];
    responseItemIDs = v2->_responseItemIDs;
    v2->_responseItemIDs = v3;
  }

  return v2;
}

- (void)setResponse:(id)a3
{
  v5 = a3;
  p_response = &self->_response;
  if (self->_response != v5)
  {
    v8 = v5;
    objc_storeStrong(p_response, a3);
    [(MRUUpNextDataSource *)self updateContentItems];
    v7 = [(MRUUpNextDataSource *)self delegate];
    [v7 upNextDataSource:self didChangeResponseItemIDs:self->_responseItemIDs];

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](p_response, v5);
}

- (id)responseItemForIdentifier:(id)a3
{
  v3 = [(NSDictionary *)self->_responseItemsByIdentifier objectForKeyedSubscript:a3];
  v4 = [v3 metadataObject];
  v5 = [v4 flattenedGenericObject];
  v6 = [v5 anyObject];

  return v6;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v3 = [(NSDictionary *)self->_responseItemsByIdentifier objectForKeyedSubscript:a3];
  v4 = [v3 metadataObject];
  v5 = [v4 flattenedGenericObject];
  v6 = [v5 anyObject];

  return v6;
}

- (void)playItemWithIdentifier:(id)a3 completion:(id)a4
{
  responseItemsByIdentifier = self->_responseItemsByIdentifier;
  v7 = a4;
  v15 = [(NSDictionary *)responseItemsByIdentifier objectForKeyedSubscript:a3];
  v8 = [(MPCPlayerResponse *)self->_response tracklist];
  v9 = [v8 changeItemCommand];
  v10 = [v9 changeToItem:v15];

  v11 = [(MPCPlayerResponse *)self->_response play];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v13 = v12;
  if (v10)
  {
    [v12 addObject:v10];
  }

  if (v11)
  {
    [v13 addObject:v11];
  }

  v14 = [MEMORY[0x1E69B0848] requestWithCommandRequests:v13];
  [v14 performWithCompletion:v7];
}

- (void)moveReponseItemToNextWithIdentifier:(id)a3 completion:(id)a4
{
  responseItemsByIdentifier = self->_responseItemsByIdentifier;
  v7 = a4;
  v13 = [(NSDictionary *)responseItemsByIdentifier objectForKeyedSubscript:a3];
  v8 = [(MPCPlayerResponse *)self->_response tracklist];
  v9 = [v8 playingItem];

  v10 = [(MPCPlayerResponse *)self->_response tracklist];
  v11 = [v10 reorderCommand];
  v12 = [v11 moveItem:v13 afterItem:v9];

  [MEMORY[0x1E69B0848] performRequest:v12 completion:v7];
}

- (void)moveReponseItemWithIdentifier:(id)a3 afterResponseItemWithIdentifier:(id)a4 completion:(id)a5
{
  responseItemsByIdentifier = self->_responseItemsByIdentifier;
  v9 = a5;
  v10 = a4;
  v15 = [(NSDictionary *)responseItemsByIdentifier objectForKeyedSubscript:a3];
  v11 = [(NSDictionary *)self->_responseItemsByIdentifier objectForKeyedSubscript:v10];

  v12 = [(MPCPlayerResponse *)self->_response tracklist];
  v13 = [v12 reorderCommand];
  v14 = [v13 moveItem:v15 afterItem:v11];

  [MEMORY[0x1E69B0848] performRequest:v14 completion:v9];
}

- (BOOL)canMoveResponseItemWithIdentifier:(id)a3
{
  v4 = [(NSDictionary *)self->_responseItemsByIdentifier objectForKeyedSubscript:a3];
  v5 = [(MPCPlayerResponse *)self->_response tracklist];
  v6 = [v5 reorderCommand];
  v7 = [v6 canMoveItem:v4];

  return v7;
}

- (void)removeResponseItemWithIdentifier:(id)a3 completion:(id)a4
{
  responseItemsByIdentifier = self->_responseItemsByIdentifier;
  v6 = a4;
  v9 = [(NSDictionary *)responseItemsByIdentifier objectForKeyedSubscript:a3];
  v7 = MEMORY[0x1E69B0848];
  v8 = [v9 remove];
  [v7 performRequest:v8 completion:v6];
}

- (void)updateContentItems
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(MPCPlayerResponse *)self->_response tracklist];
  v4 = [v3 items];
  v5 = [v4 allItems];

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v8 = [(MPCPlayerResponse *)self->_response tracklist];
  v9 = [v8 playingItem];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        if (v15 != v9)
        {
          v16 = [*(*(&v22 + 1) + 8 * v14) contentItemIdentifier];
          [v6 addObject:v16];

          v17 = [v15 contentItemIdentifier];
          [v7 setObject:v15 forKeyedSubscript:v17];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v18 = [v6 copy];
  responseItemIDs = self->_responseItemIDs;
  self->_responseItemIDs = v18;

  v20 = [v7 copy];
  responseItemsByIdentifier = self->_responseItemsByIdentifier;
  self->_responseItemsByIdentifier = v20;
}

- (MRUUpNextDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end