@interface BMPBNowPlayingEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsItemMediaSubtype:(id)a3;
- (int)StringAsItemMediaType:(id)a3;
- (int)StringAsPlaybackState:(id)a3;
- (int)itemMediaSubtype;
- (int)itemMediaType;
- (int)playbackState;
- (unint64_t)hash;
- (void)addOutputDevices:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasElapsed:(BOOL)a3;
- (void)setHasIsAirPlayVideo:(BOOL)a3;
- (void)setHasIsRemoteControl:(BOOL)a3;
- (void)setHasItemMediaSubtype:(BOOL)a3;
- (void)setHasItemMediaType:(BOOL)a3;
- (void)setHasPlaybackState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBNowPlayingEvent

- (int)playbackState
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_playbackState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPlaybackState:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsPlaybackState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Playing"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Paused"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Stopped"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Interrupted"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Seeking"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasElapsed:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsAirPlayVideo:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)addOutputDevices:(id)a3
{
  v4 = a3;
  outputDevices = self->_outputDevices;
  v8 = v4;
  if (!outputDevices)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_outputDevices;
    self->_outputDevices = v6;

    v4 = v8;
    outputDevices = self->_outputDevices;
  }

  [(NSMutableArray *)outputDevices addObject:v4];
}

- (void)setHasIsRemoteControl:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (int)itemMediaType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_itemMediaType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasItemMediaType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsItemMediaType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Audio"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Video"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)itemMediaSubtype
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_itemMediaSubtype;
  }

  else
  {
    return 0;
  }
}

- (void)setHasItemMediaSubtype:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsItemMediaSubtype:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Music"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TVShow"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Movie"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Podcast"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Audiobook"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ITunesU"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"HomeMedia"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBNowPlayingEvent;
  v4 = [(BMPBNowPlayingEvent *)&v8 description];
  v5 = [(BMPBNowPlayingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [v3 setObject:uniqueId forKey:@"uniqueId"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v4 setObject:v7 forKey:@"absoluteTimestamp"];

    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    playbackState = self->_playbackState;
    if (playbackState >= 6)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_playbackState];
    }

    else
    {
      v9 = *(&off_1E6E53290 + playbackState);
    }

    [v4 setObject:v9 forKey:@"playbackState"];
  }

  album = self->_album;
  if (album)
  {
    [v4 setObject:album forKey:@"album"];
  }

  artist = self->_artist;
  if (artist)
  {
    [v4 setObject:artist forKey:@"artist"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_duration];
    [v4 setObject:v12 forKey:@"duration"];
  }

  genre = self->_genre;
  if (genre)
  {
    [v4 setObject:genre forKey:@"genre"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_elapsed];
    [v4 setObject:v15 forKey:@"elapsed"];
  }

  mediaType = self->_mediaType;
  if (mediaType)
  {
    [v4 setObject:mediaType forKey:@"mediaType"];
  }

  iTunesStoreIdentifier = self->_iTunesStoreIdentifier;
  if (iTunesStoreIdentifier)
  {
    [v4 setObject:iTunesStoreIdentifier forKey:@"iTunesStoreIdentifier"];
  }

  iTunesSubscriptionIdentifier = self->_iTunesSubscriptionIdentifier;
  if (iTunesSubscriptionIdentifier)
  {
    [v4 setObject:iTunesSubscriptionIdentifier forKey:@"iTunesSubscriptionIdentifier"];
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAirPlayVideo];
    [v4 setObject:v19 forKey:@"isAirPlayVideo"];
  }

  if ([(NSMutableArray *)self->_outputDevices count])
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_outputDevices, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v21 = self->_outputDevices;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v40;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v23);
    }

    [v4 setObject:v20 forKey:@"outputDevices"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v4 setObject:bundleId forKey:@"bundleId"];
  }

  iTunesArtistIdentifier = self->_iTunesArtistIdentifier;
  if (iTunesArtistIdentifier)
  {
    [v4 setObject:iTunesArtistIdentifier forKey:@"iTunesArtistIdentifier"];
  }

  iTunesAlbumIdentifier = self->_iTunesAlbumIdentifier;
  if (iTunesAlbumIdentifier)
  {
    [v4 setObject:iTunesAlbumIdentifier forKey:@"iTunesAlbumIdentifier"];
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier)
  {
    [v4 setObject:groupIdentifier forKey:@"groupIdentifier"];
  }

  v31 = self->_has;
  if ((*&v31 & 0x80000000) == 0)
  {
    if ((*&v31 & 0x10) == 0)
    {
      goto LABEL_49;
    }

LABEL_52:
    itemMediaType = self->_itemMediaType;
    if (itemMediaType >= 3)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_itemMediaType];
    }

    else
    {
      v34 = *(&off_1E6E532C0 + itemMediaType);
    }

    [v4 setObject:v34 forKey:@"itemMediaType"];

    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

  v32 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRemoteControl];
  [v4 setObject:v32 forKey:@"isRemoteControl"];

  *&v31 = self->_has;
  if ((*&v31 & 0x10) != 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  if ((*&v31 & 8) != 0)
  {
LABEL_56:
    itemMediaSubtype = self->_itemMediaSubtype;
    if (itemMediaSubtype >= 8)
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_itemMediaSubtype];
    }

    else
    {
      v36 = *(&off_1E6E532D8 + itemMediaSubtype);
    }

    [v4 setObject:v36 forKey:@"itemMediaSubtype"];
  }

