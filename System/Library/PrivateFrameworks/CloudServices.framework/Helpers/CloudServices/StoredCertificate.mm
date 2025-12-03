@interface StoredCertificate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation StoredCertificate

- (id)description
{
  v7.receiver = self;
  v7.super_class = StoredCertificate;
  v3 = [(StoredCertificate *)&v7 description];
  dictionaryRepresentation = [(StoredCertificate *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  iCloudEnvironment = self->_iCloudEnvironment;
  if (iCloudEnvironment)
  {
    [v3 setObject:iCloudEnvironment forKey:@"iCloudEnvironment"];
  }

  escrowBaseURL = self->_escrowBaseURL;
  if (escrowBaseURL)
  {
    [v4 setObject:escrowBaseURL forKey:@"escrowBaseURL"];
  }

  dsid = self->_dsid;
  if (dsid)
  {
    [v4 setObject:dsid forKey:@"dsid"];
  }

  escrowCertificate = self->_escrowCertificate;
  if (escrowCertificate)
  {
    [v4 setObject:escrowCertificate forKey:@"escrowCertificate"];
  }

  duplicateEscrowCertificate = self->_duplicateEscrowCertificate;
  if (duplicateEscrowCertificate)
  {
    [v4 setObject:duplicateEscrowCertificate forKey:@"duplicateEscrowCertificate"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_iCloudEnvironment)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_escrowBaseURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_dsid)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_escrowCertificate)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_duplicateEscrowCertificate)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_iCloudEnvironment)
  {
    [toCopy setICloudEnvironment:?];
    toCopy = v5;
  }

  if (self->_escrowBaseURL)
  {
    [v5 setEscrowBaseURL:?];
    toCopy = v5;
  }

  if (self->_dsid)
  {
    [v5 setDsid:?];
    toCopy = v5;
  }

  if (self->_escrowCertificate)
  {
    [v5 setEscrowCertificate:?];
    toCopy = v5;
  }

  if (self->_duplicateEscrowCertificate)
  {
    [v5 setDuplicateEscrowCertificate:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_iCloudEnvironment copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_escrowBaseURL copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_dsid copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSData *)self->_escrowCertificate copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSData *)self->_duplicateEscrowCertificate copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((iCloudEnvironment = self->_iCloudEnvironment, !(iCloudEnvironment | equalCopy[5])) || -[NSString isEqual:](iCloudEnvironment, "isEqual:")) && ((escrowBaseURL = self->_escrowBaseURL, !(escrowBaseURL | equalCopy[3])) || -[NSString isEqual:](escrowBaseURL, "isEqual:")) && ((dsid = self->_dsid, !(dsid | equalCopy[1])) || -[NSString isEqual:](dsid, "isEqual:")) && ((escrowCertificate = self->_escrowCertificate, !(escrowCertificate | equalCopy[4])) || -[NSData isEqual:](escrowCertificate, "isEqual:")))
  {
    duplicateEscrowCertificate = self->_duplicateEscrowCertificate;
    if (duplicateEscrowCertificate | equalCopy[2])
    {
      v10 = [(NSData *)duplicateEscrowCertificate isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_iCloudEnvironment hash];
  v4 = [(NSString *)self->_escrowBaseURL hash]^ v3;
  v5 = [(NSString *)self->_dsid hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_escrowCertificate hash];
  return v6 ^ [(NSData *)self->_duplicateEscrowCertificate hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    [(StoredCertificate *)self setICloudEnvironment:?];
  }

  if (fromCopy[3])
  {
    [(StoredCertificate *)self setEscrowBaseURL:?];
  }

  if (fromCopy[1])
  {
    [(StoredCertificate *)self setDsid:?];
  }

  if (fromCopy[4])
  {
    [(StoredCertificate *)self setEscrowCertificate:?];
  }

  if (fromCopy[2])
  {
    [(StoredCertificate *)self setDuplicateEscrowCertificate:?];
  }
}

@end