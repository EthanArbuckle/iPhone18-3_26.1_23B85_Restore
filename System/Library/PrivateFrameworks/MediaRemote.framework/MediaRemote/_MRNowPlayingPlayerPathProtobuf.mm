@interface _MRNowPlayingPlayerPathProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRNowPlayingPlayerPathProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRNowPlayingPlayerPathProtobuf;
  v4 = [(_MRNowPlayingPlayerPathProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRNowPlayingPlayerPathProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  origin = self->_origin;
  if (origin)
  {
    dictionaryRepresentation = [(_MROriginProtobuf *)origin dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"origin"];
  }

  client = self->_client;
  if (client)
  {
    dictionaryRepresentation2 = [(_MRNowPlayingClientProtobuf *)client dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"client"];
  }

  player = self->_player;
  if (player)
  {
    dictionaryRepresentation3 = [(_MRNowPlayingPlayerProtobuf *)player dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"player"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_origin)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_client)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_player)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_origin)
  {
    [toCopy setOrigin:?];
    toCopy = v5;
  }

  if (self->_client)
  {
    [v5 setClient:?];
    toCopy = v5;
  }

  if (self->_player)
  {
    [v5 setPlayer:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MROriginProtobuf *)self->_origin copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(_MRNowPlayingClientProtobuf *)self->_client copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(_MRNowPlayingPlayerProtobuf *)self->_player copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((origin = self->_origin, !(origin | equalCopy[2])) || -[_MROriginProtobuf isEqual:](origin, "isEqual:")) && ((client = self->_client, !(client | equalCopy[1])) || -[_MRNowPlayingClientProtobuf isEqual:](client, "isEqual:")))
  {
    player = self->_player;
    if (player | equalCopy[3])
    {
      v8 = [(_MRNowPlayingPlayerProtobuf *)player isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(_MROriginProtobuf *)self->_origin hash];
  v4 = [(_MRNowPlayingClientProtobuf *)self->_client hash]^ v3;
  return v4 ^ [(_MRNowPlayingPlayerProtobuf *)self->_player hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  origin = self->_origin;
  v6 = fromCopy[2];
  v11 = fromCopy;
  if (origin)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MROriginProtobuf *)origin mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)self setOrigin:?];
  }

  fromCopy = v11;
LABEL_7:
  client = self->_client;
  v8 = fromCopy[1];
  if (client)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRNowPlayingClientProtobuf *)client mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)self setClient:?];
  }

  fromCopy = v11;
LABEL_13:
  player = self->_player;
  v10 = fromCopy[3];
  if (player)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(_MRNowPlayingPlayerProtobuf *)player mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)self setPlayer:?];
  }

  fromCopy = v11;
LABEL_19:
}

@end