@interface _BlastDoorLPiTunesMediaTVEpisodeMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPiTunesMediaTVEpisodeMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPiTunesMediaTVEpisodeMetadata

- (_BlastDoorLPiTunesMediaTVEpisodeMetadata)initWithCoder:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = _BlastDoorLPiTunesMediaTVEpisodeMetadata;
  v5 = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)&v23 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(v4, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(v4, @"episodeName");
    episodeName = v5->_episodeName;
    v5->_episodeName = v10;

    v12 = decodeStringForKey(v4, @"seasonName");
    seasonName = v5->_seasonName;
    v5->_seasonName = v12;

    v14 = decodeStringForKey(v4, @"genre");
    genre = v5->_genre;
    v5->_genre = v14;

    v16 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v16;

    v18 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v18;

    v20 = v5;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  storeFrontIdentifier = self->_storeFrontIdentifier;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_episodeName forKey:@"episodeName"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_seasonName forKey:@"seasonName"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_genre forKey:@"genre"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPiTunesMediaTVEpisodeMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)self episodeName];
    [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)v4 setEpisodeName:v7];

    v8 = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)self seasonName];
    [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)v4 setSeasonName:v8];

    v9 = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)self genre];
    [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)v4 setGenre:v9];

    v10 = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)self artwork];
    [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)v4 setArtwork:v10];

    v11 = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)self artworkMetadata];
    [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)v4 setArtworkMetadata:v11];

    v12 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _BlastDoorLPiTunesMediaTVEpisodeMetadata;
  if ([(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)&v16 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = v6[2];
      if (v7 | self->_storeFrontIdentifier && ![v7 isEqual:?] || (v8 = v6[3], v8 | self->_storeIdentifier) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[4], v9 | self->_episodeName) && !objc_msgSend(v9, "isEqual:") || (v10 = v6[5], v10 | self->_seasonName) && !objc_msgSend(v10, "isEqual:") || (v11 = v6[6], v11 | self->_genre) && !objc_msgSend(v11, "isEqual:") || (v12 = v6[7], v12 | self->_artwork) && !objc_msgSend(v12, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v13 = v6[8];
        if (v13 | self->_artworkMetadata)
        {
          v5 = [v13 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

@end