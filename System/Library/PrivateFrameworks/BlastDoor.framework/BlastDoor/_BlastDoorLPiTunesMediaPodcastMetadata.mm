@interface _BlastDoorLPiTunesMediaPodcastMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPiTunesMediaPodcastMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPiTunesMediaPodcastMetadata

- (_BlastDoorLPiTunesMediaPodcastMetadata)initWithCoder:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = _BlastDoorLPiTunesMediaPodcastMetadata;
  v5 = [(_BlastDoorLPiTunesMediaPodcastMetadata *)&v23 init];
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

    v12 = decodeStringForKey(v4, @"artist");
    artist = v5->_artist;
    v5->_artist = v12;

    v14 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v14;

    v16 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v16;

    v18 = decodeArrayOfStringsForKey(v4);
    offers = v5->_offers;
    v5->_offers = v18;

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
  [v5 _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"name"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artist forKey:@"artist"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [v5 _bd_lp_encodeArrayIfNotEmpty:self->_offers forKey:@"offers"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPiTunesMediaPodcastMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPiTunesMediaPodcastMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaPodcastMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(_BlastDoorLPiTunesMediaPodcastMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaPodcastMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(_BlastDoorLPiTunesMediaPodcastMetadata *)self name];
    [(_BlastDoorLPiTunesMediaPodcastMetadata *)v4 setName:v7];

    v8 = [(_BlastDoorLPiTunesMediaPodcastMetadata *)self artist];
    [(_BlastDoorLPiTunesMediaPodcastMetadata *)v4 setArtist:v8];

    v9 = [(_BlastDoorLPiTunesMediaPodcastMetadata *)self artwork];
    [(_BlastDoorLPiTunesMediaPodcastMetadata *)v4 setArtwork:v9];

    v10 = [(_BlastDoorLPiTunesMediaPodcastMetadata *)self artworkMetadata];
    [(_BlastDoorLPiTunesMediaPodcastMetadata *)v4 setArtworkMetadata:v10];

    v11 = [(_BlastDoorLPiTunesMediaPodcastMetadata *)self offers];
    [(_BlastDoorLPiTunesMediaPodcastMetadata *)v4 setOffers:v11];

    v12 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _BlastDoorLPiTunesMediaPodcastMetadata;
  if ([(_BlastDoorLPiTunesMediaPodcastMetadata *)&v16 isEqual:v4])
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
      if (v7 | self->_storeFrontIdentifier && ![v7 isEqual:?] || (v8 = v6[3], v8 | self->_storeIdentifier) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[4], v9 | self->_name) && !objc_msgSend(v9, "isEqual:") || (v10 = v6[5], v10 | self->_artist) && !objc_msgSend(v10, "isEqual:") || (v11 = v6[6], v11 | self->_artwork) && !objc_msgSend(v11, "isEqual:") || (v12 = v6[7], v12 | self->_artworkMetadata) && !objc_msgSend(v12, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v13 = v6[8];
        if (v13 | self->_offers)
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