@interface MTRPluginPBMDate
- (BOOL)isEqual:(id)equal;
- (MTRPluginPBMDate)initWithDate:(id)date;
- (NSDate)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setDate:(id)date;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMDate

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMDate;
  v4 = [(MTRPluginPBMDate *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMDate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_value];
    [dictionary setObject:v4 forKey:@"value"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    value = self->_value;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = *&self->_value;
    *(to + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 1) = *&self->_value;
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
  if ((*&self->_has & 1) == 0)
  {
    return 0;
  }

  value = self->_value;
  if (value < 0.0)
  {
    value = -value;
  }

  *v2.i64 = floor(value + 0.5);
  v6 = (value - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  result = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      result += v6;
    }
  }

  else
  {
    result -= fabs(v6);
  }

  return result;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 16))
  {
    self->_value = *(from + 1);
    *&self->_has |= 1u;
  }
}

- (MTRPluginPBMDate)initWithDate:(id)date
{
  dateCopy = date;
  if (dateCopy && (self = [(MTRPluginPBMDate *)self init]) != 0)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    [(MTRPluginPBMDate *)self setValue:?];
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setDate:(id)date
{
  [date timeIntervalSinceReferenceDate];

  [(MTRPluginPBMDate *)self setValue:?];
}

- (NSDate)date
{
  v3 = objc_alloc(MEMORY[0x277CBEAA8]);
  [(MTRPluginPBMDate *)self value];
  v4 = [v3 initWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

@end