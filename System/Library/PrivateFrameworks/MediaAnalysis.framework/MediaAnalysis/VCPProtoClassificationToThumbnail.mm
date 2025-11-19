@interface VCPProtoClassificationToThumbnail
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoClassificationToThumbnail

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoClassificationToThumbnail;
  v4 = [(VCPProtoClassificationToThumbnail *)&v8 description];
  v5 = [(VCPProtoClassificationToThumbnail *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_identifier];
  [v3 setObject:v4 forKey:@"identifier"];

  thumbnailID = self->_thumbnailID;
  if (thumbnailID)
  {
    [v3 setObject:thumbnailID forKey:@"thumbnailID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteStringField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_identifier;
  v6 = [(NSString *)self->_thumbnailID copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_identifier == *(v4 + 2))
  {
    thumbnailID = self->_thumbnailID;
    if (thumbnailID | v4[2])
    {
      v6 = [(NSString *)thumbnailID isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  self->_identifier = *(a3 + 2);
  if (*(a3 + 2))
  {
    [(VCPProtoClassificationToThumbnail *)self setThumbnailID:?];
  }
}

@end