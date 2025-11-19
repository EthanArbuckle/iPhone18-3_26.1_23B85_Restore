@interface PBBProtoSendTinkerAccountCredentials
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PBBProtoSendTinkerAccountCredentials

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoSendTinkerAccountCredentials;
  v4 = [(PBBProtoSendTinkerAccountCredentials *)&v8 description];
  v5 = [(PBBProtoSendTinkerAccountCredentials *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  username = self->_username;
  if (username)
  {
    [v3 setObject:username forKey:@"username"];
  }

  password = self->_password;
  if (password)
  {
    [v4 setObject:password forKey:@"password"];
  }

  acceptedTermsData = self->_acceptedTermsData;
  if (acceptedTermsData)
  {
    [v4 setObject:acceptedTermsData forKey:@"acceptedTermsData"];
  }

  pairingParentAltDSID = self->_pairingParentAltDSID;
  if (pairingParentAltDSID)
  {
    [v4 setObject:pairingParentAltDSID forKey:@"pairingParentAltDSID"];
  }

  pairingParentAppleID = self->_pairingParentAppleID;
  if (pairingParentAppleID)
  {
    [v4 setObject:pairingParentAppleID forKey:@"pairingParentAppleID"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_username)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_password)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_acceptedTermsData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_pairingParentAltDSID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_pairingParentAppleID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_username)
  {
    [v4 setUsername:?];
    v4 = v5;
  }

  if (self->_password)
  {
    [v5 setPassword:?];
    v4 = v5;
  }

  if (self->_acceptedTermsData)
  {
    [v5 setAcceptedTermsData:?];
    v4 = v5;
  }

  if (self->_pairingParentAltDSID)
  {
    [v5 setPairingParentAltDSID:?];
    v4 = v5;
  }

  if (self->_pairingParentAppleID)
  {
    [v5 setPairingParentAppleID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_username copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_password copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSData *)self->_acceptedTermsData copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_pairingParentAltDSID copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSString *)self->_pairingParentAppleID copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((username = self->_username, !(username | v4[5])) || -[NSString isEqual:](username, "isEqual:")) && ((password = self->_password, !(password | v4[4])) || -[NSString isEqual:](password, "isEqual:")) && ((acceptedTermsData = self->_acceptedTermsData, !(acceptedTermsData | v4[1])) || -[NSData isEqual:](acceptedTermsData, "isEqual:")) && ((pairingParentAltDSID = self->_pairingParentAltDSID, !(pairingParentAltDSID | v4[2])) || -[NSString isEqual:](pairingParentAltDSID, "isEqual:")))
  {
    pairingParentAppleID = self->_pairingParentAppleID;
    if (pairingParentAppleID | v4[3])
    {
      v10 = [(NSString *)pairingParentAppleID isEqual:?];
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
  v3 = [(NSString *)self->_username hash];
  v4 = [(NSString *)self->_password hash]^ v3;
  v5 = [(NSData *)self->_acceptedTermsData hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_pairingParentAltDSID hash];
  return v6 ^ [(NSString *)self->_pairingParentAppleID hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    [(PBBProtoSendTinkerAccountCredentials *)self setUsername:?];
  }

  if (v4[4])
  {
    [(PBBProtoSendTinkerAccountCredentials *)self setPassword:?];
  }

  if (v4[1])
  {
    [(PBBProtoSendTinkerAccountCredentials *)self setAcceptedTermsData:?];
  }

  if (v4[2])
  {
    [(PBBProtoSendTinkerAccountCredentials *)self setPairingParentAltDSID:?];
  }

  if (v4[3])
  {
    [(PBBProtoSendTinkerAccountCredentials *)self setPairingParentAppleID:?];
  }
}

@end