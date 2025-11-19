@interface _BlastDoorLPiTunesMediaTVSeasonMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPiTunesMediaTVSeasonMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPiTunesMediaTVSeasonMetadata

- (_BlastDoorLPiTunesMediaTVSeasonMetadata)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _BlastDoorLPiTunesMediaTVSeasonMetadata;
  v5 = [(_BlastDoorLPiTunesMediaTVSeasonMetadata *)&v21 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(v4, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(v4, @"name");
    name = v5->_name;
    v5->_name = v10;

    v12 = decodeStringForKey(v4, @"genre");
    genre = v5->_genre;
    v5->_genre = v12;

    v14 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v14;

    v16 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v16;

    v18 = v5;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  storeFrontIdentifier = self->_storeFrontIdentifier;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"name"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_genre forKey:@"genre"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPiTunesMediaTVSeasonMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPiTunesMediaTVSeasonMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaTVSeasonMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(_BlastDoorLPiTunesMediaTVSeasonMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaTVSeasonMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(_BlastDoorLPiTunesMediaTVSeasonMetadata *)self name];
    [(_BlastDoorLPiTunesMediaTVSeasonMetadata *)v4 setName:v7];

    v8 = [(_BlastDoorLPiTunesMediaTVSeasonMetadata *)self genre];
    [(_BlastDoorLPiTunesMediaTVSeasonMetadata *)v4 setGenre:v8];

    v9 = [(_BlastDoorLPiTunesMediaTVSeasonMetadata *)self artwork];
    [(_BlastDoorLPiTunesMediaTVSeasonMetadata *)v4 setArtwork:v9];

    v10 = [(_BlastDoorLPiTunesMediaTVSeasonMetadata *)self artworkMetadata];
    [(_BlastDoorLPiTunesMediaTVSeasonMetadata *)v4 setArtworkMetadata:v10];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPiTunesMediaTVSeasonMetadata;
  if ([(_BlastDoorLPiTunesMediaTVSeasonMetadata *)&v15 isEqual:v4])
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
      if (v7 | self->_storeFrontIdentifier && ![v7 isEqual:?] || (v8 = v6[3], v8 | self->_storeIdentifier) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[4], v9 | self->_name) && !objc_msgSend(v9, "isEqual:") || (v10 = v6[5], v10 | self->_genre) && !objc_msgSend(v10, "isEqual:") || (v11 = v6[6], v11 | self->_artwork) && !objc_msgSend(v11, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v12 = v6[7];
        if (v12 | self->_artworkMetadata)
        {
          v5 = [v12 isEqual:?];
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

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

@end