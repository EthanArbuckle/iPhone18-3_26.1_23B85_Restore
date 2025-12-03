@interface _MRRemoteArtworkProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRRemoteArtworkProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRRemoteArtworkProtobuf;
  v4 = [(_MRRemoteArtworkProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRRemoteArtworkProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  type = self->_type;
  if (type)
  {
    [dictionary setObject:type forKey:@"type"];
  }

  artworkURLString = self->_artworkURLString;
  if (artworkURLString)
  {
    [v4 setObject:artworkURLString forKey:@"artworkURLString"];
  }

  artworkURLTemplateData = self->_artworkURLTemplateData;
  if (artworkURLTemplateData)
  {
    [v4 setObject:artworkURLTemplateData forKey:@"artworkURLTemplateData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_type)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_artworkURLString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_artworkURLTemplateData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_type)
  {
    [toCopy setType:?];
    toCopy = v5;
  }

  if (self->_artworkURLString)
  {
    [v5 setArtworkURLString:?];
    toCopy = v5;
  }

  if (self->_artworkURLTemplateData)
  {
    [v5 setArtworkURLTemplateData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_type copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_artworkURLString copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_artworkURLTemplateData copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((type = self->_type, !(type | equalCopy[3])) || -[NSString isEqual:](type, "isEqual:")) && ((artworkURLString = self->_artworkURLString, !(artworkURLString | equalCopy[1])) || -[NSString isEqual:](artworkURLString, "isEqual:")))
  {
    artworkURLTemplateData = self->_artworkURLTemplateData;
    if (artworkURLTemplateData | equalCopy[2])
    {
      v8 = [(NSData *)artworkURLTemplateData isEqual:?];
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
  v3 = [(NSString *)self->_type hash];
  v4 = [(NSString *)self->_artworkURLString hash]^ v3;
  return v4 ^ [(NSData *)self->_artworkURLTemplateData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(_MRRemoteArtworkProtobuf *)self setType:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(_MRRemoteArtworkProtobuf *)self setArtworkURLString:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(_MRRemoteArtworkProtobuf *)self setArtworkURLTemplateData:?];
    fromCopy = v5;
  }
}

@end