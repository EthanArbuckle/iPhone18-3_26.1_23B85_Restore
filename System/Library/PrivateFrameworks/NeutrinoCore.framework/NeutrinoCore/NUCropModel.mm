@interface NUCropModel
+ ($0AC6E346AE4835514AAA8AC86D8F4844)freeFormAspectRatio;
+ (CGRect)adjustCropRect:(CGRect)a3 inputExtent:(CGRect)a4 geometryTransform:(id)a5;
+ (void)_imageTransformFromPitch:(double)a3@<D1> yaw:(double)a4@<D2> roll:(CGFloat)a5@<D3> imageRect:(CGFloat)a6@<D4>;
- ($0AC6E346AE4835514AAA8AC86D8F4844)_currentAspectRatio:(CGRect)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)aspectRatio;
- ($0AC6E346AE4835514AAA8AC86D8F4844)originalAspectRatio;
- (BOOL)_hasDefaultValues;
- (BOOL)canGrowCropRect:(CGRect)a3 constrainWithAnchorPoint:(CGPoint)a4 strict:(BOOL)a5 withTol:(double)a6;
- (BOOL)imageContainsRect:(CGRect)a3 withTol:(double)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCropModel:(id)a3;
- (CGRect)_anchorAlignedRectFromCandidate:(CGRect)a3 withAnchor:(CGPoint)a4;
- (CGRect)_defaultCropRect;
- (CGRect)_expandedCropRectForZoom:(CGRect)a3 candidateRect:(CGRect)a4;
- (CGRect)_integralCropRect:(CGRect)a3 straightenAngle:(double)a4 anchorPoint:(CGPoint)a5;
- (CGRect)_widestCropRect;
- (CGRect)cropRect;
- (CGRect)getCropRect:(CGRect)a3 newCropRect:(CGRect)a4 pitch:(double)a5 yaw:(double)a6 roll:(double)a7 constrainWithAnchorPoint:(CGPoint)a8 strict:(BOOL)a9 aspectRatioIsFreeForm:(BOOL)a10 hitVertexId:(unint64_t *)a11;
- (CGRect)getCropRectThatCompletelyContainsMasterImageForPitch:(double)a3 yaw:(double)a4 roll:(double)a5;
- (CGRect)integralCropRect:(CGRect)a3;
- (CGRect)masterImageRect;
- (CGSize)masterImageSize;
- (NUCropModel)init;
- (NUCropModel)initWithMasterImageRect:(CGRect)a3;
- (NUCropModel)initWithMasterImageRect:(CGRect)a3 stitchedImageRect:(CGRect)a4;
- (NUCropModel)initWithMasterImageSize:(CGSize)a3 stitchedImageSize:(CGSize)a4;
- (double)_defaultImageCenter;
- (double)_getBoundingQuadFromPitch:(double)a3 yaw:(double)a4 roll:(CGFloat)a5 withExpansionTol:(CGFloat)a6 imageRect:(CGFloat)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (uint64_t)_getBoundingQuadFromPitch:(double)a3 yaw:(double)a4 roll:(double)a5 withExpansionTol:;
- (unint64_t)_hitMaskFromRect:(CGRect)a3 withTol:(double)a4;
- (unint64_t)constrainedMoveCropRectBy:(CGVector)a3 strict:(BOOL)a4 startRect:(CGRect)a5;
- (unint64_t)hash;
- (unint64_t)setAspectRatio:(id)a3 constrainCropRect:(CGRect)a4 withTargetArea:(double)a5;
- (unint64_t)setCropRect:(CGRect)a3 newCropRect:(CGRect)a4 constrainWithAnchorPoint:(CGPoint)a5 strict:(BOOL)a6;
- (unint64_t)setForZoomCropRect:(CGRect)a3 newCropRect:(CGRect)a4;
- (unint64_t)setPitchAngle:(double)a3 constrainCropRectWithTargetArea:(double)a4 startRect:(CGRect)a5 startAngle:(double)a6;
- (unint64_t)setRollAngle:(double)a3 constrainCropRectWithTargetArea:(double)a4 startRect:(CGRect)a5 startAngle:(double)a6;
- (unint64_t)setYawAngle:(double)a3 constrainCropRectWithTargetArea:(double)a4 startRect:(CGRect)a5 startAngle:(double)a6;
- (void)_debugPrintHitMask:(unint64_t)a3;
- (void)_setCropRect:(CGRect)a3;
- (void)_setCropRect:(CGRect)a3 anchor:(CGPoint)a4;
- (void)_setCropRectWithConstantSize:(CGRect)a3;
- (void)_setToDefaultValues;
- (void)makeCurrentAspectRatioFreeForm;
@end

@implementation NUCropModel

- ($0AC6E346AE4835514AAA8AC86D8F4844)aspectRatio
{
  height = self->_aspectRatio.height;
  width = self->_aspectRatio.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (CGRect)masterImageRect
{
  x = self->_masterImageRect.origin.x;
  y = self->_masterImageRect.origin.y;
  width = self->_masterImageRect.size.width;
  height = self->_masterImageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)originalAspectRatio
{
  height = self->_masterImageRect.size.height;
  width = self->_masterImageRect.size.width;
  v4 = height;
  result.var1 = v4;
  result.var0 = width;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_currentAspectRatio:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  if ([(NUCropModel *)self aspectRatioIsFreeForm:a3.origin.x])
  {
    v6 = width;
    v7 = height;
  }

  else
  {
    v6 = self->_aspectRatio.width;
    v7 = self->_aspectRatio.height;
  }

  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (void)makeCurrentAspectRatioFreeForm
{
  self->_aspectRatio.width = +[NUCropModel freeFormAspectRatio];
  self->_aspectRatio.height = v3;
  self->_isAutoCrop = 0;
}

- (unint64_t)setAspectRatio:(id)a3 constrainCropRect:(CGRect)a4 withTargetArea:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (!a3.var0 && a3.var1 || !a3.var1 && a3.var0)
  {
    a3.var0 = [objc_opt_class() freeFormAspectRatio];
    a3.var1 = v11;
  }

  [(NUCropModel *)self setAspectRatio:a3.var0, a3.var1];
  if (![(NUCropModel *)self aspectRatioIsFreeForm])
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MidX = CGRectGetMidX(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    MidY = CGRectGetMidY(v22);
    v14 = [(NUCropModel *)self aspectRatio];
    v16 = aspectRatioConstrainedFromRect(v14, v15, x, y, width, height, MidX, MidY, a5);
    [(NUCropModel *)self setCropRect:v16 newCropRect:v17 constrainWithAnchorPoint:v18, v19, v16, v17, v18, v19, *&MidX, *&MidY];
  }

  return self->_hitVertexID;
}

- (unint64_t)setYawAngle:(double)a3 constrainCropRectWithTargetArea:(double)a4 startRect:(CGRect)a5 startAngle:(double)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3 - a6;
  [(NUCropModel *)self _getBoundingQuadFromPitch:self->_pitchRadians yaw:a3 roll:self->_rollRadians];
  v43[0] = v14;
  v43[1] = v15;
  v43[2] = v16;
  v43[3] = v17;
  v14.f64[0] = x;
  v15.f64[0] = y;
  v16.f64[0] = width;
  v17.f64[0] = height;
  MidX = CGRectGetMidX(*v14.f64);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MidY = CGRectGetMidY(v44);
  v40 = *self->_imageCenter;
  v37 = *&self->_imageCenter[8] + MidY - *(&v40 + 1) + (MidX - *&v40) * 0.0;
  v38 = *&v40 + (MidY - *(&v40 + 1)) * 0.0 + cos(v13) * (MidX - *&v40);
  v20.f64[0] = v38 - width * 0.5;
  v21 = v37 - height * 0.5;
  if (width * height < a4)
  {
    v22 = [(NUCropModel *)self _currentAspectRatio:?];
    v20.f64[0] = _rectWithAspectRatio(v22, v23, v38 - width * 0.5, v37 - height * 0.5, width, height, a4 / (width * height));
    width = v24;
    height = v25;
  }

  v20.f64[1] = v21;
  v26.f64[0] = width + v20.f64[0];
  v27 = v21;
  v28.f64[1] = v21;
  v28.f64[0] = width + v20.f64[0];
  v42[0] = v20;
  v42[1] = v28;
  v41 = v20.f64[0];
  v29.f64[0] = v20.f64[0];
  v29.f64[1] = height + v28.f64[1];
  v26.f64[1] = height + v28.f64[1];
  v42[2] = v29;
  v42[3] = v26;
  if ((NU::Quad2d::contains(v43, v42) & 1) == 0)
  {
    v30.f64[0] = v38;
    v30.f64[1] = v37;
    v39 = v30;
    if (NU::Quad2d::contains(v43, v30))
    {
      [(NUCropModel *)self _currentAspectAsDouble:v41, v27, width, height];
      NU::Quad2d::findInscribedAxisAlignedAspectFitRect(v43, v39, v31);
      v41 = v32;
      v27 = v33;
      width = v34;
      height = v35;
    }
  }

  [(NUCropModel *)self setYawRadians:a3];
  [(NUCropModel *)self _setCropRect:v41, v27, width, height];
  return self->_hitVertexID;
}

- (unint64_t)setPitchAngle:(double)a3 constrainCropRectWithTargetArea:(double)a4 startRect:(CGRect)a5 startAngle:(double)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3 - a6;
  [NUCropModel _getBoundingQuadFromPitch:"_getBoundingQuadFromPitch:yaw:roll:" yaw:? roll:?];
  v47[0] = v12;
  v47[1] = v13;
  v47[2] = v14;
  v47[3] = v15;
  v12.f64[0] = x;
  v13.f64[0] = y;
  v14.f64[0] = width;
  v15.f64[0] = height;
  MidX = CGRectGetMidX(*v12.f64);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  MidY = CGRectGetMidY(v48);
  v44 = *self->_imageCenter;
  v18 = *&self->_imageCenter[8];
  v19 = MidX - *&v44 + (MidY - *(&v44 + 1)) * 0.0;
  v20 = v18 + cos(v11) * (MidY - *(&v44 + 1)) + (MidX - *&v44) * 0.0;
  v42 = *&v44 + v19;
  v21.f64[0] = *&v44 + v19 - width * 0.5;
  v39 = v20;
  v22 = v20 - height * 0.5;
  if (width * height < a4)
  {
    v38 = v20 - height * 0.5;
    v23 = [(NUCropModel *)self _currentAspectRatio:?];
    v21.f64[0] = _rectWithAspectRatio(v23, v24, *&v44 + v19 - width * 0.5, v38, width, height, a4 / (width * height));
    width = v25;
    height = v26;
  }

  v21.f64[1] = v22;
  v45 = v21.f64[0];
  v46[0] = v21;
  v27.f64[0] = width + v21.f64[0];
  v28 = v22;
  v29.f64[1] = v22;
  v29.f64[0] = width + v21.f64[0];
  v46[1] = v29;
  v30.f64[0] = v21.f64[0];
  v30.f64[1] = height + v28;
  v27.f64[1] = height + v28;
  v46[2] = v30;
  v46[3] = v27;
  if ((NU::Quad2d::contains(v47, v46) & 1) == 0)
  {
    v31.n128_f64[0] = v42;
    v31.n128_f64[1] = v39;
    v43 = v31;
    [(NUCropModel *)self _currentAspectAsDouble:v45, v28, width, height];
    NU::Quad2d::findInscribedAxisAlignedAspectFitRect(v47, v43, v32);
    v45 = v33;
    v28 = v34;
    width = v35;
    height = v36;
  }

  [(NUCropModel *)self setPitchRadians:a3];
  [(NUCropModel *)self _setCropRect:v45, v28, width, height];
  return self->_hitVertexID;
}

