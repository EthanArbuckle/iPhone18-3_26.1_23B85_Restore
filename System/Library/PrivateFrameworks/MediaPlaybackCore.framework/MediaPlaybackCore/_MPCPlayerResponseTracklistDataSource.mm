@interface _MPCPlayerResponseTracklistDataSource
- (MPCPlayerResponse)response;
- (_MPCPlayerResponseTracklistDataSource)initWithResponse:(id)response playingItemIndexPath:(id)path;
- (id)_responseParticipantForParticipantItem:(id)item;
- (id)itemAtIndexPath:(id)path;
- (id)sectionAtIndex:(unint64_t)index;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
- (unint64_t)numberOfSections;
@end

@implementation _MPCPlayerResponseTracklistDataSource

- (MPCPlayerResponse)response
{
  WeakRetained = objc_loadWeakRetained(&self->_response);

  return WeakRetained;
}

- (id)_responseParticipantForParticipantItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    v5 = [MPCPlayerResponseParticipant alloc];
    identifier = [itemCopy identifier];
    participantIdentifierType = [itemCopy participantIdentifierType];
    participantIdentifier = [itemCopy participantIdentifier];
    displayName = [itemCopy displayName];

    WeakRetained = objc_loadWeakRetained(&self->_response);
    v11 = [(MPCPlayerResponseParticipant *)v5 initWithIdentifier:identifier identifierType:participantIdentifierType participantIdentifier:participantIdentifier displayName:displayName response:WeakRetained];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_response);
  request = [WeakRetained request];
  queueItemProperties = [request queueItemProperties];

  playingItemIndexPath = [(_MPCPlayerResponseTracklistDataSource *)self playingItemIndexPath];
  v9 = [pathCopy isEqual:playingItemIndexPath];

  if (v9)
  {
    request2 = [WeakRetained request];
    playingItemProperties = [request2 playingItemProperties];

    queueItemProperties = playingItemProperties;
  }

  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v14 = [builder playerModelObject:0 propertySet:queueItemProperties atIndexPath:pathCopy chain:chain];

  builder2 = [WeakRetained builder];
  chain2 = [WeakRetained chain];
  v17 = [builder2 participant:0 atIndexPath:pathCopy chain:chain2];

  v18 = [(_MPCPlayerResponseTracklistDataSource *)self _responseParticipantForParticipantItem:v17];
  v19 = [[MPCPlayerResponseItem alloc] initWithModelGenericObject:v14 indexPath:pathCopy enqueueingParticipant:v18 response:WeakRetained];

  return v19;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v7 = [builder playerNumberOfItems:0 inSection:section chain:chain];

  return v7;
}

- (id)sectionAtIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  request = [WeakRetained request];
  queueSectionProperties = [request queueSectionProperties];

  if (queueSectionProperties)
  {
    builder = [WeakRetained builder];
    v8 = [MEMORY[0x1E696AC88] indexPathWithIndex:index];
    chain = [WeakRetained chain];
    v10 = [builder playerModelObject:0 propertySet:queueSectionProperties atIndexPath:v8 chain:chain];

    v11 = [[MPCPlayerResponseSection alloc] initWithModelGenericObject:v10 sectionIndex:index response:WeakRetained];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)numberOfSections
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v5 = [builder playerNumberOfSections:0 chain:chain];

  return v5;
}

- (_MPCPlayerResponseTracklistDataSource)initWithResponse:(id)response playingItemIndexPath:(id)path
{
  responseCopy = response;
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = _MPCPlayerResponseTracklistDataSource;
  v8 = [(_MPCPlayerResponseTracklistDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_response, responseCopy);
    objc_storeStrong(&v9->_playingItemIndexPath, path);
  }

  return v9;
}

@end