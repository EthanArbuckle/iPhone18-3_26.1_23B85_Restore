@interface OTSponsorToApplicantRound1M2
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTSponsorToApplicantRound1M2

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 16))
  {
    self->_epoch = *(a3 + 1);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761u * self->_epoch;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) != 0 && self->_epoch == *(v4 + 1))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 1) = self->_epoch;
    *(result + 16) |= 1u;
  }

  return result;
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_epoch;
    *(a3 + 16) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    epoch = self->_epoch;
    PBDataWriterWriteUint64Field();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_epoch];
    [v3 setObject:v4 forKey:@"epoch"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = OTSponsorToApplicantRound1M2;
  v4 = [(OTSponsorToApplicantRound1M2 *)&v8 description];
  v5 = [(OTSponsorToApplicantRound1M2 *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end