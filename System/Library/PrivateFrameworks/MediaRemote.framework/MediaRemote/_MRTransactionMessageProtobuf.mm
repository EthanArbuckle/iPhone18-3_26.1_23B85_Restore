@interface _MRTransactionMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRTransactionMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRTransactionMessageProtobuf;
  v4 = [(_MRTransactionMessageProtobuf *)&v8 description];
  v5 = [(_MRTransactionMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_name];
    [v3 setObject:v4 forKey:@"name"];
  }

  packets = self->_packets;
  if (packets)
  {
    v6 = [(_MRTransactionPacketsProtobuf *)packets dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"packets"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    v8 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"playerPath"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    name = self->_name;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_packets)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_name;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_packets)
  {
    [v4 setPackets:?];
    v4 = v5;
  }

  if (self->_playerPath)
  {
    [v5 setPlayerPath:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_name;
    *(v5 + 32) |= 1u;
  }

  v7 = [(_MRTransactionPacketsProtobuf *)self->_packets copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_name != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  packets = self->_packets;
  if (packets | *(v4 + 2) && ![(_MRTransactionPacketsProtobuf *)packets isEqual:?])
  {
    goto LABEL_11;
  }

  playerPath = self->_playerPath;
  if (playerPath | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[4])
  {
    self->_name = v4[1];
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