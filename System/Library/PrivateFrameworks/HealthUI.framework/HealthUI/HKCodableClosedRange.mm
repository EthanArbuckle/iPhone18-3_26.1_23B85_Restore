@interface HKCodableClosedRange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableClosedRange

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableClosedRange;
  v4 = [(HKCodableClosedRange *)&v8 description];
  v5 = [(HKCodableClosedRange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lowerBound];
  [v3 setObject:v4 forKey:@"lowerBound"];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_upperBound];
  [v3 setObject:v5 forKey:@"upperBound"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = *&self->_lowerBound;
  *(result + 2) = *&self->_upperBound;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_lowerBound == v4[1] && self->_upperBound == v4[2];

  return v5;
}

- (unint64_t)hash
{
  lowerBound = self->_lowerBound;
  if (lowerBound < 0.0)
  {
    lowerBound = -lowerBound;
  }

  *v3.i64 = floor(lowerBound + 0.5);
  v6 = (lowerBound - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vnegq_f64(v7);
  v9 = vbslq_s8(v8, v4, v3);
  v10 = 2654435761u * *v9.i64;
  v11 = v10 + v6;
  if (v6 <= 0.0)
  {
    v11 = 2654435761u * *v9.i64;
  }

  v12 = v10 - fabs(v6);
  if (v6 >= 0.0)
  {
    v12 = v11;
  }

  upperBound = self->_upperBound;
  if (upperBound < 0.0)
  {
    upperBound = -upperBound;
  }

  *v2.i64 = floor(upperBound + 0.5);
  v14 = (upperBound - *v2.i64) * 1.84467441e19;
  *v9.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v2.i64[0] = vbslq_s8(v8, v9, v2).i64[0];
  v15 = 2654435761u * *v2.i64;
  v16 = v15 + v14;
  if (v14 <= 0.0)
  {
    v16 = 2654435761u * *v2.i64;
  }

  v17 = v15 - fabs(v14);
  if (v14 >= 0.0)
  {
    v17 = v16;
  }

  return v17 ^ v12;
}

@end