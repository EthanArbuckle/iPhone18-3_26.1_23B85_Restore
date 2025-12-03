@interface _MRPlaybackSessionProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRPlaybackSessionProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionProtobuf;
  v4 = [(_MRPlaybackSessionProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPlaybackSessionProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  playbackSessionData = self->_playbackSessionData;
  if (playbackSessionData)
  {
    [dictionary setObject:playbackSessionData forKey:@"playbackSessionData"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v4 setObject:identifier forKey:@"identifier"];
  }

  type = self->_type;
  if (type)
  {
    [v4 setObject:type forKey:@"type"];
  }

  revision = self->_revision;
  if (revision)
  {
    [v4 setObject:revision forKey:@"revision"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    [v4 setObject:metadata forKey:@"metadata"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_playbackSessionData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_revision)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_metadata)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_playbackSessionData)
  {
    [toCopy setPlaybackSessionData:?];
    toCopy = v5;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    toCopy = v5;
  }

  if (self->_type)
  {
    [v5 setType:?];
    toCopy = v5;
  }

  if (self->_revision)
  {
    [v5 setRevision:?];
    toCopy = v5;
  }

  if (self->_metadata)
  {
    [v5 setMetadata:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_playbackSessionData copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_type copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_revision copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSData *)self->_metadata copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((playbackSessionData = self->_playbackSessionData, !(playbackSessionData | equalCopy[3])) || -[NSData isEqual:](playbackSessionData, "isEqual:")) && ((identifier = self->_identifier, !(identifier | equalCopy[1])) || -[NSString isEqual:](identifier, "isEqual:")) && ((type = self->_type, !(type | equalCopy[5])) || -[NSString isEqual:](type, "isEqual:")) && ((revision = self->_revision, !(revision | equalCopy[4])) || -[NSString isEqual:](revision, "isEqual:")))
  {
    metadata = self->_metadata;
    if (metadata | equalCopy[2])
    {
      v10 = [(NSData *)metadata isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_playbackSessionData hash];
  v4 = [(NSString *)self->_identifier hash]^ v3;
  v5 = [(NSString *)self->_type hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_revision hash];
  return v6 ^ [(NSData *)self->_metadata hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    [(_MRPlaybackSessionProtobuf *)self setPlaybackSessionData:?];
  }

  if (fromCopy[1])
  {
    [(_MRPlaybackSessionProtobuf *)self setIdentifier:?];
  }

  if (fromCopy[5])
  {
    [(_MRPlaybackSessionProtobuf *)self setType:?];
  }

  if (fromCopy[4])
  {
    [(_MRPlaybackSessionProtobuf *)self setRevision:?];
  }

  if (fromCopy[2])
  {
    [(_MRPlaybackSessionProtobuf *)self setMetadata:?];
  }
}

@end