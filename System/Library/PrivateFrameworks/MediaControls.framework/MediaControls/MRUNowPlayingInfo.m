@interface MRUNowPlayingInfo
- (BOOL)isEqual:(id)a3;
- (MRUNowPlayingInfo)initWithIdentifier:(id)a3 title:(id)a4 artist:(id)a5 album:(id)a6 radio:(id)a7 composer:(id)a8 attribution:(id)a9 placeholder:(id)a10 showPlaceholder:(BOOL)a11 isPlaying:(BOOL)a12 adamID:(id)a13 internationalStandardRecordingCode:(id)a14;
- (MRUNowPlayingInfo)initWithMPCResponse:(id)a3 placeholder:(id)a4;
- (MRUNowPlayingInfo)initWithMRResponse:(id)a3 placeholder:(id)a4;
- (id)description;
- (id)stringForComponents:(unint64_t)a3 separator:(id)a4;
@end

@implementation MRUNowPlayingInfo

- (MRUNowPlayingInfo)initWithMPCResponse:(id)a3 placeholder:(id)a4
{
  v5 = a3;
  v48 = a4;
  v6 = [v5 tracklist];
  v7 = [v6 playingItem];

  v8 = [v7 metadataObject];
  v9 = [v8 song];

  v10 = [v5 tracklist];
  v11 = [v10 items];
  v12 = [v11 firstSection];
  v13 = [v12 metadataObject];

  if ([v13 type] == 13)
  {
    v14 = [v13 radioStation];
  }

  else
  {
    v14 = 0;
  }

  v15 = MEMORY[0x1E696AD98];
  v16 = [v7 metadataObject];
  v17 = [v16 identifiers];
  v18 = [v17 universalStore];
  v45 = [v15 numberWithLongLong:{objc_msgSend(v18, "adamID")}];

  v19 = [v9 identifiers];
  v44 = [v19 vendorID];

  v20 = [v9 title];
  if ([v20 length] && objc_msgSend(v9, "isExplicitSong"))
  {
    v21 = [v7 explicitBadge];
    v22 = v21;
    if (!v21)
    {
      v22 = +[MRUStringsProvider explicitBadge];
    }

    v23 = [v20 stringByAppendingFormat:@" %@", v22];

    if (!v21)
    {
    }

    v20 = v23;
  }

  if ([v9 shouldShowComposer] && (objc_msgSend(v9, "composer"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "name"), v25 = objc_claimAutoreleasedReturnValue(), v25, v24, v25))
  {
    v26 = [v9 composer];
    v27 = [v26 name];
    v42 = [MRUStringsProvider composedBy:v27];
  }

  else
  {
    v42 = 0;
  }

  v49 = v13;
  v43 = v20;
  v41 = v5;
  v28 = [v5 state] == 2 || objc_msgSend(v5, "state") == 5;
  v29 = (v7 == 0) & ~v28;
  v37 = [v7 contentItemIdentifier];
  v38 = [v9 artist];
  v30 = [v38 name];
  v31 = [v9 album];
  v32 = [v31 title];
  [v14 name];
  v33 = v40 = v7;
  [v14 attributionLabel];
  v34 = v39 = v14;
  BYTE1(v36) = v28;
  LOBYTE(v36) = v29;
  v47 = [(MRUNowPlayingInfo *)self initWithIdentifier:v37 title:v43 artist:v30 album:v32 radio:v33 composer:v42 attribution:v34 placeholder:v48 showPlaceholder:v36 isPlaying:v45 adamID:v44 internationalStandardRecordingCode:?];

  return v47;
}

- (MRUNowPlayingInfo)initWithMRResponse:(id)a3 placeholder:(id)a4
{
  v5 = a3;
  v28 = a4;
  v6 = [v5 playbackQueue];
  v7 = [v6 contentItems];
  v8 = [v7 firstObject];

  v9 = [v8 metadata];
  v25 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v9, "iTunesStoreIdentifier")}];
  v24 = [v9 internationalStandardRecordingCode];
  v10 = [v9 title];
  if ([v10 length] && objc_msgSend(v9, "isExplicitItem"))
  {
    v11 = +[MRUStringsProvider explicitBadge];
    v12 = [v10 stringByAppendingFormat:@" %@", v11];

    v10 = v12;
  }

  v23 = v10;
  v13 = [v5 playbackState] == 1 || objc_msgSend(v5, "playbackState") == 5;
  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = !v13;
  }

  v15 = [v8 identifier];
  v16 = [v9 trackArtistName];
  v17 = [v9 albumName];
  [v9 radioStationName];
  v18 = v22 = v8;
  v19 = [v9 composer];
  BYTE1(v21) = v13;
  LOBYTE(v21) = v14;
  v27 = [(MRUNowPlayingInfo *)self initWithIdentifier:v15 title:v23 artist:v16 album:v17 radio:v18 composer:v19 attribution:0 placeholder:v28 showPlaceholder:v21 isPlaying:v25 adamID:v24 internationalStandardRecordingCode:?];

  return v27;
}

