@interface _BlastDoorLPiTunesMediaSongMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPiTunesMediaSongMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPiTunesMediaSongMetadata

- (_BlastDoorLPiTunesMediaSongMetadata)initWithCoder:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = _BlastDoorLPiTunesMediaSongMetadata;
  v5 = [(_BlastDoorLPiTunesMediaSongMetadata *)&v31 init];
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

    v14 = decodeStringForKey(v4, @"album");
    album = v5->_album;
    v5->_album = v14;

    v16 = decodeStringForKey(v4, @"lyrics");
    lyrics = v5->_lyrics;
    v5->_lyrics = v16;

    v18 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v18;

    v20 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v20;

    v22 = decodeURLForKey(v4, @"previewURL");
    previewURL = v5->_previewURL;
    v5->_previewURL = v22;

    v24 = decodeArrayOfStringsForKey(v4);
    offers = v5->_offers;
    v5->_offers = v24;

    v26 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"lyricExcerpt"];
    lyricExcerpt = v5->_lyricExcerpt;
    v5->_lyricExcerpt = v26;

    v28 = v5;
  }

  v29 = *MEMORY[0x277D85DE8];
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
  [v5 _bd_lp_encodeObjectIfNotNil:self->_album forKey:@"album"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_lyrics forKey:@"lyrics"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [v5 _bd_lp_encodeURLIfNotNilOrLocalFile:self->_previewURL forKey:@"previewURL"];
  [v5 _bd_lp_encodeArrayIfNotEmpty:self->_offers forKey:@"offers"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_lyricExcerpt forKey:@"lyricExcerpt"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPiTunesMediaSongMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPiTunesMediaSongMetadata *)self storeFrontIdentifier];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(_BlastDoorLPiTunesMediaSongMetadata *)self storeIdentifier];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(_BlastDoorLPiTunesMediaSongMetadata *)self name];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setName:v7];

    v8 = [(_BlastDoorLPiTunesMediaSongMetadata *)self artist];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setArtist:v8];

    v9 = [(_BlastDoorLPiTunesMediaSongMetadata *)self album];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setAlbum:v9];

    v10 = [(_BlastDoorLPiTunesMediaSongMetadata *)self lyrics];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setLyrics:v10];

    v11 = [(_BlastDoorLPiTunesMediaSongMetadata *)self artwork];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setArtwork:v11];

    v12 = [(_BlastDoorLPiTunesMediaSongMetadata *)self artworkMetadata];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setArtworkMetadata:v12];

    v13 = [(_BlastDoorLPiTunesMediaSongMetadata *)self previewURL];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setPreviewURL:v13];

    v14 = [(_BlastDoorLPiTunesMediaSongMetadata *)self offers];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setOffers:v14];

    v15 = [(_BlastDoorLPiTunesMediaSongMetadata *)self lyricExcerpt];
    [(_BlastDoorLPiTunesMediaSongMetadata *)v4 setLyricExcerpt:v15];

    v16 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _BlastDoorLPiTunesMediaSongMetadata;
  if ([(_BlastDoorLPiTunesMediaSongMetadata *)&v20 isEqual:v4])
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
      if (v7 | self->_storeFrontIdentifier && ![v7 isEqual:?])
      {
        goto LABEL_27;
      }

      v8 = v6[3];
      if (v8 | self->_storeIdentifier)
      {
        if (![v8 isEqual:?])
        {
          goto LABEL_27;
        }
      }

      v9 = v6[4];
      if (v9 | self->_name)
      {
        if (![v9 isEqual:?])
        {
          goto LABEL_27;
        }
      }

      if ((v10 = v6[5], v10 | self->_artist) && ![v10 isEqual:?] || (v11 = v6[6], v11 | self->_album) && !objc_msgSend(v11, "isEqual:") || (v12 = v6[7], v12 | self->_lyrics) && !objc_msgSend(v12, "isEqual:") || (v13 = v6[8], v13 | self->_artwork) && !objc_msgSend(v13, "isEqual:") || (v14 = v6[9], v14 | self->_artworkMetadata) && !objc_msgSend(v14, "isEqual:") || (v15 = v6[10], v15 | self->_previewURL) && !objc_msgSend(v15, "isEqual:") || (v16 = v6[11], v16 | self->_offers) && !objc_msgSend(v16, "isEqual:"))
      {
LABEL_27:
        v5 = 0;
      }

      else
      {
        v17 = v6[12];
        if (v17 | self->_lyricExcerpt)
        {
          v5 = [v17 isEqual:?];
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

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

@end