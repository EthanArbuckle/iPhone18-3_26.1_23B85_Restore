@interface MFPhoneRegion
- (MFPhoneRegion)initWithPath:(id)a3 in_bounds:(CGRect)a4;
- (MFPhoneRegion)initWithRects:(id)a3 in_bounds:(CGRect)a4 in_dc:(id)a5;
- (id)pathForClippingWithDeviceContext:(id)a3;
@end

@implementation MFPhoneRegion

- (MFPhoneRegion)initWithRects:(id)a3 in_bounds:(CGRect)a4 in_dc:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  v30.receiver = self;
  v30.super_class = MFPhoneRegion;
  v13 = [(MFPhoneRegion *)&v30 init];
  v14 = v13;
  if (v13)
  {
    v13->m_bounds.origin.x = x;
    v13->m_bounds.origin.y = y;
    v13->m_bounds.size.width = width;
    v13->m_bounds.size.height = height;
    v15 = objc_alloc_init(OITSUBezierPath);
    m_path = v14->m_path;
    v14->m_path = v15;

    v17 = [v12 getCurrentTransform];
    v18 = v17;
    if (v17)
    {
      [v17 getTransformMatrix];
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
    }

    v27 = v24;
    v28 = v25;
    v29 = v26;

    [v11 objectEnumerator];
    v20 = v19 = 0;
    while (1)
    {
      v21 = [v20 nextObject];

      v22 = v14->m_path;
      if (!v21)
      {
        break;
      }

      [v21 CGRectValue];
      v19 = v21;
      [(OITSUBezierPath *)v22 appendBezierPathWithRect:?];
    }

    v24 = v27;
    v25 = v28;
    v26 = v29;
    [(OITSUBezierPath *)v22 transformUsingAffineTransform:&v24];
  }

  return v14;
}

- (MFPhoneRegion)initWithPath:(id)a3 in_bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v15.receiver = self;
  v15.super_class = MFPhoneRegion;
  v10 = [(MFPhoneRegion *)&v15 init];
  if (v10)
  {
    v11 = [v9 getBezierPath];
    v12 = [v11 copy];
    m_path = v10->m_path;
    v10->m_path = v12;

    v10->m_bounds.origin.x = x;
    v10->m_bounds.origin.y = y;
    v10->m_bounds.size.width = width;
    v10->m_bounds.size.height = height;
  }

  return v10;
}

- (id)pathForClippingWithDeviceContext:(id)a3
{
  v4 = a3;
  m_path = self->m_path;
  if (m_path && ![(OITSUBezierPath *)m_path isEmpty])
  {
    v6 = [(OITSUBezierPath *)self->m_path copy];
    [v6 setWindingRule:{objc_msgSend(v4, "getPolyFillMode") != 2}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end