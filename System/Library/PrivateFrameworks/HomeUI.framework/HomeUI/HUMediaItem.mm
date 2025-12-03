@interface HUMediaItem
- (HUMediaItem)initWithPlaybackArchiveDisplayProperties:(id)properties;
- (id)_subclass_updateWithOptions:(id)options;
- (void)setPlaybackArchiveDisplayProperties:(id)properties;
@end

@implementation HUMediaItem

- (HUMediaItem)initWithPlaybackArchiveDisplayProperties:(id)properties
{
  propertiesCopy = properties;
  v8.receiver = self;
  v8.super_class = HUMediaItem;
  v5 = [(HUMediaItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUMediaItem *)v5 setPlaybackArchiveDisplayProperties:propertiesCopy];
  }

  return v6;
}

- (void)setPlaybackArchiveDisplayProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->_playbackArchiveDisplayProperties != propertiesCopy)
  {
    v6 = propertiesCopy;
    objc_storeStrong(&self->_playbackArchiveDisplayProperties, properties);
    propertiesCopy = v6;
  }
}

- (id)_subclass_updateWithOptions:(id)options
{
  v25[1] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  playbackArchiveDisplayProperties = [(HUMediaItem *)self playbackArchiveDisplayProperties];

  if (playbackArchiveDisplayProperties)
  {
    playbackArchiveDisplayProperties2 = [(HUMediaItem *)self playbackArchiveDisplayProperties];
    title = [playbackArchiveDisplayProperties2 title];
    [dictionary setObject:title forKeyedSubscript:*MEMORY[0x277D13F60]];

    playbackArchiveDisplayProperties3 = [(HUMediaItem *)self playbackArchiveDisplayProperties];
    subtitle = [playbackArchiveDisplayProperties3 subtitle];
    [dictionary setObject:subtitle forKeyedSubscript:*MEMORY[0x277D13E20]];

    playbackArchiveDisplayProperties4 = [(HUMediaItem *)self playbackArchiveDisplayProperties];
    artworkImageData = [playbackArchiveDisplayProperties4 artworkImageData];

    if (artworkImageData)
    {
      v12 = objc_alloc(MEMORY[0x277D143C8]);
      playbackArchiveDisplayProperties5 = [(HUMediaItem *)self playbackArchiveDisplayProperties];
      artworkImageData2 = [playbackArchiveDisplayProperties5 artworkImageData];
      v15 = [v12 initWithImageData:artworkImageData2];

      [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x277D13E88]];
    }
  }

  v24 = *MEMORY[0x277D13FB8];
  v16 = MEMORY[0x277CCABB0];
  playbackArchiveDisplayProperties6 = [(HUMediaItem *)self playbackArchiveDisplayProperties];
  v18 = [v16 numberWithInt:playbackArchiveDisplayProperties6 == 0];
  v25[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  [dictionary addEntriesFromDictionary:v19];

  v20 = MEMORY[0x277D2C900];
  v21 = [MEMORY[0x277D14780] outcomeWithResults:dictionary];
  v22 = [v20 futureWithResult:v21];

  return v22;
}

@end