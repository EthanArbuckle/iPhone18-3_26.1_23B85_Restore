@interface MRUUpNextDataSource
- (BOOL)canMoveResponseItemWithIdentifier:(id)identifier;
- (MRUUpNextDataSource)init;
- (MRUUpNextDataSourceDelegate)delegate;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)responseItemForIdentifier:(id)identifier;
- (void)moveReponseItemToNextWithIdentifier:(id)identifier completion:(id)completion;
- (void)moveReponseItemWithIdentifier:(id)identifier afterResponseItemWithIdentifier:(id)withIdentifier completion:(id)completion;
- (void)playItemWithIdentifier:(id)identifier completion:(id)completion;
- (void)removeResponseItemWithIdentifier:(id)identifier completion:(id)completion;
- (void)setResponse:(id)response;
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
    array = [MEMORY[0x1E695DEC8] array];
    responseItemIDs = v2->_responseItemIDs;
    v2->_responseItemIDs = array;
  }

  return v2;
}

- (void)setResponse:(id)response
{
  responseCopy = response;
  p_response = &self->_response;
  if (self->_response != responseCopy)
  {
    v8 = responseCopy;
    objc_storeStrong(p_response, response);
    [(MRUUpNextDataSource *)self updateContentItems];
    delegate = [(MRUUpNextDataSource *)self delegate];
    [delegate upNextDataSource:self didChangeResponseItemIDs:self->_responseItemIDs];

    responseCopy = v8;
  }

  MEMORY[0x1EEE66BB8](p_response, responseCopy);
}

- (id)responseItemForIdentifier:(id)identifier
{
  v3 = [(NSDictionary *)self->_responseItemsByIdentifier objectForKeyedSubscript:identifier];
  metadataObject = [v3 metadataObject];
  flattenedGenericObject = [metadataObject flattenedGenericObject];
  anyObject = [flattenedGenericObject anyObject];

  return anyObject;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = [(NSDictionary *)self->_responseItemsByIdentifier objectForKeyedSubscript:subscript];
  metadataObject = [v3 metadataObject];
  flattenedGenericObject = [metadataObject flattenedGenericObject];
  anyObject = [flattenedGenericObject anyObject];

  return anyObject;
}

- (void)playItemWithIdentifier:(id)identifier completion:(id)completion
{
  responseItemsByIdentifier = self->_responseItemsByIdentifier;
  completionCopy = completion;
  v15 = [(NSDictionary *)responseItemsByIdentifier objectForKeyedSubscript:identifier];
  tracklist = [(MPCPlayerResponse *)self->_response tracklist];
  changeItemCommand = [tracklist changeItemCommand];
  v10 = [changeItemCommand changeToItem:v15];

  play = [(MPCPlayerResponse *)self->_response play];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v13 = v12;
  if (v10)
  {
    [v12 addObject:v10];
  }

  if (play)
  {
    [v13 addObject:play];
  }

  v14 = [MEMORY[0x1E69B0848] requestWithCommandRequests:v13];
  [v14 performWithCompletion:completionCopy];
}

- (void)moveReponseItemToNextWithIdentifier:(id)identifier completion:(id)completion
{
  responseItemsByIdentifier = self->_responseItemsByIdentifier;
  completionCopy = completion;
  v13 = [(NSDictionary *)responseItemsByIdentifier objectForKeyedSubscript:identifier];
  tracklist = [(MPCPlayerResponse *)self->_response tracklist];
  playingItem = [tracklist playingItem];

  tracklist2 = [(MPCPlayerResponse *)self->_response tracklist];
  reorderCommand = [tracklist2 reorderCommand];
  v12 = [reorderCommand moveItem:v13 afterItem:playingItem];

  [MEMORY[0x1E69B0848] performRequest:v12 completion:completionCopy];
}

- (void)moveReponseItemWithIdentifier:(id)identifier afterResponseItemWithIdentifier:(id)withIdentifier completion:(id)completion
{
  responseItemsByIdentifier = self->_responseItemsByIdentifier;
  completionCopy = completion;
  withIdentifierCopy = withIdentifier;
  v15 = [(NSDictionary *)responseItemsByIdentifier objectForKeyedSubscript:identifier];
  v11 = [(NSDictionary *)self->_responseItemsByIdentifier objectForKeyedSubscript:withIdentifierCopy];

  tracklist = [(MPCPlayerResponse *)self->_response tracklist];
  reorderCommand = [tracklist reorderCommand];
  v14 = [reorderCommand moveItem:v15 afterItem:v11];

  [MEMORY[0x1E69B0848] performRequest:v14 completion:completionCopy];
}

- (BOOL)canMoveResponseItemWithIdentifier:(id)identifier
{
  v4 = [(NSDictionary *)self->_responseItemsByIdentifier objectForKeyedSubscript:identifier];
  tracklist = [(MPCPlayerResponse *)self->_response tracklist];
  reorderCommand = [tracklist reorderCommand];
  v7 = [reorderCommand canMoveItem:v4];

  return v7;
}

- (void)removeResponseItemWithIdentifier:(id)identifier completion:(id)completion
{
  responseItemsByIdentifier = self->_responseItemsByIdentifier;
  completionCopy = completion;
  v9 = [(NSDictionary *)responseItemsByIdentifier objectForKeyedSubscript:identifier];
  v7 = MEMORY[0x1E69B0848];
  remove = [v9 remove];
  [v7 performRequest:remove completion:completionCopy];
}

- (void)updateContentItems
{
  v27 = *MEMORY[0x1E69E9840];
  tracklist = [(MPCPlayerResponse *)self->_response tracklist];
  items = [tracklist items];
  allItems = [items allItems];

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(allItems, "count")}];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(allItems, "count")}];
  tracklist2 = [(MPCPlayerResponse *)self->_response tracklist];
  playingItem = [tracklist2 playingItem];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = allItems;
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
        if (v15 != playingItem)
        {
          contentItemIdentifier = [*(*(&v22 + 1) + 8 * v14) contentItemIdentifier];
          [v6 addObject:contentItemIdentifier];

          contentItemIdentifier2 = [v15 contentItemIdentifier];
          [v7 setObject:v15 forKeyedSubscript:contentItemIdentifier2];
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