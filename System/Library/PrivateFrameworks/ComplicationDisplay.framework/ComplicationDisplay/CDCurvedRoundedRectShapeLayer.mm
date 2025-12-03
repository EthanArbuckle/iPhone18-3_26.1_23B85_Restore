@interface CDCurvedRoundedRectShapeLayer
- (CDCurvedRoundedRectShapeLayer)initWithAngularWidth:(double)width innerRadius:(double)radius outerRadius:(double)outerRadius cornerRadius:(double)cornerRadius;
- (CDCurvedRoundedRectShapeLayer)initWithAngularWidth:(double)width innerRadius:(double)radius outerRadius:(double)outerRadius cornerRadius:(double)cornerRadius style:(int64_t)style;
- (CDCurvedRoundedRectShapeLayer)initWithAngularWidth:(double)width innerRadius:(double)radius outerRadius:(double)outerRadius cornerRadius:(double)cornerRadius style:(int64_t)style gapAngle:(double)angle;
- (CGPoint)_findCircleLineIntersectionWithOffset:(double)offset cornerRadiusOffset:(double)radiusOffset radius:(double)radius slope:(double)slope;
- (CGPoint)_findIntersectionOfCircle:(CGPoint)circle cornerRadius:(double)radius offset:(double)offset;
- (CGPoint)_findPointThatIsDistance:(double)distance fromPoint:(CGPoint)point onSlope:(double)slope offset:(double)offset;
- (CGPoint)_midPointOfPoint1:(CGPoint)point1 point2:(CGPoint)point2;
- (CGPoint)_pointAtAngle:(double)angle radius:(double)radius;
- (double)_findNewOffsetOfParalelLineWithSlope:(double)slope offset:(double)offset distanceFrom:(double)from;
- (double)_findPointOfIntersectionBetweenCircleOfRadius:(double)radius slope:(double)slope offset:(double)offset;
@end

@implementation CDCurvedRoundedRectShapeLayer