- (unint64_t)setRollAngle:(double)a3 constrainCropRectWithTargetArea:(double)a4 startRect:(CGRect)a5 startAngle:(double)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3 - a6;
  [(NUCropModel *)self _getBoundingQuadFromPitch:self->_pitchRadians yaw:self->_yawRadians roll:a3];
  v65[0] = v12;
  v65[1] = v13;
  v65[2] = v14;
  v65[3] = v15;
  v12.f64[0] = x;
  v13.f64[0] = y;
  v15.f64[0] = height;
  v14.f64[0] = width;
  MidX = CGRectGetMidX(*v12.f64);
  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.height = height;
  v66.size.width = width;
  MidY = CGRectGetMidY(v66);
  v17.f64[0] = MidX;
  v17.f64[1] = MidY;
  v57 = v17;
  [(NUCropModel *)self masterImageRect];
  v18 = v67.origin.x;
  v19 = v67.origin.y;
  v20 = v67.size.width;
  v21 = v67.size.height;
  v53 = CGRectGetMidX(v67);
  v68.origin.x = v18;
  v68.origin.y = v19;
  v68.size.width = v20;
  v68.size.height = v21;
  v22 = CGRectGetMidY(v68);
  v23.f64[0] = v53;
  v23.f64[1] = v22;
  v54 = v23;
  v25 = __sincos_stret(v11);
  v24.f64[0] = v25.__cosval;
  v26.f64[0] = -v25.__sinval;
  v26.f64[1] = v25.__cosval;
  v24.f64[1] = v25.__sinval;
  v27 = height;
  v28 = vsubq_f64(v57, v54);
  v29 = vmlaq_laneq_f64(vmulq_n_f64(v24, v28.f64[0]), v26, v28, 1);
  v30 = width;
  v31.f64[0] = width;
  v31.f64[1] = height;
  v32 = vaddq_f64(v54, v29);
  __asm { FMOV            V1.2D, #-0.5 }

  v55 = v32;
  v38 = vmlaq_f64(v32, _Q1, v31);
  if (width * height < a4)
  {
    v39 = v38.f64[1];
    v58 = v38.f64[0];
    v40 = [(NUCropModel *)self _currentAspectRatio:*&v55];
    v38.f64[0] = _rectWithAspectRatio(v40, v41, v58, v39, width, height, a4 / (width * height));
    v38.f64[1] = v42;
  }

  v59 = v38.f64[0];
  v61 = v27;
  v63 = v30;
  v64[0] = v38;
  v43.f64[0] = v30 + v38.f64[0];
  v44 = v38.f64[1];
  v45.f64[1] = v38.f64[1];
  v45.f64[0] = v30 + v38.f64[0];
  v64[1] = v45;
  v46.f64[0] = v38.f64[0];
  v46.f64[1] = v27 + v38.f64[1];
  v43.f64[1] = v27 + v38.f64[1];
  v64[2] = v46;
  v64[3] = v43;
  if ((NU::Quad2d::simpleContains(v65, v64) & 1) == 0)
  {
    [(NUCropModel *)self _currentAspectAsDouble:v59, v44, v63, v61];
    NU::Quad2d::findInscribedAxisAlignedAspectFitRect(v65, v55, v47);
    v44 = v48;
    v63 = v49;
    v59 = v50;
    v61 = v51;
  }

  [(NUCropModel *)self setRollRadians:a3, v55.n128_u64[0]];
  [(NUCropModel *)self _setCropRect:v59, v44, v63, v61];
  return self->_hitVertexID;
}

- (unint64_t)constrainedMoveCropRectBy:(CGVector)a3 strict:(BOOL)a4 startRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  dy = a3.dy;
  dx = a3.dx;
  [(NUCropModel *)self _getBoundingQuadFromPitch:self->_pitchRadians yaw:self->_yawRadians roll:self->_rollRadians];
  v76 = v14;
  v77 = v13;
  v84[0] = v13;
  v84[1] = v14;
  v74 = v16;
  v75 = v15;
  v84[2] = v15;
  v84[3] = v16;
  v13.f64[0] = x;
  v14.f64[0] = y;
  v15.f64[0] = width;
  v16.f64[0] = height;
  v96 = CGRectOffset(*(&v14 - 8), dx, dy);
  v17 = v96.size.height;
  v96.size.height = v96.origin.x;
  v18 = v96.origin.y;
  p_cropRect = &self->_cropRect;
  origin = self->_cropRect.origin;
  v72 = v96.origin;
  v78 = *&v96.size.height;
  rect2 = v96.size.width;
  v96.origin.x = v96.origin.x + v96.size.width;
  v96.size.width = v96.origin.x;
  v20 = v96.origin.y;
  v91 = *&v96.size.height;
  size = v96.size;
  v73 = v96.origin.y;
  v96.size.width = v96.size.height;
  v21 = v96.origin.y + v17;
  v22 = v96.origin.y + v17;
  v93 = v96.size;
  v94 = v96.origin;
  if ((NU::Quad2d::contains(v84, &v91) & 1) == 0)
  {
    v83 = width / height;
    v25 = self->_cropRect.size;
    v95.origin = p_cropRect->origin;
    v95.size = v25;
    rect2a = v25;
    v26 = vaddq_f64(v25, v95.origin);
    v27.width = v26.f64[0];
    v27.height = v95.origin.y;
    v91 = v95.origin;
    size = v27;
    v68 = v27;
    v27.width = v95.origin.x;
    v27.height = v26.f64[1];
    v67 = v27;
    v93 = v27;
    v94 = v26;
    v69 = v26;
    v70 = v95.origin;
    v28 = NU::Quad2d::equivalentWithTolerance(v84, &v91, 0.000244140625);
    v36.f64[0] = v70.f64[0];
    v17 = rect2a.height;
    v24 = rect2a.width;
    v37 = v70.f64[1];
    if (!v28)
    {
      v87 = v70;
      v88 = v68;
      v89 = v67;
      v90 = v69;
      if (NU::Quad2d::contains(v84, &v87))
      {
        v41 = vsubq_f64(v78, origin);
        v87 = v95.origin;
        v88 = v95.size;
        rect2b = vmulq_n_f64(v41, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v41, v41))));
        NU::Quad2d::boundingRect(v84);
        v43.f64[1] = v42;
        v44 = sqrt(vaddvq_f64(vmulq_f64(v43, v43)));
        v45 = self->_cropRect.size;
        v86[0] = p_cropRect->origin;
        v86[1] = v45;
        v86[0] = vmlaq_n_f64(v86[0], rect2b, v44);
        v85 = &unk_1F3F44A48;
        v46 = NU::Quad2d::computeLimitRect(v84, &v87, v86, &v85, 0.000244140625);
      }

      else
      {
        v97.origin.x = NU::Quad2d::findInscribedUnscaledFitRect(v84, &v95, 0.000000953674316, v38, v39, v40);
        v49 = v97.origin.x;
        v50 = v97.origin.y;
        v51 = v97.size.width;
        v52 = v97.size.height;
        v98.origin = v70;
        v98.size = rect2a;
        v28 = CGRectEqualToRect(v97, v98);
        if (!v28)
        {
          v17 = v52;
          v24 = v51;
          v37 = v50;
          v36.f64[0] = v49;
          if (a4)
          {
            goto LABEL_10;
          }

          goto LABEL_12;
        }

        rect2c = CGRectGetMidX(self->_cropRect);
        MidY = CGRectGetMidY(self->_cropRect);
        v54.f64[0] = rect2c;
        v54.f64[1] = MidY;
        v87 = v54;
        NU::Quad2d::findInscribedAxisAlignedAspectFitRectWithAnchor(v84, v87.f64, &v95, &v95, &v83, 0.000000953674316);
      }

      v36.f64[0] = v46;
      v37 = v47;
      v17 = v48;
    }

    if (a4)
    {
LABEL_10:
      v36.f64[1] = v37;
LABEL_13:
      __asm
      {
        FMOV            V0.2D, #8.0
        FMOV            V1.2D, #0.125
      }

      v23 = vmulq_f64(vrndaq_f64(vmulq_f64(v36, _Q0)), _Q1);
      goto LABEL_14;
    }

LABEL_12:
    v55.f64[1] = v72.y;
    v66.f64[0] = v72.x - v36.f64[0];
    v66.f64[1] = v73 - v37;
    v55.f64[0] = v36.f64[0];
    deriveTranslatedRectFromConstrainedRect(v28, v29, v30, v31, v32, v33, v34, v35, v55, v37, v24, v17, v77, v76, v75, v74, v66);
    v36.f64[0] = v56;
    v17 = v57;
    v36.f64[1] = v58;
    goto LABEL_13;
  }

  v23 = v78;
  v24 = rect2;
LABEL_14:
  [(NUCropModel *)self _setCropRect:*&v23, v24, v17];
  return self->_hitVertexID;
}

- (CGRect)getCropRectThatCompletelyContainsMasterImageForPitch:(double)a3 yaw:(double)a4 roll:(double)a5
{
  [(NUCropModel *)self masterImageRect];
  [(NUCropModel *)self _getBoundingQuadFromPitch:a3 yaw:a4 roll:a5 imageRect:v9, v10, v11, v12];
  v66[0] = v13;
  v66[1] = v14;
  v66[2] = v15;
  v66[3] = v16;
  v17 = NU::Quad2d::boundingRect(v66);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(NUCropModel *)self cropRect];
  v73.origin.x = v17;
  v73.origin.y = v19;
  v73.size.width = v21;
  v73.size.height = v23;
  if (CGRectContainsRect(v67, v73))
  {
    [(NUCropModel *)self cropRect];
LABEL_13:
    v40 = v26;
    v31 = v27;
    goto LABEL_14;
  }

  v68.origin.x = v17;
  v68.origin.y = v19;
  v68.size.width = v21;
  v68.size.height = v23;
  v28 = round(CGRectGetMidX(v68));
  v69.origin.x = v17;
  v69.origin.y = v19;
  v69.size.width = v21;
  v69.size.height = v23;
  v29 = round(CGRectGetMidY(v69));
  v30 = round(v21);
  v31 = round(v23);
  v32 = v30 / v31;
  [(NUCropModel *)self cropRect];
  v33 = [(NUCropModel *)self _currentAspectRatio:?];
  v35 = v33 / v34;
  v36 = INFINITY;
  if (!v33)
  {
    v36 = NAN;
  }

  if (!v34)
  {
    v35 = v36;
  }

  v37 = v32 < v35;
  v38 = round(v31 * v32 / v35);
  v39 = round(v30 * v35 / v32);
  if (v37)
  {
    v40 = v39;
  }

  else
  {
    v31 = v38;
    v40 = v30;
  }

  v41.f64[0] = v28 - v40 * 0.5;
  v62 = v41.f64[0];
  v63 = v29 - v31 * 0.5;
  v41.f64[1] = v63;
  v60 = v41;
  [(NUCropModel *)self masterImageRect];
  [(NUCropModel *)self _getBoundingQuadFromPitch:a3 yaw:a4 roll:a5 imageRect:v42, v43, v44, v45];
  v65[0] = v46;
  v65[1] = v47;
  v65[2] = v48;
  v65[3] = v49;
  v46.f64[0] = v40 + v62;
  v47.f64[0] = v40 + v62;
  v47.f64[1] = v63;
  v48.f64[0] = v60.f64[0];
  v64[0] = v60;
  v64[1] = v47;
  v48.f64[1] = v31 + v63;
  v46.f64[1] = v31 + v63;
  v64[2] = v48;
  v64[3] = v46;
  if ((NU::Quad2d::contains(v65, v64) & 1) == 0)
  {
    [(NUCropModel *)self cropRect];
    v51 = v50;
    v59 = v53;
    v61 = v52;
    v58 = v54;
    [(NUCropModel *)self cropRect];
    MidX = CGRectGetMidX(v70);
    [(NUCropModel *)self cropRect];
    [(NUCropModel *)self getCropRect:1 newCropRect:[(NUCropModel *)self aspectRatioIsFreeForm] pitch:0 yaw:v51 roll:v61 constrainWithAnchorPoint:v59 strict:v58 aspectRatioIsFreeForm:v62 hitVertexId:v63, v40, v31, *&a3, *&a4, *&a5, *&MidX, CGRectGetMidY(v71)];
    goto LABEL_13;
  }

  v24 = v28 - v40 * 0.5;
  v25 = v29 - v31 * 0.5;
