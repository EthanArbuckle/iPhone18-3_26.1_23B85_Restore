@interface _BlastDoorLPiTunesMediaAudioBookMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPiTunesMediaAudioBookMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPiTunesMediaAudioBookMetadata

- (_BlastDoorLPiTunesMediaAudioBookMetadata)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = _BlastDoorLPiTunesMediaAudioBookMetadata;
  v5 = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)&v25 init];
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

    v12 = decodeStringForKey(coderCopy, @"author");
    author = v5->_author;
    v5->_author = v12;

    v14 = decodeStringForKey(coderCopy, @"narrator");
    narrator = v5->_narrator;
    v5->_narrator = v14;

    v16 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v16;

    v18 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v18;

    v20 = decodeURLForKey(coderCopy, @"previewURL");
    previewURL = v5->_previewURL;
    v5->_previewURL = v20;

    v22 = v5;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  storeFrontIdentifier = self->_storeFrontIdentifier;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"name"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_author forKey:@"author"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_narrator forKey:@"narrator"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [coderCopy _bd_lp_encodeURLIfNotNilOrLocalFile:self->_previewURL forKey:@"previewURL"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPiTunesMediaAudioBookMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self name];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setName:name];

    author = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self author];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setAuthor:author];

    narrator = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self narrator];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setNarrator:narrator];

    previewURL = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self previewURL];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setPreviewURL:previewURL];

    artwork = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self artwork];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self artworkMetadata];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setArtworkMetadata:artworkMetadata];

    v13 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v18 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v17.receiver = self;
  v17.super_class = _BlastDoorLPiTunesMediaAudioBookMetadata;
  if ([(_BlastDoorLPiTunesMediaAudioBookMetadata *)&v17 isEqual:equalCopy])
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
      if (v7 | self->_storeFrontIdentifier && ![v7 isEqual:?] || (v8 = v6[3], v8 | self->_storeIdentifier) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[4], v9 | self->_name) && !objc_msgSend(v9, "isEqual:") || (v10 = v6[5], v10 | self->_author) && !objc_msgSend(v10, "isEqual:") || (v11 = v6[6], v11 | self->_narrator) && !objc_msgSend(v11, "isEqual:") || (v12 = v6[7], v12 | self->_artwork) && !objc_msgSend(v12, "isEqual:") || (v13 = v6[8], v13 | self->_artworkMetadata) && !objc_msgSend(v13, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v14 = v6[9];
        if (v14 | self->_previewURL)
        {
          v5 = [v14 isEqual:?];
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

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

@end