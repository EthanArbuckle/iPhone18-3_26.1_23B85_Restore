@interface NUClassifyPipelineImageCorrectionRequest
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
- (void)_commonInit;
@end

@implementation NUClassifyPipelineImageCorrectionRequest

- (id)newRenderJob
{
  v3 = [NUClassifyPipelineImageCorrectionJob alloc];

  return [(NUClassifyPipelineImageCorrectionJob *)v3 initWithClassifyPipelineImageCorrectionRequest:self];
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = NUClassifyPipelineImageCorrectionRequest;
  v3 = [(NURenderRequest *)&v7 description];
  scalePolicy = [(NUClassifyPipelineImageCorrectionRequest *)self scalePolicy];
  v5 = [v3 stringByAppendingFormat:@" Scale Policy: %@", scalePolicy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NUClassifyPipelineImageCorrectionRequest;
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
  v5.super_class = NUClassifyPipelineImageCorrectionRequest;
  [(NURenderRequest *)&v5 _commonInit];
  v3 = +[NUFixedScalePolicy oneToOneScalePolicy];
  scalePolicy = self->_scalePolicy;
  self->_scalePolicy = v3;
}

@end