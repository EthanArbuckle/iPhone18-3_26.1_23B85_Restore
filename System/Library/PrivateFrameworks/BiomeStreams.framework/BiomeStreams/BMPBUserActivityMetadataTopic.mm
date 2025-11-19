@interface BMPBUserActivityMetadataTopic
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBUserActivityMetadataTopic

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBUserActivityMetadataTopic;
  v4 = [(BMPBUserActivityMetadataTopic *)&v8 description];
  v5 = [(BMPBUserActivityMetadataTopic *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  topicIdentifier = self->_topicIdentifier;
  if (topicIdentifier)
  {
    [v3 setObject:topicIdentifier forKey:@"topicIdentifier"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_topicIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_topicIdentifier)
  {
    [v4 setTopicIdentifier:?];
    v4 = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_topicIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_title copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((topicIdentifier = self->_topicIdentifier, !(topicIdentifier | v4[2])) || -[NSString isEqual:](topicIdentifier, "isEqual:")))
  {
    title = self->_title;
    if (title | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(BMPBUserActivityMetadataTopic *)self setTopicIdentifier:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(BMPBUserActivityMetadataTopic *)self setTitle:?];
    v4 = v5;
  }
}

@end