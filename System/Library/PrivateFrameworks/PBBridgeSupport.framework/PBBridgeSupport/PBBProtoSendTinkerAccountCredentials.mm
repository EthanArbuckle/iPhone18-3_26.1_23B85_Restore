@interface PBBProtoSendTinkerAccountCredentials
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PBBProtoSendTinkerAccountCredentials

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoSendTinkerAccountCredentials;
  v4 = [(PBBProtoSendTinkerAccountCredentials *)&v8 description];
  dictionaryRepresentation = [(PBBProtoSendTinkerAccountCredentials *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  username = self->_username;
  if (username)
  {
    [dictionary setObject:username forKey:@"username"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_username)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_password)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_acceptedTermsData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_pairingParentAltDSID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_pairingParentAppleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_username)
  {
    [toCopy setUsername:?];
    toCopy = v5;
  }

  if (self->_password)
  {
    [v5 setPassword:?];
    toCopy = v5;
  }

  if (self->_acceptedTermsData)
  {
    [v5 setAcceptedTermsData:?];
    toCopy = v5;
  }

  if (self->_pairingParentAltDSID)
  {
    [v5 setPairingParentAltDSID:?];
    toCopy = v5;
  }

  if (self->_pairingParentAppleID)
  {
    [v5 setPairingParentAppleID:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_username copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_password copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSData *)self->_acceptedTermsData copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_pairingParentAltDSID copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSString *)self->_pairingParentAppleID copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((username = self->_username, !(username | equalCopy[5])) || -[NSString isEqual:](username, "isEqual:")) && ((password = self->_password, !(password | equalCopy[4])) || -[NSString isEqual:](password, "isEqual:")) && ((acceptedTermsData = self->_acceptedTermsData, !(acceptedTermsData | equalCopy[1])) || -[NSData isEqual:](acceptedTermsData, "isEqual:")) && ((pairingParentAltDSID = self->_pairingParentAltDSID, !(pairingParentAltDSID | equalCopy[2])) || -[NSString isEqual:](pairingParentAltDSID, "isEqual:")))
  {
    pairingParentAppleID = self->_pairingParentAppleID;
    if (pairingParentAppleID | equalCopy[3])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    [(PBBProtoSendTinkerAccountCredentials *)self setUsername:?];
  }

  if (fromCopy[4])
  {
    [(PBBProtoSendTinkerAccountCredentials *)self setPassword:?];
  }

  if (fromCopy[1])
  {
    [(PBBProtoSendTinkerAccountCredentials *)self setAcceptedTermsData:?];
  }

  if (fromCopy[2])
  {
    [(PBBProtoSendTinkerAccountCredentials *)self setPairingParentAltDSID:?];
  }

  if (fromCopy[3])
  {
    [(PBBProtoSendTinkerAccountCredentials *)self setPairingParentAppleID:?];
  }
}

@end