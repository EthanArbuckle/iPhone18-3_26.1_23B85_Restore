@interface OTSponsorToApplicantRound2M2
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTSponsorToApplicantRound2M2

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(OTSponsorToApplicantRound2M2 *)self setVoucher:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(OTSponsorToApplicantRound2M2 *)self setVoucherSignature:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((voucher = self->_voucher, !(voucher | v4[1])) || -[NSData isEqual:](voucher, "isEqual:")))
  {
    voucherSignature = self->_voucherSignature;
    if (voucherSignature | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_voucher copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_voucherSignature copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_voucher)
  {
    [v4 setVoucher:?];
    v4 = v5;
  }

  if (self->_voucherSignature)
  {
    [v5 setVoucherSignature:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_voucher)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_voucherSignature)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  voucher = self->_voucher;
  if (voucher)
  {
    [v3 setObject:voucher forKey:@"voucher"];
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
  v5 = [(OTSponsorToApplicantRound2M2 *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end