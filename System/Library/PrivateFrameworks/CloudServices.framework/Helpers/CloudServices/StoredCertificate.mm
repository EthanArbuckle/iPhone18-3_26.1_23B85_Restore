@interface StoredCertificate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation StoredCertificate

- (id)description
{
  v7.receiver = self;
  v7.super_class = StoredCertificate;
  v3 = [(StoredCertificate *)&v7 description];
  v4 = [(StoredCertificate *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_iCloudEnvironment)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_escrowBaseURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_dsid)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_escrowCertificate)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_duplicateEscrowCertificate)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_iCloudEnvironment)
  {
    [v4 setICloudEnvironment:?];
    v4 = v5;
  }

  if (self->_escrowBaseURL)
  {
    [v5 setEscrowBaseURL:?];
    v4 = v5;
  }

  if (self->_dsid)
  {
    [v5 setDsid:?];
    v4 = v5;
  }

  if (self->_escrowCertificate)
  {
    [v5 setEscrowCertificate:?];
    v4 = v5;
  }

  if (self->_duplicateEscrowCertificate)
  {
    [v5 setDuplicateEscrowCertificate:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_iCloudEnvironment copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_escrowBaseURL copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_dsid copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSData *)self->_escrowCertificate copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSData *)self->_duplicateEscrowCertificate copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((iCloudEnvironment = self->_iCloudEnvironment, !(iCloudEnvironment | v4[5])) || -[NSString isEqual:](iCloudEnvironment, "isEqual:")) && ((escrowBaseURL = self->_escrowBaseURL, !(escrowBaseURL | v4[3])) || -[NSString isEqual:](escrowBaseURL, "isEqual:")) && ((dsid = self->_dsid, !(dsid | v4[1])) || -[NSString isEqual:](dsid, "isEqual:")) && ((escrowCertificate = self->_escrowCertificate, !(escrowCertificate | v4[4])) || -[NSData isEqual:](escrowCertificate, "isEqual:")))
  {
    duplicateEscrowCertificate = self->_duplicateEscrowCertificate;
    if (duplicateEscrowCertificate | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    [(StoredCertificate *)self setICloudEnvironment:?];
  }

  if (v4[3])
  {
    [(StoredCertificate *)self setEscrowBaseURL:?];
  }

  if (v4[1])
  {
    [(StoredCertificate *)self setDsid:?];
  }

  if (v4[4])
  {
    [(StoredCertificate *)self setEscrowCertificate:?];
  }

  if (v4[2])
  {
    [(StoredCertificate *)self setDuplicateEscrowCertificate:?];
  }
}

@end