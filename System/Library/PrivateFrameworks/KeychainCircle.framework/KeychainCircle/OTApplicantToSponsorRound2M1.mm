@interface OTApplicantToSponsorRound2M1
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation OTApplicantToSponsorRound2M1

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(OTApplicantToSponsorRound2M1 *)self setPeerID:?];
  }

  if (fromCopy[2])
  {
    [(OTApplicantToSponsorRound2M1 *)self setPermanentInfo:?];
  }

  if (fromCopy[3])
  {
    [(OTApplicantToSponsorRound2M1 *)self setPermanentInfoSig:?];
  }

  if (fromCopy[4])
  {
    [(OTApplicantToSponsorRound2M1 *)self setStableInfo:?];
  }

  if (fromCopy[5])
  {
    [(OTApplicantToSponsorRound2M1 *)self setStableInfoSig:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_peerID hash];
  v4 = [(NSData *)self->_permanentInfo hash]^ v3;
  v5 = [(NSData *)self->_permanentInfoSig hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_stableInfo hash];
  return v6 ^ [(NSData *)self->_stableInfoSig hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((peerID = self->_peerID, !(peerID | equalCopy[1])) || -[NSString isEqual:](peerID, "isEqual:")) && ((permanentInfo = self->_permanentInfo, !(permanentInfo | equalCopy[2])) || -[NSData isEqual:](permanentInfo, "isEqual:")) && ((permanentInfoSig = self->_permanentInfoSig, !(permanentInfoSig | equalCopy[3])) || -[NSData isEqual:](permanentInfoSig, "isEqual:")) && ((stableInfo = self->_stableInfo, !(stableInfo | equalCopy[4])) || -[NSData isEqual:](stableInfo, "isEqual:")))
  {
    stableInfoSig = self->_stableInfoSig;
    if (stableInfoSig | equalCopy[5])
    {
      v10 = [(NSData *)stableInfoSig isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_peerID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_permanentInfo copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_permanentInfoSig copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSData *)self->_stableInfo copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSData *)self->_stableInfoSig copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_peerID)
  {
    [toCopy setPeerID:?];
    toCopy = v5;
  }

  if (self->_permanentInfo)
  {
    [v5 setPermanentInfo:?];
    toCopy = v5;
  }

  if (self->_permanentInfoSig)
  {
    [v5 setPermanentInfoSig:?];
    toCopy = v5;
  }

  if (self->_stableInfo)
  {
    [v5 setStableInfo:?];
    toCopy = v5;
  }

  if (self->_stableInfoSig)
  {
    [v5 setStableInfoSig:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_peerID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_permanentInfo)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_permanentInfoSig)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_stableInfo)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_stableInfoSig)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  peerID = self->_peerID;
  if (peerID)
  {
    [dictionary setObject:peerID forKey:@"peerID"];
  }

  permanentInfo = self->_permanentInfo;
  if (permanentInfo)
  {
    [v4 setObject:permanentInfo forKey:@"permanentInfo"];
  }

  permanentInfoSig = self->_permanentInfoSig;
  if (permanentInfoSig)
  {
    [v4 setObject:permanentInfoSig forKey:@"permanentInfoSig"];
  }

  stableInfo = self->_stableInfo;
  if (stableInfo)
  {
    [v4 setObject:stableInfo forKey:@"stableInfo"];
  }

  stableInfoSig = self->_stableInfoSig;
  if (stableInfoSig)
  {
    [v4 setObject:stableInfoSig forKey:@"StableInfoSig"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = OTApplicantToSponsorRound2M1;
  v4 = [(OTApplicantToSponsorRound2M1 *)&v8 description];
  dictionaryRepresentation = [(OTApplicantToSponsorRound2M1 *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end