@interface OTPairingMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTPairingMessage

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  epoch = self->_epoch;
  v6 = v4[2];
  v15 = v4;
  if (epoch)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(OTSponsorToApplicantRound1M2 *)epoch mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(OTPairingMessage *)self setEpoch:?];
  }

  v4 = v15;
LABEL_7:
  prepare = self->_prepare;
  v8 = v4[3];
  if (prepare)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(OTApplicantToSponsorRound2M1 *)prepare mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(OTPairingMessage *)self setPrepare:?];
  }

  v4 = v15;
LABEL_13:
  voucher = self->_voucher;
  v10 = v4[6];
  if (voucher)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(OTSponsorToApplicantRound2M2 *)voucher mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(OTPairingMessage *)self setVoucher:?];
  }

  v4 = v15;
LABEL_19:
  supportsOctagon = self->_supportsOctagon;
  v12 = v4[4];
  if (supportsOctagon)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(OTSupportOctagonMessage *)supportsOctagon mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(OTPairingMessage *)self setSupportsOctagon:?];
  }

  v4 = v15;
LABEL_25:
  supportsSOS = self->_supportsSOS;
  v14 = v4[5];
  if (supportsSOS)
  {
    if (!v14)
    {
      goto LABEL_31;
    }

    [(OTSupportSOSMessage *)supportsSOS mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_31;
    }

    [(OTPairingMessage *)self setSupportsSOS:?];
  }

  v4 = v15;
