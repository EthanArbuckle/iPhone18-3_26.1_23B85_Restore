@interface MSPMediaSyncOperation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)operationTypeAsString:(int)a3;
- (int)StringAsOperationType:(id)a3;
- (int)operationType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPMediaSyncOperation

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 80))
  {
    self->_operationType = *(v4 + 14);
    *&self->_has |= 1u;
  }

  multiverseId = self->_multiverseId;
  v7 = v5[6];
  v22 = v5;
  if (multiverseId)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(MIPMultiverseIdentifier *)multiverseId mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(MSPMediaSyncOperation *)self setMultiverseId:?];
  }

  v5 = v22;
LABEL_9:
  artist = self->_artist;
  v9 = v5[2];
  if (artist)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(MIPArtist *)artist mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(MSPMediaSyncOperation *)self setArtist:?];
  }

  v5 = v22;
LABEL_15:
  album = self->_album;
  v11 = v5[1];
  if (album)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(MIPAlbum *)album mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(MSPMediaSyncOperation *)self setAlbum:?];
  }

  v5 = v22;
LABEL_21:
  genre = self->_genre;
  v13 = v5[3];
  if (genre)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(MIPGenre *)genre mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(MSPMediaSyncOperation *)self setGenre:?];
  }

  v5 = v22;
LABEL_27:
  series = self->_series;
  v15 = v5[9];
  if (series)
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(MIPSeries *)series mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(MSPMediaSyncOperation *)self setSeries:?];
  }

  v5 = v22;
LABEL_33:
  mediaItem = self->_mediaItem;
  v17 = v5[5];
  if (mediaItem)
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    [(MIPMediaItem *)mediaItem mergeFrom:?];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    [(MSPMediaSyncOperation *)self setMediaItem:?];
  }

  v5 = v22;
LABEL_39:
  playlist = self->_playlist;
  v19 = v5[8];
  if (playlist)
  {
    if (!v19)
    {
      goto LABEL_45;
    }

    [(MIPPlaylist *)playlist mergeFrom:?];
  }

  else
  {
    if (!v19)
    {
      goto LABEL_45;
    }

    [(MSPMediaSyncOperation *)self setPlaylist:?];
  }

  v5 = v22;
LABEL_45:
  libraryPin = self->_libraryPin;
  v21 = v5[4];
  if (libraryPin)
  {
    if (!v21)
    {
      goto LABEL_51;
    }

    libraryPin = [(MIPLibraryPin *)libraryPin mergeFrom:?];
  }

  else
  {
    if (!v21)
    {
      goto LABEL_51;
    }

    libraryPin = [(MSPMediaSyncOperation *)self setLibraryPin:?];
  }

  v5 = v22;
