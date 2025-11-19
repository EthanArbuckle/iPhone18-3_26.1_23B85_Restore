@interface _MPCPlayerResponseTracklistDataSource
- (MPCPlayerResponse)response;
- (_MPCPlayerResponseTracklistDataSource)initWithResponse:(id)a3 playingItemIndexPath:(id)a4;
- (id)_responseParticipantForParticipantItem:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)sectionAtIndex:(unint64_t)a3;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3;
- (unint64_t)numberOfSections;
@end

@implementation _MPCPlayerResponseTracklistDataSource

- (MPCPlayerResponse)response
{
  WeakRetained = objc_loadWeakRetained(&self->_response);

  return WeakRetained;
}

- (id)_responseParticipantForParticipantItem:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [MPCPlayerResponseParticipant alloc];
    v6 = [v4 identifier];
    v7 = [v4 participantIdentifierType];
    v8 = [v4 participantIdentifier];
    v9 = [v4 displayName];

    WeakRetained = objc_loadWeakRetained(&self->_response);
    v11 = [(MPCPlayerResponseParticipant *)v5 initWithIdentifier:v6 identifierType:v7 participantIdentifier:v8 displayName:v9 response:WeakRetained];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v6 = [WeakRetained request];
  v7 = [v6 queueItemProperties];

  v8 = [(_MPCPlayerResponseTracklistDataSource *)self playingItemIndexPath];
  v9 = [v4 isEqual:v8];

  if (v9)
  {
    v10 = [WeakRetained request];
    v11 = [v10 playingItemProperties];

    v7 = v11;
  }

  v12 = [WeakRetained builder];
  v13 = [WeakRetained chain];
  v14 = [v12 playerModelObject:0 propertySet:v7 atIndexPath:v4 chain:v13];

  v15 = [WeakRetained builder];
  v16 = [WeakRetained chain];
  v17 = [v15 participant:0 atIndexPath:v4 chain:v16];

  v18 = [(_MPCPlayerResponseTracklistDataSource *)self _responseParticipantForParticipantItem:v17];
  v19 = [[MPCPlayerResponseItem alloc] initWithModelGenericObject:v14 indexPath:v4 enqueueingParticipant:v18 response:WeakRetained];

  return v19;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v5 = [WeakRetained builder];
  v6 = [WeakRetained chain];
  v7 = [v5 playerNumberOfItems:0 inSection:a3 chain:v6];

  return v7;
}

- (id)sectionAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v5 = [WeakRetained request];
  v6 = [v5 queueSectionProperties];

  if (v6)
  {
    v7 = [WeakRetained builder];
    v8 = [MEMORY[0x1E696AC88] indexPathWithIndex:a3];
    v9 = [WeakRetained chain];
    v10 = [v7 playerModelObject:0 propertySet:v6 atIndexPath:v8 chain:v9];

    v11 = [[MPCPlayerResponseSection alloc] initWithModelGenericObject:v10 sectionIndex:a3 response:WeakRetained];
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
  v3 = [WeakRetained builder];
  v4 = [WeakRetained chain];
  v5 = [v3 playerNumberOfSections:0 chain:v4];

  return v5;
}

- (_MPCPlayerResponseTracklistDataSource)initWithResponse:(id)a3 playingItemIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _MPCPlayerResponseTracklistDataSource;
  v8 = [(_MPCPlayerResponseTracklistDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_response, v6);
    objc_storeStrong(&v9->_playingItemIndexPath, a4);
  }

  return v9;
}

@end