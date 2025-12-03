@interface _BlastDoorLPAppleMusicTVShowMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPAppleMusicTVShowMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPAppleMusicTVShowMetadata

- (_BlastDoorLPAppleMusicTVShowMetadata)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = _BlastDoorLPAppleMusicTVShowMetadata;
  v5 = [(_BlastDoorLPAppleMusicTVShowMetadata *)&v19 init];
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

    v12 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v12;

    v14 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v14;

    v16 = v5;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  storeFrontIdentifier = self->_storeFrontIdentifier;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"name"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPAppleMusicTVShowMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(_BlastDoorLPAppleMusicTVShowMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPAppleMusicTVShowMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(_BlastDoorLPAppleMusicTVShowMetadata *)self storeIdentifier];
    [(_BlastDoorLPAppleMusicTVShowMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(_BlastDoorLPAppleMusicTVShowMetadata *)self name];
    [(_BlastDoorLPAppleMusicTVShowMetadata *)v4 setName:name];

    artwork = [(_BlastDoorLPAppleMusicTVShowMetadata *)self artwork];
    [(_BlastDoorLPAppleMusicTVShowMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(_BlastDoorLPAppleMusicTVShowMetadata *)self artworkMetadata];
    [(_BlastDoorLPAppleMusicTVShowMetadata *)v4 setArtworkMetadata:artworkMetadata];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v15 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = _BlastDoorLPAppleMusicTVShowMetadata;
  if ([(_BlastDoorLPAppleMusicTVShowMetadata *)&v14 isEqual:equalCopy])
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
      if (v7 | self->_storeFrontIdentifier && ![v7 isEqual:?] || (v8 = v6[3], v8 | self->_storeIdentifier) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[4], v9 | self->_name) && !objc_msgSend(v9, "isEqual:") || (v10 = v6[5], v10 | self->_artwork) && !objc_msgSend(v10, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v11 = v6[6];
        if (v11 | self->_artworkMetadata)
        {
          v5 = [v11 isEqual:?];
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

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

@end