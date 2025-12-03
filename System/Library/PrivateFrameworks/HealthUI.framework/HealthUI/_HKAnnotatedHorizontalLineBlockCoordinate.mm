@interface _HKAnnotatedHorizontalLineBlockCoordinate
- (BOOL)isEqual:(id)equal;
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (_HKAnnotatedHorizontalLineBlockCoordinate)initWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint styleIdentifier:(int64_t)identifier userInfo:(id)info;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
- (unint64_t)hash;
@end

@implementation _HKAnnotatedHorizontalLineBlockCoordinate

- (_HKAnnotatedHorizontalLineBlockCoordinate)initWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint styleIdentifier:(int64_t)identifier userInfo:(id)info
{
  y = endPoint.y;
  x = endPoint.x;
  v10 = point.y;
  v11 = point.x;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = _HKAnnotatedHorizontalLineBlockCoordinate;
  v14 = [(_HKAnnotatedHorizontalLineBlockCoordinate *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_startPoint.x = v11;
    v14->_startPoint.y = v10;
    v14->_endPoint.x = x;
    v14->_endPoint.y = y;
    v14->_styleIdentifier = identifier;
    objc_storeStrong(&v14->_userInfo, info);
  }

  return v15;
}

- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  scaleCopy = scale;
  [(_HKAnnotatedHorizontalLineBlockCoordinate *)self startPoint];
  v22 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v7), *&transform->a, v8));
  [(_HKAnnotatedHorizontalLineBlockCoordinate *)self endPoint];
  v11 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v9), *&transform->a, v10));
  v12 = v11.f64[1];
  v13 = v22.f64[1];
  v21 = v11.f64[0];
  if (scaleCopy)
  {
    v22.f64[0] = HKUIFloorCGPointToScreenScale(v22.f64[0], v22.f64[1]);
    v13 = v14;
    v21 = HKUIFloorCGPointToScreenScale(v21, v12);
    v12 = v15;
  }

  v16 = [_HKAnnotatedHorizontalLineBlockCoordinate alloc];
  styleIdentifier = [(_HKAnnotatedHorizontalLineBlockCoordinate *)self styleIdentifier];
  userInfo = [(_HKAnnotatedHorizontalLineBlockCoordinate *)self userInfo];
  v19 = [(_HKAnnotatedHorizontalLineBlockCoordinate *)v16 initWithStartPoint:styleIdentifier endPoint:userInfo styleIdentifier:v22.f64[0] userInfo:v13, v21, v12];

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(_HKAnnotatedHorizontalLineBlockCoordinate *)self startPoint];
    v7 = llround(v6 / 0.0000000115);
    [v5 startPoint];
    if (v7 == llround(v8 / 0.0000000115) && (-[_HKAnnotatedHorizontalLineBlockCoordinate endPoint](self, "endPoint"), v10 = llround(v9 / 0.0000000115), [v5 endPoint], v10 == llround(v11 / 0.0000000115)) && (-[_HKAnnotatedHorizontalLineBlockCoordinate startPoint](self, "startPoint"), v13 = llround(v12 / 0.0000000115), objc_msgSend(v5, "startPoint"), v13 == llround(v14 / 0.0000000115)))
    {
      [(_HKAnnotatedHorizontalLineBlockCoordinate *)self endPoint];
      v16 = llround(v15 / 0.0000000115);
      [v5 endPoint];
      v18 = v16 == llround(v17 / 0.0000000115);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  [(_HKAnnotatedHorizontalLineBlockCoordinate *)self startPoint];
  v14 = v3;
  [(_HKAnnotatedHorizontalLineBlockCoordinate *)self endPoint];
  v13 = v4;
  [(_HKAnnotatedHorizontalLineBlockCoordinate *)self startPoint];
  v12 = v5;
  [(_HKAnnotatedHorizontalLineBlockCoordinate *)self endPoint];
  v6.f64[0] = v12;
  v6.f64[1] = v7;
  v8.f64[0] = v13;
  v8.f64[1] = v14;
  v9 = vdupq_n_s64(0x3E48B2311DB7D476uLL);
  v10 = veorq_s8(vcvtq_s64_f64(vrndaq_f64(vdivq_f64(v8, v9))), vcvtq_s64_f64(vrndaq_f64(vdivq_f64(v6, v9))));
  return veor_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
}

- (CGPoint)startPoint
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  x = self->_endPoint.x;
  y = self->_endPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end