LABEL_14:
  v56 = v40;
  v57 = v31;
  result.size.height = v57;
  result.size.width = v56;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)getCropRect:(CGRect)a3 newCropRect:(CGRect)a4 pitch:(double)a5 yaw:(double)a6 roll:(double)a7 constrainWithAnchorPoint:(CGPoint)a8 strict:(BOOL)a9 aspectRatioIsFreeForm:(BOOL)a10 hitVertexId:(unint64_t *)a11
{
  v11 = a9;
  y_low = LODWORD(a8.y);
  x_low = LOBYTE(a8.x);
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v197 = *MEMORY[0x1E69E9840];
  v183.f64[0] = a3.origin.x;
  v183.f64[1] = a3.origin.y;
  v169 = a3.size.width;
  v170 = a3.size.height;
  v184 = a3.size.width;
  v185 = a3.size.height;
  v19 = 0.0;
  _ZF = a4.size.width == 0.0;
  v20 = 0.0;
  if (!_ZF)
  {
    v20 = (v198.f64[0] - a4.origin.x) / width;
  }

  if (a4.size.height != 0.0)
  {
    v19 = (v198.f64[1] - y) / a4.size.height;
  }

  v172 = v20;
  v173 = v19;
  v21 = a4.origin.x + v20 * (width + -2.0);
  v22 = y + v19 * (a4.size.height + -2.0);
  v23 = fmin(x, v21);
  v24 = fmin(y, v22);
  v25 = fmax(x + width, v21 + 2.0) - v23;
  v26 = fmax(y + a4.size.height, v22 + 2.0) - v24;
  [(NUCropModel *)self _getBoundingQuadFromPitch:*&a8.x yaw:*&a8.y roll:a9, a10, a11, a5, a6, a7];
  v167 = v28;
  v168 = v27;
  v182[0] = v27;
  v182[1] = v28;
  v165 = v30;
  v166 = v29;
  v182[2] = v29;
  v182[3] = v30;
  [(NUCropModel *)self _anchorAlignedRectFromCandidate:v23 withAnchor:v24, v25, v26, *&v198];
  v186.origin.x = v33;
  v186.origin.y = v34;
  v186.size.width = v31;
  v186.size.height = v32;
  if (self->_aspectRatio.width)
  {
    _ZF = self->_aspectRatio.height == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v36 = v169;
  }

  else
  {
    v36 = self->_aspectRatio.width;
  }

  if (_ZF)
  {
    v37 = v170;
  }

  else
  {
    v37 = self->_aspectRatio.height;
  }

  if (y_low)
  {
    v38 = v31;
    v39 = v32;
  }

  else
  {
    v40 = aspectRatioConstrainedFromRect(v36, v37, x, y, width, height, v198.f64[0], v198.f64[1], width * height);
    v38 = v41;
    v39 = v42;
    v186.origin.x = v40;
    v186.origin.y = v43;
    v186.size.width = v41;
    v186.size.height = v42;
  }

  v181 = v198;
  v44.f64[0] = v186.origin.x;
  v45.f64[0] = v38 + v186.origin.x;
  v46 = v186.origin.y;
  v47.f64[1] = v186.origin.y;
  v47.f64[0] = v38 + v186.origin.x;
  origin = v186.origin;
  v190 = v47;
  v171 = v186.origin.x;
  v44.f64[1] = v186.origin.y + v39;
  v45.f64[1] = v186.origin.y + v39;
  v191 = v44;
  v192 = v45;
  if ((NU::Quad2d::simpleContains(v182, &origin) & 1) == 0)
  {
    if (!y_low)
    {
      v64 = v36 / v37;
      v65 = INFINITY;
      if (!v36)
      {
        v65 = NAN;
      }

      if (!v37)
      {
        v64 = v65;
      }

      origin.f64[0] = v64;
      NU::Quad2d::findInscribedAxisAlignedAspectFitRectWithAnchor(v182, v181.f64, &v183, &v186, &origin, 0.000244140625);
      goto LABEL_116;
    }

    if (fabs(v172 + -0.5) < 0.01 && (fabs(v173 + -1.0) < 0.01 || fabs(v173) < 0.01))
    {
      NU::RectT<double>::RectT(v193.f64, &v186);
      v66 = 100;
      v67 = v193;
      while (1)
      {
        v174 = v194;
        v68 = vaddq_f64(v67, v194);
        v69.f64[0] = v68.f64[0];
        v69.f64[1] = v67.f64[1];
        origin = v67;
        v190 = v69;
        v67.f64[1] = v68.f64[1];
        v191 = v67;
        v192 = v68;
        if ((NU::Quad2d::simpleContains(v182, &origin) & 1) != 0 || !v66)
        {
          break;
        }

        v193 = vsubq_f64(v193, v198);
        NU::RectT<double>::scale(v193.f64, 1.0, 0.5);
        v67 = vaddq_f64(v198, v193);
        v193 = v67;
        --v66;
      }

      v70.f64[0] = v193.f64[0];
      v71 = vaddq_f64(v193, v174);
      v72.f64[0] = v71.f64[0];
      origin = v193;
      v72.f64[1] = v193.f64[1];
      v190 = v72;
      v70.f64[1] = v71.f64[1];
      v191 = v70;
      v192 = v71;
      if (NU::Quad2d::simpleContains(v182, &origin))
      {
        NU::RectT<double>::RectT(buf, &v186);
        v73 = 100;
        for (i = *buf; ; *buf = i)
        {
          v175 = *&buf[16];
          v75 = vaddq_f64(i, *&buf[16]);
          v76.f64[0] = v75.f64[0];
          v76.f64[1] = i.f64[1];
          origin = i;
          v190 = v76;
          i.f64[1] = v75.f64[1];
          v191 = i;
          v192 = v75;
          v77 = NU::Quad2d::simpleContains(v182, &origin);
          _CF = v73-- != 0;
          v78 = _CF;
          if (!v77 || !v78)
          {
            break;
          }

          *buf = vsubq_f64(*buf, v198);
          NU::RectT<double>::scale(buf, 1.0, 2.0);
          i = vaddq_f64(v198, *buf);
        }

        v98 = vaddq_f64(*buf, v175);
        v99.f64[0] = *buf;
        v99.f64[1] = v98.f64[1];
        v191 = v99;
        v192 = v98;
        v98.f64[1] = *&buf[8];
        v177 = *buf;
        origin = *buf;
        v190 = v98;
        if (!NU::Quad2d::simpleContains(v182, &origin))
        {
          *&origin.f64[0] = &unk_1F3F44960;
          v190 = v198;
          *v195 = v193;
          *&v195[16] = v194;
          v187 = v177;
          v188 = *&buf[16];
          v60 = NU::Quad2d::computeLimitRect(v182, v195, &v187, &origin, 0.000000953674316);
          goto LABEL_116;
        }

        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
        }

        v100 = _NUAssertLogger;
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"findInscribedAxisAlignedFitRectWithAnchorVert : Cannot find a valid initial seed for solver"];
          *v195 = 138543362;
          *&v195[4] = v101;
          _os_log_impl(&dword_1C0184000, v100, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", v195, 0xCu);
        }

        if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
          }

          v102 = _NUAssertLogger;
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            v103 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v104 = [MEMORY[0x1E696AF00] callStackSymbols];
            v105 = [v104 componentsJoinedByString:@"\n"];
            *v195 = 138543618;
            *&v195[4] = v103;
            *&v195[12] = 2114;
            *&v195[14] = v105;
            _os_log_error_impl(&dword_1C0184000, v102, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v195, 0x16u);
          }
        }

        else
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
          }

          v102 = _NUAssertLogger;
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            v160 = [MEMORY[0x1E696AF00] callStackSymbols];
            v161 = [v160 componentsJoinedByString:@"\n"];
            *v195 = 138543362;
            *&v195[4] = v161;
            _os_log_error_impl(&dword_1C0184000, v102, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v195, 0xCu);
          }
        }

        _NUAssertContinueHandler("const CGRect NU::Quad2d::findInscribedAxisAlignedFitRectWithAnchorVert(const simd_double2 &, const CGRect &, const double) const", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Crop/NUQuad2.h", 719, @"findInscribedAxisAlignedFitRectWithAnchorVert : Cannot find a valid initial seed for solver", v128, v129, v130, v131, v164);
      }

      else
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
        }

        v92 = _NUAssertLogger;
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
        {
          v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"findInscribedAxisAlignedFitRectWithAnchorVert : Cannot find a valid initial seed for solver"];
          *buf = 138543362;
          *&buf[4] = v93;
          _os_log_impl(&dword_1C0184000, v92, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);
        }

        if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
          }

          v94 = _NUAssertLogger;
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            v95 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v96 = [MEMORY[0x1E696AF00] callStackSymbols];
            v97 = [v96 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            *&buf[4] = v95;
            *&buf[12] = 2114;
            *&buf[14] = v97;
            _os_log_error_impl(&dword_1C0184000, v94, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
          }

          v94 = _NUAssertLogger;
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            v156 = [MEMORY[0x1E696AF00] callStackSymbols];
            v157 = [v156 componentsJoinedByString:@"\n"];
            *buf = 138543362;
            *&buf[4] = v157;
            _os_log_error_impl(&dword_1C0184000, v94, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
          }
        }

        _NUAssertContinueHandler("const CGRect NU::Quad2d::findInscribedAxisAlignedFitRectWithAnchorVert(const simd_double2 &, const CGRect &, const double) const", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Crop/NUQuad2.h", 705, @"findInscribedAxisAlignedFitRectWithAnchorVert : Cannot find a valid initial seed for solver", v120, v121, v122, v123, v164);
      }
    }

    else
    {
      if (fabs(v173 + -0.5) >= 0.01 || fabs(v172 + -1.0) >= 0.01 && fabs(v172) >= 0.01)
      {
        __asm { FMOV            V1.2D, #1.0 }

        origin = v183;
        v190 = _Q1;
        NU::Quad2d::findInscribedAxisAlignedFitRectWithAnchor(v182, &v181, &origin, &v186);
LABEL_116:
        if ((x_low & 1) == 0)
        {
          deriveScaledRectFromConstrainedRect(v60, v61, v62, v63, v171, v46, v38, v39, v52, v53, v54, v55, v56, v57, v58, v59, v168, v167, v166, v165);
        }

        v186.origin.x = v60;
        v38 = v62;
        v46 = v61;
        v39 = v63;
        goto LABEL_119;
      }

      NU::RectT<double>::RectT(v193.f64, &v186);
      v79 = 100;
      v80 = v193;
      while (1)
      {
        v176 = v194;
        v81 = vaddq_f64(v80, v194);
        v82.f64[0] = v81.f64[0];
        v82.f64[1] = v80.f64[1];
        origin = v80;
        v190 = v82;
        v80.f64[1] = v81.f64[1];
        v191 = v80;
        v192 = v81;
        if ((NU::Quad2d::simpleContains(v182, &origin) & 1) != 0 || !v79)
        {
          break;
        }

        v193 = vsubq_f64(v193, v198);
        NU::RectT<double>::scale(v193.f64, 0.5, 1.0);
        v80 = vaddq_f64(v198, v193);
        v193 = v80;
        --v79;
      }

      v83.f64[0] = v193.f64[0];
      v84 = vaddq_f64(v193, v176);
      v85.f64[0] = v84.f64[0];
      origin = v193;
      v85.f64[1] = v193.f64[1];
      v190 = v85;
      v83.f64[1] = v84.f64[1];
      v191 = v83;
      v192 = v84;
      if (NU::Quad2d::simpleContains(v182, &origin))
      {
        NU::RectT<double>::RectT(buf, &v186);
        v86 = 100;
        for (j = *buf; ; *buf = j)
        {
          v88 = vaddq_f64(j, *&buf[16]);
          v89.f64[0] = v88.f64[0];
          v89.f64[1] = j.f64[1];
          origin = j;
          v190 = v89;
          j.f64[1] = v88.f64[1];
          v191 = j;
          v192 = v88;
          v90 = NU::Quad2d::contains(v182, &origin);
          _CF = v86-- != 0;
          v91 = _CF;
          if (!v90 || !v91)
          {
            break;
          }

          *buf = vsubq_f64(*buf, v198);
          NU::RectT<double>::scale(buf, 2.0, 1.0);
          j = vaddq_f64(v198, *buf);
        }

        v112 = vaddq_f64(*buf, *&buf[16]);
        v113.f64[0] = *buf;
        v113.f64[1] = v112.f64[1];
        v191 = v113;
        v192 = v112;
        v112.f64[1] = *&buf[8];
        v178 = *buf;
        origin = *buf;
        v190 = v112;
        if (!NU::Quad2d::simpleContains(v182, &origin))
        {
          *&origin.f64[0] = &unk_1F3F449B8;
          v190 = v198;
          *v195 = v193;
          *&v195[16] = v194;
          v187 = v178;
          v188 = *&buf[16];
          v60 = NU::Quad2d::computeLimitRect(v182, v195, &v187, &origin, 0.000000953674316);
          goto LABEL_116;
        }

        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
        }

        v114 = _NUAssertLogger;
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          v115 = [MEMORY[0x1E696AEC0] stringWithFormat:@"findInscribedAxisAlignedFitRectWithAnchorVert : Cannot find a valid initial seed for solver"];
          *v195 = 138543362;
          *&v195[4] = v115;
          _os_log_impl(&dword_1C0184000, v114, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", v195, 0xCu);
        }

        if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
          }

          v116 = _NUAssertLogger;
          if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
          {
            v117 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v118 = [MEMORY[0x1E696AF00] callStackSymbols];
            v119 = [v118 componentsJoinedByString:@"\n"];
            *v195 = 138543618;
            *&v195[4] = v117;
            *&v195[12] = 2114;
            *&v195[14] = v119;
            _os_log_error_impl(&dword_1C0184000, v116, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v195, 0x16u);
          }
        }

        else
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
          }

          v116 = _NUAssertLogger;
          if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
          {
            v162 = [MEMORY[0x1E696AF00] callStackSymbols];
            v163 = [v162 componentsJoinedByString:@"\n"];
            *v195 = 138543362;
            *&v195[4] = v163;
            _os_log_error_impl(&dword_1C0184000, v116, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v195, 0xCu);
          }
        }

        _NUAssertContinueHandler("const CGRect NU::Quad2d::findInscribedAxisAlignedFitRectWithAnchorHorz(const simd_double2 &, const CGRect &, const double) const", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Crop/NUQuad2.h", 758, @"findInscribedAxisAlignedFitRectWithAnchorVert : Cannot find a valid initial seed for solver", v132, v133, v134, v135, v164);
      }

      else
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
        }

        v106 = _NUAssertLogger;
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"findInscribedAxisAlignedFitRectWithAnchorHorz : Cannot find a valid initial seed for solver"];
          *buf = 138543362;
          *&buf[4] = v107;
          _os_log_impl(&dword_1C0184000, v106, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);
        }

        if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
          }

          v108 = _NUAssertLogger;
          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
          {
            v109 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v110 = [MEMORY[0x1E696AF00] callStackSymbols];
            v111 = [v110 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            *&buf[4] = v109;
            *&buf[12] = 2114;
            *&buf[14] = v111;
            _os_log_error_impl(&dword_1C0184000, v108, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
          }

          v108 = _NUAssertLogger;
          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
          {
            v158 = [MEMORY[0x1E696AF00] callStackSymbols];
            v159 = [v158 componentsJoinedByString:@"\n"];
            *buf = 138543362;
            *&buf[4] = v159;
            _os_log_error_impl(&dword_1C0184000, v108, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
          }
        }

        _NUAssertContinueHandler("const CGRect NU::Quad2d::findInscribedAxisAlignedFitRectWithAnchorHorz(const simd_double2 &, const CGRect &, const double) const", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Crop/NUQuad2.h", 745, @"findInscribedAxisAlignedFitRectWithAnchorHorz : Cannot find a valid initial seed for solver", v124, v125, v126, v127, v164);
      }
    }

    v63 = v39;
    v62 = v38;
    v61 = v46;
    v60 = v171;
    goto LABEL_116;
  }

