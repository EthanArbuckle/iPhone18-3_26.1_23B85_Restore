@interface MRUNowPlayingInfo
- (BOOL)isEqual:(id)equal;
- (MRUNowPlayingInfo)initWithIdentifier:(id)identifier title:(id)title artist:(id)artist album:(id)album radio:(id)radio composer:(id)composer attribution:(id)attribution placeholder:(id)self0 showPlaceholder:(BOOL)self1 isPlaying:(BOOL)self2 adamID:(id)self3 internationalStandardRecordingCode:(id)self4;
- (MRUNowPlayingInfo)initWithMPCResponse:(id)response placeholder:(id)placeholder;
- (MRUNowPlayingInfo)initWithMRResponse:(id)response placeholder:(id)placeholder;
- (id)description;
- (id)stringForComponents:(unint64_t)components separator:(id)separator;
@end

@implementation MRUNowPlayingInfo

- (MRUNowPlayingInfo)initWithMPCResponse:(id)response placeholder:(id)placeholder
{
  responseCopy = response;
  placeholderCopy = placeholder;
  tracklist = [responseCopy tracklist];
  playingItem = [tracklist playingItem];

  metadataObject = [playingItem metadataObject];
  song = [metadataObject song];

  tracklist2 = [responseCopy tracklist];
  items = [tracklist2 items];
  firstSection = [items firstSection];
  metadataObject2 = [firstSection metadataObject];

  if ([metadataObject2 type] == 13)
  {
    radioStation = [metadataObject2 radioStation];
  }

  else
  {
    radioStation = 0;
  }

  v15 = MEMORY[0x1E696AD98];
  metadataObject3 = [playingItem metadataObject];
  identifiers = [metadataObject3 identifiers];
  universalStore = [identifiers universalStore];
  v45 = [v15 numberWithLongLong:{objc_msgSend(universalStore, "adamID")}];

  identifiers2 = [song identifiers];
  vendorID = [identifiers2 vendorID];

  title = [song title];
  if ([title length] && objc_msgSend(song, "isExplicitSong"))
  {
    explicitBadge = [playingItem explicitBadge];
    v22 = explicitBadge;
    if (!explicitBadge)
    {
      v22 = +[MRUStringsProvider explicitBadge];
    }

    v23 = [title stringByAppendingFormat:@" %@", v22];

    if (!explicitBadge)
    {
    }

    title = v23;
  }

  if ([song shouldShowComposer] && (objc_msgSend(song, "composer"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "name"), v25 = objc_claimAutoreleasedReturnValue(), v25, v24, v25))
  {
    composer = [song composer];
    name = [composer name];
    v42 = [MRUStringsProvider composedBy:name];
  }

  else
  {
    v42 = 0;
  }

  v49 = metadataObject2;
  v43 = title;
  v41 = responseCopy;
  v28 = [responseCopy state] == 2 || objc_msgSend(responseCopy, "state") == 5;
  v29 = (playingItem == 0) & ~v28;
  contentItemIdentifier = [playingItem contentItemIdentifier];
  artist = [song artist];
  name2 = [artist name];
  album = [song album];
  title2 = [album title];
  [radioStation name];
  v33 = v40 = playingItem;
  [radioStation attributionLabel];
  v34 = v39 = radioStation;
  BYTE1(v36) = v28;
  LOBYTE(v36) = v29;
  v47 = [(MRUNowPlayingInfo *)self initWithIdentifier:contentItemIdentifier title:v43 artist:name2 album:title2 radio:v33 composer:v42 attribution:v34 placeholder:placeholderCopy showPlaceholder:v36 isPlaying:v45 adamID:vendorID internationalStandardRecordingCode:?];

  return v47;
}

- (MRUNowPlayingInfo)initWithMRResponse:(id)response placeholder:(id)placeholder
{
  responseCopy = response;
  placeholderCopy = placeholder;
  playbackQueue = [responseCopy playbackQueue];
  contentItems = [playbackQueue contentItems];
  firstObject = [contentItems firstObject];

  metadata = [firstObject metadata];
  v25 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(metadata, "iTunesStoreIdentifier")}];
  internationalStandardRecordingCode = [metadata internationalStandardRecordingCode];
  title = [metadata title];
  if ([title length] && objc_msgSend(metadata, "isExplicitItem"))
  {
    v11 = +[MRUStringsProvider explicitBadge];
    v12 = [title stringByAppendingFormat:@" %@", v11];

    title = v12;
  }

  v23 = title;
  v13 = [responseCopy playbackState] == 1 || objc_msgSend(responseCopy, "playbackState") == 5;
  if (metadata)
  {
    v14 = 0;
  }

  else
  {
    v14 = !v13;
  }

  identifier = [firstObject identifier];
  trackArtistName = [metadata trackArtistName];
  albumName = [metadata albumName];
  [metadata radioStationName];
  v18 = v22 = firstObject;
  composer = [metadata composer];
  BYTE1(v21) = v13;
  LOBYTE(v21) = v14;
  v27 = [(MRUNowPlayingInfo *)self initWithIdentifier:identifier title:v23 artist:trackArtistName album:albumName radio:v18 composer:composer attribution:0 placeholder:placeholderCopy showPlaceholder:v21 isPlaying:v25 adamID:internationalStandardRecordingCode internationalStandardRecordingCode:?];

  return v27;
}

