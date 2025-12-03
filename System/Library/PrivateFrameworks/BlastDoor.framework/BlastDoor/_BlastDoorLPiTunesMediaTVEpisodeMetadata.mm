@interface _BlastDoorLPiTunesMediaTVEpisodeMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPiTunesMediaTVEpisodeMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPiTunesMediaTVEpisodeMetadata

- (_BlastDoorLPiTunesMediaTVEpisodeMetadata)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = _BlastDoorLPiTunesMediaTVEpisodeMetadata;
  v5 = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)&v23 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(coderCopy, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(coderCopy, @"episodeName");
    episodeName = v5->_episodeName;
    v5->_episodeName = v10;

    v12 = decodeStringForKey(coderCopy, @"seasonName");
    seasonName = v5->_seasonName;
    v5->_seasonName = v12;

    v14 = decodeStringForKey(coderCopy, @"genre");
    genre = v5->_genre;
    v5->_genre = v14;

    v16 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v16;

    v18 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v18;

    v20 = v5;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  storeFrontIdentifier = self->_storeFrontIdentifier;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_episodeName forKey:@"episodeName"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_seasonName forKey:@"seasonName"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_genre forKey:@"genre"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPiTunesMediaTVEpisodeMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)v4 setStoreIdentifier:storeIdentifier];

    episodeName = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)self episodeName];
    [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)v4 setEpisodeName:episodeName];

    seasonName = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)self seasonName];
    [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)v4 setSeasonName:seasonName];

    genre = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)self genre];
    [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)v4 setGenre:genre];

    artwork = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)self artwork];
    [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)self artworkMetadata];
    [(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)v4 setArtworkMetadata:artworkMetadata];

    v12 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v17 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = _BlastDoorLPiTunesMediaTVEpisodeMetadata;
  if ([(_BlastDoorLPiTunesMediaTVEpisodeMetadata *)&v16 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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