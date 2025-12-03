@interface BWStreamingCVAFilterRendererParameters
- (BWStreamingCVAFilterRendererParameters)initWithColorFilter:(id)filter colorLookupCache:(id)cache studioAndContourRenderingEnabled:(BOOL)enabled stageRenderingEnabled:(BOOL)renderingEnabled;
- (id)copyWithZone:(_NSZone *)zone;
- (int)prepareForRenderingWithInputVideoFormat:(id)format;
- (uint64_t)_ensureParametersForColorFilter:(uint64_t *)filter outputRenderingStrategy:;
- (void)dealloc;
- (void)setColorFilter:(id)filter;
- (void)updateByInterpolatingFromParameters:(id)parameters toParameters:(id)toParameters withFractionComplete:(float)complete;
@end

@implementation BWStreamingCVAFilterRendererParameters

- (BWStreamingCVAFilterRendererParameters)initWithColorFilter:(id)filter colorLookupCache:(id)cache studioAndContourRenderingEnabled:(BOOL)enabled stageRenderingEnabled:(BOOL)renderingEnabled
{
  v13.receiver = self;
  v13.super_class = BWStreamingCVAFilterRendererParameters;
  v10 = [(BWStreamingCVAFilterRendererParameters *)&v13 init];
  if (v10)
  {
    v10->_colorFilter = filter;
    v10->_colorLookupCache = cache;
    v11 = [cache colorLookupTablesForFilter:filter];
    v10->_foregroundColorLookupTable = [v11 foregroundColorLookupTable];
    v10->_backgroundColorLookupTable = [v11 backgroundColorLookupTable];
    v10->_interpolationFractionComplete = 1.0;
    v10->_studioAndContourRenderingEnabled = enabled;
    v10->_stageRenderingEnabled = renderingEnabled;
    [(BWStreamingCVAFilterRendererParameters *)v10 _ensureParametersForColorFilter:filter outputRenderingStrategy:&v10->_renderingStrategy];
  }

  return v10;
}

- (uint64_t)_ensureParametersForColorFilter:(uint64_t *)filter outputRenderingStrategy:
{
  if (result && a2)
  {
    v5 = result;
    result = [objc_msgSend(a2 "name")];
    if ((result & 1) != 0 || (result = [objc_msgSend(a2 "name")], result))
    {
      v6 = *(v5 + 40) == 0;
      v7 = 1;
    }

    else
    {
      result = [objc_msgSend(a2 "name")];
      if ((result & 1) != 0 || (result = [objc_msgSend(a2 "name")], result))
      {
        v6 = *(v5 + 40) == 0;
        v7 = 3;
      }

      else
      {
        result = [objc_msgSend(a2 "name")];
        if ((result & 1) != 0 || (result = [objc_msgSend(a2 "name")], result))
        {
          v6 = *(v5 + 41) == 0;
          v7 = 5;
        }

        else
        {
          result = [objc_msgSend(a2 "name")];
          if ((result & 1) != 0 || (result = [objc_msgSend(a2 "name")], result))
          {
            v6 = *(v5 + 41) == 0;
            v7 = 7;
          }

          else
          {
            result = [objc_msgSend(a2 "name")];
            if (!result)
            {
              v7 = 0;
              if (!filter)
              {
                return result;
              }

              goto LABEL_9;
            }

            v6 = *(v5 + 41) == 0;
            v7 = 9;
          }
        }
      }
    }

    if (v6)
    {
      ++v7;
    }

    if (filter)
    {
LABEL_9:
      *filter = v7;
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStreamingCVAFilterRendererParameters;
  [(BWStreamingCVAFilterRendererParameters *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[BWStreamingCVAFilterRendererParameters alloc] initWithColorFilter:self->_colorFilter colorLookupCache:self->_colorLookupCache studioAndContourRenderingEnabled:self->_studioAndContourRenderingEnabled stageRenderingEnabled:self->_stageRenderingEnabled];

  v4->_foregroundColorLookupTable = [(BWStreamingCVAFilterRendererParameters *)self foregroundColorLookupTable];
  v4->_backgroundColorLookupTable = [(BWStreamingCVAFilterRendererParameters *)self backgroundColorLookupTable];
  v4->_renderingStrategy = [(BWStreamingCVAFilterRendererParameters *)self renderingStrategy];
  [(BWStreamingCVAFilterRendererParameters *)self interpolationFractionComplete];
  v4->_interpolationFractionComplete = v5;
  return v4;
}

- (int)prepareForRenderingWithInputVideoFormat:(id)format
{
  if (![(BWStreamingCVAFilterRendererParameters *)self foregroundColorLookupTable]&& ![(BWStreamingCVAFilterRendererParameters *)self backgroundColorLookupTable])
  {
    v4 = [(BWColorLookupCache *)[(BWStreamingCVAFilterRendererParameters *)self colorLookupCache] fetchColorLookupTablesForFilter:[(BWStreamingCVAFilterRendererParameters *)self colorFilter]];
    if (v4)
    {
      v5 = v4;
      -[BWStreamingCVAFilterRendererParameters setForegroundColorLookupTable:](self, "setForegroundColorLookupTable:", [v4 foregroundColorLookupTable]);
      -[BWStreamingCVAFilterRendererParameters setBackgroundColorLookupTable:](self, "setBackgroundColorLookupTable:", [v5 backgroundColorLookupTable]);
    }
  }

  return 0;
}

- (void)updateByInterpolatingFromParameters:(id)parameters toParameters:(id)toParameters withFractionComplete:(float)complete
{
  if ([parameters type])
  {
    [BWStreamingCVAFilterRendererParameters updateByInterpolatingFromParameters:toParameters:withFractionComplete:];
  }

  else if ([toParameters type])
  {
    [BWStreamingCVAFilterRendererParameters updateByInterpolatingFromParameters:toParameters:withFractionComplete:];
  }

  else
  {
    self->_renderingStrategy = [toParameters renderingStrategy];
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

    renderingStrategy = self->_renderingStrategy;
    if (renderingStrategy <= 0xA)
    {
      if (((1 << renderingStrategy) & 0x555) != 0)
      {
        if (backgroundColorLookupTable2)
        {
          v18 = backgroundColorLookupTable2;
        }

        else
        {
          v18 = v12;
        }

        if (!v14)
        {
          v14 = v10;
        }

        *&v16 = complete;
        [(BWStreamingCVAFilterRendererParameters *)self setForegroundColorLookupTable:[(BWColorLookupCache *)self->_colorLookupCache interpolatedColorLookupTableFromTable:v10 toTable:v12 fractionComplete:v16]];
        *&v19 = complete;
        [(BWStreamingCVAFilterRendererParameters *)self setBackgroundColorLookupTable:[(BWColorLookupCache *)self->_colorLookupCache interpolatedColorLookupTableFromTable:v14 toTable:v18 fractionComplete:v19]];
        self->_interpolationFractionComplete = 1.0;
      }

      else
      {
        if (((1 << renderingStrategy) & 0x2A) == 0)
        {
          -[BWStreamingCVAFilterRendererParameters setForegroundColorLookupTable:](self, "setForegroundColorLookupTable:", [toParameters foregroundColorLookupTable]);
        }

        self->_interpolationFractionComplete = complete;
      }
    }
  }
}

- (void)setColorFilter:(id)filter
{
  colorFilter = self->_colorFilter;
  if (colorFilter != filter)
  {

    self->_colorFilter = filter;

    [(BWStreamingCVAFilterRendererParameters *)self _ensureParametersForColorFilter:filter outputRenderingStrategy:&self->_renderingStrategy];
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