- (MRUNowPlayingInfo)initWithIdentifier:(id)identifier title:(id)title artist:(id)artist album:(id)album radio:(id)radio composer:(id)composer attribution:(id)attribution placeholder:(id)self0 showPlaceholder:(BOOL)self1 isPlaying:(BOOL)self2 adamID:(id)self3 internationalStandardRecordingCode:(id)self4
{
  identifierCopy = identifier;
  titleCopy = title;
  artistCopy = artist;
  albumCopy = album;
  radioCopy = radio;
  composerCopy = composer;
  attributionCopy = attribution;
  placeholderCopy = placeholder;
  dCopy = d;
  codeCopy = code;
  v48.receiver = self;
  v48.super_class = MRUNowPlayingInfo;
  v28 = [(MRUNowPlayingInfo *)&v48 init];
  if (v28)
  {
    v29 = [identifierCopy copy];
    identifier = v28->_identifier;
    v28->_identifier = v29;

    v31 = [titleCopy copy];
    title = v28->_title;
    v28->_title = v31;

    v33 = [artistCopy copy];
    artist = v28->_artist;
    v28->_artist = v33;

    v35 = [albumCopy copy];
    album = v28->_album;
    v28->_album = v35;

    v37 = [radioCopy copy];
    radio = v28->_radio;
    v28->_radio = v37;

    v39 = [composerCopy copy];
    composer = v28->_composer;
    v28->_composer = v39;

    v41 = [attributionCopy copy];
    attribution = v28->_attribution;
    v28->_attribution = v41;

    v43 = [placeholderCopy copy];
    placeholder = v28->_placeholder;
    v28->_placeholder = v43;

    v28->_showPlaceholder = showPlaceholder;
    v28->_isPlaying = playing;
    objc_storeStrong(&v28->_adamID, d);
    objc_storeStrong(&v28->_internationalStandardRecordingCode, code);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(MRUNowPlayingInfo *)v5 identifier];
      v7 = identifier;
      if (identifier == self->_identifier)
      {
        v8 = 1;
      }

      else
      {
        v8 = [(NSString *)identifier isEqual:?];
      }

      title = [(MRUNowPlayingInfo *)v5 title];
      v11 = title;
      if (title == self->_title)
      {
        v12 = 1;
      }

      else
      {
        v12 = [(NSString *)title isEqual:?];
      }

      v13 = v8 & v12;

      artist = [(MRUNowPlayingInfo *)v5 artist];
      v15 = artist;
      if (artist == self->_artist)
      {
        v16 = 1;
      }

      else
      {
        v16 = [(NSString *)artist isEqual:?];
      }

      v17 = v13 & v16;

      album = [(MRUNowPlayingInfo *)v5 album];
      v19 = album;
      if (album == self->_album)
      {
        v20 = 1;
      }

      else
      {
        v20 = [(NSString *)album isEqual:?];
      }

      v21 = v17 & v20;

      radio = [(MRUNowPlayingInfo *)v5 radio];
      v23 = radio;
      if (radio == self->_radio)
      {
        v24 = 1;
      }

      else
      {
        v24 = [(NSString *)radio isEqual:?];
      }

      v25 = v21 & v24;

      composer = [(MRUNowPlayingInfo *)v5 composer];
      v27 = composer;
      if (composer == self->_composer)
      {
        v28 = 1;
      }

      else
      {
        v28 = [(NSString *)composer isEqual:?];
      }

      v29 = v25 & v28;

      attribution = [(MRUNowPlayingInfo *)v5 attribution];
      v31 = attribution;
      if (attribution == self->_attribution)
      {
        v32 = 1;
      }

      else
      {
        v32 = [(NSString *)attribution isEqual:?];
      }

      v33 = v29 & v32;

      placeholder = [(MRUNowPlayingInfo *)v5 placeholder];
      v35 = placeholder;
      if (placeholder == self->_placeholder)
      {
        v36 = 1;
      }

      else
      {
        v36 = [(NSString *)placeholder isEqual:?];
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

      internationalStandardRecordingCode = [(MRUNowPlayingInfo *)v5 internationalStandardRecordingCode];
      v41 = internationalStandardRecordingCode;
      if (internationalStandardRecordingCode == self->_internationalStandardRecordingCode)
      {
        v42 = 1;
      }

      else
      {
        v42 = [(NSString *)internationalStandardRecordingCode isEqual:?];
      }

      v43 = v39 & v42;

      adamID = [(MRUNowPlayingInfo *)v5 adamID];
      v45 = adamID;
      if (adamID == self->_adamID)
      {
        v46 = 1;
      }

      else
      {
        v46 = [(NSNumber *)adamID isEqual:?];
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

- (id)stringForComponents:(unint64_t)components separator:(id)separator
{
  componentsCopy = components;
  separatorCopy = separator;
  array = [MEMORY[0x1E695DF70] array];
  if ((componentsCopy & 1) != 0 && [(NSString *)self->_title length])
  {
    [array addObject:self->_title];
  }

  if ((componentsCopy & 2) != 0 && [(NSString *)self->_artist length])
  {
    [array addObject:self->_artist];
  }

  if ((componentsCopy & 4) != 0 && [(NSString *)self->_album length])
  {
    [array addObject:self->_album];
  }

  if ((componentsCopy & 8) == 0 || ![(NSString *)self->_radio length])
  {
LABEL_16:
    if ((componentsCopy & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if ((~componentsCopy & 0x3ALL) != 0)
  {
LABEL_15:
    [array addObject:self->_radio];
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

  if ((componentsCopy & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  if ([(NSString *)self->_composer length])
  {
    [array addObject:self->_composer];
  }

LABEL_19:
  if ((componentsCopy & 0x20) != 0 && [(NSString *)self->_attribution length])
  {
    [array addObject:self->_attribution];
  }

  if ((componentsCopy & 0x40) != 0)
  {
    [array firstObject];
  }

  else
  {
    [array componentsJoinedByString:separatorCopy];
  }
  v12 = ;

  return v12;
}

@end