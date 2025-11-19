@interface OTApplicantToSponsorRound2M1
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTApplicantToSponsorRound2M1

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[1])
  {
    [(OTApplicantToSponsorRound2M1 *)self setPeerID:?];
  }

  if (v4[2])
  {
    [(OTApplicantToSponsorRound2M1 *)self setPermanentInfo:?];
  }

  if (v4[3])
  {
    [(OTApplicantToSponsorRound2M1 *)self setPermanentInfoSig:?];
  }

  if (v4[4])
  {
    [(OTApplicantToSponsorRound2M1 *)self setStableInfo:?];
  }

  if (v4[5])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((peerID = self->_peerID, !(peerID | v4[1])) || -[NSString isEqual:](peerID, "isEqual:")) && ((permanentInfo = self->_permanentInfo, !(permanentInfo | v4[2])) || -[NSData isEqual:](permanentInfo, "isEqual:")) && ((permanentInfoSig = self->_permanentInfoSig, !(permanentInfoSig | v4[3])) || -[NSData isEqual:](permanentInfoSig, "isEqual:")) && ((stableInfo = self->_stableInfo, !(stableInfo | v4[4])) || -[NSData isEqual:](stableInfo, "isEqual:")))
  {
    stableInfoSig = self->_stableInfoSig;
    if (stableInfoSig | v4[5])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_peerID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_permanentInfo copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_permanentInfoSig copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSData *)self->_stableInfo copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSData *)self->_stableInfoSig copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_peerID)
  {
    [v4 setPeerID:?];
    v4 = v5;
  }

  if (self->_permanentInfo)
  {
    [v5 setPermanentInfo:?];
    v4 = v5;
  }

  if (self->_permanentInfoSig)
  {
    [v5 setPermanentInfoSig:?];
    v4 = v5;
  }

  if (self->_stableInfo)
  {
    [v5 setStableInfo:?];
    v4 = v5;
  }

  if (self->_stableInfoSig)
  {
    [v5 setStableInfoSig:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_peerID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_permanentInfo)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_permanentInfoSig)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_stableInfo)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_stableInfoSig)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  peerID = self->_peerID;
  if (peerID)
  {
    [v3 setObject:peerID forKey:@"peerID"];
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
  v5 = [(OTApplicantToSponsorRound2M1 *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end