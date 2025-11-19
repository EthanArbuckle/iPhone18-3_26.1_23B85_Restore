@interface HUMediaItem
- (HUMediaItem)initWithPlaybackArchiveDisplayProperties:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (void)setPlaybackArchiveDisplayProperties:(id)a3;
@end

@implementation HUMediaItem

- (HUMediaItem)initWithPlaybackArchiveDisplayProperties:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HUMediaItem;
  v5 = [(HUMediaItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUMediaItem *)v5 setPlaybackArchiveDisplayProperties:v4];
  }

  return v6;
}

- (void)setPlaybackArchiveDisplayProperties:(id)a3
{
  v5 = a3;
  if (self->_playbackArchiveDisplayProperties != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_playbackArchiveDisplayProperties, a3);
    v5 = v6;
  }
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HUMediaItem *)self playbackArchiveDisplayProperties];

  if (v5)
  {
    v6 = [(HUMediaItem *)self playbackArchiveDisplayProperties];
    v7 = [v6 title];
    [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13F60]];

    v8 = [(HUMediaItem *)self playbackArchiveDisplayProperties];
    v9 = [v8 subtitle];
    [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13E20]];

    v10 = [(HUMediaItem *)self playbackArchiveDisplayProperties];
    v11 = [v10 artworkImageData];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277D143C8]);
      v13 = [(HUMediaItem *)self playbackArchiveDisplayProperties];
      v14 = [v13 artworkImageData];
      v15 = [v12 initWithImageData:v14];

      [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13E88]];
    }
  }

  v24 = *MEMORY[0x277D13FB8];
  v16 = MEMORY[0x277CCABB0];
  v17 = [(HUMediaItem *)self playbackArchiveDisplayProperties];
  v18 = [v16 numberWithInt:v17 == 0];
  v25[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  [v4 addEntriesFromDictionary:v19];

  v20 = MEMORY[0x277D2C900];
  v21 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v22 = [v20 futureWithResult:v21];

  return v22;
}

@end