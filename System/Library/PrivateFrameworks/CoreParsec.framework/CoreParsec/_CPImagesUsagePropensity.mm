@interface _CPImagesUsagePropensity
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPImagesUsagePropensity

- (unint64_t)hash
{
  v2.i32[0] = LODWORD(self->_recentResult);
  v3.i32[0] = v2.i32[0];
  v3.i32[1] = LODWORD(self->_zkw);
  v3.i64[1] = *&self->_other;
  v2.i32[1] = v3.i32[1];
  v4 = vcvtq_f64_f32(*&v3.u32[2]);
  v5 = vcvtq_f64_f32(v2);
  v6 = vcltzq_f32(v3);
  v7.i64[0] = SLODWORD(v6.f64[0]);
  v7.i64[1] = SHIDWORD(v6.f64[0]);
  v8 = v7;
  v7.i64[0] = SLODWORD(v6.f64[1]);
  v7.i64[1] = SHIDWORD(v6.f64[1]);
  v9 = vbslq_s8(v7, vnegq_f64(v4), v4);
  v10 = vbslq_s8(v8, vnegq_f64(v5), v5);
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v11 = vrndaq_f64(v10);
  v12 = vrndaq_f64(v9);
  v13 = vsubq_f64(v9, v12);
  v14 = vsubq_f64(v10, v11);
  v15 = vdupq_n_s64(0x3BF0000000000000uLL);
  v16 = vdupq_n_s64(0x43F0000000000000uLL);
  v17 = vnegq_f64(v6);
  v18 = vbslq_s8(v17, vmlsq_f64(v11, v16, vrndq_f64(vmulq_f64(v11, v15))), v11);
  v19 = vbslq_s8(v17, vmlsq_f64(v12, v16, vrndq_f64(vmulq_f64(v12, v15))), v12);
  v20 = vdupq_n_s64(0x41E3C6EF36200000uLL);
  v21 = vcvtq_u64_f64(vmulq_f64(v19, v20));
  v22 = vaddq_s64(v21, vcvtq_n_u64_f64(v13, 0x40uLL));
  v23 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(v18, v20)), vcvtq_n_u64_f64(v14, 0x40uLL));
  image = self->_image;
  if (image >= 0.0)
  {
    v25 = image;
  }

  else
  {
    v25 = -image;
  }

  *v21.i64 = round(v25);
  v20.f64[0] = *v21.i64 - trunc(*v21.i64 * 5.42101086e-20) * 1.84467441e19;
  v26 = veorq_s8(v23, v22);
  return *&veor_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) ^ ((*vbslq_s8(v17, v20, v21).i64 * 2654435760.0) + vcvtd_n_u64_f64(v25 - *v21.i64, 0x40uLL)) ^ (2654435761 * self->_totalEngagements);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_7;
  }

  zkw = self->_zkw;
  [equalCopy zkw];
  if (zkw != v6)
  {
    goto LABEL_7;
  }

  recentResult = self->_recentResult;
  [equalCopy recentResult];
  if (recentResult != v8)
  {
    goto LABEL_7;
  }

  other = self->_other;
  [equalCopy other];
  if (other == v10 && (querySuggestion = self->_querySuggestion, [equalCopy querySuggestion], querySuggestion == v12) && (image = self->_image, objc_msgSend(equalCopy, "image"), image == v14))
  {
    totalEngagements = self->_totalEngagements;
    v15 = totalEngagements == [equalCopy totalEngagements];
  }

  else
  {
LABEL_7:
    v15 = 0;
  }

  return v15;
}

- (void)writeTo:(id)to
{
  to;
  [(_CPImagesUsagePropensity *)self zkw];
  if (v4 != 0.0)
  {
    zkw = self->_zkw;
    PBDataWriterWriteFloatField();
  }

  [(_CPImagesUsagePropensity *)self recentResult];
  if (v6 != 0.0)
  {
    recentResult = self->_recentResult;
    PBDataWriterWriteFloatField();
  }

  [(_CPImagesUsagePropensity *)self other];
  if (v8 != 0.0)
  {
    other = self->_other;
    PBDataWriterWriteFloatField();
  }

  [(_CPImagesUsagePropensity *)self querySuggestion];
  if (v10 != 0.0)
  {
    querySuggestion = self->_querySuggestion;
    PBDataWriterWriteFloatField();
  }

  [(_CPImagesUsagePropensity *)self image];
  if (v12 != 0.0)
  {
    image = self->_image;
    PBDataWriterWriteFloatField();
  }

  if ([(_CPImagesUsagePropensity *)self totalEngagements])
  {
    totalEngagements = self->_totalEngagements;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

@end