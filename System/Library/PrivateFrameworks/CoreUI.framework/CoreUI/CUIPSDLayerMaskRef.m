@interface CUIPSDLayerMaskRef
- (BOOL)isEnabled;
- (BOOL)isInvertedWhenBlending;
- (BOOL)isLinked;
- (CGImage)createCGImageMask;
- (CGPath)newBezierPathAtScale:(double)a3;
- (CGRect)bounds;
- (id)initLayerMaskWithLayerRef:(id)a3;
- (id)initVectorMaskWithLayerRef:(id)a3;
- (void)dealloc;
@end

@implementation CUIPSDLayerMaskRef

- (id)initLayerMaskWithLayerRef:(id)a3
{
  v6.receiver = self;
  v6.super_class = CUIPSDLayerMaskRef;
  v4 = [(CUIPSDLayerMaskRef *)&v6 init];
  if (v4)
  {
    v4->_layerRef = a3;
    v4->_isVectorMask = 0;
  }

  return v4;
}

- (id)initVectorMaskWithLayerRef:(id)a3
{
  v6.receiver = self;
  v6.super_class = CUIPSDLayerMaskRef;
  v4 = [(CUIPSDLayerMaskRef *)&v6 init];
  if (v4)
  {
    v4->_layerRef = a3;
    v4->_isVectorMask = 1;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerMaskRef;
  [(CUIPSDLayerMaskRef *)&v3 dealloc];
}

- (BOOL)isLinked
{
  v2 = [(CUIPSDLayerBaseRef *)self->_layerRef _psdLayerRecord];
  CPSDLayerMaskData::GetMaskCount((v2 + 80));
  return v2[117] & 1;
}

- (BOOL)isEnabled
{
  v2 = [(CUIPSDLayerBaseRef *)self->_layerRef _psdLayerRecord];
  CPSDLayerMaskData::GetMaskCount((v2 + 80));
  return (v2[117] & 2) == 0;
}

- (BOOL)isInvertedWhenBlending
{
  v2 = [(CUIPSDLayerBaseRef *)self->_layerRef _psdLayerRecord];
  CPSDLayerMaskData::GetMaskCount((v2 + 80));
  return (v2[117] & 3) == 1;
}

- (CGRect)bounds
{
  v3 = [(CUIPSDLayerBaseRef *)self->_layerRef _psdLayerRecord];
  if (CPSDLayerMaskData::GetMaskCount((v3 + 80)) == 2 && !self->_isVectorMask)
  {
    v4 = 132;
    v5 = 128;
    v6 = 124;
    v7 = 120;
  }

  else
  {
    v4 = 112;
    v5 = 108;
    v6 = 104;
    v7 = 100;
  }

  v8 = *&v3[v6];
  v9 = *&v3[v7];
  v10 = v8;
  v11 = v9;
  v12 = (*&v3[v4] - v8);
  v13 = (*&v3[v5] - v9);
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGPath)newBezierPathAtScale:(double)a3
{
  if (!self->_isVectorMask)
  {
    return 0;
  }

  Mutable = CGPathCreateMutable();
  v9 = *(FirstItemOfTypeID + 44);
  [-[CUIPSDLayerBaseRef _psdImageRef](self->_layerRef "_psdImageRef")];
  if (v9)
  {
    v12 = 0;
    v13 = v10 * a3;
    v14 = v11 * a3;
    do
    {
      Subpath = CPSDPathsResourceItem::GetSubpath((FirstItemOfTypeID + 7), v12);
      v16 = *(Subpath + 18);
      v17 = CGPathCreateMutable();
      v18 = 0;
      do
      {
        if (v18 == v16)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        CPSDPathResource::GetBezierKnot(Subpath, v19, &v26, &v25, &v27);
        v20 = v26;
        memset(&v24, 0, sizeof(v24));
        CGAffineTransformMakeScale(&v24, v13, v14);
        if (v18)
        {
          CGPathAddCurveToPoint(v17, &v24, v4, v3, *&v25, *(&v25 + 1), *&v20, *(&v20 + 1));
        }

        else
        {
          CGPathMoveToPoint(v17, &v24, *&v20, *(&v20 + 1));
        }

        v3 = *(&v27 + 1);
        v4 = *&v27;
      }

      while (v18++ < v16);
      CGPathCloseSubpath(v17);
      CGPathAddPath(Mutable, 0, v17);
      CGPathRelease(v17);
      ++v12;
    }

    while (v9 > v12);
  }

  v22 = MEMORY[0x193AC5C10](Mutable);
  CGPathRelease(Mutable);
  return v22;
}

- (CGImage)createCGImageMask
{
  if (self->_isVectorMask)
  {
    return 0;
  }

  layerRef = self->_layerRef;
  v5 = [(CUIPSDLayerBaseRef *)layerRef hasVectorMask];

  return [(CUIPSDLayerBaseRef *)layerRef _createMaskFromAlphaChannel:v5];
}

@end