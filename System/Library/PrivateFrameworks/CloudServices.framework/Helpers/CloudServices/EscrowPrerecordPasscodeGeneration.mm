@interface EscrowPrerecordPasscodeGeneration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation EscrowPrerecordPasscodeGeneration

- (id)description
{
  v7.receiver = self;
  v7.super_class = EscrowPrerecordPasscodeGeneration;
  v3 = [(EscrowPrerecordPasscodeGeneration *)&v7 description];
  dictionaryRepresentation = [(EscrowPrerecordPasscodeGeneration *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_value];
    [v3 setObject:v4 forKey:@"value"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    _PBDataWriterWriteUint64Field(to, self->_value, 1);
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_value;
    *(to + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 1) = self->_value;
    *(result + 16) |= 1u;
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

  v5 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) != 0 && self->_value == *(equalCopy + 1))
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
    return 2654435761u * self->_value;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 16))
  {
    self->_value = *(from + 1);
    *&self->_has |= 1u;
  }
}

@end