LABEL_119:
  if (self->_rollRadians == 0.0 && self->_pitchRadians == 0.0 && self->_yawRadians == 0.0)
  {
    [(NUCropModel *)self _widestCropRect];
    if (v136 >= v186.origin.x)
    {
      v137 = v136;
    }

    else
    {
      v137 = v186.origin.x;
    }

    v186.origin.x = v137;
    [(NUCropModel *)self _widestCropRect];
    if (v138 >= v46)
    {
      v46 = v138;
    }

    [(NUCropModel *)self _widestCropRect];
    if (v139 - v137 < v38)
    {
      v38 = v139 - v137;
    }

    [(NUCropModel *)self _widestCropRect];
    if (v140 - v46 < v39)
    {
      v39 = v140 - v46;
    }
  }

  v141 = v186.origin.x;
  if (v11)
  {
    *v11 = [(NUCropModel *)self _hitMaskFromRect:v186.origin.x, v46, v38, v39];
  }

  v142 = v141 + v172 * (v38 + -2.0);
  v143 = v46 + v173 * (v39 + -2.0);
  v144 = fmin(v141, v142);
  v145 = fmin(v46, v143);
  v146 = fmax(v141 + v38, v142 + 2.0);
  v147 = v146 - v144;
  v148 = fmax(v46 + v39, v143 + 2.0) - v145;
  v149.f64[0] = v144;
  v149.f64[1] = v145;
  v179 = v144;
  v180 = v145;
  v150.f64[0] = v144 + v146 - v144;
  v151.f64[0] = v150.f64[0];
  v151.f64[1] = v145;
  origin = v149;
  v190 = v151;
  v149.f64[1] = v145 + v148;
  v150.f64[1] = v145 + v148;
  v191 = v149;
  v192 = v150;
  if ((NU::Quad2d::simpleContains(v182, &origin) & 1) == 0)
  {
    v148 = v39;
    v147 = v38;
    v180 = v46;
    v179 = v141;
  }

  v152 = v179;
  v153 = v180;
  v154 = v147;
  v155 = v148;
  result.size.height = v155;
  result.size.width = v154;
  result.origin.y = v153;
  result.origin.x = v152;
  return result;
}

- (CGRect)_expandedCropRectForZoom:(CGRect)a3 candidateRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v39 = a3;
  v13 = [(NUCropModel *)self _hitMaskFromRect:?];
  [(NUCropModel *)self _getBoundingQuadFromPitch:self->_pitchRadians yaw:self->_yawRadians roll:self->_rollRadians];
  v38[0] = v14;
  v38[1] = v15;
  v38[2] = v16;
  v38[3] = v17;
  v37.x = 0.0;
  v37.y = 0.0;
  if (canExpandWithAbsoluteAnchor(v13, v38, &v39, &v37))
  {
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    rect = height;
    v18 = CGRectGetHeight(v40);
    v41.origin.x = v11;
    v41.origin.y = v10;
    v41.size.width = v9;
    v41.size.height = v8;
    v19 = CGRectGetHeight(v41);
    v42.size.width = width;
    v20 = v18 / v19;
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.height = rect;
    v21 = CGRectGetWidth(v42);
    v43.origin.x = v11;
    v43.origin.y = v10;
    v43.size.width = v9;
    v43.size.height = v8;
    v22 = v21 / CGRectGetWidth(v43);
    if (v20 < v22)
    {
      v22 = v20;
    }

    v23 = 0.0;
    v24 = 0.0;
    if (v9 != 0.0)
    {
      v24 = (v37.x - v11) / v9;
    }

    if (v8 != 0.0)
    {
      v23 = (v37.y - v10) / v8;
    }

    v25 = v11 + v24 * v9 - v24 * (v9 * v22);
    v26 = v10 + v23 * v8 - v23 * (v8 * v22);
    [(NUCropModel *)self getCropRect:1 newCropRect:0 pitch:0 yaw:v25 roll:v26 constrainWithAnchorPoint:v9 * v22 strict:v8 * v22 aspectRatioIsFreeForm:v25 hitVertexId:v26, v9 * v22, v8 * v22, *&self->_pitchRadians, *&self->_yawRadians, *&self->_rollRadians, *&v37.x, *&v37.y];
    if (v29 >= v9 && v30 >= v8)
    {
      v10 = v28;
      v11 = v27;
      v8 = v30;
      v9 = v29;
    }
  }

  v32 = v11;
  v33 = v10;
  v34 = v9;
  v35 = v8;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (unint64_t)setForZoomCropRect:(CGRect)a3 newCropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  [(NUCropModel *)self _widestCropRect];
  if (v9 >= v13)
  {
    [(NUCropModel *)self _widestCropRect];
    if (v8 >= v14)
    {
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v30.origin.x = v11;
      v30.origin.y = v10;
      v30.size.width = v9;
      v30.size.height = v8;
      if (CGRectContainsRect(v27, v30))
      {
        return self->_hitVertexID;
      }
    }
  }

  if (width < 2.0 || height < 2.0)
  {
    if (width >= height)
    {
      v16 = height;
    }

    else
    {
      v16 = width;
    }

    if (v16 < 0.01)
    {
      return self->_hitVertexID;
    }

    v17 = (width + width) / v16;
    v18 = (height + height) / v16;
    x = x - (v17 - width) * 0.5;
    v26 = y - (v18 - height) * 0.5;
    width = v17;
    height = v18;
  }

  else
  {
    v26 = y;
  }

  v28.origin.x = v11;
  v28.origin.y = v10;
  v28.size.width = v9;
  v28.size.height = v8;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = v11;
  v29.origin.y = v10;
  v29.size.width = v9;
  v29.size.height = v8;
  [(NUCropModel *)self getCropRect:1 newCropRect:0 pitch:0 yaw:v11 roll:v10 constrainWithAnchorPoint:v9 strict:v8 aspectRatioIsFreeForm:x hitVertexId:v26, width, height, *&self->_pitchRadians, *&self->_yawRadians, *&self->_rollRadians, *&MidX, CGRectGetMidY(v29)];
  v24 = vabdd_f64(v20, x);
  if (v24 >= 0.01 || vabdd_f64(v21, v26) >= 0.01 || vabdd_f64(v22, width) >= 0.01 || vabdd_f64(v23, height) >= 0.01)
  {
    [NUCropModel _expandedCropRectForZoom:"_expandedCropRectForZoom:candidateRect:" candidateRect:?];
    v24 = vabdd_f64(v20, x);
  }

  if (v24 >= 0.01 || vabdd_f64(v21, v26) >= 0.01 || vabdd_f64(v22, width) >= 0.01 || vabdd_f64(v23, height) >= 0.01)
  {
    [(NUCropModel *)self _expandedCropRectForZoom:v20 candidateRect:v21, v22, v23, x, v26, width, height];
  }

  [NUCropModel _setCropRect:"_setCropRect:anchor:" anchor:?];
  return self->_hitVertexID;
}