LABEL_51:

  MEMORY[0x2821F96F8](libraryPin, v5);
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_operationType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(MIPMultiverseIdentifier *)self->_multiverseId hash]^ v3;
  v5 = [(MIPArtist *)self->_artist hash];
  v6 = v4 ^ v5 ^ [(MIPAlbum *)self->_album hash];
  v7 = [(MIPGenre *)self->_genre hash];
  v8 = v7 ^ [(MIPSeries *)self->_series hash];
  v9 = v6 ^ v8 ^ [(MIPMediaItem *)self->_mediaItem hash];
  v10 = [(MIPPlaylist *)self->_playlist hash];
  return v9 ^ v10 ^ [(MIPLibraryPin *)self->_libraryPin hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_operationType != *(v4 + 14))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 80))
  {
LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  multiverseId = self->_multiverseId;
  if (multiverseId | *(v4 + 6) && ![(MIPMultiverseIdentifier *)multiverseId isEqual:?])
  {
    goto LABEL_23;
  }

  artist = self->_artist;
  if (artist | *(v4 + 2))
  {
    if (![(MIPArtist *)artist isEqual:?])
    {
      goto LABEL_23;
    }
  }

  album = self->_album;
  if (album | *(v4 + 1))
  {
    if (![(MIPAlbum *)album isEqual:?])
    {
      goto LABEL_23;
    }
  }

  genre = self->_genre;
  if (genre | *(v4 + 3))
  {
    if (![(MIPGenre *)genre isEqual:?])
    {
      goto LABEL_23;
    }
  }

  series = self->_series;
  if (series | *(v4 + 9))
  {
    if (![(MIPSeries *)series isEqual:?])
    {
      goto LABEL_23;
    }
  }

  mediaItem = self->_mediaItem;
  if (mediaItem | *(v4 + 5))
  {
    if (![(MIPMediaItem *)mediaItem isEqual:?])
    {
      goto LABEL_23;
    }
  }

  playlist = self->_playlist;
  if (playlist | *(v4 + 8))
  {
    if (![(MIPPlaylist *)playlist isEqual:?])
    {
      goto LABEL_23;
    }
  }

  libraryPin = self->_libraryPin;
  if (libraryPin | *(v4 + 4))
  {
    v13 = [(MIPLibraryPin *)libraryPin isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_24:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 56) = self->_operationType;
    *(v5 + 80) |= 1u;
  }

  v7 = [(MIPMultiverseIdentifier *)self->_multiverseId copyWithZone:a3];
  v8 = v6[6];
  v6[6] = v7;

  v9 = [(MIPArtist *)self->_artist copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(MIPAlbum *)self->_album copyWithZone:a3];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(MIPGenre *)self->_genre copyWithZone:a3];
  v14 = v6[3];
  v6[3] = v13;

  v15 = [(MIPSeries *)self->_series copyWithZone:a3];
  v16 = v6[9];
  v6[9] = v15;

  v17 = [(MIPMediaItem *)self->_mediaItem copyWithZone:a3];
  v18 = v6[5];
  v6[5] = v17;

  v19 = [(MIPPlaylist *)self->_playlist copyWithZone:a3];
  v20 = v6[8];
  v6[8] = v19;

  v21 = [(MIPLibraryPin *)self->_libraryPin copyWithZone:a3];
  v22 = v6[4];
  v6[4] = v21;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[14] = self->_operationType;
    *(v4 + 80) |= 1u;
  }

  v5 = v4;
  if (self->_multiverseId)
  {
    [v4 setMultiverseId:?];
    v4 = v5;
  }

  if (self->_artist)
  {
    [v5 setArtist:?];
    v4 = v5;
  }

  if (self->_album)
  {
    [v5 setAlbum:?];
    v4 = v5;
  }

  if (self->_genre)
  {
    [v5 setGenre:?];
    v4 = v5;
  }

  if (self->_series)
  {
    [v5 setSeries:?];
    v4 = v5;
  }

  if (self->_mediaItem)
  {
    [v5 setMediaItem:?];
    v4 = v5;
  }

  if (self->_playlist)
  {
    [v5 setPlaylist:?];
    v4 = v5;
  }

  if (self->_libraryPin)
  {
    [v5 setLibraryPin:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_multiverseId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_artist)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_album)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_genre)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_series)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_mediaItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_playlist)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_libraryPin)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = self->_operationType - 1;
    if (v4 >= 3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_operationType];
    }

    else
    {
      v5 = off_278763AD8[v4];
    }

    [v3 setObject:v5 forKey:@"operationType"];
  }

  multiverseId = self->_multiverseId;
  if (multiverseId)
  {
    v7 = [(MIPMultiverseIdentifier *)multiverseId dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"multiverseId"];
  }

  artist = self->_artist;
  if (artist)
  {
    v9 = [(MIPArtist *)artist dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"artist"];
  }

  album = self->_album;
  if (album)
  {
    v11 = [(MIPAlbum *)album dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"album"];
  }

  genre = self->_genre;
  if (genre)
  {
    v13 = [(MIPGenre *)genre dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"genre"];
  }

  series = self->_series;
  if (series)
  {
    v15 = [(MIPSeries *)series dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"series"];
  }

  mediaItem = self->_mediaItem;
  if (mediaItem)
  {
    v17 = [(MIPMediaItem *)mediaItem dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"mediaItem"];
  }

  playlist = self->_playlist;
  if (playlist)
  {
    v19 = [(MIPPlaylist *)playlist dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"playlist"];
  }

  libraryPin = self->_libraryPin;
  if (libraryPin)
  {
    v21 = [(MIPLibraryPin *)libraryPin dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"libraryPin"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPMediaSyncOperation;
  v4 = [(MSPMediaSyncOperation *)&v8 description];
  v5 = [(MSPMediaSyncOperation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsOperationType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Add"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Update"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Delete"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)operationTypeAsString:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_278763AD8[a3 - 1];
  }

  return v4;
}

- (int)operationType
{
  if (*&self->_has)
  {
    return self->_operationType;
  }

  else
  {
    return 1;
  }
}

@end