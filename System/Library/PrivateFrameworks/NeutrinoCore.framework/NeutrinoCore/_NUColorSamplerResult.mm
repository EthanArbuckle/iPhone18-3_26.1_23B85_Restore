@interface _NUColorSamplerResult
- ($0AC6E346AE4835514AAA8AC86D8F4844)point;
- (void)dealloc;
@end

@implementation _NUColorSamplerResult

- ($0AC6E346AE4835514AAA8AC86D8F4844)point
{
  objc_copyStruct(v4, &self->_point, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)dealloc
{
  CGColorRelease(self->_color);
  v3.receiver = self;
  v3.super_class = _NUColorSamplerResult;
  [(_NUColorSamplerResult *)&v3 dealloc];
}

@end