- (unint64_t)setCropRect:(CGRect)a3 newCropRect:(CGRect)a4 constrainWithAnchorPoint:(CGPoint)a5 strict:(BOOL)a6
{
  [(NUCropModel *)self getCropRect:*&a5.x newCropRect:[(NUCropModel *)self aspectRatioIsFreeForm:*&a5.x] pitch:0 yaw:a3.origin.x roll:a3.origin.y constrainWithAnchorPoint:a3.size.width strict:a3.size.height aspectRatioIsFreeForm:a4.origin.x hitVertexId:a4.origin.y, a4.size.width, a4.size.height, *&self->_pitchRadians, *&self->_yawRadians, *&self->_rollRadians, v8, v9];
  [NUCropModel _setCropRect:"_setCropRect:anchor:" anchor:?];
  return self->_hitVertexID;
}

- (BOOL)imageContainsRect:(CGRect)a3 withTol:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  x = a3.origin.x;
  y = a3.origin.y;
  v6.f64[0] = a3.origin.x;
  v6.f64[1] = a3.origin.y;
  v14 = v6;
  [(NUCropModel *)self _getBoundingQuadFromPitch:self->_pitchRadians yaw:self->_yawRadians roll:self->_rollRadians withExpansionTol:a4];
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  v7.f64[0] = x + width;
  v8.f64[0] = x + width;
  v8.f64[1] = y;
  v9.f64[0] = v14.f64[0];
  v15[0] = v14;
  v15[1] = v8;
  v9.f64[1] = y + height;
  v7.f64[1] = y + height;
  v15[2] = v9;
  v15[3] = v7;
  return NU::Quad2d::simpleContains(v16, v15);
}

- (BOOL)canGrowCropRect:(CGRect)a3 constrainWithAnchorPoint:(CGPoint)a4 strict:(BOOL)a5 withTol:(double)a6
{
  [(NUCropModel *)self _anchorAlignedRectFromCandidate:a5 withAnchor:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.x, a4.y];
  v20 = v8.f64[0];
  v21 = v9;
  v11 = v10;
  v13 = v12;
  v8.f64[1] = v9;
  v19 = v8;
  [(NUCropModel *)self _getBoundingQuadFromPitch:self->_pitchRadians yaw:self->_yawRadians roll:self->_rollRadians withExpansionTol:a6];
  v23[0] = v14;
  v23[1] = v15;
  v23[2] = v16;
  v23[3] = v17;
  v14.f64[0] = v20 + v11;
  v15.f64[0] = v20 + v11;
  v15.f64[1] = v21;
  v16.f64[0] = v19.f64[0];
  v16.f64[1] = v21 + v13;
  v14.f64[1] = v21 + v13;
  v22[0] = v19;
  v22[1] = v15;
  v22[2] = v16;
  v22[3] = v14;
  return NU::Quad2d::simpleContains(v23, v22);
}

- (CGRect)_anchorAlignedRectFromCandidate:(CGRect)a3 withAnchor:(CGPoint)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = 0;
  v22 = a4.x;
  v23 = a4.y;
  v9 = a4.y;
  v25 = a3;
  if (a3.size.width >= a3.size.height)
  {
    v10 = a3.size.height;
  }

  else
  {
    v10 = a3.size.width;
  }

  v11 = v10 * 0.1;
  while (1)
  {
    v12.f64[0] = pointFromVertexID(&v25, v8);
    v12.f64[1] = v13;
    v14 = vsubq_f64(a4, v12);
    if (sqrt(vaddvq_f64(vmulq_f64(v14, v14))) < v11)
    {
      break;
    }

    if (++v8 == 8)
    {
      goto LABEL_9;
    }
  }

  v16 = -(pointFromVertexID(&v25, v8) - v22);
  v17 = -(v15 - v23);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v27 = CGRectOffset(v26, v16, v17);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
LABEL_9:
  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)_debugPrintHitMask:(unint64_t)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] stringWithString:@"Current crop rect intersect the image at : "];
  if (v3)
  {
    [v4 appendFormat:@" BL"];
  }

  if ((v3 & 2) != 0)
  {
    [v4 appendFormat:@" BR"];
  }

  if ((v3 & 4) != 0)
  {
    [v4 appendFormat:@" TL"];
  }

  if ((v3 & 8) != 0)
  {
    [v4 appendFormat:@" TR"];
  }

  if ((v3 & 0x10) != 0)
  {
    [v4 appendFormat:@" B"];
  }

  if ((v3 & 0x20) != 0)
  {
    [v4 appendFormat:@" R"];
  }

  if ((v3 & 0x40) != 0)
  {
    [v4 appendFormat:@" L"];
  }

  if (v3 < 0)
  {
    [v4 appendFormat:@" T"];
  }
}

- (unint64_t)_hitMaskFromRect:(CGRect)a3 withTol:(double)a4
{
  v21 = CGRectInset(a3, -a4, -a4);
  v21.size.width = v21.origin.x + v21.size.width;
  *&v5 = v21.origin.x;
  *(&v5 + 1) = *&v21.origin.y;
  v21.origin.x = v21.size.width;
  y = v21.origin.y;
  v16 = v5;
  origin = v21.origin;
  v21.origin.x = v21.origin.y + v21.size.height;
  *&v21.origin.y = v5;
  x = v21.origin.x;
  v8 = v21.origin.x;
  v18 = *&v21.origin.y;
  size = v21.size;
  [(NUCropModel *)self _getBoundingQuad];
  v20[0] = v9;
  v20[1] = v10;
  v20[2] = v11;
  v20[3] = v12;
  v13 = NU::Quad2d::contains(v20, v16) ^ 1;
  if (!NU::Quad2d::contains(v20, origin))
  {
    v13 |= 2uLL;
  }

  if (!NU::Quad2d::contains(v20, v18))
  {
    v13 |= 4uLL;
  }

  if (NU::Quad2d::contains(v20, size))
  {
    result = v13;
  }

  else
  {
    result = v13 | 8;
  }

  if (self->_rollRadians == 0.0 && self->_pitchRadians == 0.0 && self->_yawRadians == 0.0)
  {
    if ((~result & 3) != 0)
    {
      v15 = result;
    }

    else
    {
      v15 = result | 0x10;
    }

    if ((~v15 & 5) == 0)
    {
      v15 |= 0x40uLL;
    }

    if ((~v15 & 0xA) == 0)
    {
      v15 |= 0x20uLL;
    }

    if ((~v15 & 0xC) != 0)
    {
      return v15;
    }

    else
    {
      return v15 | 0x80;
    }
  }

  return result;
}

- (void)_setCropRectWithConstantSize:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(NUCropModel *)self _getBoundingQuadFromPitch:self->_pitchRadians yaw:self->_yawRadians roll:self->_rollRadians];
  v42[0] = v8;
  v42[1] = v9;
  v42[2] = v10;
  v42[3] = v11;
  v12 = floor(width);
  v13 = floor(height);
  v11.f64[0] = nearbyint(x);
  v11.f64[1] = nearbyint(y);
  v8.f64[0] = v11.f64[0] + v12;
  v10.f64[0] = v11.f64[0] + v12;
  v8.f64[1] = v11.f64[1];
  v38 = v11;
  v39 = v8;
  v36 = v11;
  v9.f64[0] = v11.f64[0];
  v9.f64[1] = v11.f64[1] + v13;
  v10.f64[1] = v11.f64[1] + v13;
  v40 = v9;
  v41 = v10;
  if (!NU::Quad2d::simpleContains(v42, &v38))
  {
    v15.f64[0] = floor(x);
    v15.f64[1] = floor(y);
    v33 = v15.f64[1];
    v37 = v15.f64[0];
    v16.f64[0] = v15.f64[0] + v12;
    v16.f64[1] = v15.f64[1];
    v17.f64[0] = v15.f64[0];
    v17.f64[1] = v15.f64[1] + v13;
    v28 = v15.f64[0] + v12;
    v29 = v15;
    v38 = v15;
    v39 = v16;
    v31 = v15.f64[1] + v13;
    v16.f64[1] = v15.f64[1] + v13;
    v40 = v17;
    v41 = v16;
    if (!NU::Quad2d::simpleContains(v42, &v38))
    {
      v18.f64[0] = ceil(x);
      v18.f64[1] = v33;
      v30 = v18.f64[0];
      v19.f64[0] = v18.f64[0] + v12;
      v19.f64[1] = v33;
      v20.f64[0] = v18.f64[0];
      v20.f64[1] = v31;
      v34 = v18;
      v38 = v18;
      v39 = v19;
      v27 = v18.f64[0] + v12;
      v19.f64[1] = v31;
      v40 = v20;
      v41 = v19;
      if (NU::Quad2d::simpleContains(v42, &v38))
      {
        v14 = v34;
        goto LABEL_7;
      }

      v21.f64[0] = v37;
      v21.f64[1] = ceil(y);
      v22.f64[0] = v28;
      v23.f64[0] = v28;
      v23.f64[1] = v21.f64[1];
      v38 = v21;
      v39 = v23;
      v35 = v21.f64[1];
      v36 = v21;
      v23.f64[0] = v21.f64[0];
      v23.f64[1] = v21.f64[1] + v13;
      v32 = v21.f64[1] + v13;
      v22.f64[1] = v21.f64[1] + v13;
      v40 = v23;
      v41 = v22;
      if (NU::Quad2d::simpleContains(v42, &v38))
      {
        goto LABEL_2;
      }

      v24.f64[0] = v30;
      v24.f64[1] = v35;
      v25.f64[0] = v27;
      v26.f64[0] = v27;
      v26.f64[1] = v35;
      v38 = v24;
      v39 = v26;
      v29 = v24;
      v26.f64[0] = v24.f64[0];
      v26.f64[1] = v32;
      v25.f64[1] = v32;
      v40 = v26;
      v41 = v25;
      if (!NU::Quad2d::simpleContains(v42, &v38))
      {
        [(NUCropModel *)self setCropRect:x, y, v12, v13];
        goto LABEL_8;
      }
    }

    v14 = v29;
    goto LABEL_7;
  }

LABEL_2:
  v14 = v36;
LABEL_7:
  self->_cropRect.origin = v14;
  self->_cropRect.size.width = v12;
  self->_cropRect.size.height = v13;
LABEL_8:
  self->_isAutoCrop = 0;
}

