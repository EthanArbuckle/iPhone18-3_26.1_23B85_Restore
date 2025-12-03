@interface _BlastDoorLPiTunesMediaAlbumMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPiTunesMediaAlbumMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPiTunesMediaAlbumMetadata

- (_BlastDoorLPiTunesMediaAlbumMetadata)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = _BlastDoorLPiTunesMediaAlbumMetadata;
  v5 = [(_BlastDoorLPiTunesMediaAlbumMetadata *)&v23 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(coderCopy, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(coderCopy, @"name");
    name = v5->_name;
    v5->_name = v10;

    v12 = decodeStringForKey(coderCopy, @"artist");
    artist = v5->_artist;
    v5->_artist = v12;

    v14 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v14;

    v16 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v16;

    v18 = decodeArrayOfStringsForKey(coderCopy);
    offers = v5->_offers;
    v5->_offers = v18;

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
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"name"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artist forKey:@"artist"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [coderCopy _bd_lp_encodeArrayIfNotEmpty:self->_offers forKey:@"offers"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPiTunesMediaAlbumMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(_BlastDoorLPiTunesMediaAlbumMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaAlbumMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(_BlastDoorLPiTunesMediaAlbumMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaAlbumMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(_BlastDoorLPiTunesMediaAlbumMetadata *)self name];
    [(_BlastDoorLPiTunesMediaAlbumMetadata *)v4 setName:name];

    artist = [(_BlastDoorLPiTunesMediaAlbumMetadata *)self artist];
    [(_BlastDoorLPiTunesMediaAlbumMetadata *)v4 setArtist:artist];

    artwork = [(_BlastDoorLPiTunesMediaAlbumMetadata *)self artwork];
    [(_BlastDoorLPiTunesMediaAlbumMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(_BlastDoorLPiTunesMediaAlbumMetadata *)self artworkMetadata];
    [(_BlastDoorLPiTunesMediaAlbumMetadata *)v4 setArtworkMetadata:artworkMetadata];

    offers = [(_BlastDoorLPiTunesMediaAlbumMetadata *)self offers];
    [(_BlastDoorLPiTunesMediaAlbumMetadata *)v4 setOffers:offers];

    v12 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v17 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = _BlastDoorLPiTunesMediaAlbumMetadata;
  if ([(_BlastDoorLPiTunesMediaAlbumMetadata *)&v16 isEqual:equalCopy])
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