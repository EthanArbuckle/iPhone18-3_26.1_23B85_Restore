@interface BMPBSocialMediaHandle
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBSocialMediaHandle

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBSocialMediaHandle;
  v4 = [(BMPBSocialMediaHandle *)&v8 description];
  v5 = [(BMPBSocialMediaHandle *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
  }

  handle = self->_handle;
  if (handle)
  {
    [v4 setObject:handle forKey:@"handle"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_handle)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bundleId)
  {
    [v4 setBundleId:?];
    v4 = v5;
  }

  if (self->_handle)
  {
    [v5 setHandle:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_handle copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((bundleId = self->_bundleId, !(bundleId | v4[1])) || -[NSString isEqual:](bundleId, "isEqual:")))
  {
    handle = self->_handle;
    if (handle | v4[2])
    {
      v7 = [(NSString *)handle isEqual:?];
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
  if (v4[1])
  {
    [(BMPBSocialMediaHandle *)self setBundleId:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(BMPBSocialMediaHandle *)self setHandle:?];
    v4 = v5;
  }
}

@end