LABEL_31:
  if (v4[7])
  {
    self->_version = v4[1];
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

- (unint64_t)hash
{
  v3 = [(OTSponsorToApplicantRound1M2 *)self->_epoch hash];
  v4 = [(OTApplicantToSponsorRound2M1 *)self->_prepare hash];
  v5 = [(OTSponsorToApplicantRound2M2 *)self->_voucher hash];
  v6 = [(OTSupportOctagonMessage *)self->_supportsOctagon hash];
  v7 = [(OTSupportSOSMessage *)self->_supportsSOS hash];
  if (*&self->_has)
  {
    v8 = 2654435761u * self->_version;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  epoch = self->_epoch;
  if (epoch | *(v4 + 2))
  {
    if (![(OTSponsorToApplicantRound1M2 *)epoch isEqual:?])
    {
      goto LABEL_16;
    }
  }

  prepare = self->_prepare;
  if (prepare | *(v4 + 3))
  {
    if (![(OTApplicantToSponsorRound2M1 *)prepare isEqual:?])
    {
      goto LABEL_16;
    }
  }

  voucher = self->_voucher;
  if (voucher | *(v4 + 6))
  {
    if (![(OTSponsorToApplicantRound2M2 *)voucher isEqual:?])
    {
      goto LABEL_16;
    }
  }

  supportsOctagon = self->_supportsOctagon;
  if (supportsOctagon | *(v4 + 4))
  {
    if (![(OTSupportOctagonMessage *)supportsOctagon isEqual:?])
    {
      goto LABEL_16;
    }
  }

  supportsSOS = self->_supportsSOS;
  if (supportsSOS | *(v4 + 5))
  {
    if (![(OTSupportSOSMessage *)supportsSOS isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v10 = (*(v4 + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) != 0 && self->_version == *(v4 + 1))
    {
      v10 = 1;
      goto LABEL_17;
    }

LABEL_16:
    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(OTSponsorToApplicantRound1M2 *)self->_epoch copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(OTApplicantToSponsorRound2M1 *)self->_prepare copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(OTSponsorToApplicantRound2M2 *)self->_voucher copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(OTSupportOctagonMessage *)self->_supportsOctagon copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(OTSupportSOSMessage *)self->_supportsSOS copyWithZone:a3];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_version;
    *(v5 + 56) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_epoch)
  {
    [v4 setEpoch:?];
    v4 = v5;
  }

  if (self->_prepare)
  {
    [v5 setPrepare:?];
    v4 = v5;
  }

  if (self->_voucher)
  {
    [v5 setVoucher:?];
    v4 = v5;
  }

  if (self->_supportsOctagon)
  {
    [v5 setSupportsOctagon:?];
    v4 = v5;
  }

  if (self->_supportsSOS)
  {
    [v5 setSupportsSOS:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_version;
    *(v4 + 56) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_epoch)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_prepare)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_voucher)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_supportsOctagon)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_supportsSOS)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v25 & 0x7F) << v6;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 4)
      {
        switch(v14)
        {
          case 5:
            v15 = objc_alloc_init(OTSupportOctagonMessage);
            objc_storeStrong(&self->_supportsOctagon, v15);
            v25 = 0xAAAAAAAAAAAAAAAALL;
            v26 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !OTSupportOctagonMessageReadFrom(v15, a3))
            {
LABEL_57:

              return 0;
            }

            goto LABEL_49;
          case 6:
            v15 = objc_alloc_init(OTSupportSOSMessage);
            objc_storeStrong(&self->_supportsSOS, v15);
            v25 = 0xAAAAAAAAAAAAAAAALL;
            v26 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !OTSupportSOSMessageReadFrom(v15, a3))
            {
              goto LABEL_57;
            }

            goto LABEL_49;
          case 7:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *&self->_has |= 1u;
            while (1)
            {
              LOBYTE(v25) = 0;
              v19 = [a3 position] + 1;
              if (v19 >= [a3 position] && (v20 = objc_msgSend(a3, "position") + 1, v20 <= objc_msgSend(a3, "length")))
              {
                v21 = [a3 data];
                [v21 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v18 |= (v25 & 0x7F) << v16;
              if ((v25 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v12 = v17++ >= 9;
              if (v12)
              {
                v22 = 0;
                goto LABEL_55;
              }
            }

            if ([a3 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_55:
            self->_version = v22;
            goto LABEL_50;
        }
      }

      else
      {
        switch(v14)
        {
          case 1:
            v15 = objc_alloc_init(OTSponsorToApplicantRound1M2);
            objc_storeStrong(&self->_epoch, v15);
            v25 = 0xAAAAAAAAAAAAAAAALL;
            v26 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !OTSponsorToApplicantRound1M2ReadFrom(v15, a3))
            {
              goto LABEL_57;
            }

            goto LABEL_49;
          case 2:
            v15 = objc_alloc_init(OTApplicantToSponsorRound2M1);
            objc_storeStrong(&self->_prepare, v15);
            v25 = 0xAAAAAAAAAAAAAAAALL;
            v26 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !OTApplicantToSponsorRound2M1ReadFrom(v15, a3))
            {
              goto LABEL_57;
            }

            goto LABEL_49;
          case 3:
            v15 = objc_alloc_init(OTSponsorToApplicantRound2M2);
            objc_storeStrong(&self->_voucher, v15);
            v25 = 0xAAAAAAAAAAAAAAAALL;
            v26 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !OTSponsorToApplicantRound2M2ReadFrom(v15, a3))
            {
              goto LABEL_57;
            }

LABEL_49:
            PBReaderRecallMark();

            goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v23 = [a3 position];
    }

    while (v23 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  epoch = self->_epoch;
  if (epoch)
  {
    v5 = [(OTSponsorToApplicantRound1M2 *)epoch dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"epoch"];
  }

  prepare = self->_prepare;
  if (prepare)
  {
    v7 = [(OTApplicantToSponsorRound2M1 *)prepare dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"prepare"];
  }

  voucher = self->_voucher;
  if (voucher)
  {
    v9 = [(OTSponsorToApplicantRound2M2 *)voucher dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"voucher"];
  }

  supportsOctagon = self->_supportsOctagon;
  if (supportsOctagon)
  {
    v11 = [(OTSupportOctagonMessage *)supportsOctagon dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"supportsOctagon"];
  }

  supportsSOS = self->_supportsSOS;
  if (supportsSOS)
  {
    v13 = [(OTSupportSOSMessage *)supportsSOS dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"supportsSOS"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_version];
    [v3 setObject:v14 forKey:@"version"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = OTPairingMessage;
  v4 = [(OTPairingMessage *)&v8 description];
  v5 = [(OTPairingMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end