- (MRUNowPlayingInfo)initWithIdentifier:(id)a3 title:(id)a4 artist:(id)a5 album:(id)a6 radio:(id)a7 composer:(id)a8 attribution:(id)a9 placeholder:(id)a10 showPlaceholder:(BOOL)a11 isPlaying:(BOOL)a12 adamID:(id)a13 internationalStandardRecordingCode:(id)a14
{
  v19 = a3;
  v20 = a4;
  v47 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a13;
  v27 = a14;
  v48.receiver = self;
  v48.super_class = MRUNowPlayingInfo;
  v28 = [(MRUNowPlayingInfo *)&v48 init];
  if (v28)
  {
    v29 = [v19 copy];
    identifier = v28->_identifier;
    v28->_identifier = v29;

    v31 = [v20 copy];
    title = v28->_title;
    v28->_title = v31;

    v33 = [v47 copy];
    artist = v28->_artist;
    v28->_artist = v33;

    v35 = [v21 copy];
    album = v28->_album;
    v28->_album = v35;

    v37 = [v22 copy];
    radio = v28->_radio;
    v28->_radio = v37;

    v39 = [v23 copy];
    composer = v28->_composer;
    v28->_composer = v39;

    v41 = [v24 copy];
    attribution = v28->_attribution;
    v28->_attribution = v41;

    v43 = [v25 copy];
    placeholder = v28->_placeholder;
    v28->_placeholder = v43;

    v28->_showPlaceholder = a11;
    v28->_isPlaying = a12;
    objc_storeStrong(&v28->_adamID, a13);
    objc_storeStrong(&v28->_internationalStandardRecordingCode, a14);
  }

  return v28;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = @"No";
  if (self->_showPlaceholder)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  if (self->_isPlaying)
  {
    v5 = @"Yes";
  }

  return [v3 stringWithFormat:@"%@ title: %@ | artist: %@ | album: %@ | radio: %@ | composer: %@ | placeholder: %@ - %@ | playing: %@ | adamID: %@ | ISRC: %@", v4, *&self->_title, *&self->_album, self->_composer, self->_placeholder, v6, v5, self->_adamID, self->_internationalStandardRecordingCode];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRUNowPlayingInfo *)v5 identifier];
      v7 = v6;
      if (v6 == self->_identifier)
      {
        v8 = 1;
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];
      }

      v10 = [(MRUNowPlayingInfo *)v5 title];
      v11 = v10;
      if (v10 == self->_title)
      {
        v12 = 1;
      }

      else
      {
        v12 = [(NSString *)v10 isEqual:?];
      }

      v13 = v8 & v12;

      v14 = [(MRUNowPlayingInfo *)v5 artist];
      v15 = v14;
      if (v14 == self->_artist)
      {
        v16 = 1;
      }

      else
      {
        v16 = [(NSString *)v14 isEqual:?];
      }

      v17 = v13 & v16;

      v18 = [(MRUNowPlayingInfo *)v5 album];
      v19 = v18;
      if (v18 == self->_album)
      {
        v20 = 1;
      }

      else
      {
        v20 = [(NSString *)v18 isEqual:?];
      }

      v21 = v17 & v20;

      v22 = [(MRUNowPlayingInfo *)v5 radio];
      v23 = v22;
      if (v22 == self->_radio)
      {
        v24 = 1;
      }

      else
      {
        v24 = [(NSString *)v22 isEqual:?];
      }

      v25 = v21 & v24;

      v26 = [(MRUNowPlayingInfo *)v5 composer];
      v27 = v26;
      if (v26 == self->_composer)
      {
        v28 = 1;
      }

      else
      {
        v28 = [(NSString *)v26 isEqual:?];
      }

      v29 = v25 & v28;

      v30 = [(MRUNowPlayingInfo *)v5 attribution];
      v31 = v30;
      if (v30 == self->_attribution)
      {
        v32 = 1;
      }

      else
      {
        v32 = [(NSString *)v30 isEqual:?];
      }

      v33 = v29 & v32;

      v34 = [(MRUNowPlayingInfo *)v5 placeholder];
      v35 = v34;
      if (v34 == self->_placeholder)
      {
        v36 = 1;
      }

      else
      {
        v36 = [(NSString *)v34 isEqual:?];
      }

      v37 = v33 & v36;

      if (self->_showPlaceholder == [(MRUNowPlayingInfo *)v5 showPlaceholder])
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      if (self->_isPlaying == [(MRUNowPlayingInfo *)v5 isPlaying])
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v40 = [(MRUNowPlayingInfo *)v5 internationalStandardRecordingCode];
      v41 = v40;
      if (v40 == self->_internationalStandardRecordingCode)
      {
        v42 = 1;
      }

      else
      {
        v42 = [(NSString *)v40 isEqual:?];
      }

      v43 = v39 & v42;

      v44 = [(MRUNowPlayingInfo *)v5 adamID];
      v45 = v44;
      if (v44 == self->_adamID)
      {
        v46 = 1;
      }

      else
      {
        v46 = [(NSNumber *)v44 isEqual:?];
      }

      v9 = v43 & v46;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)stringForComponents:(unint64_t)a3 separator:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  if ((v4 & 1) != 0 && [(NSString *)self->_title length])
  {
    [v7 addObject:self->_title];
  }

  if ((v4 & 2) != 0 && [(NSString *)self->_artist length])
  {
    [v7 addObject:self->_artist];
  }

  if ((v4 & 4) != 0 && [(NSString *)self->_album length])
  {
    [v7 addObject:self->_album];
  }

  if ((v4 & 8) == 0 || ![(NSString *)self->_radio length])
  {
LABEL_16:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if ((~v4 & 0x3ALL) != 0)
  {
LABEL_15:
    [v7 addObject:self->_radio];
    goto LABEL_16;
  }

  radio = self->_radio;
  v9 = self->_title;
  v10 = v9;
  if (v9 != radio)
  {
    v11 = [(NSString *)v9 isEqual:radio];

    if (v11)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((v4 & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  if ([(NSString *)self->_composer length])
  {
    [v7 addObject:self->_composer];
  }

LABEL_19:
  if ((v4 & 0x20) != 0 && [(NSString *)self->_attribution length])
  {
    [v7 addObject:self->_attribution];
  }

  if ((v4 & 0x40) != 0)
  {
    [v7 firstObject];
  }

  else
  {
    [v7 componentsJoinedByString:v6];
  }
  v12 = ;

  return v12;
}

@end