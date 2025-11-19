@interface AWDCountersStabilityS
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNcpResetType:(id)a3;
- (int)ncpResetType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsMtbfQualified:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCountersStabilityS

- (int)ncpResetType
{
  if (*&self->_has)
  {
    return self->_ncpResetType;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsNcpResetType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"E_NCP_RESET_CAUSE_ASSERT"])
  {

    return 1;
  }

  else if ([v3 isEqualToString:@"E_NCP_RESET_CAUSE_HARD_FAULT"])
  {

    return 2;
  }

  else if ([v3 isEqualToString:@"E_NCP_RESET_CAUSE_STACK_OVERFLOW"])
  {

    return 3;
  }

  else
  {
    if ([v3 isEqualToString:@"E_NCP_RESET_CAUSE_OTHER"])
    {
      v5 = 4;
    }

    else
    {
      v5 = 1;
    }

    return v5;
  }
}

- (void)setHasIsMtbfQualified:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCountersStabilityS;
  v3 = [(AWDCountersStabilityS *)&v7 description];
  v4 = [(AWDCountersStabilityS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = self->_ncpResetType - 1;
    if (v4 >= 4)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_ncpResetType];
    }

    else
    {
      v5 = off_1004C1780[v4];
    }

    [v3 setObject:v5 forKey:@"ncp_reset_type"];
  }

  ncpCrashReason = self->_ncpCrashReason;
  if (ncpCrashReason)
  {
    [v3 setObject:ncpCrashReason forKey:@"ncp_crash_reason"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [NSNumber numberWithBool:self->_isMtbfQualified];
    [v3 setObject:v7 forKey:@"is_mtbf_qualified"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*&self->_has)
  {
    ncpResetType = self->_ncpResetType;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_ncpCrashReason)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    isMtbfQualified = self->_isMtbfQualified;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_ncpResetType;
    *(v4 + 24) |= 1u;
  }

  if (self->_ncpCrashReason)
  {
    v5 = v4;
    [v4 setNcpCrashReason:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 20) = self->_isMtbfQualified;
    *(v4 + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[4] = self->_ncpResetType;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_ncpCrashReason copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = self->_isMtbfQualified;
    *(v6 + 24) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if (has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_ncpResetType != *(v4 + 4))
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_12;
  }

  ncpCrashReason = self->_ncpCrashReason;
  if (ncpCrashReason | *(v4 + 1))
  {
    if (![(NSString *)ncpCrashReason isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 24) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) != 0)
    {
      if (self->_isMtbfQualified)
      {
        if ((*(v4 + 20) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(v4 + 20))
      {
        goto LABEL_12;
      }

      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_ncpResetType;
    v4 = [(NSString *)self->_ncpCrashReason hash];
    if ((*&self->_has & 2) != 0)
    {
      return v4 ^ v3 ^ (2654435761 * self->_isMtbfQualified);
    }
  }

  else
  {
    v3 = 0;
    v4 = [(NSString *)self->_ncpCrashReason hash];
    if ((*&self->_has & 2) != 0)
    {
      return v4 ^ v3 ^ (2654435761 * self->_isMtbfQualified);
    }
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 24))
  {
    self->_ncpResetType = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(AWDCountersStabilityS *)self setNcpCrashReason:?];
    v4 = v5;
  }

  if ((*(v4 + 24) & 2) != 0)
  {
    self->_isMtbfQualified = *(v4 + 20);
    *&self->_has |= 2u;
  }
}

@end