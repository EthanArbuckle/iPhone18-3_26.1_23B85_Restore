@interface CPLCloudKitResourceInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CPLCloudKitResourceInfo

- (id)description
{
  v7.receiver = self;
  v7.super_class = CPLCloudKitResourceInfo;
  v3 = [(CPLCloudKitResourceInfo *)&v7 description];
  dictionaryRepresentation = [(CPLCloudKitResourceInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
    dictionaryRepresentation = [(CPLCloudKitResourceInfoImageDimensions *)imageDimensions dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"imageDimensions"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    fileSize = self->_fileSize;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_imageDimensions)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_fileUTI)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_stableHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_fileSize;
    *(toCopy + 40) |= 1u;
  }

  v5 = toCopy;
  if (self->_imageDimensions)
  {
    [toCopy setImageDimensions:?];
    toCopy = v5;
  }

  if (self->_fileUTI)
  {
    [v5 setFileUTI:?];
    toCopy = v5;
  }

  if (self->_stableHash)
  {
    [v5 setStableHash:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_fileSize;
    *(v5 + 40) |= 1u;
  }

  v7 = [(CPLCloudKitResourceInfoImageDimensions *)self->_imageDimensions copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_fileUTI copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(NSString *)self->_stableHash copyWithZone:zone];
  v12 = v6[4];
  v6[4] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_fileSize != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  imageDimensions = self->_imageDimensions;
  if (imageDimensions | *(equalCopy + 3) && ![(CPLCloudKitResourceInfoImageDimensions *)imageDimensions isEqual:?])
  {
    goto LABEL_13;
  }

  fileUTI = self->_fileUTI;
  if (fileUTI | *(equalCopy + 2))
  {
    if (![(NSString *)fileUTI isEqual:?])
    {
      goto LABEL_13;
    }
  }

  stableHash = self->_stableHash;
  if (stableHash | *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    self->_fileSize = fromCopy[1];
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