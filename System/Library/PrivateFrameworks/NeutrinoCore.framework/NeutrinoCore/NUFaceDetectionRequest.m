@interface NUFaceDetectionRequest
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newRenderJob;
- (void)_commonInit;
@end

@implementation NUFaceDetectionRequest

- (id)newRenderJob
{
  v3 = [NUFaceDetectionJob alloc];

  return [(NUFaceDetectionJob *)v3 initWithFaceDetectionRequest:self];
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = NUFaceDetectionRequest;
  v3 = [(NURenderRequest *)&v8 description];
  v4 = [(NUFaceDetectionRequest *)self maxFaceCount];
  v5 = [(NUFaceDetectionRequest *)self scalePolicy];
  v6 = [v3 stringByAppendingFormat:@" Max Face Count: %ld, Scale Policy: %@", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NUFaceDetectionRequest;
  v4 = [(NURenderRequest *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    v4[20] = self->_maxFaceCount;
    objc_storeStrong(v4 + 21, self->_scalePolicy);
  }

  return v5;
}

- (void)_commonInit
{
  v5.receiver = self;
  v5.super_class = NUFaceDetectionRequest;
  [(NURenderRequest *)&v5 _commonInit];
  self->_maxFaceCount = 0x7FFFFFFFFFFFFFFFLL;
  v3 = +[NUFixedScalePolicy oneToOneScalePolicy];
  scalePolicy = self->_scalePolicy;
  self->_scalePolicy = v3;
}

@end