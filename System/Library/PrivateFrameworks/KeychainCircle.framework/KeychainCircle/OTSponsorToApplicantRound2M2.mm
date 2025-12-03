@interface OTSponsorToApplicantRound2M2
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation OTSponsorToApplicantRound2M2

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(OTSponsorToApplicantRound2M2 *)self setVoucher:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(OTSponsorToApplicantRound2M2 *)self setVoucherSignature:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((voucher = self->_voucher, !(voucher | equalCopy[1])) || -[NSData isEqual:](voucher, "isEqual:")))
  {
    voucherSignature = self->_voucherSignature;
    if (voucherSignature | equalCopy[2])
    {
      v7 = [(NSData *)voucherSignature isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_voucher copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_voucherSignature copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_voucher)
  {
    [toCopy setVoucher:?];
    toCopy = v5;
  }

  if (self->_voucherSignature)
  {
    [v5 setVoucherSignature:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_voucher)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_voucherSignature)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  voucher = self->_voucher;
  if (voucher)
  {
    [dictionary setObject:voucher forKey:@"voucher"];
  }

  voucherSignature = self->_voucherSignature;
  if (voucherSignature)
  {
    [v4 setObject:voucherSignature forKey:@"voucherSignature"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = OTSponsorToApplicantRound2M2;
  v4 = [(OTSponsorToApplicantRound2M2 *)&v8 description];
  dictionaryRepresentation = [(OTSponsorToApplicantRound2M2 *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end