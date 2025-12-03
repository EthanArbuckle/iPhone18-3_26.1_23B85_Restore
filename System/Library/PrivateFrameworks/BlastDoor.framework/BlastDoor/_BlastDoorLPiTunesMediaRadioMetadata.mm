@interface _BlastDoorLPiTunesMediaRadioMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPiTunesMediaRadioMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPiTunesMediaRadioMetadata

- (_BlastDoorLPiTunesMediaRadioMetadata)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _BlastDoorLPiTunesMediaRadioMetadata;
  v5 = [(_BlastDoorLPiTunesMediaRadioMetadata *)&v21 init];
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

    v12 = decodeStringForKey(coderCopy, @"curator");
    curator = v5->_curator;
    v5->_curator = v12;

    v14 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v14;

    v16 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v16;

    v18 = v5;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  storeFrontIdentifier = self->_storeFrontIdentifier;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"name"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_curator forKey:@"curator"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPiTunesMediaRadioMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(_BlastDoorLPiTunesMediaRadioMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaRadioMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(_BlastDoorLPiTunesMediaRadioMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaRadioMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(_BlastDoorLPiTunesMediaRadioMetadata *)self name];
    [(_BlastDoorLPiTunesMediaRadioMetadata *)v4 setName:name];

    curator = [(_BlastDoorLPiTunesMediaRadioMetadata *)self curator];
    [(_BlastDoorLPiTunesMediaRadioMetadata *)v4 setCurator:curator];

    artwork = [(_BlastDoorLPiTunesMediaRadioMetadata *)self artwork];
    [(_BlastDoorLPiTunesMediaRadioMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(_BlastDoorLPiTunesMediaRadioMetadata *)self artworkMetadata];
    [(_BlastDoorLPiTunesMediaRadioMetadata *)v4 setArtworkMetadata:artworkMetadata];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v16 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPiTunesMediaRadioMetadata;
  if ([(_BlastDoorLPiTunesMediaRadioMetadata *)&v15 isEqual:equalCopy])
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
      if (v7 | self->_storeFrontIdentifier && ![v7 isEqual:?] || (v8 = v6[3], v8 | self->_storeIdentifier) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[4], v9 | self->_name) && !objc_msgSend(v9, "isEqual:") || (v10 = v6[5], v10 | self->_curator) && !objc_msgSend(v10, "isEqual:") || (v11 = v6[6], v11 | self->_artwork) && !objc_msgSend(v11, "isEqual:"))
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