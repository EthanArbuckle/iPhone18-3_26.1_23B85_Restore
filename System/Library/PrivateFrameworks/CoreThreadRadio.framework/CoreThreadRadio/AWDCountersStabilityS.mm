@interface AWDCountersStabilityS
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNcpResetType:(id)type;
- (int)ncpResetType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsMtbfQualified:(BOOL)qualified;
- (void)writeTo:(id)to;
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

- (int)StringAsNcpResetType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"E_NCP_RESET_CAUSE_ASSERT"])
  {

    return 1;
  }

  else if ([typeCopy isEqualToString:@"E_NCP_RESET_CAUSE_HARD_FAULT"])
  {

    return 2;
  }

  else if ([typeCopy isEqualToString:@"E_NCP_RESET_CAUSE_STACK_OVERFLOW"])
  {

    return 3;
  }

  else
  {
    if ([typeCopy isEqualToString:@"E_NCP_RESET_CAUSE_OTHER"])
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

- (void)setHasIsMtbfQualified:(BOOL)qualified
{
  if (qualified)
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
  dictionaryRepresentation = [(AWDCountersStabilityS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (*&self->_has)
  {
    ncpResetType = self->_ncpResetType;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_ncpCrashReason)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    isMtbfQualified = self->_isMtbfQualified;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_ncpResetType;
    *(toCopy + 24) |= 1u;
  }

  if (self->_ncpCrashReason)
  {
    v5 = toCopy;
    [toCopy setNcpCrashReason:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 20) = self->_isMtbfQualified;
    *(toCopy + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[4] = self->_ncpResetType;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_ncpCrashReason copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = self->_isMtbfQualified;
    *(v6 + 24) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(equalCopy + 24);
  if (has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_ncpResetType != *(equalCopy + 4))
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_12;
  }

  ncpCrashReason = self->_ncpCrashReason;
  if (ncpCrashReason | *(equalCopy + 1))
  {
    if (![(NSString *)ncpCrashReason isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(equalCopy + 24) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) != 0)
    {
      if (self->_isMtbfQualified)
      {
        if ((*(equalCopy + 20) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(equalCopy + 20))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 24))
  {
    self->_ncpResetType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(AWDCountersStabilityS *)self setNcpCrashReason:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 24) & 2) != 0)
  {
    self->_isMtbfQualified = *(fromCopy + 20);
    *&self->_has |= 2u;
  }
}

@end