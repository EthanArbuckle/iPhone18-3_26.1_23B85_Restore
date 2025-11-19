@interface _MRPlaybackSessionProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRPlaybackSessionProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionProtobuf;
  v4 = [(_MRPlaybackSessionProtobuf *)&v8 description];
  v5 = [(_MRPlaybackSessionProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  playbackSessionData = self->_playbackSessionData;
  if (playbackSessionData)
  {
    [v3 setObject:playbackSessionData forKey:@"playbackSessionData"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_playbackSessionData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_revision)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_metadata)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_playbackSessionData)
  {
    [v4 setPlaybackSessionData:?];
    v4 = v5;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    v4 = v5;
  }

  if (self->_type)
  {
    [v5 setType:?];
    v4 = v5;
  }

  if (self->_revision)
  {
    [v5 setRevision:?];
    v4 = v5;
  }

  if (self->_metadata)
  {
    [v5 setMetadata:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_playbackSessionData copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_type copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_revision copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSData *)self->_metadata copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((playbackSessionData = self->_playbackSessionData, !(playbackSessionData | v4[3])) || -[NSData isEqual:](playbackSessionData, "isEqual:")) && ((identifier = self->_identifier, !(identifier | v4[1])) || -[NSString isEqual:](identifier, "isEqual:")) && ((type = self->_type, !(type | v4[5])) || -[NSString isEqual:](type, "isEqual:")) && ((revision = self->_revision, !(revision | v4[4])) || -[NSString isEqual:](revision, "isEqual:")))
  {
    metadata = self->_metadata;
    if (metadata | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[3])
  {
    [(_MRPlaybackSessionProtobuf *)self setPlaybackSessionData:?];
  }

  if (v4[1])
  {
    [(_MRPlaybackSessionProtobuf *)self setIdentifier:?];
  }

  if (v4[5])
  {
    [(_MRPlaybackSessionProtobuf *)self setType:?];
  }

  if (v4[4])
  {
    [(_MRPlaybackSessionProtobuf *)self setRevision:?];
  }

  if (v4[2])
  {
    [(_MRPlaybackSessionProtobuf *)self setMetadata:?];
  }
}

@end