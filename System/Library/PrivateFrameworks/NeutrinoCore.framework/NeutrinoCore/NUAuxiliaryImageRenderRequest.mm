@interface NUAuxiliaryImageRenderRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)newRenderJob;
- (void)_commonInit;
@end

@implementation NUAuxiliaryImageRenderRequest

- (id)newRenderJob
{
  v3 = [NUAuxiliaryImageRenderJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = NUAuxiliaryImageRenderRequest;
  result = [(NURenderRequest *)&v5 copyWithZone:a3];
  *(result + 21) = self->_auxiliaryImageType;
  *(result + 160) = self->_skipRenderIfNotRequired;
  return result;
}

- (void)_commonInit
{
  v3.receiver = self;
  v3.super_class = NUAuxiliaryImageRenderRequest;
  [(NURenderRequest *)&v3 _commonInit];
  self->_auxiliaryImageType = 0;
}

@end