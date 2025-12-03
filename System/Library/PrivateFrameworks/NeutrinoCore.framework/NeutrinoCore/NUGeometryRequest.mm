@interface NUGeometryRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
- (int64_t)mediaComponentType;
- (void)_commonInit;
@end

@implementation NUGeometryRequest

- (int64_t)mediaComponentType
{
  composition = [(NURenderRequest *)self composition];
  mediaType = [composition mediaType];

  if ((mediaType - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1C03C42E0[mediaType - 1];
  }
}

- (id)newRenderJob
{
  v3 = [NUGeometryJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NUGeometryRequest;
  v4 = [(NURenderRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 20, self->_scalePolicy);
  }

  return v5;
}

- (void)_commonInit
{
  v5.receiver = self;
  v5.super_class = NUGeometryRequest;
  [(NURenderRequest *)&v5 _commonInit];
  v3 = +[NUFixedScalePolicy oneToOneScalePolicy];
  scalePolicy = self->_scalePolicy;
  self->_scalePolicy = v3;
}

@end