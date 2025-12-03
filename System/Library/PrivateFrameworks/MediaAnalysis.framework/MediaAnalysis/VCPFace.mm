@interface VCPFace
- (CGRect)bounds;
- (CGRect)faceBounds:(unint64_t)bounds height:(unint64_t)height;
- (CGRect)faceBoundsWithTransform:(unint64_t)transform height:(unint64_t)height transform:(CGAffineTransform *)a5;
- (CGRect)torsoBounds;
- (VCPFace)init;
- (unint64_t)flagsForOrientation:(BOOL)orientation width:(unint64_t)width height:(unint64_t)height;
@end

@implementation VCPFace

- (VCPFace)init
{
  v4.receiver = self;
  v4.super_class = VCPFace;
  result = [(VCPFace *)&v4 init];
  if (result)
  {
    result->_smile = 0;
    *&result->_leftEyeClosed = 0;
    result->_yaw = 2;
    result->_trackID = 0;
    v3 = *(MEMORY[0x1E695F058] + 16);
    result->_torsoBounds.origin = *MEMORY[0x1E695F058];
    result->_torsoBounds.size = v3;
  }

  return result;
}

- (unint64_t)flagsForOrientation:(BOOL)orientation width:(unint64_t)width height:(unint64_t)height
{
  v5 = 2;
  if (!self->_smile)
  {
    v5 = 0;
  }

  if (self->_leftEyeClosed)
  {
    if (self->_rightEyeClosed)
    {
      v5 |= 4uLL;
      goto LABEL_8;
    }
  }

  else if (!self->_rightEyeClosed)
  {
    goto LABEL_8;
  }

  v5 |= 8uLL;
LABEL_8:
  v6 = 56;
  if (orientation)
  {
    v6 = 64;
  }

  else
  {
    height = width;
  }

  if (*(&self->super.isa + v6) / height >= 0.449999988)
  {
    return v5 | 0x10;
  }

  else
  {
    return v5;
  }
}

- (CGRect)faceBounds:(unint64_t)bounds height:(unint64_t)height
{
  v4 = self->_bounds.origin.x / bounds;
  v5 = self->_bounds.size.width / bounds;
  v6 = self->_bounds.origin.y / height;
  v7 = self->_bounds.size.height / height;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v6;
  result.origin.x = v4;
  return result;
}

- (CGRect)faceBoundsWithTransform:(unint64_t)transform height:(unint64_t)height transform:(CGAffineTransform *)a5
{
  [(VCPFace *)self faceBounds:transform height:height];
  v6 = *&a5->c;
  *&v7.a = *&a5->a;
  *&v7.c = v6;
  *&v7.tx = *&a5->tx;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (CGRect)bounds
{
  objc_copyStruct(v6, &self->_bounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)torsoBounds
{
  objc_copyStruct(v6, &self->_torsoBounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end