- (CDCurvedRoundedRectShapeLayer)initWithAngularWidth:(double)width innerRadius:(double)radius outerRadius:(double)outerRadius cornerRadius:(double)cornerRadius
{
  v63.receiver = self;
  v63.super_class = CDCurvedRoundedRectShapeLayer;
  v10 = [(CDCurvedRoundedRectShapeLayer *)&v63 init];
  if (v10)
  {
    v11 = width * 0.5;
    Mutable = CGPathCreateMutable();
    if (cornerRadius == 0.0)
    {
      v13 = __sincos_stret(width * 0.5);
      CGPathMoveToPoint(Mutable, 0, v13.__cosval * outerRadius, v13.__sinval * outerRadius);
      CGPathAddLineToPoint(Mutable, 0, v13.__cosval * radius, v13.__sinval * radius);
      CGPathAddArc(Mutable, 0, 0.0, 0.0, radius, v11, -v11, 1);
      v14 = sin(-v11);
      CGPathAddLineToPoint(Mutable, 0, v13.__cosval * outerRadius, v14 * outerRadius);
      v15 = 0.0;
      v16 = 0.0;
      v17 = Mutable;
      outerRadiusCopy = outerRadius;
      v19 = -v11;
    }

    else
    {
      v50 = cornerRadius * cornerRadius / (radius + radius) + cornerRadius;
      v20 = cornerRadius - cornerRadius * cornerRadius / (outerRadius + outerRadius);
      v21 = radius + cornerRadius;
      v22 = atan2(v50, radius + cornerRadius);
      v23 = outerRadius - cornerRadius;
      v55 = atan2(v20, v23);
      v25 = __sincos_stret(v11);
      v24.f64[0] = v25.__cosval;
      v24.f64[1] = v25.__sinval;
      v26 = vcvt_f32_f64(v24);
      v27 = __sincos_stret(v11 - v22);
      v28.f32[0] = v27.__cosval;
      sinval = v27.__sinval;
      v51 = sinval;
      v52 = v28.f32[0];
      v28.f32[1] = sinval;
      v58 = v28;
      v30 = __sincos_stret(v11 - v55);
      v31.f32[0] = v30.__cosval;
      v32 = v30.__sinval;
      v56 = v32;
      v57 = v31.f32[0];
      v31.f32[1] = v32;
      v54 = v31;
      v33 = v23;
      v53 = vmul_n_f32(v26, v33);
      CGPathMoveToPoint(Mutable, 0, v53.f32[0], v53.f32[1]);
      v11 = v11 + 1.57079633;
      v34 = v11 + 1.57079633 - v22;
      v35 = v21;
      v36 = vmul_n_f32(v26, v35);
      v37 = v50 + radius;
      v59 = vmul_n_f32(v58, v37);
      CGPathAddLineToPoint(Mutable, 0, v36.f32[0], v36.f32[1]);
      CGPathAddArc(Mutable, 0, v59.f32[0], v59.f32[1], v50, v11, v34, 0);
      __asm { FMOV            V0.2S, #1.0 }

      *&v43 = -_D0;
      v60 = vmul_f32(v59, COERCE_FLOAT32X2_T(-_D0));
      v44 = atan2f(v51, v52);
      CGPathAddArc(Mutable, 0, 0.0, 0.0, radius, v44, -v44, 1);
      CGPathAddArc(Mutable, 0, v60.f32[0], v60.f32[1], v50, -v34, -v11, 0);
      v45 = 1.57079633 - v11 + v55;
      v46 = vmul_f32(v53, v43);
      v47 = outerRadius - v20;
      v61 = vmul_f32(vmul_n_f32(v54, v47), v43);
      CGPathAddLineToPoint(Mutable, 0, v46.f32[0], v46.f32[1]);
      CGPathAddArc(Mutable, 0, v61.f32[0], v61.f32[1], v20, -v11, v45, 0);
      v62 = vmul_f32(v61, v43);
      v48 = atan2f(-v56, v57);
      CGPathAddArc(Mutable, 0, 0.0, 0.0, outerRadius, v48, -v48, 0);
      v15 = v62.f32[0];
      v16 = v62.f32[1];
      v17 = Mutable;
      outerRadiusCopy = v20;
      v19 = -v45;
    }

    CGPathAddArc(v17, 0, v15, v16, outerRadiusCopy, v19, v11, 0);
    CGPathCloseSubpath(Mutable);
    [(CDCurvedRoundedRectShapeLayer *)v10 setPath:Mutable];
    CGPathRelease(Mutable);
  }

  return v10;
}

- (CDCurvedRoundedRectShapeLayer)initWithAngularWidth:(double)width innerRadius:(double)radius outerRadius:(double)outerRadius cornerRadius:(double)cornerRadius style:(int64_t)style
{
  if (style != 3 && style)
  {
    v107.receiver = self;
    v107.super_class = CDCurvedRoundedRectShapeLayer;
    v12 = [(CDCurvedRoundedRectShapeLayer *)&v107 init];
    if (!v12)
    {
      goto LABEL_11;
    }

    Mutable = CGPathCreateMutable();
    v14 = width * 0.5;
    v15 = cornerRadius - cornerRadius * cornerRadius / (outerRadius + outerRadius);
    v105 = cornerRadius * cornerRadius / (radius + radius) + cornerRadius;
    v106 = v15;
    v78 = radius + cornerRadius;
    v96 = atan2(v105, radius + cornerRadius);
    v16 = outerRadius - cornerRadius;
    v98 = atan2(v15, v16);
    v18 = __sincos_stret(v14);
    v17.f64[0] = v18.__cosval;
    v17.f64[1] = v18.__sinval;
    v19 = vcvt_f32_f64(v17);
    v20 = __sincos_stret(v14 - v96);
    v21.f32[0] = v20.__cosval;
    sinval = v20.__sinval;
    v88 = sinval;
    startAnglea = v21.f32[0];
    v21.f32[1] = sinval;
    v86 = v21;
    v23 = __sincos_stret(v14 - v98);
    v24.f32[0] = v23.__cosval;
    v25 = v23.__sinval;
    v100 = v25;
    v103 = v24.f32[0];
    v24.f32[1] = v25;
    v93 = v24;
    v26 = v16;
    v77 = v19;
    v81 = vmul_n_f32(v19, v26);
    v27 = (outerRadius - radius) * 0.5;
    v28 = atan2(v27 + v27 * v27 / (radius + radius), v27 + radius);
    v29 = atan2(v27 - v27 * v27 / (outerRadius + outerRadius), outerRadius - v27);
    v30 = __sincos_stret(v14 - v28);
    *&v27 = v30.__cosval;
    v31 = v30.__sinval;
    v32 = __sincos_stret(v14 - v29);
    cosval = v32.__cosval;
    v84 = cosval;
    v34 = v32.__sinval;
    v82 = v34;
    v35 = v14 + 1.57079633;
    endAngle = v35 + 1.57079633 - v96;
    v36 = v105 + radius;
    v79 = vmul_n_f32(v86, v36);
    v87 = v35 + 1.57079633 - v28;
    startAngle = atan2f(v88, startAnglea);
    v37 = atan2f(v31, *&v27);
    v97 = v35;
    v89 = 1.57079633 - v35 + v98;
    v38 = outerRadius - v106;
    __asm { FMOV            V2.2S, #1.0 }

    v44 = -_D2;
    v94 = vmul_f32(vmul_n_f32(v93, v38), COERCE_FLOAT32X2_T(-_D2));
    v99 = 1.57079633 - v35 + v29;
    v45 = atan2f(-v82, v84);
    [(CDCurvedRoundedRectShapeLayer *)v12 _pointAtAngle:-v37 radius:radius];
    v47 = v46;
    v49 = v48;
    [(CDCurvedRoundedRectShapeLayer *)v12 _pointAtAngle:v45 radius:outerRadius];
    [(CDCurvedRoundedRectShapeLayer *)v12 _midPointOfPoint1:v47 point2:v49, v50, v51];
    v83 = v52;
    v76 = v53;
    v104 = atan2f(-v100, v103);
    [(CDCurvedRoundedRectShapeLayer *)v12 _pointAtAngle:v37 radius:radius];
    v55 = v54;
    v57 = v56;
    v101 = -v45;
    [(CDCurvedRoundedRectShapeLayer *)v12 _pointAtAngle:-v45 radius:outerRadius];
    [(CDCurvedRoundedRectShapeLayer *)v12 _midPointOfPoint1:v55 point2:v57, v58, v59];
    if (style == 2)
    {
      v71 = v61;
      v72 = v60;
      v85 = vmul_f32(v81, *&v44);
      v73 = -startAngle;
      startAngleb = vmul_f32(v79, *&v44);
      CGPathAddArc(Mutable, 0, 0.0, 0.0, radius, v37, v73, 1);
      CGPathAddArc(Mutable, 0, startAngleb.f32[0], startAngleb.f32[1], v105, -endAngle, -v97, 0);
      CGPathAddLineToPoint(Mutable, 0, v85.f32[0], v85.f32[1]);
      CGPathAddArc(Mutable, 0, v94.f32[0], v94.f32[1], v106, -v97, v89, 0);
      CGPathAddArc(Mutable, 0, 0.0, 0.0, outerRadius, v104, v101, 0);
      v65 = v72;
      v66 = v71;
      v67 = Mutable;
      v68 = (outerRadius - radius) * 0.5;
      v69 = -v99;
      v70 = v87;
    }

    else
    {
      if (style != 1)
      {
LABEL_10:
        CGPathCloseSubpath(Mutable);
        [(CDCurvedRoundedRectShapeLayer *)v12 setPath:Mutable];
        CGPathRelease(Mutable);
        goto LABEL_11;
      }

      v102 = vmul_f32(v94, *&v44);
      v62 = v83;
      v63 = v76;
      v64 = v78;
      v95 = vmul_n_f32(v77, v64);
      CGPathMoveToPoint(Mutable, 0, v81.f32[0], v81.f32[1]);
      CGPathAddLineToPoint(Mutable, 0, v95.f32[0], v95.f32[1]);
      CGPathAddArc(Mutable, 0, v79.f32[0], v79.f32[1], v105, v97, endAngle, 0);
      CGPathAddArc(Mutable, 0, 0.0, 0.0, radius, startAngle, -v37, 1);
      CGPathAddArc(Mutable, 0, v62, v63, (outerRadius - radius) * 0.5, -v87, v99, 0);
      CGPathAddArc(Mutable, 0, 0.0, 0.0, outerRadius, v45, -v104, 0);
      v65 = v102.f32[0];
      v66 = v102.f32[1];
      v67 = Mutable;
      v68 = v106;
      v69 = -v89;
      v70 = v97;
    }

    CGPathAddArc(v67, 0, v65, v66, v68, v69, v70, 0);
    goto LABEL_10;
  }

  v12 = [CDCurvedRoundedRectShapeLayer initWithAngularWidth:"initWithAngularWidth:innerRadius:outerRadius:cornerRadius:" innerRadius:? outerRadius:? cornerRadius:?];
LABEL_11:
  v74 = v12;

  return v74;
}

- (CDCurvedRoundedRectShapeLayer)initWithAngularWidth:(double)width innerRadius:(double)radius outerRadius:(double)outerRadius cornerRadius:(double)cornerRadius style:(int64_t)style gapAngle:(double)angle
{
  v86.receiver = self;
  v86.super_class = CDCurvedRoundedRectShapeLayer;
  v14 = [(CDCurvedRoundedRectShapeLayer *)&v86 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_7;
  }

  if ((outerRadius - radius) * 0.5 >= cornerRadius)
  {
    if ((style - 1) > 1)
    {
      v17 = objc_alloc_init(MEMORY[0x277D75208]);
      v18 = width * 0.5;
      v84 = atan2(cornerRadius, outerRadius);
      v80 = atan2(cornerRadius, radius);
      [(CDCurvedRoundedRectShapeLayer *)v15 _pointAtAngle:v18 radius:outerRadius];
      v20 = v19;
      v22 = v21;
      [(CDCurvedRoundedRectShapeLayer *)v15 _pointAtAngle:v18 + angle * 0.5 radius:outerRadius];
      v25 = v24 / v23;
      v69 = v22 - v24 / v23 * v20;
      [(CDCurvedRoundedRectShapeLayer *)v15 _findPointOfIntersectionBetweenCircleOfRadius:radius slope:v24 / v23 offset:v69];
      v75 = v26;
      [(CDCurvedRoundedRectShapeLayer *)v15 _findNewOffsetOfParalelLineWithSlope:v25 offset:v69 distanceFrom:cornerRadius];
      v28 = v27;
      [CDCurvedRoundedRectShapeLayer _findCircleLineIntersectionWithOffset:v15 cornerRadiusOffset:"_findCircleLineIntersectionWithOffset:cornerRadiusOffset:radius:slope:" radius:? slope:?];
      v30 = v29;
      v32 = v31;
      v79 = v84 - v18;
      v81 = v18 - v84;
      [(CDCurvedRoundedRectShapeLayer *)v15 _pointAtAngle:v18 radius:outerRadius];
      v82 = v34;
      v83 = v33;
      [(CDCurvedRoundedRectShapeLayer *)v15 _findIntersectionOfCircle:v30 cornerRadius:v32 offset:cornerRadius, v28];
      v36 = v35;
      v61 = v37;
      [(CDCurvedRoundedRectShapeLayer *)v15 _findPointThatIsDistance:outerRadius - cornerRadius - (radius + cornerRadius) fromPoint:v35 onSlope:v37 offset:v25, v69];
      v71 = v39;
      v73 = v38;
      [(CDCurvedRoundedRectShapeLayer *)v15 _findCircleLineIntersectionWithOffset:v28 cornerRadiusOffset:cornerRadius radius:radius slope:v25];
      [CDCurvedRoundedRectShapeLayer _findIntersectionOfCircle:v15 cornerRadius:"_findIntersectionOfCircle:cornerRadius:offset:" offset:?];
      v77 = v41;
      v78 = v40;
      v76 = acos(v75 / radius) - v80;
      [(CDCurvedRoundedRectShapeLayer *)v15 _findPointOfIntersectionBetweenCircleOfRadius:radius slope:v25 offset:v69];
      v43 = v42;
      v59 = v69 + v42 * v25;
      [(CDCurvedRoundedRectShapeLayer *)v15 _pointAtAngle:v76 radius:radius];
      v62 = v45;
      v63 = v44;
      [(CDCurvedRoundedRectShapeLayer *)v15 _getMirroredPoint:v73, v71];
      v72 = v47;
      v74 = v46;
      [(CDCurvedRoundedRectShapeLayer *)v15 _getMirroredPoint:v43, v59];
      v68 = v49;
      v70 = v48;
      [(CDCurvedRoundedRectShapeLayer *)v15 _getMirroredPoint:v36, v61];
      v66 = v51;
      v67 = v50;
      [(CDCurvedRoundedRectShapeLayer *)v15 _pointAtAngle:v79 radius:outerRadius];
      v64 = v53;
      v65 = v52;
      [(CDCurvedRoundedRectShapeLayer *)v15 _pointAtAngle:v79 - v84 radius:outerRadius];
      v85 = v54;
      v60 = v55;
      v57 = *MEMORY[0x277CBF348];
      v56 = *(MEMORY[0x277CBF348] + 8);
      [v17 addArcWithCenter:1 radius:*MEMORY[0x277CBF348] startAngle:v56 endAngle:outerRadius clockwise:{v79, v81}];
      [v17 addQuadCurveToPoint:v36 controlPoint:{v61, v83, v82}];
      [v17 addLineToPoint:{v78, v77}];
      [v17 addQuadCurveToPoint:v63 controlPoint:{v62, v43, v59}];
      [v17 addArcWithCenter:0 radius:v57 startAngle:v56 endAngle:radius clockwise:{v76, -v76}];
      [v17 addQuadCurveToPoint:v74 controlPoint:{v72, v70, v68}];
      [v17 addLineToPoint:{v67, v66}];
      [v17 addQuadCurveToPoint:v65 controlPoint:{v64, v85, v60}];
      -[CDCurvedRoundedRectShapeLayer setPath:](v15, "setPath:", [v17 CGPath]);
    }

    else
    {
      v15 = [(CDCurvedRoundedRectShapeLayer *)v14 initWithAngularWidth:style innerRadius:width outerRadius:radius cornerRadius:outerRadius style:cornerRadius];
    }

LABEL_7:
    v15 = v15;
    v16 = v15;
    goto LABEL_8;
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (CGPoint)_findCircleLineIntersectionWithOffset:(double)offset cornerRadiusOffset:(double)radiusOffset radius:(double)radius slope:(double)slope
{
  [(CDCurvedRoundedRectShapeLayer *)self _findPointOfIntersectionBetweenCircleOfRadius:radiusOffset + radius slope:slope offset:offset];
  v9 = offset + slope * v8;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_findPointThatIsDistance:(double)distance fromPoint:(CGPoint)point onSlope:(double)slope offset:(double)offset
{
  x = point.x;
  v7 = point.y - offset;
  v8 = point.x - point.x * distance / sqrtf((x * x) + (v7 * v7));
  v9 = offset + v8 * slope;
  result.y = v9;
  result.x = v8;
  return result;
}

- (double)_findPointOfIntersectionBetweenCircleOfRadius:(double)radius slope:(double)slope offset:(double)offset
{
  v5 = (slope + slope) * offset;
  slopeCopy = slope;
  v7 = slopeCopy * slopeCopy;
  v8 = v7 * 4.0;
  offsetCopy = offset;
  v10 = (v7 + 1.0);
  radiusCopy = radius;
  v12 = v10 * -4.0 * ((offsetCopy * offsetCopy) - (radiusCopy * radiusCopy)) + v8 * (offsetCopy * offsetCopy);
  return (sqrtf(v12) - v5) / (v10 + v10);
}

- (CGPoint)_pointAtAngle:(double)angle radius:(double)radius
{
  angleCopy = angle;
  v6 = __sincosf_stret(angleCopy);
  v7 = v6.__sinval * radius;
  v8 = v6.__cosval * radius;
  result.y = v7;
  result.x = v8;
  return result;
}

- (CGPoint)_midPointOfPoint1:(CGPoint)point1 point2:(CGPoint)point2
{
  v4 = (point1.x + point2.x) * 0.5;
  v5 = (point1.y + point2.y) * 0.5;
  result.y = v5;
  result.x = v4;
  return result;
}

- (double)_findNewOffsetOfParalelLineWithSlope:(double)slope offset:(double)offset distanceFrom:(double)from
{
  v5 = slope + offset - offset;
  __asm { FMOV            V4.2S, #1.0 }

  _D4.f32[1] = v5;
  v11 = vmul_f32(_D4, _D4);
  v11.i32[0] = vadd_f32(v11, vdup_lane_s32(v11, 1)).u32[0];
  v12 = vrsqrte_f32(v11.u32[0]);
  v13 = vmul_f32(v12, vrsqrts_f32(v11.u32[0], vmul_f32(v12, v12)));
  v14 = vmul_n_f32(_D4, vmul_f32(v13, vrsqrts_f32(v11.u32[0], vmul_f32(v13, v13))).f32[0]);
  _D4.f32[0] = -v14.f32[0];
  v14.i32[0] = vdup_lane_s32(v14, 1).u32[0];
  v14.i32[1] = _D4.i32[0];
  fromCopy = from;
  v16 = vmul_n_f32(v14, fromCopy);
  v14.f32[0] = v16.f32[0] + 0.0;
  v16.f32[0] = v16.f32[1] + offset;
  return v16.f32[0] - (offset + slope * v14.f32[0]) + offset;
}

- (CGPoint)_findIntersectionOfCircle:(CGPoint)circle cornerRadius:(double)radius offset:(double)offset
{
  v5.f64[0] = circle.x;
  v5.f64[1] = circle.y - offset;
  v6 = vcvt_f32_f64(v5);
  *&v5.f64[0] = vmul_f32(v6, v6);
  LODWORD(v5.f64[0]) = vadd_f32(*&v5.f64[0], vdup_lane_s32(*&v5.f64[0], 1)).u32[0];
  v7 = vrsqrte_f32(LODWORD(v5.f64[0]));
  v8 = vmul_f32(v7, vrsqrts_f32(LODWORD(v5.f64[0]), vmul_f32(v7, v7)));
  v9 = vmul_n_f32(v6, vmul_f32(v8, vrsqrts_f32(LODWORD(v5.f64[0]), vmul_f32(v8, v8))).f32[0]);
  LODWORD(v5.f64[0]) = vdup_lane_s32(v9, 1).u32[0];
  *(v5.f64 + 1) = -*v9.i32;
  radiusCopy = radius;
  v11 = vmul_n_f32(*&v5.f64[0], radiusCopy);
  v12 = circle.x - v11.f32[0];
  v13 = circle.y - v11.f32[1];
  result.y = v13;
  result.x = v12;
  return result;
}

@end