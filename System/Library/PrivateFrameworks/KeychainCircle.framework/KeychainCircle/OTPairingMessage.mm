@interface OTPairingMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation OTPairingMessage

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  epoch = self->_epoch;
  v6 = fromCopy[2];
  v15 = fromCopy;
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

  fromCopy = v15;
LABEL_7:
  prepare = self->_prepare;
  v8 = fromCopy[3];
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

  fromCopy = v15;
LABEL_13:
  voucher = self->_voucher;
  v10 = fromCopy[6];
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

  fromCopy = v15;
LABEL_19:
  supportsOctagon = self->_supportsOctagon;
  v12 = fromCopy[4];
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

  fromCopy = v15;
LABEL_25:
  supportsSOS = self->_supportsSOS;
  v14 = fromCopy[5];
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

  fromCopy = v15;
LABEL_31:
  if (fromCopy[7])
  {
    self->_version = fromCopy[1];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  epoch = self->_epoch;
  if (epoch | *(equalCopy + 2))
  {
    if (![(OTSponsorToApplicantRound1M2 *)epoch isEqual:?])
    {
      goto LABEL_16;
    }
  }

  prepare = self->_prepare;
  if (prepare | *(equalCopy + 3))
  {
    if (![(OTApplicantToSponsorRound2M1 *)prepare isEqual:?])
    {
      goto LABEL_16;
    }
  }

  voucher = self->_voucher;
  if (voucher | *(equalCopy + 6))
  {
    if (![(OTSponsorToApplicantRound2M2 *)voucher isEqual:?])
    {
      goto LABEL_16;
    }
  }

  supportsOctagon = self->_supportsOctagon;
  if (supportsOctagon | *(equalCopy + 4))
  {
    if (![(OTSupportOctagonMessage *)supportsOctagon isEqual:?])
    {
      goto LABEL_16;
    }
  }

  supportsSOS = self->_supportsSOS;
  if (supportsSOS | *(equalCopy + 5))
  {
    if (![(OTSupportSOSMessage *)supportsSOS isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v10 = (*(equalCopy + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) != 0 && self->_version == *(equalCopy + 1))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(OTSponsorToApplicantRound1M2 *)self->_epoch copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(OTApplicantToSponsorRound2M1 *)self->_prepare copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(OTSponsorToApplicantRound2M2 *)self->_voucher copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(OTSupportOctagonMessage *)self->_supportsOctagon copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(OTSupportSOSMessage *)self->_supportsSOS copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_version;
    *(v5 + 56) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_epoch)
  {
    [toCopy setEpoch:?];
    toCopy = v5;
  }

  if (self->_prepare)
  {
    [v5 setPrepare:?];
    toCopy = v5;
  }

  if (self->_voucher)
  {
    [v5 setVoucher:?];
    toCopy = v5;
  }

  if (self->_supportsOctagon)
  {
    [v5 setSupportsOctagon:?];
    toCopy = v5;
  }

  if (self->_supportsSOS)
  {
    [v5 setSupportsSOS:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_version;
    *(toCopy + 56) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_epoch)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_prepare)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_voucher)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_supportsOctagon)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_supportsSOS)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v25 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
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
            if (!PBReaderPlaceMark() || !OTSupportOctagonMessageReadFrom(v15, from))
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
            if (!PBReaderPlaceMark() || !OTSupportSOSMessageReadFrom(v15, from))
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
              v19 = [from position] + 1;
              if (v19 >= [from position] && (v20 = objc_msgSend(from, "position") + 1, v20 <= objc_msgSend(from, "length")))
              {
                data2 = [from data];
                [data2 getBytes:&v25 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
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

            if ([from hasError])
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
            if (!PBReaderPlaceMark() || !OTSponsorToApplicantRound1M2ReadFrom(v15, from))
            {
              goto LABEL_57;
            }

            goto LABEL_49;
          case 2:
            v15 = objc_alloc_init(OTApplicantToSponsorRound2M1);
            objc_storeStrong(&self->_prepare, v15);
            v25 = 0xAAAAAAAAAAAAAAAALL;
            v26 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !OTApplicantToSponsorRound2M1ReadFrom(v15, from))
            {
              goto LABEL_57;
            }

            goto LABEL_49;
          case 3:
            v15 = objc_alloc_init(OTSponsorToApplicantRound2M2);
            objc_storeStrong(&self->_voucher, v15);
            v25 = 0xAAAAAAAAAAAAAAAALL;
            v26 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !OTSponsorToApplicantRound2M2ReadFrom(v15, from))
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
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  epoch = self->_epoch;
  if (epoch)
  {
    dictionaryRepresentation = [(OTSponsorToApplicantRound1M2 *)epoch dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"epoch"];
  }

  prepare = self->_prepare;
  if (prepare)
  {
    dictionaryRepresentation2 = [(OTApplicantToSponsorRound2M1 *)prepare dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"prepare"];
  }

  voucher = self->_voucher;
  if (voucher)
  {
    dictionaryRepresentation3 = [(OTSponsorToApplicantRound2M2 *)voucher dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"voucher"];
  }

  supportsOctagon = self->_supportsOctagon;
  if (supportsOctagon)
  {
    dictionaryRepresentation4 = [(OTSupportOctagonMessage *)supportsOctagon dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"supportsOctagon"];
  }

  supportsSOS = self->_supportsSOS;
  if (supportsSOS)
  {
    dictionaryRepresentation5 = [(OTSupportSOSMessage *)supportsSOS dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"supportsSOS"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_version];
    [dictionary setObject:v14 forKey:@"version"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = OTPairingMessage;
  v4 = [(OTPairingMessage *)&v8 description];
  dictionaryRepresentation = [(OTPairingMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end