- (void)_setCropRect:(CGRect)a3 anchor:(CGPoint)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v59 = a3;
  if (a3.size.width < 1.0)
  {
    v24 = NUAssertLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "cropRect.size.width >= 1"];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = [MEMORY[0x1E696AF00] callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v38;
        *&buf[12] = 2114;
        *&buf[14] = v40;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCropModel _setCropRect:anchor:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Crop/NUCropModel.mm", 482, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "cropRect.size.width >= 1");
  }

  if (a3.size.height < 1.0)
  {
    v31 = NUAssertLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "cropRect.size.height >= 1"];
      *buf = 138543362;
      *&buf[4] = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v35)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = [MEMORY[0x1E696AF00] callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v45;
        *&buf[12] = 2114;
        *&buf[14] = v47;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCropModel _setCropRect:anchor:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Crop/NUCropModel.mm", 483, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "cropRect.size.height >= 1");
  }

  x = a4.x;
  y = a4.y;
  width = a3.size.width;
  rect2 = a3.size.height;
  [(NUCropModel *)self _getBoundingQuad];
  *buf = v5;
  *&buf[16] = v6;
  v61 = v7;
  v62 = v8;
  v5.f64[0] = width;
  v5.f64[1] = rect2;
  origin = v59.origin;
  v9 = vaddq_f64(v5, v59.origin);
  v6.f64[0] = v59.origin.x;
  v6.f64[1] = v9.f64[1];
  v58[2] = v6;
  v58[3] = v9;
  v9.f64[1] = v59.origin.y;
  v58[0] = v59.origin;
  v58[1] = v9;
  v13 = v59.origin.y;
  if (NU::Quad2d::simpleContains(buf, v58))
  {
    v14 = width;
    v15 = rect2;
  }

  else
  {
    v64.origin.x = NU::Quad2d::findInscribedUnscaledFitRect(buf, &v59, 1.0e-10, v10, v11, v12);
    v16 = v64.origin.x;
    v17 = v64.origin.y;
    v18 = v64.size.width;
    height = v64.size.height;
    v65.origin.x = origin.x;
    v65.size.width = width;
    v65.origin.y = origin.y;
    v65.size.height = rect2;
    if (CGRectEqualToRect(v64, v65))
    {
      v57 = width / rect2;
      v20.f64[0] = x;
      v20.f64[1] = y;
      v58[0] = v20;
      NU::Quad2d::findInscribedAxisAlignedAspectFitRectWithAnchor(buf, v58[0].f64, &v59, &v59, &v57, 0.000000953674316);
      v13 = v21;
      v59.origin.x = v22;
      v59.origin.y = v21;
      v59.size.width = v14;
      v59.size.height = v15;
    }

    else
    {
      v59.origin.x = v16;
      v59.origin.y = v17;
      v15 = height;
      v14 = v18;
      v13 = v17;
      v59.size.width = v18;
      v59.size.height = height;
    }
  }

  self->_hitVertexID = [(NUCropModel *)self _hitMaskFromRect:v59.origin.x, v13, v14, v15];
  size = v59.size;
  self->_cropRect.origin = v59.origin;
  self->_cropRect.size = size;
  self->_isAutoCrop = 0;
}

- (void)_setCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MidX = CGRectGetMidX(a3);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidY = CGRectGetMidY(v11);

  [(NUCropModel *)self _setCropRect:x anchor:y, width, height, MidX, MidY];
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_integralCropRect:(CGRect)a3 straightenAngle:(double)a4 anchorPoint:(CGPoint)a5
{
  height = a3.size.height;
  width = a3.size.width;
  x = a3.origin.x;
  v10 = 0.0;
  v11 = 0.0;
  if (a3.size.width != 0.0)
  {
    v11 = (a5.x - a3.origin.x) / a3.size.width;
  }

  if (a3.size.height != 0.0)
  {
    v10 = (a5.y - a3.origin.y) / a3.size.height;
  }

  y = a3.origin.y;
  v46.x = v11;
  v46.y = v10;
  v38 = _bestIntegralRectPreservingAspectRatioAndAnchor(a3, v46);
  v39 = v12;
  v14 = v13;
  v16 = v15;
  v17.f64[0] = v38;
  v17.f64[1] = v12;
  v40 = v17;
  [(NUCropModel *)self _getBoundingQuadFromPitch:self->_pitchRadians yaw:self->_yawRadians roll:a4];
  v45[0] = v18;
  v45[1] = v19;
  v45[2] = v20;
  v45[3] = v21;
  v18.f64[0] = v38 + v14;
  v19.f64[0] = v38 + v14;
  v19.f64[1] = v39;
  v41 = v40;
  v42 = v19;
  v20.f64[0] = v40.f64[0];
  v20.f64[1] = v39 + v16;
  v18.f64[1] = v39 + v16;
  v43 = v20;
  v44 = v18;
  if (NU::Quad2d::simpleContains(v45, &v41) & 1) != 0 || (v49.origin.x = x + v11, v49.origin.y = y + v10, v49.size.width = width + -1.0, v49.size.height = height + -1.0, v47.x = v11, v47.y = v10, v22 = _bestIntegralRectPreservingAspectRatioAndAnchor(v49, v47), v14 = v23, v16 = v24, v25.f64[0] = v22 + v23, v26.f64[0] = v22, v26.f64[1] = v27, v28.f64[0] = v25.f64[0], v28.f64[1] = v27, v41 = v26, v42 = v28, v28.f64[0] = v27 + v16, v40 = v26, v29.f64[0] = v26.f64[0], v29.f64[1] = v28.f64[0], v25.f64[1] = v28.f64[0], v43 = v29, v44 = v25, (NU::Quad2d::simpleContains(v45, &v41)))
  {
    v30 = v40;
  }

  else
  {
    v50.origin.x = x + -v11 * -2.0;
    v50.origin.y = y + -v10 * -2.0;
    v50.size.width = width + -2.0;
    v50.size.height = height + -2.0;
    v48.x = v11;
    v48.y = v10;
    v30.f64[0] = _bestIntegralRectPreservingAspectRatioAndAnchor(v50, v48);
    v14 = v31;
    v16 = v32;
    v30.f64[1] = v33;
  }

  v34 = v30.f64[1];
  v35 = v14;
  v36 = v16;
  result.origin.x = v30.f64[0];
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  return result;
}

- (CGRect)integralCropRect:(CGRect)a3
{
  [(NUCropModel *)self _integralCropRect:a3.origin.x straightenAngle:a3.origin.y anchorPoint:a3.size.width, a3.size.height, self->_rollRadians, a3.origin.x + a3.size.width * 0.5, a3.origin.y + a3.size.height * 0.5];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)_getBoundingQuadFromPitch:(double)a3 yaw:(double)a4 roll:(CGFloat)a5 withExpansionTol:(CGFloat)a6 imageRect:(CGFloat)a7
{
  v15 = -a4;
  v40.origin.x = a5;
  v40.origin.y = a6;
  v40.size.width = a7;
  v40.size.height = a8;
  v41 = CGRectInset(v40, v15, v15);
  v41.size.width = v41.origin.x + v41.size.width;
  *&v16 = v41.size.width;
  *(&v16 + 1) = *&v41.origin.y;
  v17 = v41.origin.y + v41.size.height;
  *&v18 = v41.origin.x;
  *(&v18 + 1) = *&v41.origin.y;
  v19 = v41.origin.y + v41.size.height;
  v27 = v18;
  v28 = 0;
  v30 = v16;
  v31 = 0;
  origin = v41.origin;
  v34 = 0;
  size = v41.size;
  v37 = 0;
  v29 = 0x3FF0000000000000;
  v32 = 0x3FF0000000000000;
  v35 = 0x3FF0000000000000;
  v38 = 0x3FF0000000000000;
  [NUCropModel _imageTransformFromPitch:a1 yaw:a2 roll:a3 imageRect:a5, a6, a7, a8];
  v20 = 0;
  memset(v26, 0, sizeof(v26));
  do
  {
    v22 = *(&v27 + v20 * 16);
    v21 = *(&v27 + v20 * 16 + 16);
    v23 = &v26[v20];
    *v23 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v22.f64[0]), 0, v22, 1), 0, v21.f64[0]), 0, v21, 1);
    v23[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v22.f64[0]), 0, v22, 1), 0, v21.f64[0]), 0, v21, 1);
    v20 += 2;
  }

  while (v20 != 8);
  for (i = 0; i != 4; ++i)
  {
    *(&v39 + i) = vdivq_f64(v26[2 * i], vdupq_laneq_s64(v26[2 * i + 1], 1));
  }

  return *&v39;
}

- (uint64_t)_getBoundingQuadFromPitch:(double)a3 yaw:(double)a4 roll:(double)a5 withExpansionTol:
{
  [a1 masterImageRect];

  return [a1 _getBoundingQuadFromPitch:a2 yaw:a3 roll:a4 withExpansionTol:a5 imageRect:{v10, v11, v12, v13}];
}

- (BOOL)_hasDefaultValues
{
  if (fabs(self->_pitchRadians) > 0.000872664626)
  {
    return 0;
  }

  if (fabs(self->_yawRadians) > 0.000872664626)
  {
    return 0;
  }

  if (fabs(self->_rollRadians) > 0.000872664626)
  {
    return 0;
  }

  v14 = *self->_imageCenter;
  [(NUCropModel *)self _defaultImageCenter];
  v4 = vsubq_f64(v14, v3);
  if (sqrt(vaddvq_f64(vmulq_f64(v4, v4))) >= 0.00001)
  {
    return 0;
  }

  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  [(NUCropModel *)self _defaultCropRect];
  v17.origin.x = v9;
  v17.origin.y = v10;
  v17.size.width = v11;
  v17.size.height = v12;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (!CGRectEqualToRect(v16, v17))
  {
    return 0;
  }

  return [(NUCropModel *)self aspectRatioIsFreeForm];
}

- (void)_setToDefaultValues
{
  [(NUCropModel *)self _defaultImageCenter];
  *self->_imageCenter = v3;
  [(NUCropModel *)self _defaultCropRect];
  self->_cropRect.origin.x = v4;
  self->_cropRect.origin.y = v5;
  self->_cropRect.size.width = v6;
  self->_cropRect.size.height = v7;
  self->_aspectRatio.width = [objc_opt_class() freeFormAspectRatio];
  self->_aspectRatio.height = v8;
  self->_isAutoCrop = 0;
  [(NUCropModel *)self setPitchRadians:0.0];
  [(NUCropModel *)self setYawRadians:0.0];

  [(NUCropModel *)self setRollRadians:0.0];
}

- (CGRect)_defaultCropRect
{
  x = self->_masterImageRect.origin.x;
  y = self->_masterImageRect.origin.y;
  width = self->_masterImageRect.size.width;
  height = self->_masterImageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)_defaultImageCenter
{
  MidX = CGRectGetMidX(a1[4]);
  CGRectGetMidY(a1[4]);
  return MidX;
}

- (CGRect)_widestCropRect
{
  x = self->_masterImageRect.origin.x;
  y = self->_masterImageRect.origin.y;
  width = self->_masterImageRect.size.width;
  height = self->_masterImageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  size = self->_masterImageRect.size;
  v9[0] = self->_masterImageRect.origin;
  v9[1] = size;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v7 = [v3 stringWithFormat:@"<%@:%p image: %@ crop: %g, %g %gx%g ratio: %lu:%lu angles: [%g %g %g]>", v4, self, v6, *&self->_cropRect.origin.x, *&self->_cropRect.origin.y, *&self->_cropRect.size.width, *&self->_cropRect.size.height, self->_aspectRatio.width, self->_aspectRatio.height, *&self->_pitchRadians, *&self->_yawRadians, *&self->_rollRadians];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[NUCropModel allocWithZone:?], "initWithMasterImageRect:", self->_masterImageRect.origin.x, self->_masterImageRect.origin.y, self->_masterImageRect.size.width, self->_masterImageRect.size.height];
  *(result + 7) = self->_aspectRatio;
  size = self->_cropRect.size;
  *(result + 2) = self->_cropRect.origin;
  *(result + 3) = size;
  *(result + 96) = self->_isAutoCrop;
  *(result + 8) = *&self->_pitchRadians;
  *(result + 9) = *&self->_yawRadians;
  *(result + 10) = *&self->_rollRadians;
  return result;
}

