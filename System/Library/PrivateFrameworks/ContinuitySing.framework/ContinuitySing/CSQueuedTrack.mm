@interface CSQueuedTrack
- (CSQueuedTrack)initWithDictionary:(id)a3;
- (CSQueuedTrack)initWithSongTitle:(id)a3 artistName:(id)a4 artworkThumbnailImage:(id)a5 catalogID:(id)a6 trackType:(int64_t)a7;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CSQueuedTrack

- (CSQueuedTrack)initWithSongTitle:(id)a3 artistName:(id)a4 artworkThumbnailImage:(id)a5 catalogID:(id)a6 trackType:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v22.receiver = self;
  v22.super_class = CSQueuedTrack;
  v16 = [(CSQueuedTrack *)&v22 init];
  if (v16)
  {
    v17 = [v12 copy];
    songTitle = v16->_songTitle;
    v16->_songTitle = v17;

    v19 = [v13 copy];
    artistName = v16->_artistName;
    v16->_artistName = v19;

    objc_storeStrong(&v16->_artworkThumbnailImage, a5);
    objc_storeStrong(&v16->_catalogID, a6);
    v16->_trackType = a7;
  }

  return v16;
}

- (CSQueuedTrack)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CSQueuedTrack;
  v5 = [(CSQueuedTrack *)&v18 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  songTitle = v5->_songTitle;
  v5->_songTitle = v6;

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  artistName = v5->_artistName;
  v5->_artistName = v8;

  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  catalogID = v5->_catalogID;
  v5->_catalogID = v10;

  CFDataGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  artworkThumbnailImage = v5->_artworkThumbnailImage;
  v5->_artworkThumbnailImage = v12;

  v14 = NSDictionaryGetNSNumber();
  v5->_trackType = [v14 integerValue];

  if (!v5->_songTitle)
  {
    goto LABEL_5;
  }

  if (v5->_artistName)
  {
LABEL_4:
    v15 = v5;
  }

  else
  {
LABEL_5:
    v16 = ContinuitySingLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CSQueuedTrack *)v4 initWithDictionary:v16];
    }

    v15 = 0;
  }

  return v15;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(NSString *)self->_songTitle copy];
  [v3 setObject:v4 forKeyedSubscript:@"SongTitle"];

  v5 = [(NSString *)self->_artistName copy];
  [v3 setObject:v5 forKeyedSubscript:@"ArtistName"];

  v6 = [(NSString *)self->_catalogID copy];
  [v3 setObject:v6 forKeyedSubscript:@"CatalogID"];

  artworkThumbnailImage = self->_artworkThumbnailImage;
  if (artworkThumbnailImage)
  {
    [v3 setObject:artworkThumbnailImage forKeyedSubscript:@"ArtworkThumbnailImage"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_trackType];
  [v3 setObject:v8 forKeyedSubscript:@"TrackType"];

  v9 = [v3 copy];

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = *&self->_songTitle;
  catalogID = self->_catalogID;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_trackType];
  v6 = [v3 initWithFormat:@"<CSQueuedTrack title:%@; artist:%@; catalogID:%@; type:%@", v8, catalogID, v5];

  return v6;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[CSQueuedTrack initWithDictionary:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_2441FB000, a2, OS_LOG_TYPE_ERROR, "%s: Failed to decode CSQueuedTrack with dictionary: %@", &v2, 0x16u);
}

@end