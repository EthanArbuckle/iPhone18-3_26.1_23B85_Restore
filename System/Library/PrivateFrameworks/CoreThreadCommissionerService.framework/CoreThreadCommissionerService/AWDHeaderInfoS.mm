@interface AWDHeaderInfoS
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDHeaderInfoS

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDHeaderInfoS;
  v3 = [(AWDHeaderInfoS *)&v7 description];
  dictionaryRepresentation = [(AWDHeaderInfoS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  daemonVersion = self->_daemonVersion;
  if (daemonVersion)
  {
    [v3 setObject:daemonVersion forKey:@"daemon_version"];
  }

  vendorVersion = self->_vendorVersion;
  if (vendorVersion)
  {
    [v4 setObject:vendorVersion forKey:@"vendor_version"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_daemonVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_vendorVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_daemonVersion)
  {
    [toCopy setDaemonVersion:?];
    toCopy = v5;
  }

  if (self->_vendorVersion)
  {
    [v5 setVendorVersion:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_daemonVersion copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_vendorVersion copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((daemonVersion = self->_daemonVersion, !(daemonVersion | equalCopy[1])) || -[NSString isEqual:](daemonVersion, "isEqual:")))
  {
    vendorVersion = self->_vendorVersion;
    if (vendorVersion | equalCopy[2])
    {
      v7 = [(NSString *)vendorVersion isEqual:?];
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
  if (fromCopy[1])
  {
    [(AWDHeaderInfoS *)self setDaemonVersion:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(AWDHeaderInfoS *)self setVendorVersion:?];
    fromCopy = v5;
  }
}

@end