LABEL_60:
  v37 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    playbackState = self->_playbackState;
    PBDataWriterWriteInt32Field();
  }

  if (self->_album)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_artist)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    duration = self->_duration;
    PBDataWriterWriteUint32Field();
  }

  if (self->_genre)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    elapsed = self->_elapsed;
    PBDataWriterWriteUint32Field();
  }

  if (self->_mediaType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iTunesStoreIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iTunesSubscriptionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x40) != 0)
  {
    isAirPlayVideo = self->_isAirPlayVideo;
    PBDataWriterWriteBOOLField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = self->_outputDevices;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iTunesArtistIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iTunesAlbumIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_groupIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v17 = self->_has;
  if ((*&v17 & 0x80000000) == 0)
  {
    if ((*&v17 & 0x10) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  isRemoteControl = self->_isRemoteControl;
  PBDataWriterWriteBOOLField();
  *&v17 = self->_has;
  if ((*&v17 & 0x10) != 0)
  {
LABEL_44:
    itemMediaType = self->_itemMediaType;
    PBDataWriterWriteInt32Field();
    *&v17 = self->_has;
  }

LABEL_45:
  if ((*&v17 & 8) != 0)
  {
    itemMediaSubtype = self->_itemMediaSubtype;
    PBDataWriterWriteInt32Field();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_uniqueId)
  {
    [v4 setUniqueId:?];
    v4 = v12;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_absoluteTimestamp;
    *(v4 + 148) |= 1u;
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    *(v4 + 30) = self->_playbackState;
    *(v4 + 148) |= 0x20u;
  }

  if (self->_album)
  {
    [v12 setAlbum:?];
    v4 = v12;
  }

  if (self->_artist)
  {
    [v12 setArtist:?];
    v4 = v12;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 10) = self->_duration;
    *(v4 + 148) |= 2u;
  }

  if (self->_genre)
  {
    [v12 setGenre:?];
    v4 = v12;
  }

  if (self->_title)
  {
    [v12 setTitle:?];
    v4 = v12;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 11) = self->_elapsed;
    *(v4 + 148) |= 4u;
  }

  if (self->_mediaType)
  {
    [v12 setMediaType:?];
    v4 = v12;
  }

  if (self->_iTunesStoreIdentifier)
  {
    [v12 setITunesStoreIdentifier:?];
    v4 = v12;
  }

  if (self->_iTunesSubscriptionIdentifier)
  {
    [v12 setITunesSubscriptionIdentifier:?];
    v4 = v12;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    *(v4 + 144) = self->_isAirPlayVideo;
    *(v4 + 148) |= 0x40u;
  }

  if ([(BMPBNowPlayingEvent *)self outputDevicesCount])
  {
    [v12 clearOutputDevices];
    v6 = [(BMPBNowPlayingEvent *)self outputDevicesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(BMPBNowPlayingEvent *)self outputDevicesAtIndex:i];
        [v12 addOutputDevices:v9];
      }
    }
  }

  if (self->_bundleId)
  {
    [v12 setBundleId:?];
  }

  v10 = v12;
  if (self->_iTunesArtistIdentifier)
  {
    [v12 setITunesArtistIdentifier:?];
    v10 = v12;
  }

  if (self->_iTunesAlbumIdentifier)
  {
    [v12 setITunesAlbumIdentifier:?];
    v10 = v12;
  }

  if (self->_groupIdentifier)
  {
    [v12 setGroupIdentifier:?];
    v10 = v12;
  }

  v11 = self->_has;
  if ((*&v11 & 0x80000000) == 0)
  {
    if ((*&v11 & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v10[145] = self->_isRemoteControl;
  v10[148] |= 0x80u;
  *&v11 = self->_has;
  if ((*&v11 & 0x10) != 0)
  {
LABEL_41:
    *(v10 + 25) = self->_itemMediaType;
    v10[148] |= 0x10u;
    *&v11 = self->_has;
  }

LABEL_42:
  if ((*&v11 & 8) != 0)
  {
    *(v10 + 24) = self->_itemMediaSubtype;
    v10[148] |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueId copyWithZone:a3];
  v7 = *(v5 + 136);
  *(v5 + 136) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 148) |= 1u;
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    *(v5 + 120) = self->_playbackState;
    *(v5 + 148) |= 0x20u;
  }

  v9 = [(NSString *)self->_album copyWithZone:a3];
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  v11 = [(NSString *)self->_artist copyWithZone:a3];
  v12 = *(v5 + 24);
  *(v5 + 24) = v11;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_duration;
    *(v5 + 148) |= 2u;
  }

  v13 = [(NSString *)self->_genre copyWithZone:a3];
  v14 = *(v5 + 48);
  *(v5 + 48) = v13;

  v15 = [(NSString *)self->_title copyWithZone:a3];
  v16 = *(v5 + 128);
  *(v5 + 128) = v15;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 44) = self->_elapsed;
    *(v5 + 148) |= 4u;
  }

  v17 = [(NSString *)self->_mediaType copyWithZone:a3];
  v18 = *(v5 + 104);
  *(v5 + 104) = v17;

  v19 = [(NSString *)self->_iTunesStoreIdentifier copyWithZone:a3];
  v20 = *(v5 + 80);
  *(v5 + 80) = v19;

  v21 = [(NSString *)self->_iTunesSubscriptionIdentifier copyWithZone:a3];
  v22 = *(v5 + 88);
  *(v5 + 88) = v21;

  if ((*&self->_has & 0x40) != 0)
  {
    *(v5 + 144) = self->_isAirPlayVideo;
    *(v5 + 148) |= 0x40u;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v23 = self->_outputDevices;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v40 + 1) + 8 * i) copyWithZone:{a3, v40}];
        [v5 addOutputDevices:v28];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v25);
  }

  v29 = [(NSString *)self->_bundleId copyWithZone:a3];
  v30 = *(v5 + 32);
  *(v5 + 32) = v29;

  v31 = [(NSString *)self->_iTunesArtistIdentifier copyWithZone:a3];
  v32 = *(v5 + 72);
  *(v5 + 72) = v31;

  v33 = [(NSString *)self->_iTunesAlbumIdentifier copyWithZone:a3];
  v34 = *(v5 + 64);
  *(v5 + 64) = v33;

  v35 = [(NSString *)self->_groupIdentifier copyWithZone:a3];
  v36 = *(v5 + 56);
  *(v5 + 56) = v35;

  v37 = self->_has;
  if ((*&v37 & 0x80000000) == 0)
  {
    if ((*&v37 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  *(v5 + 145) = self->_isRemoteControl;
  *(v5 + 148) |= 0x80u;
  *&v37 = self->_has;
  if ((*&v37 & 0x10) != 0)
  {
LABEL_20:
    *(v5 + 100) = self->_itemMediaType;
    *(v5 + 148) |= 0x10u;
    *&v37 = self->_has;
  }

LABEL_21:
  if ((*&v37 & 8) != 0)
  {
    *(v5 + 96) = self->_itemMediaSubtype;
    *(v5 + 148) |= 8u;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(v4 + 17))
  {
    if (![(NSString *)uniqueId isEqual:?])
    {
      goto LABEL_56;
    }
  }

  v6 = *(v4 + 148);
  if (*&self->_has)
  {
    if ((*(v4 + 148) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_56;
    }
  }

  else if (*(v4 + 148))
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 148) & 0x20) == 0 || self->_playbackState != *(v4 + 30))
    {
      goto LABEL_56;
    }
  }

  else if ((*(v4 + 148) & 0x20) != 0)
  {
    goto LABEL_56;
  }

  album = self->_album;
  if (album | *(v4 + 2) && ![(NSString *)album isEqual:?])
  {
    goto LABEL_56;
  }

  artist = self->_artist;
  if (artist | *(v4 + 3))
  {
    if (![(NSString *)artist isEqual:?])
    {
      goto LABEL_56;
    }
  }

  v9 = *(v4 + 148);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 148) & 2) == 0 || self->_duration != *(v4 + 10))
    {
      goto LABEL_56;
    }
  }

  else if ((*(v4 + 148) & 2) != 0)
  {
    goto LABEL_56;
  }

  genre = self->_genre;
  if (genre | *(v4 + 6) && ![(NSString *)genre isEqual:?])
  {
    goto LABEL_56;
  }

  title = self->_title;
  if (title | *(v4 + 16))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_56;
    }
  }

  v12 = *(v4 + 148);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 148) & 4) == 0 || self->_elapsed != *(v4 + 11))
    {
      goto LABEL_56;
    }
  }

  else if ((*(v4 + 148) & 4) != 0)
  {
    goto LABEL_56;
  }

  mediaType = self->_mediaType;
  if (mediaType | *(v4 + 13) && ![(NSString *)mediaType isEqual:?])
  {
    goto LABEL_56;
  }

  iTunesStoreIdentifier = self->_iTunesStoreIdentifier;
  if (iTunesStoreIdentifier | *(v4 + 10))
  {
    if (![(NSString *)iTunesStoreIdentifier isEqual:?])
    {
      goto LABEL_56;
    }
  }

  iTunesSubscriptionIdentifier = self->_iTunesSubscriptionIdentifier;
  if (iTunesSubscriptionIdentifier | *(v4 + 11))
  {
    if (![(NSString *)iTunesSubscriptionIdentifier isEqual:?])
    {
      goto LABEL_56;
    }
  }

  v16 = *(v4 + 148);
  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 148) & 0x40) == 0)
    {
      goto LABEL_56;
    }

    v25 = *(v4 + 144);
    if (self->_isAirPlayVideo)
    {
      if ((*(v4 + 144) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(v4 + 144))
    {
      goto LABEL_56;
    }
  }

  else if ((*(v4 + 148) & 0x40) != 0)
  {
    goto LABEL_56;
  }

  outputDevices = self->_outputDevices;
  if (outputDevices | *(v4 + 14) && ![(NSMutableArray *)outputDevices isEqual:?])
  {
    goto LABEL_56;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 4))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_56;
    }
  }

  iTunesArtistIdentifier = self->_iTunesArtistIdentifier;
  if (iTunesArtistIdentifier | *(v4 + 9))
  {
    if (![(NSString *)iTunesArtistIdentifier isEqual:?])
    {
      goto LABEL_56;
    }
  }

  iTunesAlbumIdentifier = self->_iTunesAlbumIdentifier;
  if (iTunesAlbumIdentifier | *(v4 + 8))
  {
    if (![(NSString *)iTunesAlbumIdentifier isEqual:?])
    {
      goto LABEL_56;
    }
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier | *(v4 + 7))
  {
    if (![(NSString *)groupIdentifier isEqual:?])
    {
      goto LABEL_56;
    }
  }

  has = self->_has;
  if ((*&has & 0x80000000) != 0)
  {
    if ((*(v4 + 148) & 0x80) == 0)
    {
      goto LABEL_56;
    }

    v26 = *(v4 + 145);
    if (self->_isRemoteControl)
    {
      if ((*(v4 + 145) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(v4 + 145))
    {
      goto LABEL_56;
    }
  }

  else if ((*(v4 + 148) & 0x80) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((*(v4 + 148) & 0x10) == 0 || self->_itemMediaType != *(v4 + 25))
    {
      goto LABEL_56;
    }
  }

  else if ((*(v4 + 148) & 0x10) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 8) == 0)
  {
    v23 = (*(v4 + 148) & 8) == 0;
    goto LABEL_57;
  }

  if ((*(v4 + 148) & 8) != 0 && self->_itemMediaSubtype == *(v4 + 24))
  {
    v23 = 1;
    goto LABEL_57;
  }

LABEL_56:
  v23 = 0;
LABEL_57:

  return v23;
}

