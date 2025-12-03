@interface AWDCtcsReadWriteStabilityS
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCtcsReadWriteFailType:(id)type;
- (int)ctcsReadWriteFailType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDCtcsReadWriteStabilityS

- (int)ctcsReadWriteFailType
{
  if (*&self->_has)
  {
    return self->_ctcsReadWriteFailType;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsCtcsReadWriteFailType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"E_CTCS_FAIL_RETRIEVE_ALL_CREDENTIALS"])
  {

    return 1;
  }

  else if ([typeCopy isEqualToString:@"E_CTCS_FAIL_DELETE_CREDENTIALS"])
  {

    return 2;
  }

  else if ([typeCopy isEqualToString:@"E_CTCS_FAIL_RETRIEVE_BORDERAGENT_CREDENTIALS"])
  {

    return 3;
  }

  else if ([typeCopy isEqualToString:@"E_CTCS_FAIL_RETRIEVE_EXTENDED_PANID_CREDENTIALS"])
  {

    return 4;
  }

  else if ([typeCopy isEqualToString:@"E_CTCS_FAIL_RETRIEVE_PREFERRED_NETWORK"])
  {

    return 5;
  }

  else
  {
    if ([typeCopy isEqualToString:@"E_CTCS_FAIL_STORE_CREDENTIALS"])
    {
      v5 = 6;
    }

    else
    {
      v5 = 1;
    }

    return v5;
  }
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCtcsReadWriteStabilityS;
  v3 = [(AWDCtcsReadWriteStabilityS *)&v7 description];
  dictionaryRepresentation = [(AWDCtcsReadWriteStabilityS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = self->_ctcsReadWriteFailType - 1;
    if (v4 >= 6)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_ctcsReadWriteFailType];
    }

    else
    {
      v5 = off_1004C17A0[v4];
    }

    [v3 setObject:v5 forKey:@"ctcs_read_write_fail_type"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    ctcsReadWriteFailType = self->_ctcsReadWriteFailType;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_ctcsReadWriteFailType;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_ctcsReadWriteFailType;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_ctcsReadWriteFailType == *(equalCopy + 2))
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

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_ctcsReadWriteFailType;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_ctcsReadWriteFailType = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end