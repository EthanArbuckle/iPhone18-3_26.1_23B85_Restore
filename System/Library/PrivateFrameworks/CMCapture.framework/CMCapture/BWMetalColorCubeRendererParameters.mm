@interface BWMetalColorCubeRendererParameters
- (BWMetalColorCubeRendererParameters)initWithColorFilter:(id)filter colorLookupCache:(id)cache;
- (id)copyWithZone:(_NSZone *)zone;
- (int)prepareForRenderingWithInputVideoFormat:(id)format;
- (void)dealloc;
- (void)setColorFilter:(id)filter;
- (void)updateByInterpolatingFromParameters:(id)parameters toParameters:(id)toParameters withFractionComplete:(float)complete;
@end

@implementation BWMetalColorCubeRendererParameters

- (BWMetalColorCubeRendererParameters)initWithColorFilter:(id)filter colorLookupCache:(id)cache
{
  v9.receiver = self;
  v9.super_class = BWMetalColorCubeRendererParameters;
  v6 = [(BWMetalColorCubeRendererParameters *)&v9 init];
  if (v6)
  {
    v6->_colorFilter = filter;
    v6->_colorLookupCache = cache;
    v7 = [cache colorLookupTablesForFilter:filter];
    v6->_foregroundColorLookupTable = [v7 foregroundColorLookupTable];
    v6->_backgroundColorLookupTable = [v7 backgroundColorLookupTable];
    v6->_interpolationFractionComplete = 1.0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMetalColorCubeRendererParameters;
  [(BWMetalColorCubeRendererParameters *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BWMetalColorCubeRendererParameters alloc];
  colorFilter = self->_colorFilter;
  colorLookupCache = self->_colorLookupCache;

  return [(BWMetalColorCubeRendererParameters *)v4 initWithColorFilter:colorFilter colorLookupCache:colorLookupCache];
}

- (int)prepareForRenderingWithInputVideoFormat:(id)format
{
  if (![(BWMetalColorCubeRendererParameters *)self foregroundColorLookupTable]&& ![(BWMetalColorCubeRendererParameters *)self backgroundColorLookupTable])
  {
    v4 = [(BWColorLookupCache *)[(BWMetalColorCubeRendererParameters *)self colorLookupCache] fetchColorLookupTablesForFilter:[(BWMetalColorCubeRendererParameters *)self colorFilter]];
    if (v4)
    {
      v5 = v4;
      -[BWMetalColorCubeRendererParameters setForegroundColorLookupTable:](self, "setForegroundColorLookupTable:", [v4 foregroundColorLookupTable]);
      -[BWMetalColorCubeRendererParameters setBackgroundColorLookupTable:](self, "setBackgroundColorLookupTable:", [v5 backgroundColorLookupTable]);
    }
  }

  return 0;
}

- (void)setColorFilter:(id)filter
{
  colorFilter = self->_colorFilter;
  if (colorFilter != filter)
  {

    self->_colorFilter = filter;
  }
}

- (void)updateByInterpolatingFromParameters:(id)parameters toParameters:(id)toParameters withFractionComplete:(float)complete
{
  if (parameters && [parameters type] != 5)
  {
    [BWMetalColorCubeRendererParameters updateByInterpolatingFromParameters:toParameters:withFractionComplete:];
  }

  else if (toParameters && [toParameters type] != 5)
  {
    [BWMetalColorCubeRendererParameters updateByInterpolatingFromParameters:toParameters:withFractionComplete:];
  }

  else
  {
    if ([parameters colorFilter])
    {
      foregroundColorLookupTable = [parameters foregroundColorLookupTable];
    }

    else
    {
      foregroundColorLookupTable = [(BWColorLookupCache *)self->_colorLookupCache identityColorLookupTable];
    }

    v10 = foregroundColorLookupTable;
    if ([toParameters colorFilter])
    {
      foregroundColorLookupTable2 = [toParameters foregroundColorLookupTable];
    }

    else
    {
      foregroundColorLookupTable2 = [(BWColorLookupCache *)self->_colorLookupCache identityColorLookupTable];
    }

    v12 = foregroundColorLookupTable2;
    if ([parameters colorFilter])
    {
      backgroundColorLookupTable = [parameters backgroundColorLookupTable];
    }

    else
    {
      backgroundColorLookupTable = [(BWColorLookupCache *)self->_colorLookupCache identityColorLookupTable];
    }

    v14 = backgroundColorLookupTable;
    if ([toParameters colorFilter])
    {
      backgroundColorLookupTable2 = [toParameters backgroundColorLookupTable];
    }

    else
    {
      backgroundColorLookupTable2 = [(BWColorLookupCache *)self->_colorLookupCache identityColorLookupTable];
    }

    v16 = backgroundColorLookupTable2;
    if (([objc_msgSend(parameters "foregroundColorLookupTable")] & 1) == 0)
    {
      *&v17 = complete;
      v10 = [(BWColorLookupCache *)self->_colorLookupCache interpolatedColorLookupTableFromTable:v10 toTable:v12 fractionComplete:v17];
    }

    [(BWMetalColorCubeRendererParameters *)self setForegroundColorLookupTable:v10];
    *&v18 = complete;
    [(BWMetalColorCubeRendererParameters *)self setBackgroundColorLookupTable:[(BWColorLookupCache *)self->_colorLookupCache interpolatedColorLookupTableFromTable:v14 toTable:v16 fractionComplete:v18]];
    self->_interpolationFractionComplete = complete;
  }
}

- (uint64_t)updateByInterpolatingFromParameters:toParameters:withFractionComplete:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)updateByInterpolatingFromParameters:toParameters:withFractionComplete:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end