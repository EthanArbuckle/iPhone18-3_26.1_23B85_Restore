@interface NUHistogramParameters
- (NUHistogramParameters)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation NUHistogramParameters

- (id)description
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@" [0] = {%.3f, %f, %.3f, %.3f} [1] = {%.3f, %f, %.3f, %.3f} [2] = {%.3f, %f, %.3f, %.3f} [3] = {%.3f, %f, %.3f, %.3f}", self->_colorMatrix.r.r, self->_colorMatrix.r.g, self->_colorMatrix.r.b, self->_colorMatrix.r.a, self->_colorMatrix.g.r, self->_colorMatrix.g.g, self->_colorMatrix.g.b, self->_colorMatrix.g.a, self->_colorMatrix.b.r, self->_colorMatrix.b.g, self->_colorMatrix.b.b, self->_colorMatrix.b.a, self->_colorMatrix.a.r, self->_colorMatrix.a.g, self->_colorMatrix.a.b, self->_colorMatrix.a.a];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p colorMatrix:%@ >", objc_opt_class(), self, v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  g = self->_colorMatrix.g;
  b = self->_colorMatrix.b;
  a = self->_colorMatrix.a;
  *(result + 8) = self->_colorMatrix.r;
  *(result + 56) = a;
  *(result + 40) = b;
  *(result + 24) = g;
  return result;
}

- (NUHistogramParameters)init
{
  v3.receiver = self;
  v3.super_class = NUHistogramParameters;
  result = [(NUHistogramParameters *)&v3 init];
  result->_colorMatrix.r = NUStandardLuminanceColorMatrix;
  result->_colorMatrix.g = unk_1C03C4250;
  result->_colorMatrix.b = xmmword_1C03C4260;
  result->_colorMatrix.a = unk_1C03C4270;
  return result;
}

@end