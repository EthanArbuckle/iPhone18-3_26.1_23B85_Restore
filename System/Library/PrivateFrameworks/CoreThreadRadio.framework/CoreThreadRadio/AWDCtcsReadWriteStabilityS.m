@interface AWDCtcsReadWriteStabilityS
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCtcsReadWriteFailType:(id)a3;
- (int)ctcsReadWriteFailType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsCtcsReadWriteFailType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"E_CTCS_FAIL_RETRIEVE_ALL_CREDENTIALS"])
  {

    return 1;
  }

  else if ([v3 isEqualToString:@"E_CTCS_FAIL_DELETE_CREDENTIALS"])
  {

    return 2;
  }

  else if ([v3 isEqualToString:@"E_CTCS_FAIL_RETRIEVE_BORDERAGENT_CREDENTIALS"])
  {

    return 3;
  }

  else if ([v3 isEqualToString:@"E_CTCS_FAIL_RETRIEVE_EXTENDED_PANID_CREDENTIALS"])
  {

    return 4;
  }

  else if ([v3 isEqualToString:@"E_CTCS_FAIL_RETRIEVE_PREFERRED_NETWORK"])
  {

    return 5;
  }

  else
  {
    if ([v3 isEqualToString:@"E_CTCS_FAIL_STORE_CREDENTIALS"])
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
  v4 = [(AWDCtcsReadWriteStabilityS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    ctcsReadWriteFailType = self->_ctcsReadWriteFailType;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_ctcsReadWriteFailType;
    *(a3 + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_ctcsReadWriteFailType;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 12) & 1) != 0 && self->_ctcsReadWriteFailType == *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_ctcsReadWriteFailType = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end