- (BOOL)isEqualToCropModel:(id)a3
{
  v4 = a3;
  [(NUCropModel *)self masterImageRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 masterImageRect];
  v47.origin.x = v13;
  v47.origin.y = v14;
  v47.size.width = v15;
  v47.size.height = v16;
  v45.origin.x = v6;
  v45.origin.y = v8;
  v45.size.width = v10;
  v45.size.height = v12;
  if (!CGRectEqualToRect(v45, v47))
  {
    goto LABEL_11;
  }

  [(NUCropModel *)self cropRect];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v4 cropRect];
  v48.origin.x = v25;
  v48.origin.y = v26;
  v48.size.width = v27;
  v48.size.height = v28;
  v46.origin.x = v18;
  v46.origin.y = v20;
  v46.size.width = v22;
  v46.size.height = v24;
  if (!CGRectEqualToRect(v46, v48))
  {
    goto LABEL_11;
  }

  v29 = [(NUCropModel *)self aspectRatio];
  v31 = v30;
  v32 = [v4 aspectRatio];
  if (v29 | v31 && v32 | v33)
  {
    if (v33 * v29 != v32 * v31)
    {
      goto LABEL_11;
    }
  }

  else if ((v29 | v31) != 0 || (v32 | v33) != 0)
  {
    goto LABEL_11;
  }

  [(NUCropModel *)self pitchDegreeUI];
  v35 = v34;
  [v4 pitchDegreeUI];
  if (vabdd_f64(v35, v36) <= 0.05)
  {
    [(NUCropModel *)self yawDegreeUI];
    v38 = v37;
    [v4 yawDegreeUI];
    if (vabdd_f64(v38, v39) <= 0.05)
    {
      [(NUCropModel *)self rollDegreeUI];
      v41 = v40;
      [v4 rollDegreeUI];
      if (vabdd_f64(v41, v42) <= 0.05)
      {
        v43 = 1;
        goto LABEL_12;
      }
    }
  }

LABEL_11:
  v43 = 0;
LABEL_12:

  return v43;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUCropModel *)self isEqualToCropModel:v4];

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = NUCropModel;
  return [(NUCropModel *)&v3 hash];
}

- (CGSize)masterImageSize
{
  width = self->_masterImageRect.size.width;
  height = self->_masterImageRect.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NUCropModel)initWithMasterImageRect:(CGRect)a3 stitchedImageRect:(CGRect)a4
{
  x = a3.origin.x;
  v56 = *MEMORY[0x1E69E9840];
  if (a3.size.width < 1.0)
  {
    v16 = NUAssertLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "masterImageRect.size.width >= 1"];
      *buf = 138543362;
      v53 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = [MEMORY[0x1E696AF00] callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v29;
        v54 = 2114;
        v55 = v31;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v32 = "masterImageRect.size.width >= 1";
    v33 = 145;
LABEL_32:

    _NUAssertFailHandler("[NUCropModel initWithMasterImageRect:stitchedImageRect:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Crop/NUCropModel.mm", v33, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, v32);
  }

  height = a3.size.height;
  if (a3.size.height < 1.0)
  {
    v23 = NUAssertLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "masterImageRect.size.height >= 1"];
      *buf = 138543362;
      v53 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger();
    v26 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v26)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = [MEMORY[0x1E696AF00] callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v34;
        v54 = 2114;
        v55 = v36;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v28;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v32 = "masterImageRect.size.height >= 1";
    v33 = 146;
    goto LABEL_32;
  }

  v7 = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  v10 = a4.origin.x;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  if (!CGRectIsEmpty(a4))
  {
    v57.origin.x = v10;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = v7;
    v58.origin.x = x;
    v58.origin.y = v12;
    v58.size.width = v11;
    v58.size.height = height;
    if (!CGRectContainsRect(v57, v58))
    {
      v37 = NUAssertLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CGRectContainsRect(stitchedImageRect, masterImageRect)"];
        *buf = 138543362;
        v53 = v38;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v19 = NUAssertLogger();
      v40 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (v39)
      {
        if (v40)
        {
          v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v44 = [MEMORY[0x1E696AF00] callStackSymbols];
          v45 = [v44 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v53 = v43;
          v54 = 2114;
          v46 = v45;
          v55 = v45;
          _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v40)
      {
        v41 = [MEMORY[0x1E696AF00] callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v53 = v42;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v32 = "CGRectContainsRect(stitchedImageRect, masterImageRect)";
      v33 = 149;
      goto LABEL_32;
    }
  }

  v51.receiver = self;
  v51.super_class = NUCropModel;
  v13 = [(NUCropModel *)&v51 init];
  v14 = v13;
  if (v13)
  {
    v13->_masterImageRect.origin.x = x;
    v13->_masterImageRect.origin.y = v12;
    v13->_masterImageRect.size.width = v11;
    v13->_masterImageRect.size.height = height;
    v13->_fovRadians = 1.04719755;
    [(NUCropModel *)v13 _setToDefaultValues];
  }

  return v14;
}

- (NUCropModel)initWithMasterImageSize:(CGSize)a3 stitchedImageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = v7;
  v13.size.height = v6;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = v7;
  v14.size.height = v6;
  MidY = CGRectGetMidY(v14);

  return [(NUCropModel *)self initWithMasterImageRect:0.0 stitchedImageRect:0.0, v7, v6, MidX - width * 0.5, MidY - height * 0.5, width, height];
}

- (NUCropModel)initWithMasterImageRect:(CGRect)a3
{
  x = a3.origin.x;
  v40 = *MEMORY[0x1E69E9840];
  if (a3.size.width < 1.0)
  {
    v10 = NUAssertLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "masterImageRect.size.width >= 1"];
      *buf = 138543362;
      v37 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v23;
        v38 = 2114;
        v39 = v25;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v26 = "masterImageRect.size.width >= 1";
    v27 = 123;
LABEL_22:

    _NUAssertFailHandler("[NUCropModel initWithMasterImageRect:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Crop/NUCropModel.mm", v27, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, v26);
  }

  height = a3.size.height;
  if (a3.size.height < 1.0)
  {
    v17 = NUAssertLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "masterImageRect.size.height >= 1"];
      *buf = 138543362;
      v37 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger();
    v20 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v20)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = [MEMORY[0x1E696AF00] callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v28;
        v38 = 2114;
        v39 = v30;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v22;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v26 = "masterImageRect.size.height >= 1";
    v27 = 124;
    goto LABEL_22;
  }

  width = a3.size.width;
  y = a3.origin.y;
  v35.receiver = self;
  v35.super_class = NUCropModel;
  v7 = [(NUCropModel *)&v35 init];
  v8 = v7;
  if (v7)
  {
    v7->_masterImageRect.origin.x = x;
    v7->_masterImageRect.origin.y = y;
    v7->_masterImageRect.size.width = width;
    v7->_masterImageRect.size.height = height;
    v7->_fovRadians = 1.04719755;
    [(NUCropModel *)v7 _setToDefaultValues];
  }

  return v8;
}

- (NUCropModel)init
{
  v23 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v5];
    *buf = 138543362;
    v20 = v6;
    _os_log_error_impl(&dword_1C0184000, v2, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
    }

    v7 = _NUAssertLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13047);
    }

    v7 = _NUAssertLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v20 = v9;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  _NUAssertFailHandler("[NUCropModel init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Crop/NUCropModel.mm", 114, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v15, v16, v17, v18, v14);
}

+ (CGRect)adjustCropRect:(CGRect)a3 inputExtent:(CGRect)a4 geometryTransform:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v65 = a3;
  v59 = a3.size.width;
  v60 = a3.size.height;
  v9 = a5;
  [v9 transformPoint:{x, y}];
  v61 = v10;
  v53 = v11;
  v12 = x + width;
  [v9 transformPoint:{v12, y}];
  v57 = v13;
  v51 = v14;
  v15 = y + height;
  [v9 transformPoint:{x, v15}];
  v55 = v16;
  v49 = v17;
  [v9 transformPoint:{v12, v15}];
  v18.f64[0] = v61;
  v18.f64[1] = v53;
  v19.f64[0] = v57;
  v19.f64[1] = v51;
  v20.f64[0] = v55;
  v20.f64[1] = v49;
  v22.f64[1] = v21;
  v62 = v18;
  v64[0] = v18;
  v64[1] = v19;
  v56 = v20;
  v58 = v19;
  v64[2] = v20;
  v64[3] = v22;
  v47 = v22;
  v19.f64[0] = v59;
  v19.f64[1] = v60;
  v23 = vaddq_f64(v19, v65.origin);
  v19.f64[0] = v23.f64[0];
  v19.f64[1] = v65.origin.y;
  v50 = v19;
  v52 = v23;
  v19.f64[0] = v65.origin.x;
  v19.f64[1] = v23.f64[1];
  v48 = v19;
  origin = v65.origin;
  v24 = NU::Quad2d::simpleContains(v64, v65.origin);
  v25 = NU::Quad2d::simpleContains(v64, v50);
  v26 = NU::Quad2d::simpleContains(v64, v48);
  v27 = NU::Quad2d::simpleContains(v64, v52);
  if (v24 && (v25 ? (_ZF = !v26) : (_ZF = 1), !_ZF && v27))
  {
    v29 = origin.y;
  }

  else
  {
    __asm { FMOV            V1.2D, #0.25 }

    v34 = vaddq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v62, v58), v56), v47), _Q1), vmulq_f64(vaddq_f64(vaddq_f64(vaddq_f64(origin, v50), v48), v52), _Q1));
    __asm { FMOV            V1.2D, #0.5 }

    v63 = vmulq_f64(v34, _Q1);
    if (NU::Quad2d::simpleContains(v64, v63))
    {
      NU::Quad2d::findInscribedAxisAlignedFitRectWithAnchor(v64, &v63, &v65, &v65);
    }

    else
    {
      InscribedUnscaledFitRect = NU::Quad2d::findInscribedUnscaledFitRect(v64, &v65, 0.000000953674316, v36, v37, v38);
    }

    v59 = v41;
    v60 = v42;
    v29 = v40;
    origin.x = InscribedUnscaledFitRect;
  }

  v43 = origin.x;
  v44 = v29;
  v45 = v59;
  v46 = v60;
  result.size.height = v46;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

