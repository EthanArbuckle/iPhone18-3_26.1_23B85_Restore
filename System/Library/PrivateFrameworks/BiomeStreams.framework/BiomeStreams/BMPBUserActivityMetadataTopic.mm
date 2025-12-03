@interface BMPBUserActivityMetadataTopic
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBUserActivityMetadataTopic

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBUserActivityMetadataTopic;
  v4 = [(BMPBUserActivityMetadataTopic *)&v8 description];
  dictionaryRepresentation = [(BMPBUserActivityMetadataTopic *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  topicIdentifier = self->_topicIdentifier;
  if (topicIdentifier)
  {
    [dictionary setObject:topicIdentifier forKey:@"topicIdentifier"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_topicIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_topicIdentifier)
  {
    [toCopy setTopicIdentifier:?];
    toCopy = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_topicIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_title copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((topicIdentifier = self->_topicIdentifier, !(topicIdentifier | equalCopy[2])) || -[NSString isEqual:](topicIdentifier, "isEqual:")))
  {
    title = self->_title;
    if (title | equalCopy[1])
    {
      v7 = [(NSString *)title isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(BMPBUserActivityMetadataTopic *)self setTopicIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(BMPBUserActivityMetadataTopic *)self setTitle:?];
    fromCopy = v5;
  }
}

@end