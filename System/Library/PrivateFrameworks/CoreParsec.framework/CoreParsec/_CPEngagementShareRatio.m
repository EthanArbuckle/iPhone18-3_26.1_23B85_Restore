@interface _CPEngagementShareRatio
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPEngagementShareRatio

- (unint64_t)hash
{
  v2.i32[0] = LODWORD(self->_shareOfInternetEngagements);
  v2.i32[1] = LODWORD(self->_shareOfEngagements);
  v3 = vcvtq_f64_f32(v2);
  v4 = vcltz_f32(v2);
  v5.i64[0] = v4.i32[0];
  v5.i64[1] = v4.i32[1];
  v6 = vbslq_s8(v5, vnegq_f64(v3), v3);
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  v7 = vrndaq_f64(v6);
  v8 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(vbslq_s8(vnegq_f64(v3), vmlaq_f64(v7, vdupq_n_s64(0xC3F0000000000000), vrndq_f64(vmulq_f64(v7, vdupq_n_s64(0x3BF0000000000000uLL)))), v7), vdupq_n_s64(0x41E3C6EF36200000uLL))), vcvtq_n_u64_f64(vsubq_f64(v6, v7), 0x40uLL));
  return veorq_s8(v8, vdupq_laneq_s64(v8, 1)).u64[0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (shareOfEngagements = self->_shareOfEngagements, objc_msgSend(v4, "shareOfEngagements"), shareOfEngagements == v6))
  {
    shareOfInternetEngagements = self->_shareOfInternetEngagements;
    [v4 shareOfInternetEngagements];
    v7 = shareOfInternetEngagements == v10;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  [(_CPEngagementShareRatio *)self shareOfEngagements];
  if (v4 != 0.0)
  {
    shareOfEngagements = self->_shareOfEngagements;
    PBDataWriterWriteFloatField();
  }

  [(_CPEngagementShareRatio *)self shareOfInternetEngagements];
  if (v6 != 0.0)
  {
    shareOfInternetEngagements = self->_shareOfInternetEngagements;
    PBDataWriterWriteFloatField();
  }
}

@end