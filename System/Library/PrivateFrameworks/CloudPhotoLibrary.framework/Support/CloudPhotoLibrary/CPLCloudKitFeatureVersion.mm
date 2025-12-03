@interface CPLCloudKitFeatureVersion
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CPLCloudKitFeatureVersion

- (id)description
{
  v7.receiver = self;
  v7.super_class = CPLCloudKitFeatureVersion;
  v3 = [(CPLCloudKitFeatureVersion *)&v7 description];
  dictionaryRepresentation = [(CPLCloudKitFeatureVersion *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithLongLong:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  serverToken = self->_serverToken;
  if (serverToken)
  {
    [v3 setObject:serverToken forKey:@"serverToken"];
  }

  etag = self->_etag;
  if (etag)
  {
    [v3 setObject:etag forKey:@"etag"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_serverToken)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_etag)
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
    toCopy[1] = self->_version;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_serverToken)
  {
    [toCopy setServerToken:?];
    toCopy = v5;
  }

  if (self->_etag)
  {
    [v5 setEtag:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_version;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSData *)self->_serverToken copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_etag copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_version != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  serverToken = self->_serverToken;
  if (serverToken | *(equalCopy + 3) && ![(NSData *)serverToken isEqual:?])
  {
    goto LABEL_11;
  }

  etag = self->_etag;
  if (etag | *(equalCopy + 2))
  {
    v8 = [(NSString *)etag isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_serverToken hash]^ v3;
  return v4 ^ [(NSString *)self->_etag hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    self->_version = fromCopy[1];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(CPLCloudKitFeatureVersion *)self setServerToken:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(CPLCloudKitFeatureVersion *)self setEtag:?];
    fromCopy = v5;
  }
}

@end