+ ($0AC6E346AE4835514AAA8AC86D8F4844)freeFormAspectRatio
{
  v2 = 0;
  v3 = 0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

+ (void)_imageTransformFromPitch:(double)a3@<D1> yaw:(double)a4@<D2> roll:(CGFloat)a5@<D3> imageRect:(CGFloat)a6@<D4>
{
  v13 = fabs(a3);
  v14 = fabs(a4);
  if (fabs(a2) > 0.0000000037252903 || v13 > 0.0000000037252903 || v14 > 0.0000000037252903)
  {
    [NUCropModel defaultFocalLength:0.0000000037252903];
    v21 = v20 / hypotf(36.0, 24.0);
    v146 = hypot(a8, a7) * v21;
    v171.origin.x = a5;
    v171.origin.y = a6;
    v171.size.width = a7;
    v171.size.height = a8;
    MidX = CGRectGetMidX(v171);
    v172.origin.x = a5;
    v172.origin.y = a6;
    v172.size.width = a7;
    v172.size.height = a8;
    MidY = CGRectGetMidY(v172);
    v22 = MEMORY[0x1E69E9B08];
    v139 = *MEMORY[0x1E69E9B08];
    v140 = *(MEMORY[0x1E69E9B08] + 16);
    v136 = *(MEMORY[0x1E69E9B08] + 32);
    v137 = *(MEMORY[0x1E69E9B08] + 48);
    v145 = *(MEMORY[0x1E69E9B08] + 64);
    v142 = *(MEMORY[0x1E69E9B08] + 112);
    v134 = *(MEMORY[0x1E69E9B08] + 96);
    v135 = *(MEMORY[0x1E69E9B08] + 80);
    v24 = __sincos_stret(a2 * 0.5);
    v23.f64[0] = v24.__sinval;
    v141 = vmulq_n_f64(xmmword_1C03C2770, v24.__sinval);
    *&v23.f64[0] = *&vmulq_f64(v23, 0);
    v23.f64[1] = v24.__cosval;
    v138 = v23;
    v26 = __sincos_stret(a3 * 0.5);
    v25.f64[0] = v26.__sinval;
    *&v25.f64[0] = *&vmulq_f64(v25, 0);
    v25.f64[1] = v26.__cosval;
    v132 = v25;
    v133 = vmulq_n_f64(xmmword_1C03C2760, v26.__sinval);
    v27 = __sincos_stret(a4 * 0.5);
    v28 = 0;
    v29 = vmulq_n_f64(0, v27.__sinval);
    v30 = vnegq_f64(v133);
    v31 = vextq_s8(v132, vnegq_f64(v132), 8uLL);
    _Q0 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v132, v27.__cosval), v31, v27.__sinval), vmlaq_n_f64(vmulq_laneq_f64(v30, v29, 1), vextq_s8(v133, v30, 8uLL), v29.f64[0]));
    v33 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v133, v27.__cosval), vextq_s8(v30, v133, 8uLL), v27.__sinval), vmlaq_n_f64(vmulq_laneq_f64(v132, v29, 1), v31, v29.f64[0]));
    v34 = vnegq_f64(v141);
    _Q2 = vextq_s8(v138, vnegq_f64(v138), 8uLL);
    _Q6 = vmlaq_n_f64(vmulq_laneq_f64(v138, v33, 1), _Q2, v33.f64[0]);
    _Q5 = vmlaq_n_f64(vmulq_laneq_f64(v34, v33, 1), vextq_s8(v141, v34, 8uLL), v33.f64[0]);
    v38 = vextq_s8(v34, v141, 8uLL);
    _Q3 = vaddq_f64(_Q5, vmlaq_n_f64(vmulq_laneq_f64(v138, _Q0, 1), _Q2, _Q0.f64[0]));
    _Q1 = vaddq_f64(_Q6, vmlaq_n_f64(vmulq_laneq_f64(v141, _Q0, 1), v38, _Q0.f64[0]));
    _Q2.f64[0] = _Q1.f64[1];
    _Q6.f64[0] = _Q3.f64[1];
    __asm { FMLA            D0, D6, V3.D[1] }

    v45 = vmuld_lane_f64(_Q3.f64[0], _Q3, 1);
    v46.f64[0] = vmuld_lane_f64(_Q1.f64[1], _Q3, 1);
    _Q0.f64[1] = v45 + _Q1.f64[0] * _Q1.f64[1] + v45 + _Q1.f64[0] * _Q1.f64[1];
    v30.f64[0] = -(v46.f64[0] - _Q1.f64[0] * _Q3.f64[0]) - (v46.f64[0] - _Q1.f64[0] * _Q3.f64[0]);
    v50.f64[0] = -(v45 - _Q1.f64[0] * _Q1.f64[1]) - (v45 - _Q1.f64[0] * _Q1.f64[1]);
    __asm
    {
      FMLA            D5, D2, V1.D[1]
      FMLA            D5, D6, V3.D[1]
    }

    v47 = vmuld_lane_f64(_Q1.f64[0], _Q3, 1);
    v50.f64[1] = _Q5.f64[0] - _Q1.f64[0] * _Q1.f64[0];
    _Q5.f64[0] = v47 + _Q1.f64[1] * _Q3.f64[0] + v47 + _Q1.f64[1] * _Q3.f64[0];
    v46.f64[1] = -(_Q1.f64[0] * _Q3.f64[1]);
    v48 = vmlaq_n_f64(v46, _Q1, _Q3.f64[0]);
    __asm { FMLS            D3, D2, V1.D[1] }

    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v155 = _Q0;
    v156 = *&v30.f64[0];
    v157 = v50;
    v158 = *&_Q5.f64[0];
    v159 = vaddq_f64(v48, v48);
    v160 = *&_Q3.f64[0];
    v49 = vdivq_f64(vnegq_f64(vaddq_f64(vaddq_f64(v159, vmlaq_f64(vmulq_f64(_Q0, 0), 0, v50)), 0)), vdupq_lane_s64(*&vaddq_f64(vaddq_f64(_Q3, vmlaq_f64(vmulq_f64(*&v30.f64[0], 0), 0, *&_Q5.f64[0])), 0), 0));
    v50.f64[1] = v142.f64[1];
    v161 = 0u;
    v162 = xmmword_1C03C2760;
    do
    {
      v52 = *(&v155 + v28);
      v51 = *(&v155 + v28 + 16);
      v53 = (&v163 + v28);
      *v53 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v139, v52.f64[0]), v136, v52, 1), v49, v51.f64[0]), v134, v51, 1);
      v53[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v140, v52.f64[0]), v137, v52, 1), v135, v51.f64[0]), v142, v51, 1);
      v28 += 32;
    }

    while (v28 != 128);
    v54 = 0;
    v55.f64[0] = MidX;
    v56.f64[0] = MidX;
    v55.f64[1] = MidY;
    v57.f64[1] = v142.f64[1];
    v57.f64[0] = 0.0;
    v58 = vnegq_f64(v55);
    v59 = v22[5];
    v151 = v22[4];
    v152 = v59;
    v60 = v22[7];
    v153 = v22[6];
    v154 = v60;
    v61 = v22[1];
    v147 = *v22;
    v148 = v61;
    v62 = v22[3];
    v149 = v22[2];
    v150 = v62;
    do
    {
      v64 = *(&v147 + v54);
      v63 = *(&v147 + v54 + 16);
      v65 = (&v155 + v54);
      *v65 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v139, v64.f64[0]), v136, v64, 1), v145, v63.f64[0]), v58, v63, 1);
      v65[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v140, v64.f64[0]), v137, v64, 1), v135, v63.f64[0]), v57, v63, 1);
      v54 += 32;
    }

    while (v54 != 128);
    v66 = 0;
    v50.f64[0] = v146;
    v67 = v160;
    a1[4] = v159;
    a1[5] = v67;
    v68 = v162;
    a1[6] = v161;
    a1[7] = v68;
    v69 = v156;
    *a1 = v155;
    a1[1] = v69;
    v70 = v158;
    a1[2] = v157;
    a1[3] = v70;
    v71 = a1[5];
    v151 = a1[4];
    v152 = v71;
    v72 = a1[7];
    v153 = a1[6];
    v154 = v72;
    v73 = a1[1];
    v147 = *a1;
    v148 = v73;
    v74 = a1[3];
    v149 = a1[2];
    v150 = v74;
    do
    {
      v76 = *(&v147 + v66);
      v75 = *(&v147 + v66 + 16);
      v77 = (&v155 + v66);
      *v77 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v139, v76.f64[0]), v136, v76, 1), v145, v75.f64[0]), 0, v75, 1);
      v77[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v140, v76.f64[0]), v137, v76, 1), v135, v75.f64[0]), v50, v75, 1);
      v66 += 32;
    }

    while (v66 != 128);
    v78 = 0;
    v79.f64[0] = v135.f64[0];
    v80 = v160;
    a1[4] = v159;
    a1[5] = v80;
    v81 = v162;
    a1[6] = v161;
    a1[7] = v81;
    v82 = v156;
    *a1 = v155;
    a1[1] = v82;
    v83 = v158;
    a1[2] = v157;
    a1[3] = v83;
    v85 = v163;
    v84 = v164;
    v87 = v165;
    v86 = v166;
    v89 = v167;
    v88 = v168;
    v91 = v169;
    v90 = v170;
    v92 = a1[5];
    v151 = a1[4];
    v152 = v92;
    v93 = a1[7];
    v153 = a1[6];
    v154 = v93;
    v94 = a1[1];
    v147 = *a1;
    v148 = v94;
    v95 = a1[3];
    v149 = a1[2];
    v150 = v95;
    do
    {
      v97 = *(&v147 + v78);
      v96 = *(&v147 + v78 + 16);
      v98 = (&v155 + v78);
      *v98 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v85, v97.f64[0]), v87, v97, 1), v89, v96.f64[0]), v91, v96, 1);
      v98[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v84, v97.f64[0]), v86, v97, 1), v88, v96.f64[0]), v90, v96, 1);
      v78 += 32;
    }

    while (v78 != 128);
    v99 = 0;
    v100 = v160;
    a1[4] = v159;
    a1[5] = v100;
    v101 = v162;
    a1[6] = v161;
    a1[7] = v101;
    v102 = v156;
    *a1 = v155;
    a1[1] = v102;
    v103 = v158;
    a1[2] = v157;
    a1[3] = v103;
    v104 = a1[5];
    v151 = a1[4];
    v152 = v104;
    v105 = a1[7];
    v153 = a1[6];
    v154 = v105;
    v106 = a1[1];
    v147 = *a1;
    v148 = v106;
    v107 = a1[3];
    v149 = a1[2];
    v150 = v107;
    do
    {
      v109 = *(&v147 + v99);
      v108 = *(&v147 + v99 + 16);
      v110 = (&v155 + v99);
      *v110 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v139, v109.f64[0]), v136, v109, 1), v145, v108.f64[0]), v134, v108, 1);
      v79.f64[1] = 1.0 / v146;
      v110[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v140, v109.f64[0]), v137, v109, 1), v79, v108.f64[0]), xmmword_1C03C28B0, v108, 1);
      v99 += 32;
    }

    while (v99 != 128);
    v111 = 0;
    v56.f64[1] = MidY;
    v112 = v160;
    a1[4] = v159;
    a1[5] = v112;
    v113 = v162;
    a1[6] = v161;
    a1[7] = v113;
    v114 = v156;
    *a1 = v155;
    a1[1] = v114;
    v115 = v158;
    a1[2] = v157;
    a1[3] = v115;
    v116 = a1[5];
    v151 = a1[4];
    v152 = v116;
    v117 = a1[7];
    v153 = a1[6];
    v154 = v117;
    v118 = a1[1];
    v147 = *a1;
    v148 = v118;
    v119 = a1[3];
    v149 = a1[2];
    v150 = v119;
    do
    {
      v121 = *(&v147 + v111);
      v120 = *(&v147 + v111 + 16);
      v122 = (&v155 + v111);
      *v122 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v139, v121.f64[0]), v136, v121, 1), v145, v120.f64[0]), v56, v120, 1);
      v122[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v140, v121.f64[0]), v137, v121, 1), v135, v120.f64[0]), v57, v120, 1);
      v111 += 32;
    }

    while (v111 != 128);
    v123 = v160;
    a1[4] = v159;
    a1[5] = v123;
    v124 = v162;
    a1[6] = v161;
    a1[7] = v124;
    v125 = v156;
    *a1 = v155;
    a1[1] = v125;
    v130 = v157;
    v131 = v158;
  }

  else
  {
    v126 = MEMORY[0x1E69E9B08];
    v127 = *(MEMORY[0x1E69E9B08] + 80);
    a1[4] = *(MEMORY[0x1E69E9B08] + 64);
    a1[5] = v127;
    v128 = v126[7];
    a1[6] = v126[6];
    a1[7] = v128;
    v129 = v126[1];
    *a1 = *v126;
    a1[1] = v129;
    v130 = v126[2];
    v131 = v126[3];
  }

  a1[2] = v130;
  a1[3] = v131;
}

@end