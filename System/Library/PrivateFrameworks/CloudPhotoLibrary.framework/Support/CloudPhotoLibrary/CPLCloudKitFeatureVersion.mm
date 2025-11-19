@interface CPLCloudKitFeatureVersion
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CPLCloudKitFeatureVersion

- (id)description
{
  v7.receiver = self;
  v7.super_class = CPLCloudKitFeatureVersion;
  v3 = [(CPLCloudKitFeatureVersion *)&v7 description];
  v4 = [(CPLCloudKitFeatureVersion *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_serverToken)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_etag)
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
    v4[1] = self->_version;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_serverToken)
  {
    [v4 setServerToken:?];
    v4 = v5;
  }

  if (self->_etag)
  {
    [v5 setEtag:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_version;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSData *)self->_serverToken copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_etag copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_version != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  serverToken = self->_serverToken;
  if (serverToken | *(v4 + 3) && ![(NSData *)serverToken isEqual:?])
  {
    goto LABEL_11;
  }

  etag = self->_etag;
  if (etag | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[4])
  {
    self->_version = v4[1];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (v4[3])
  {
    [(CPLCloudKitFeatureVersion *)self setServerToken:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(CPLCloudKitFeatureVersion *)self setEtag:?];
    v4 = v5;
  }
}

@end