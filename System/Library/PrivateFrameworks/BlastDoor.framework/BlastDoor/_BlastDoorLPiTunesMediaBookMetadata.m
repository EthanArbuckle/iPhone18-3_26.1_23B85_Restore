@interface _BlastDoorLPiTunesMediaBookMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPiTunesMediaBookMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPiTunesMediaBookMetadata

- (_BlastDoorLPiTunesMediaBookMetadata)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _BlastDoorLPiTunesMediaBookMetadata;
  v5 = [(_BlastDoorLPiTunesMediaBookMetadata *)&v21 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"storeFrontIdentifier");
    v7 = *&v5->_hasSpineOnRight;
    *&v5->_hasSpineOnRight = v6;

    v8 = decodeStringForKey(v4, @"storeIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v8;

    v10 = decodeStringForKey(v4, @"name");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v10;

    v12 = decodeStringForKey(v4, @"author");
    name = v5->_name;
    v5->_name = v12;

    v14 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    author = v5->_author;
    v5->_author = v14;

    v16 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artwork = v5->_artwork;
    v5->_artwork = v16;

    *(&v5->super.__dummyPropertyForObservation + 1) = [v4 decodeBoolForKey:@"hasSpineOnRight"];
    v18 = v5;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *&self->_hasSpineOnRight;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:v4 forKey:@"storeFrontIdentifier"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_storeFrontIdentifier forKey:@"storeIdentifier"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_storeIdentifier forKey:@"name"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"author"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_author forKey:@"artwork"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artworkMetadata"];
  [v5 encodeBool:*(&self->super.__dummyPropertyForObservation + 1) forKey:@"hasSpineOnRight"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPiTunesMediaBookMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPiTunesMediaBookMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaBookMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(_BlastDoorLPiTunesMediaBookMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaBookMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(_BlastDoorLPiTunesMediaBookMetadata *)self name];
    [(_BlastDoorLPiTunesMediaBookMetadata *)v4 setName:v7];

    v8 = [(_BlastDoorLPiTunesMediaBookMetadata *)self author];
    [(_BlastDoorLPiTunesMediaBookMetadata *)v4 setAuthor:v8];

    v9 = [(_BlastDoorLPiTunesMediaBookMetadata *)self artwork];
    [(_BlastDoorLPiTunesMediaBookMetadata *)v4 setArtwork:v9];

    v10 = [(_BlastDoorLPiTunesMediaBookMetadata *)self artworkMetadata];
    [(_BlastDoorLPiTunesMediaBookMetadata *)v4 setArtworkMetadata:v10];

    [(_BlastDoorLPiTunesMediaBookMetadata *)v4 setHasSpineOnRight:[(_BlastDoorLPiTunesMediaBookMetadata *)self hasSpineOnRight]];
    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPiTunesMediaBookMetadata;
  if ([(_BlastDoorLPiTunesMediaBookMetadata *)&v15 isEqual:v4])
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