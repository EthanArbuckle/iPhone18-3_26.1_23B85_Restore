@interface _CPNewsUsagePropensity
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPNewsUsagePropensity

- (unint64_t)hash
{
  other = self->_other;
  if (other >= 0.0)
  {
    v5 = other;
  }

  else
  {
    v5 = -other;
  }

  *v2.i64 = round(v5);
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  return ((*vbslq_s8(vnegq_f64(v6), v3, v2).i64 * 2654435760.0) + vcvtd_n_u64_f64(v5 - *v2.i64, 0x40uLL)) ^ (2654435761 * self->_totalEngagements);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (other = self->_other, objc_msgSend(equalCopy, "other"), other == v6))
  {
    totalEngagements = self->_totalEngagements;
    v7 = totalEngagements == [equalCopy totalEngagements];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  [(_CPNewsUsagePropensity *)self other];
  if (v4 != 0.0)
  {
    other = self->_other;
    PBDataWriterWriteFloatField();
  }

  if ([(_CPNewsUsagePropensity *)self totalEngagements])
  {
    totalEngagements = self->_totalEngagements;
    PBDataWriterWriteInt32Field();
  }
}

@end