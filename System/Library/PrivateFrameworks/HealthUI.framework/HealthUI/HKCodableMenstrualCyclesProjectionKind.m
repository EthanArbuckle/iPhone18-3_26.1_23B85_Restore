@interface HKCodableMenstrualCyclesProjectionKind
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableMenstrualCyclesProjectionKind

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableMenstrualCyclesProjectionKind;
  v4 = [(HKCodableMenstrualCyclesProjectionKind *)&v8 description];
  v5 = [(HKCodableMenstrualCyclesProjectionKind *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  kind = self->_kind;
  if (kind)
  {
    [v3 setObject:kind forKey:@"kind"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_kind)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  kind = self->_kind;
  if (kind)
  {
    [a3 setKind:kind];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_kind copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    kind = self->_kind;
    if (kind | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(HKCodableMenstrualCyclesProjectionKind *)self setKind:?];
  }
}

@end