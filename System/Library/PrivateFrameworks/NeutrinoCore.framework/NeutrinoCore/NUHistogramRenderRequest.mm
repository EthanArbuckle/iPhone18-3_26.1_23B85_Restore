@interface NUHistogramRenderRequest
- (NUColorSpace)histogramCalculationColorSpace;
- (NUHistogramParameters)parameters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
- (void)_commonInit;
- (void)setParameters:(id)parameters;
@end

@implementation NUHistogramRenderRequest

- (NUColorSpace)histogramCalculationColorSpace
{
  v22 = *MEMORY[0x1E69E9840];
  histogramCalculationColorSpace = self->_histogramCalculationColorSpace;
  if (!histogramCalculationColorSpace)
  {
    v4 = [NUImagePropertiesRequest alloc];
    composition = [(NURenderRequest *)self composition];
    v6 = [(NURenderRequest *)v4 initWithComposition:composition];

    v7 = MEMORY[0x1E696AEC0];
    name = [(NURenderRequest *)self name];
    v9 = [v7 stringWithFormat:@"%@-imageProperties", name];
    [(NURenderRequest *)v6 setName:v9];

    v19 = 0;
    v10 = [(NUImagePropertiesRequest *)v6 submitSynchronous:&v19];
    v11 = v19;
    v12 = +[NUColorSpace sRGBColorSpace];
    if (v10)
    {
      properties = [v10 properties];
      colorSpace = [properties colorSpace];

      if ([colorSpace isHDR])
      {
        v15 = +[NUColorSpace itur2100HLGColorSpace];

        v12 = v15;
      }
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_7473);
      }

      v16 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Could not determine image properties: %@", buf, 0xCu);
      }
    }

    v17 = self->_histogramCalculationColorSpace;
    self->_histogramCalculationColorSpace = v12;

    histogramCalculationColorSpace = self->_histogramCalculationColorSpace;
  }

  return histogramCalculationColorSpace;
}

- (NUHistogramParameters)parameters
{
  v2 = [(NUHistogramParameters *)self->_parameters copy];

  return v2;
}

- (void)setParameters:(id)parameters
{
  self->_parameters = [parameters copy];

  MEMORY[0x1EEE66BB8]();
}

- (id)newRenderJob
{
  v3 = [NUHistogramRenderJob alloc];

  return [(NUHistogramRenderJob *)v3 initWithHistogramRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NUHistogramRenderRequest;
  v4 = [(NURenderRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 20, self->_parameters);
    objc_storeStrong(v5 + 22, self->_scalePolicy);
    objc_storeStrong(v5 + 21, self->_histogramCalculationColorSpace);
  }

  return v5;
}

- (void)_commonInit
{
  v7.receiver = self;
  v7.super_class = NUHistogramRenderRequest;
  [(NURenderRequest *)&v7 _commonInit];
  v3 = objc_alloc_init(NUHistogramParameters);
  parameters = self->_parameters;
  self->_parameters = v3;

  v5 = [[NUPixelCountScalePolicy alloc] initWithTargetPixelCount:0x80000];
  scalePolicy = self->_scalePolicy;
  self->_scalePolicy = v5;
}

@end