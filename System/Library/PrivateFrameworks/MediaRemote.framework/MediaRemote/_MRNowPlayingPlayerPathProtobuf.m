@interface _MRNowPlayingPlayerPathProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRNowPlayingPlayerPathProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRNowPlayingPlayerPathProtobuf;
  v4 = [(_MRNowPlayingPlayerPathProtobuf *)&v8 description];
  v5 = [(_MRNowPlayingPlayerPathProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  origin = self->_origin;
  if (origin)
  {
    v5 = [(_MROriginProtobuf *)origin dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"origin"];
  }

  client = self->_client;
  if (client)
  {
    v7 = [(_MRNowPlayingClientProtobuf *)client dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"client"];
  }

  player = self->_player;
  if (player)
  {
    v9 = [(_MRNowPlayingPlayerProtobuf *)player dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"player"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_origin)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_client)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_player)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_origin)
  {
    [v4 setOrigin:?];
    v4 = v5;
  }

  if (self->_client)
  {
    [v5 setClient:?];
    v4 = v5;
  }

  if (self->_player)
  {
    [v5 setPlayer:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MROriginProtobuf *)self->_origin copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(_MRNowPlayingClientProtobuf *)self->_client copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(_MRNowPlayingPlayerProtobuf *)self->_player copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((origin = self->_origin, !(origin | v4[2])) || -[_MROriginProtobuf isEqual:](origin, "isEqual:")) && ((client = self->_client, !(client | v4[1])) || -[_MRNowPlayingClientProtobuf isEqual:](client, "isEqual:")))
  {
    player = self->_player;
    if (player | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  origin = self->_origin;
  v6 = v4[2];
  v11 = v4;
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

  v4 = v11;
LABEL_7:
  client = self->_client;
  v8 = v4[1];
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

  v4 = v11;
LABEL_13:
  player = self->_player;
  v10 = v4[3];
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

  v4 = v11;
LABEL_19:
}

@end