@interface CUIPSDLayerBaseRef
- (BOOL)hasVectorMask;
- (CGImage)_createMaskFromAlphaChannel:(int64_t)a3;
- (CGRect)bounds;
- (id)layerMaskRef;
- (id)vectorMaskRef;
- (void)dealloc;
@end

@implementation CUIPSDLayerBaseRef

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerBaseRef;
  [(CUIPSDLayerBaseRef *)&v3 dealloc];
}

- (CGRect)bounds
{
  [(CUIPSDImageRef *)self->_imageRef _boundsAtAbsoluteIndex:self->_layerIndex];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)hasVectorMask
{
  v2 = [(CUIPSDLayerBaseRef *)self _psdLayerRecord];
  if (v2)
  {
  }

  return v2;
}

- (id)layerMaskRef
{
  if (![(CUIPSDLayerBaseRef *)self hasLayerMask])
  {
    return 0;
  }

  v3 = [[CUIPSDLayerMaskRef alloc] initLayerMaskWithLayerRef:self];

  return v3;
}

- (id)vectorMaskRef
{
  if (![(CUIPSDLayerBaseRef *)self hasVectorMask])
  {
    return 0;
  }

  v3 = [[CUIPSDLayerMaskRef alloc] initVectorMaskWithLayerRef:self];

  return v3;
}

- (CGImage)_createMaskFromAlphaChannel:(int64_t)a3
{
  v5 = [(CUIPSDImageRef *)self->_imageRef psdFile];
  v6 = [(CUIPSDLayerBaseRef *)self _psdLayerRecord];
  v7 = v6[16];
  v8 = v5[77];
  if (CPSDLayerRecord::GetTransparencyMask(v6))
  {
    v9 = v8 + a3 + 1;
  }

  else
  {
    v9 = v8 + a3;
  }

  if (v9 >= v7)
  {
    return 0;
  }

  CPSDLayerInfo::CreateImageAtLayer((v5 + 124), self->_layerIndex);
  if (result)
  {
    v11 = (*(*result + 24))(result, v9);
    return (*(*v11 + 16))(v11);
  }

  return result;
}

@end