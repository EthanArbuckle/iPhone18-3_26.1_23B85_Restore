@interface _CPEngagementTriggerRatio
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPEngagementTriggerRatio

- (unint64_t)hash
{
  v2 = *&self->_go;
  v3 = vcvtq_f64_f32(v2);
  v4 = vcltz_f32(v2);
  v5.i64[0] = v4.i32[0];
  v5.i64[1] = v4.i32[1];
  v6 = vbslq_s8(v5, vnegq_f64(v3), v3);
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  v7 = vrndaq_f64(v6);
  v8 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(vbslq_s8(vnegq_f64(v3), vmlaq_f64(v7, vdupq_n_s64(0xC3F0000000000000), vrndq_f64(vmulq_f64(v7, vdupq_n_s64(0x3BF0000000000000uLL)))), v7), vdupq_n_s64(0x41E3C6EF36200000uLL))), vcvtq_n_u64_f64(vsubq_f64(v6, v7), 0x40uLL));
  return v8.i64[0] ^ (2654435761 * self->_totalEngagements) ^ v8.i64[1];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (go = self->_go, objc_msgSend(equalCopy, "go"), go == v6) && (tap = self->_tap, objc_msgSend(equalCopy, "tap"), tap == v8))
  {
    totalEngagements = self->_totalEngagements;
    v9 = totalEngagements == [equalCopy totalEngagements];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)writeTo:(id)to
{
  to;
  [(_CPEngagementTriggerRatio *)self go];
  if (v4 != 0.0)
  {
    go = self->_go;
    PBDataWriterWriteFloatField();
  }

  [(_CPEngagementTriggerRatio *)self tap];
  if (v6 != 0.0)
  {
    tap = self->_tap;
    PBDataWriterWriteFloatField();
  }

  if ([(_CPEngagementTriggerRatio *)self totalEngagements])
  {
    totalEngagements = self->_totalEngagements;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

@end