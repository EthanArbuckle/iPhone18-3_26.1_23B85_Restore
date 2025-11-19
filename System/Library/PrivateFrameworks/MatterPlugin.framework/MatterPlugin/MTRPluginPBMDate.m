@interface MTRPluginPBMDate
- (BOOL)isEqual:(id)a3;
- (MTRPluginPBMDate)initWithDate:(id)a3;
- (NSDate)date;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setDate:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMDate

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMDate;
  v4 = [(MTRPluginPBMDate *)&v8 description];
  v5 = [(MTRPluginPBMDate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_value];
    [v3 setObject:v4 forKey:@"value"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    value = self->_value;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = *&self->_value;
    *(a3 + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 1) = *&self->_value;
    *(result + 16) |= 1u;
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

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) != 0 && self->_value == *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 16))
  {
    self->_value = *(a3 + 1);
    *&self->_has |= 1u;
  }
}

- (MTRPluginPBMDate)initWithDate:(id)a3
{
  v4 = a3;
  if (v4 && (self = [(MTRPluginPBMDate *)self init]) != 0)
  {
    [v4 timeIntervalSinceReferenceDate];
    [(MTRPluginPBMDate *)self setValue:?];
    self = self;
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDate:(id)a3
{
  [a3 timeIntervalSinceReferenceDate];

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