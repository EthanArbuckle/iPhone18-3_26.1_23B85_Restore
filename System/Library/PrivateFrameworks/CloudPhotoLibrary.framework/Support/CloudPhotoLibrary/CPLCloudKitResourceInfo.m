@interface CPLCloudKitResourceInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CPLCloudKitResourceInfo

- (id)description
{
  v7.receiver = self;
  v7.super_class = CPLCloudKitResourceInfo;
  v3 = [(CPLCloudKitResourceInfo *)&v7 description];
  v4 = [(CPLCloudKitResourceInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_fileSize];
    [v3 setObject:v4 forKey:@"fileSize"];
  }

  imageDimensions = self->_imageDimensions;
  if (imageDimensions)
  {
    v6 = [(CPLCloudKitResourceInfoImageDimensions *)imageDimensions dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"imageDimensions"];
  }

  fileUTI = self->_fileUTI;
  if (fileUTI)
  {
    [v3 setObject:fileUTI forKey:@"fileUTI"];
  }

  stableHash = self->_stableHash;
  if (stableHash)
  {
    [v3 setObject:stableHash forKey:@"stableHash"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    fileSize = self->_fileSize;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_imageDimensions)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_fileUTI)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_stableHash)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_fileSize;
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_imageDimensions)
  {
    [v4 setImageDimensions:?];
    v4 = v5;
  }

  if (self->_fileUTI)
  {
    [v5 setFileUTI:?];
    v4 = v5;
  }

  if (self->_stableHash)
  {
    [v5 setStableHash:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_fileSize;
    *(v5 + 40) |= 1u;
  }

  v7 = [(CPLCloudKitResourceInfoImageDimensions *)self->_imageDimensions copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_fileUTI copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(NSString *)self->_stableHash copyWithZone:a3];
  v12 = v6[4];
  v6[4] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_fileSize != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  imageDimensions = self->_imageDimensions;
  if (imageDimensions | *(v4 + 3) && ![(CPLCloudKitResourceInfoImageDimensions *)imageDimensions isEqual:?])
  {
    goto LABEL_13;
  }

  fileUTI = self->_fileUTI;
  if (fileUTI | *(v4 + 2))
  {
    if (![(NSString *)fileUTI isEqual:?])
    {
      goto LABEL_13;
    }
  }

  stableHash = self->_stableHash;
  if (stableHash | *(v4 + 4))
  {
    v9 = [(NSString *)stableHash isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_fileSize;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(CPLCloudKitResourceInfoImageDimensions *)self->_imageDimensions hash]^ v3;
  v5 = [(NSString *)self->_fileUTI hash];
  return v4 ^ v5 ^ [(NSString *)self->_stableHash hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    self->_fileSize = v4[1];
    *&self->_has |= 1u;
  }

  imageDimensions = self->_imageDimensions;
  v7 = v5[3];
  v8 = v5;
  if (imageDimensions)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(CPLCloudKitResourceInfoImageDimensions *)imageDimensions mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(CPLCloudKitResourceInfo *)self setImageDimensions:?];
  }

  v5 = v8;
LABEL_9:
  if (v5[2])
  {
    [(CPLCloudKitResourceInfo *)self setFileUTI:?];
    v5 = v8;
  }

  if (v5[4])
  {
    [(CPLCloudKitResourceInfo *)self setStableHash:?];
    v5 = v8;
  }
}

@end