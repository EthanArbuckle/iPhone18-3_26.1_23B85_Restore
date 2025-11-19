@interface BWMetalColorCubeRendererParameters
- (BWMetalColorCubeRendererParameters)initWithColorFilter:(id)a3 colorLookupCache:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (int)prepareForRenderingWithInputVideoFormat:(id)a3;
- (void)dealloc;
- (void)setColorFilter:(id)a3;
- (void)updateByInterpolatingFromParameters:(id)a3 toParameters:(id)a4 withFractionComplete:(float)a5;
@end

@implementation BWMetalColorCubeRendererParameters

- (BWMetalColorCubeRendererParameters)initWithColorFilter:(id)a3 colorLookupCache:(id)a4
{
  v9.receiver = self;
  v9.super_class = BWMetalColorCubeRendererParameters;
  v6 = [(BWMetalColorCubeRendererParameters *)&v9 init];
  if (v6)
  {
    v6->_colorFilter = a3;
    v6->_colorLookupCache = a4;
    v7 = [a4 colorLookupTablesForFilter:a3];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BWMetalColorCubeRendererParameters alloc];
  colorFilter = self->_colorFilter;
  colorLookupCache = self->_colorLookupCache;

  return [(BWMetalColorCubeRendererParameters *)v4 initWithColorFilter:colorFilter colorLookupCache:colorLookupCache];
}

- (int)prepareForRenderingWithInputVideoFormat:(id)a3
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

- (void)setColorFilter:(id)a3
{
  colorFilter = self->_colorFilter;
  if (colorFilter != a3)
  {

    self->_colorFilter = a3;
  }
}

- (void)updateByInterpolatingFromParameters:(id)a3 toParameters:(id)a4 withFractionComplete:(float)a5
{
  if (a3 && [a3 type] != 5)
  {
    [BWMetalColorCubeRendererParameters updateByInterpolatingFromParameters:toParameters:withFractionComplete:];
  }

  else if (a4 && [a4 type] != 5)
  {
    [BWMetalColorCubeRendererParameters updateByInterpolatingFromParameters:toParameters:withFractionComplete:];
  }

  else
  {
    if ([a3 colorFilter])
    {
      v9 = [a3 foregroundColorLookupTable];
    }

    else
    {
      v9 = [(BWColorLookupCache *)self->_colorLookupCache identityColorLookupTable];
    }

    v10 = v9;
    if ([a4 colorFilter])
    {
      v11 = [a4 foregroundColorLookupTable];
    }

    else
    {
      v11 = [(BWColorLookupCache *)self->_colorLookupCache identityColorLookupTable];
    }

    v12 = v11;
    if ([a3 colorFilter])
    {
      v13 = [a3 backgroundColorLookupTable];
    }

    else
    {
      v13 = [(BWColorLookupCache *)self->_colorLookupCache identityColorLookupTable];
    }

    v14 = v13;
    if ([a4 colorFilter])
    {
      v15 = [a4 backgroundColorLookupTable];
    }

    else
    {
      v15 = [(BWColorLookupCache *)self->_colorLookupCache identityColorLookupTable];
    }

    v16 = v15;
    if (([objc_msgSend(a3 "foregroundColorLookupTable")] & 1) == 0)
    {
      *&v17 = a5;
      v10 = [(BWColorLookupCache *)self->_colorLookupCache interpolatedColorLookupTableFromTable:v10 toTable:v12 fractionComplete:v17];
    }

    [(BWMetalColorCubeRendererParameters *)self setForegroundColorLookupTable:v10];
    *&v18 = a5;
    [(BWMetalColorCubeRendererParameters *)self setBackgroundColorLookupTable:[(BWColorLookupCache *)self->_colorLookupCache interpolatedColorLookupTableFromTable:v14 toTable:v16 fractionComplete:v18]];
    self->_interpolationFractionComplete = a5;
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