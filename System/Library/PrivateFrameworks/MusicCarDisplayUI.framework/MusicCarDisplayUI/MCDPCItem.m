@interface MCDPCItem
- (MCDPCModel)model;
- (id)_initWithModel:(id)a3 MRContentItem:(void *)a4;
- (id)description;
@end

@implementation MCDPCItem

- (id)_initWithModel:(id)a3 MRContentItem:(void *)a4
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = MCDPCItem;
  v6 = [(MCDPCItem *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_model, v5);
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = v2->_identifier;
  title = v2->_title;
  v8 = [(MCDPCItem *)v2 isContainer];
  v9 = [(MCDPCItem *)v2 isPlayable];
  v10 = &stru_286C2B080;
  v11 = @"c";
  if (!v8)
  {
    v11 = &stru_286C2B080;
  }

  if (v9)
  {
    v10 = @"p";
  }

  v12 = [v3 stringWithFormat:@"<%@: %p - (%@) (%@) [%@%@]>", v5, v2, title, identifier, v11, v10];

  objc_sync_exit(v2);

  return v12;
}

- (MCDPCModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

@end