@interface _MRMusicHandoffSessionProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRMusicHandoffSessionProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRMusicHandoffSessionProtobuf;
  v4 = [(_MRMusicHandoffSessionProtobuf *)&v8 description];
  v5 = [(_MRMusicHandoffSessionProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  sourcePlayerPath = self->_sourcePlayerPath;
  if (sourcePlayerPath)
  {
    v7 = [(_MRNowPlayingPlayerPathProtobuf *)sourcePlayerPath dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"sourcePlayerPath"];
  }

  destinationPlayerPath = self->_destinationPlayerPath;
  if (destinationPlayerPath)
  {
    v9 = [(_MRNowPlayingPlayerPathProtobuf *)destinationPlayerPath dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"destinationPlayerPath"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_sourcePlayerPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_destinationPlayerPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (self->_sourcePlayerPath)
  {
    [v5 setSourcePlayerPath:?];
    v4 = v5;
  }

  if (self->_destinationPlayerPath)
  {
    [v5 setDestinationPlayerPath:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(_MRNowPlayingPlayerPathProtobuf *)self->_sourcePlayerPath copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(_MRNowPlayingPlayerPathProtobuf *)self->_destinationPlayerPath copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[2])) || -[NSString isEqual:](identifier, "isEqual:")) && ((sourcePlayerPath = self->_sourcePlayerPath, !(sourcePlayerPath | v4[3])) || -[_MRNowPlayingPlayerPathProtobuf isEqual:](sourcePlayerPath, "isEqual:")))
  {
    destinationPlayerPath = self->_destinationPlayerPath;
    if (destinationPlayerPath | v4[1])
    {
      v8 = [(_MRNowPlayingPlayerPathProtobuf *)destinationPlayerPath isEqual:?];
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
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(_MRNowPlayingPlayerPathProtobuf *)self->_sourcePlayerPath hash]^ v3;
  return v4 ^ [(_MRNowPlayingPlayerPathProtobuf *)self->_destinationPlayerPath hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4[2])
  {
    [(_MRMusicHandoffSessionProtobuf *)self setIdentifier:?];
    v4 = v9;
  }

  sourcePlayerPath = self->_sourcePlayerPath;
  v6 = v4[3];
  if (sourcePlayerPath)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)sourcePlayerPath mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(_MRMusicHandoffSessionProtobuf *)self setSourcePlayerPath:?];
  }

  v4 = v9;
LABEL_9:
  destinationPlayerPath = self->_destinationPlayerPath;
  v8 = v4[1];
  if (destinationPlayerPath)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)destinationPlayerPath mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(_MRMusicHandoffSessionProtobuf *)self setDestinationPlayerPath:?];
  }

  v4 = v9;
LABEL_15:
}

@end