- (unint64_t)hash
{
  v30 = [(NSString *)self->_uniqueId hash];
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v3.i64 = floor(absoluteTimestamp + 0.5);
    v7 = (absoluteTimestamp - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v29 = v5;
  if ((*&self->_has & 0x20) != 0)
  {
    v28 = 2654435761 * self->_playbackState;
  }

  else
  {
    v28 = 0;
  }

  v27 = [(NSString *)self->_album hash];
  v26 = [(NSString *)self->_artist hash];
  if ((*&self->_has & 2) != 0)
  {
    v25 = 2654435761 * self->_duration;
  }

  else
  {
    v25 = 0;
  }

  v24 = [(NSString *)self->_genre hash];
  v23 = [(NSString *)self->_title hash];
  if ((*&self->_has & 4) != 0)
  {
    v22 = 2654435761 * self->_elapsed;
  }

  else
  {
    v22 = 0;
  }

  v21 = [(NSString *)self->_mediaType hash];
  v9 = [(NSString *)self->_iTunesStoreIdentifier hash];
  v10 = [(NSString *)self->_iTunesSubscriptionIdentifier hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v11 = 2654435761 * self->_isAirPlayVideo;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(NSMutableArray *)self->_outputDevices hash];
  v13 = [(NSString *)self->_bundleId hash];
  v14 = [(NSString *)self->_iTunesArtistIdentifier hash];
  v15 = [(NSString *)self->_iTunesAlbumIdentifier hash];
  v16 = [(NSString *)self->_groupIdentifier hash];
  if ((*&self->_has & 0x80) == 0)
  {
    v17 = 0;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    v18 = 2654435761 * self->_itemMediaType;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v19 = 0;
    return v29 ^ v30 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

  v17 = 2654435761 * self->_isRemoteControl;
  if ((*&self->_has & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v18 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v19 = 2654435761 * self->_itemMediaSubtype;
  return v29 ^ v30 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 17))
  {
    [(BMPBNowPlayingEvent *)self setUniqueId:?];
  }

  v5 = v4[148];
  if (v5)
  {
    self->_absoluteTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = v4[148];
  }

  if ((v5 & 0x20) != 0)
  {
    self->_playbackState = *(v4 + 30);
    *&self->_has |= 0x20u;
  }

  if (*(v4 + 2))
  {
    [(BMPBNowPlayingEvent *)self setAlbum:?];
  }

  if (*(v4 + 3))
  {
    [(BMPBNowPlayingEvent *)self setArtist:?];
  }

  if ((v4[148] & 2) != 0)
  {
    self->_duration = *(v4 + 10);
    *&self->_has |= 2u;
  }

  if (*(v4 + 6))
  {
    [(BMPBNowPlayingEvent *)self setGenre:?];
  }

  if (*(v4 + 16))
  {
    [(BMPBNowPlayingEvent *)self setTitle:?];
  }

  if ((v4[148] & 4) != 0)
  {
    self->_elapsed = *(v4 + 11);
    *&self->_has |= 4u;
  }

  if (*(v4 + 13))
  {
    [(BMPBNowPlayingEvent *)self setMediaType:?];
  }

  if (*(v4 + 10))
  {
    [(BMPBNowPlayingEvent *)self setITunesStoreIdentifier:?];
  }

  if (*(v4 + 11))
  {
    [(BMPBNowPlayingEvent *)self setITunesSubscriptionIdentifier:?];
  }

  if ((v4[148] & 0x40) != 0)
  {
    self->_isAirPlayVideo = v4[144];
    *&self->_has |= 0x40u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(v4 + 14);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BMPBNowPlayingEvent *)self addOutputDevices:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (*(v4 + 4))
  {
    [(BMPBNowPlayingEvent *)self setBundleId:?];
  }

  if (*(v4 + 9))
  {
    [(BMPBNowPlayingEvent *)self setITunesArtistIdentifier:?];
  }

  if (*(v4 + 8))
  {
    [(BMPBNowPlayingEvent *)self setITunesAlbumIdentifier:?];
  }

  if (*(v4 + 7))
  {
    [(BMPBNowPlayingEvent *)self setGroupIdentifier:?];
  }

  v11 = v4[148];
  if ((v11 & 0x80000000) == 0)
  {
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  self->_isRemoteControl = v4[145];
  *&self->_has |= 0x80u;
  LOBYTE(v11) = v4[148];
  if ((v11 & 0x10) != 0)
  {
LABEL_44:
    self->_itemMediaType = *(v4 + 25);
    *&self->_has |= 0x10u;
    LOBYTE(v11) = v4[148];
  }

LABEL_45:
  if ((v11 & 8) != 0)
  {
    self->_itemMediaSubtype = *(v4 + 24);
    *&self->_has |= 8u;
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end