@interface MFPhonePath
- (CGPoint)currentPoint;
- (MFPhonePath)init;
- (MFPhonePath)initWithPath:(id)path state:(int)state;
- (id)copyWithZone:(_NSZone *)zone;
- (int)abort;
- (int)begin;
- (int)closeFigure;
- (int)end;
- (int)fill:(id)fill;
- (int)flatten;
- (int)stroke:(id)stroke;
- (void)appendBezierPath:(id)path dc:(id)dc;
@end

@implementation MFPhonePath

- (MFPhonePath)init
{
  v6.receiver = self;
  v6.super_class = MFPhonePath;
  v2 = [(MFPhonePath *)&v6 init];
  if (v2)
  {
    v3 = +[OITSUBezierPath bezierPath];
    m_path = v2->m_path;
    v2->m_path = v3;

    v2->m_state = 0;
  }

  return v2;
}

- (int)begin
{
  [(OITSUBezierPath *)self->m_path removeAllPoints];
  [(OITSUBezierPath *)self->m_path moveToPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  self->m_state = 1;
  return 0;
}

- (int)closeFigure
{
  if ([(MFPhonePath *)self isOpen])
  {
    [(OITSUBezierPath *)self->m_path closePath];
  }

  return 0;
}

- (CGPoint)currentPoint
{
  if ([(OITSUBezierPath *)self->m_path isEmpty])
  {
    v3 = *MEMORY[0x277CBF348];
    v4 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    [(OITSUBezierPath *)self->m_path currentPoint];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (int)end
{
  if ([(MFPhonePath *)self isOpen])
  {
    self->m_state = 2;
  }

  return 0;
}

- (MFPhonePath)initWithPath:(id)path state:(int)state
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = MFPhonePath;
  v8 = [(MFPhonePath *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->m_path, path);
    v9->m_state = state;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(OITSUBezierPath *)self->m_path copyWithZone:?];
  v6 = [[MFPhonePath allocWithZone:?]state:"initWithPath:state:", v5, self->m_state];

  return v6;
}

- (int)abort
{
  [(OITSUBezierPath *)self->m_path removeAllPoints];
  self->m_state = 0;
  return 0;
}

- (int)flatten
{
  if ([(MFPhonePath *)self isOpen])
  {
    [(OITSUBezierPath *)self->m_path setFlatness:3.40282347e38];
  }

  return 0;
}

- (int)stroke:(id)stroke
{
  strokeCopy = stroke;
  v5 = strokeCopy;
  if (self->m_state == 2)
  {
    memset(&v13, 0, sizeof(v13));
    getCurrentTransform = [strokeCopy getCurrentTransform];
    v7 = getCurrentTransform;
    if (getCurrentTransform)
    {
      [getCurrentTransform getTransformMatrix];
    }

    else
    {
      memset(&v12, 0, sizeof(v12));
    }

    CGAffineTransformInvert(&v13, &v12);

    v9 = [(OITSUBezierPath *)self->m_path copy];
    v12 = v13;
    [v9 transformUsingAffineTransform:&v12];
    getPen = [v5 getPen];
    [getPen strokePath:v5 in_path:v9];

    v8 = 0;
  }

  else
  {
    v8 = -7;
  }

  return v8;
}

- (int)fill:(id)fill
{
  fillCopy = fill;
  v5 = fillCopy;
  if (self->m_state == 2)
  {
    memset(&v13, 0, sizeof(v13));
    getCurrentTransform = [fillCopy getCurrentTransform];
    v7 = getCurrentTransform;
    if (getCurrentTransform)
    {
      [getCurrentTransform getTransformMatrix];
    }

    else
    {
      memset(&v12, 0, sizeof(v12));
    }

    CGAffineTransformInvert(&v13, &v12);

    v9 = [(OITSUBezierPath *)self->m_path copy];
    v12 = v13;
    [v9 transformUsingAffineTransform:&v12];
    getBrush = [v5 getBrush];
    [getBrush fillPath:v5 in_path:v9];

    v8 = 0;
  }

  else
  {
    v8 = -7;
  }

  return v8;
}

- (void)appendBezierPath:(id)path dc:(id)dc
{
  pathCopy = path;
  dcCopy = dc;
  if ([(MFPhonePath *)self isOpen])
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    getCurrentTransform = [dcCopy getCurrentTransform];
    v9 = getCurrentTransform;
    if (getCurrentTransform)
    {
      [getCurrentTransform getTransformMatrix];
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
    }

    v10 = [pathCopy copy];
    v11[0] = v12;
    v11[1] = v13;
    v11[2] = v14;
    [v10 transformUsingAffineTransform:v11];
    [(OITSUBezierPath *)self->m_path attachBezierPath:v10];
  }
}

@end