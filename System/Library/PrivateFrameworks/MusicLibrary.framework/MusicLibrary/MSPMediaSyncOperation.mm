@interface MSPMediaSyncOperation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)operationTypeAsString:(int)string;
- (int)StringAsOperationType:(id)type;
- (int)operationType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPMediaSyncOperation

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 80))
  {
    self->_operationType = *(fromCopy + 14);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_operationType != *(equalCopy + 14))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 80))
  {
LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  multiverseId = self->_multiverseId;
  if (multiverseId | *(equalCopy + 6) && ![(MIPMultiverseIdentifier *)multiverseId isEqual:?])
  {
    goto LABEL_23;
  }

  artist = self->_artist;
  if (artist | *(equalCopy + 2))
  {
    if (![(MIPArtist *)artist isEqual:?])
    {
      goto LABEL_23;
    }
  }

  album = self->_album;
  if (album | *(equalCopy + 1))
  {
    if (![(MIPAlbum *)album isEqual:?])
    {
      goto LABEL_23;
    }
  }

  genre = self->_genre;
  if (genre | *(equalCopy + 3))
  {
    if (![(MIPGenre *)genre isEqual:?])
    {
      goto LABEL_23;
    }
  }

  series = self->_series;
  if (series | *(equalCopy + 9))
  {
    if (![(MIPSeries *)series isEqual:?])
    {
      goto LABEL_23;
    }
  }

  mediaItem = self->_mediaItem;
  if (mediaItem | *(equalCopy + 5))
  {
    if (![(MIPMediaItem *)mediaItem isEqual:?])
    {
      goto LABEL_23;
    }
  }

  playlist = self->_playlist;
  if (playlist | *(equalCopy + 8))
  {
    if (![(MIPPlaylist *)playlist isEqual:?])
    {
      goto LABEL_23;
    }
  }

  libraryPin = self->_libraryPin;
  if (libraryPin | *(equalCopy + 4))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 56) = self->_operationType;
    *(v5 + 80) |= 1u;
  }

  v7 = [(MIPMultiverseIdentifier *)self->_multiverseId copyWithZone:zone];
  v8 = v6[6];
  v6[6] = v7;

  v9 = [(MIPArtist *)self->_artist copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(MIPAlbum *)self->_album copyWithZone:zone];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(MIPGenre *)self->_genre copyWithZone:zone];
  v14 = v6[3];
  v6[3] = v13;

  v15 = [(MIPSeries *)self->_series copyWithZone:zone];
  v16 = v6[9];
  v6[9] = v15;

  v17 = [(MIPMediaItem *)self->_mediaItem copyWithZone:zone];
  v18 = v6[5];
  v6[5] = v17;

  v19 = [(MIPPlaylist *)self->_playlist copyWithZone:zone];
  v20 = v6[8];
  v6[8] = v19;

  v21 = [(MIPLibraryPin *)self->_libraryPin copyWithZone:zone];
  v22 = v6[4];
  v6[4] = v21;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[14] = self->_operationType;
    *(toCopy + 80) |= 1u;
  }

  v5 = toCopy;
  if (self->_multiverseId)
  {
    [toCopy setMultiverseId:?];
    toCopy = v5;
  }

  if (self->_artist)
  {
    [v5 setArtist:?];
    toCopy = v5;
  }

  if (self->_album)
  {
    [v5 setAlbum:?];
    toCopy = v5;
  }

  if (self->_genre)
  {
    [v5 setGenre:?];
    toCopy = v5;
  }

  if (self->_series)
  {
    [v5 setSeries:?];
    toCopy = v5;
  }

  if (self->_mediaItem)
  {
    [v5 setMediaItem:?];
    toCopy = v5;
  }

  if (self->_playlist)
  {
    [v5 setPlaylist:?];
    toCopy = v5;
  }

  if (self->_libraryPin)
  {
    [v5 setLibraryPin:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_multiverseId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_artist)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_album)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_genre)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_series)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_mediaItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_playlist)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_libraryPin)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

    [dictionary setObject:v5 forKey:@"operationType"];
  }

  multiverseId = self->_multiverseId;
  if (multiverseId)
  {
    dictionaryRepresentation = [(MIPMultiverseIdentifier *)multiverseId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"multiverseId"];
  }

  artist = self->_artist;
  if (artist)
  {
    dictionaryRepresentation2 = [(MIPArtist *)artist dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"artist"];
  }

  album = self->_album;
  if (album)
  {
    dictionaryRepresentation3 = [(MIPAlbum *)album dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"album"];
  }

  genre = self->_genre;
  if (genre)
  {
    dictionaryRepresentation4 = [(MIPGenre *)genre dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"genre"];
  }

  series = self->_series;
  if (series)
  {
    dictionaryRepresentation5 = [(MIPSeries *)series dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"series"];
  }

  mediaItem = self->_mediaItem;
  if (mediaItem)
  {
    dictionaryRepresentation6 = [(MIPMediaItem *)mediaItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"mediaItem"];
  }

  playlist = self->_playlist;
  if (playlist)
  {
    dictionaryRepresentation7 = [(MIPPlaylist *)playlist dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"playlist"];
  }

  libraryPin = self->_libraryPin;
  if (libraryPin)
  {
    dictionaryRepresentation8 = [(MIPLibraryPin *)libraryPin dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"libraryPin"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPMediaSyncOperation;
  v4 = [(MSPMediaSyncOperation *)&v8 description];
  dictionaryRepresentation = [(MSPMediaSyncOperation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsOperationType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Add"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Update"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Delete"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)operationTypeAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_278763AD8[string - 1];
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