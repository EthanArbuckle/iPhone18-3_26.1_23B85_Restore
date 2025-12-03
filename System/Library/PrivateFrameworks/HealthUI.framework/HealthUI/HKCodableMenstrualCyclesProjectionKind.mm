@interface HKCodableMenstrualCyclesProjectionKind
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableMenstrualCyclesProjectionKind

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableMenstrualCyclesProjectionKind;
  v4 = [(HKCodableMenstrualCyclesProjectionKind *)&v8 description];
  dictionaryRepresentation = [(HKCodableMenstrualCyclesProjectionKind *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  kind = self->_kind;
  if (kind)
  {
    [dictionary setObject:kind forKey:@"kind"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_kind)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  kind = self->_kind;
  if (kind)
  {
    [to setKind:kind];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_kind copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    kind = self->_kind;
    if (kind | equalCopy[1])
    {
      v6 = [(NSString *)kind isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(HKCodableMenstrualCyclesProjectionKind *)self setKind:?];
  }
}

@end