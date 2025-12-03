@interface _MRTransactionMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRTransactionMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRTransactionMessageProtobuf;
  v4 = [(_MRTransactionMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRTransactionMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_name];
    [dictionary setObject:v4 forKey:@"name"];
  }

  packets = self->_packets;
  if (packets)
  {
    dictionaryRepresentation = [(_MRTransactionPacketsProtobuf *)packets dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"packets"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    dictionaryRepresentation2 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"playerPath"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    name = self->_name;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_packets)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_name;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_packets)
  {
    [toCopy setPackets:?];
    toCopy = v5;
  }

  if (self->_playerPath)
  {
    [v5 setPlayerPath:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_name;
    *(v5 + 32) |= 1u;
  }

  v7 = [(_MRTransactionPacketsProtobuf *)self->_packets copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_name != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  packets = self->_packets;
  if (packets | *(equalCopy + 2) && ![(_MRTransactionPacketsProtobuf *)packets isEqual:?])
  {
    goto LABEL_11;
  }

  playerPath = self->_playerPath;
  if (playerPath | *(equalCopy + 3))
  {
    v8 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_name;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_MRTransactionPacketsProtobuf *)self->_packets hash]^ v3;
  return v4 ^ [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[4])
  {
    self->_name = fromCopy[1];
    *&self->_has |= 1u;
  }

  packets = self->_packets;
  v7 = v5[2];
  v10 = v5;
  if (packets)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(_MRTransactionPacketsProtobuf *)packets mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(_MRTransactionMessageProtobuf *)self setPackets:?];
  }

  v5 = v10;
LABEL_9:
  playerPath = self->_playerPath;
  v9 = v5[3];
  if (playerPath)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(_MRTransactionMessageProtobuf *)self setPlayerPath:?];
  }

  v5 = v10;
LABEL_15:
}

@end