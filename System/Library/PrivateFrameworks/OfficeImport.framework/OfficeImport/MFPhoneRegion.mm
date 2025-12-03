@interface MFPhoneRegion
- (MFPhoneRegion)initWithPath:(id)path in_bounds:(CGRect)in_bounds;
- (MFPhoneRegion)initWithRects:(id)rects in_bounds:(CGRect)in_bounds in_dc:(id)in_dc;
- (id)pathForClippingWithDeviceContext:(id)context;
@end

@implementation MFPhoneRegion

- (MFPhoneRegion)initWithRects:(id)rects in_bounds:(CGRect)in_bounds in_dc:(id)in_dc
{
  height = in_bounds.size.height;
  width = in_bounds.size.width;
  y = in_bounds.origin.y;
  x = in_bounds.origin.x;
  rectsCopy = rects;
  in_dcCopy = in_dc;
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

    getCurrentTransform = [in_dcCopy getCurrentTransform];
    v18 = getCurrentTransform;
    if (getCurrentTransform)
    {
      [getCurrentTransform getTransformMatrix];
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

    [rectsCopy objectEnumerator];
    v20 = v19 = 0;
    while (1)
    {
      nextObject = [v20 nextObject];

      v22 = v14->m_path;
      if (!nextObject)
      {
        break;
      }

      [nextObject CGRectValue];
      v19 = nextObject;
      [(OITSUBezierPath *)v22 appendBezierPathWithRect:?];
    }

    v24 = v27;
    v25 = v28;
    v26 = v29;
    [(OITSUBezierPath *)v22 transformUsingAffineTransform:&v24];
  }

  return v14;
}

- (MFPhoneRegion)initWithPath:(id)path in_bounds:(CGRect)in_bounds
{
  height = in_bounds.size.height;
  width = in_bounds.size.width;
  y = in_bounds.origin.y;
  x = in_bounds.origin.x;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = MFPhoneRegion;
  v10 = [(MFPhoneRegion *)&v15 init];
  if (v10)
  {
    getBezierPath = [pathCopy getBezierPath];
    v12 = [getBezierPath copy];
    m_path = v10->m_path;
    v10->m_path = v12;

    v10->m_bounds.origin.x = x;
    v10->m_bounds.origin.y = y;
    v10->m_bounds.size.width = width;
    v10->m_bounds.size.height = height;
  }

  return v10;
}

- (id)pathForClippingWithDeviceContext:(id)context
{
  contextCopy = context;
  m_path = self->m_path;
  if (m_path && ![(OITSUBezierPath *)m_path isEmpty])
  {
    v6 = [(OITSUBezierPath *)self->m_path copy];
    [v6 setWindingRule:{objc_msgSend(contextCopy, "getPolyFillMode") != 2}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end