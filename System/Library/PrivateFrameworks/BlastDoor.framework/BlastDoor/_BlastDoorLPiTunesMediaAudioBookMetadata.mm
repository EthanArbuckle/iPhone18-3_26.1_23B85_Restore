@interface _BlastDoorLPiTunesMediaAudioBookMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPiTunesMediaAudioBookMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPiTunesMediaAudioBookMetadata

- (_BlastDoorLPiTunesMediaAudioBookMetadata)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = _BlastDoorLPiTunesMediaAudioBookMetadata;
  v5 = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)&v25 init];
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

    v12 = decodeStringForKey(v4, @"author");
    author = v5->_author;
    v5->_author = v12;

    v14 = decodeStringForKey(v4, @"narrator");
    narrator = v5->_narrator;
    v5->_narrator = v14;

    v16 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v16;

    v18 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v18;

    v20 = decodeURLForKey(v4, @"previewURL");
    previewURL = v5->_previewURL;
    v5->_previewURL = v20;

    v22 = v5;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  storeFrontIdentifier = self->_storeFrontIdentifier;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"name"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_author forKey:@"author"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_narrator forKey:@"narrator"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [v5 _bd_lp_encodeURLIfNotNilOrLocalFile:self->_previewURL forKey:@"previewURL"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPiTunesMediaAudioBookMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self name];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setName:v7];

    v8 = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self author];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setAuthor:v8];

    v9 = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self narrator];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setNarrator:v9];

    v10 = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self previewURL];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setPreviewURL:v10];

    v11 = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self artwork];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setArtwork:v11];

    v12 = [(_BlastDoorLPiTunesMediaAudioBookMetadata *)self artworkMetadata];
    [(_BlastDoorLPiTunesMediaAudioBookMetadata *)v4 setArtworkMetadata:v12];

    v13 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _BlastDoorLPiTunesMediaAudioBookMetadata;
  if ([(_BlastDoorLPiTunesMediaAudioBookMetadata *)&v17 isEqual:v4])
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