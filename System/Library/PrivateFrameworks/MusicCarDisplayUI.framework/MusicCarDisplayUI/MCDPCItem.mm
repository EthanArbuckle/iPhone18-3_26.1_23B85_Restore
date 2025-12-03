@interface MCDPCItem
- (MCDPCModel)model;
- (id)_initWithModel:(id)model MRContentItem:(void *)item;
- (id)description;
@end

@implementation MCDPCItem

- (id)_initWithModel:(id)model MRContentItem:(void *)item
{
  modelCopy = model;
  v18.receiver = self;
  v18.super_class = MCDPCItem;
  v6 = [(MCDPCItem *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_model, modelCopy);
    v8 = MRContentItemGetIdentifier();
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v10 = MRContentItemGetTitle();
    title = v7->_title;
    v7->_title = v10;

    v12 = MRContentItemGetSubtitle();
    subtitle = v7->_subtitle;
    v7->_subtitle = v12;

    v14 = MRContentItemGetArtworkData();
    artworkData = v7->_artworkData;
    v7->_artworkData = v14;

    MRContentItemGetPlaybackProgress();
    v7->_playbackProgress = v16;
    v7->_isContainer = MRContentItemGetIsContainer();
    v7->_isPlayable = MRContentItemGetIsPlayable();
    v7->_isCloudItem = MRContentItemGetIsStreamingContent();
    v7->_isExplicitItem = MRContentItemGetIsExplicitItem();
  }

  return v7;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = selfCopy->_identifier;
  title = selfCopy->_title;
  isContainer = [(MCDPCItem *)selfCopy isContainer];
  isPlayable = [(MCDPCItem *)selfCopy isPlayable];
  v10 = &stru_286C2B080;
  v11 = @"c";
  if (!isContainer)
  {
    v11 = &stru_286C2B080;
  }

  if (isPlayable)
  {
    v10 = @"p";
  }

  v12 = [v3 stringWithFormat:@"<%@: %p - (%@) (%@) [%@%@]>", v5, selfCopy, title, identifier, v11, v10];

  objc_sync_exit(selfCopy);

  return v12;
}

- (MCDPCModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

@end