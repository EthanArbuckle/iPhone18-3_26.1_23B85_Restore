@interface _BlastDoorLPiTunesMediaBookMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPiTunesMediaBookMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPiTunesMediaBookMetadata

- (_BlastDoorLPiTunesMediaBookMetadata)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _BlastDoorLPiTunesMediaBookMetadata;
  v5 = [(_BlastDoorLPiTunesMediaBookMetadata *)&v21 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"storeFrontIdentifier");
    v7 = *&v5->_hasSpineOnRight;
    *&v5->_hasSpineOnRight = v6;

    v8 = decodeStringForKey(coderCopy, @"storeIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v8;

    v10 = decodeStringForKey(coderCopy, @"name");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v10;

    v12 = decodeStringForKey(coderCopy, @"author");
    name = v5->_name;
    v5->_name = v12;

    v14 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    author = v5->_author;
    v5->_author = v14;

    v16 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artwork = v5->_artwork;
    v5->_artwork = v16;

    *(&v5->super.__dummyPropertyForObservation + 1) = [coderCopy decodeBoolForKey:@"hasSpineOnRight"];
    v18 = v5;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *&self->_hasSpineOnRight;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:v4 forKey:@"storeFrontIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_storeFrontIdentifier forKey:@"storeIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_storeIdentifier forKey:@"name"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"author"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_author forKey:@"artwork"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artworkMetadata"];
  [coderCopy encodeBool:*(&self->super.__dummyPropertyForObservation + 1) forKey:@"hasSpineOnRight"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPiTunesMediaBookMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(_BlastDoorLPiTunesMediaBookMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaBookMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(_BlastDoorLPiTunesMediaBookMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaBookMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(_BlastDoorLPiTunesMediaBookMetadata *)self name];
    [(_BlastDoorLPiTunesMediaBookMetadata *)v4 setName:name];

    author = [(_BlastDoorLPiTunesMediaBookMetadata *)self author];
    [(_BlastDoorLPiTunesMediaBookMetadata *)v4 setAuthor:author];

    artwork = [(_BlastDoorLPiTunesMediaBookMetadata *)self artwork];
    [(_BlastDoorLPiTunesMediaBookMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(_BlastDoorLPiTunesMediaBookMetadata *)self artworkMetadata];
    [(_BlastDoorLPiTunesMediaBookMetadata *)v4 setArtworkMetadata:artworkMetadata];

    [(_BlastDoorLPiTunesMediaBookMetadata *)v4 setHasSpineOnRight:[(_BlastDoorLPiTunesMediaBookMetadata *)self hasSpineOnRight]];
    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v16 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPiTunesMediaBookMetadata;
  if ([(_BlastDoorLPiTunesMediaBookMetadata *)&v15 isEqual:equalCopy])
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
      v5 = (!(v7 | *&self->_hasSpineOnRight) || [v7 isEqual:?]) && ((v8 = v6[3], !(v8 | self->_storeFrontIdentifier)) || objc_msgSend(v8, "isEqual:")) && ((v9 = v6[4], !(v9 | self->_storeIdentifier)) || objc_msgSend(v9, "isEqual:")) && ((v10 = v6[5], !(v10 | self->_name)) || objc_msgSend(v10, "isEqual:")) && ((v11 = v6[6], !(v11 | self->_author)) || objc_msgSend(v11, "isEqual:")) && ((v12 = v6[7], !(v12 | self->_artwork)) || objc_msgSend(v12, "isEqual:")) && *(v6 + 9) == *(&self->super.__dummyPropertyForObservation + 1);
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