@interface NUClassifyPipelineImageCorrectionRequest
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
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
  v4 = [(NUClassifyPipelineImageCorrectionRequest *)self scalePolicy];
  v5 = [v3 stringByAppendingFormat:@" Scale Policy: %@", v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NUClassifyPipelineImageCorrectionRequest;
  v4 = [(NURenderRequest *)&v7 copyWithZone:a3];
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