@interface AWDHeaderInfoS
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDHeaderInfoS

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDHeaderInfoS;
  v3 = [(AWDHeaderInfoS *)&v7 description];
  v4 = [(AWDHeaderInfoS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_daemonVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_vendorVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_daemonVersion)
  {
    [v4 setDaemonVersion:?];
    v4 = v5;
  }

  if (self->_vendorVersion)
  {
    [v5 setVendorVersion:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_daemonVersion copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_vendorVersion copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((daemonVersion = self->_daemonVersion, !(daemonVersion | v4[1])) || -[NSString isEqual:](daemonVersion, "isEqual:")))
  {
    vendorVersion = self->_vendorVersion;
    if (vendorVersion | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(AWDHeaderInfoS *)self setDaemonVersion:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(AWDHeaderInfoS *)self setVendorVersion:?];
    v4 = v5;
  }
}

@end