@interface BWStreamingCVAFilterRendererParameters
- (BWStreamingCVAFilterRendererParameters)initWithColorFilter:(id)a3 colorLookupCache:(id)a4 studioAndContourRenderingEnabled:(BOOL)a5 stageRenderingEnabled:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (int)prepareForRenderingWithInputVideoFormat:(id)a3;
- (uint64_t)_ensureParametersForColorFilter:(uint64_t *)a3 outputRenderingStrategy:;
- (void)dealloc;
- (void)setColorFilter:(id)a3;
- (void)updateByInterpolatingFromParameters:(id)a3 toParameters:(id)a4 withFractionComplete:(float)a5;
@end

@implementation BWStreamingCVAFilterRendererParameters

- (BWStreamingCVAFilterRendererParameters)initWithColorFilter:(id)a3 colorLookupCache:(id)a4 studioAndContourRenderingEnabled:(BOOL)a5 stageRenderingEnabled:(BOOL)a6
{
  v13.receiver = self;
  v13.super_class = BWStreamingCVAFilterRendererParameters;
  v10 = [(BWStreamingCVAFilterRendererParameters *)&v13 init];
  if (v10)
  {
    v10->_colorFilter = a3;
    v10->_colorLookupCache = a4;
    v11 = [a4 colorLookupTablesForFilter:a3];
    v10->_foregroundColorLookupTable = [v11 foregroundColorLookupTable];
    v10->_backgroundColorLookupTable = [v11 backgroundColorLookupTable];
    v10->_interpolationFractionComplete = 1.0;
    v10->_studioAndContourRenderingEnabled = a5;
    v10->_stageRenderingEnabled = a6;
    [(BWStreamingCVAFilterRendererParameters *)v10 _ensureParametersForColorFilter:a3 outputRenderingStrategy:&v10->_renderingStrategy];
  }

  return v10;
}

- (uint64_t)_ensureParametersForColorFilter:(uint64_t *)a3 outputRenderingStrategy:
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
              if (!a3)
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

    if (a3)
    {
LABEL_9:
      *a3 = v7;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[BWStreamingCVAFilterRendererParameters alloc] initWithColorFilter:self->_colorFilter colorLookupCache:self->_colorLookupCache studioAndContourRenderingEnabled:self->_studioAndContourRenderingEnabled stageRenderingEnabled:self->_stageRenderingEnabled];

  v4->_foregroundColorLookupTable = [(BWStreamingCVAFilterRendererParameters *)self foregroundColorLookupTable];
  v4->_backgroundColorLookupTable = [(BWStreamingCVAFilterRendererParameters *)self backgroundColorLookupTable];
  v4->_renderingStrategy = [(BWStreamingCVAFilterRendererParameters *)self renderingStrategy];
  [(BWStreamingCVAFilterRendererParameters *)self interpolationFractionComplete];
  v4->_interpolationFractionComplete = v5;
  return v4;
}

- (int)prepareForRenderingWithInputVideoFormat:(id)a3
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

- (void)updateByInterpolatingFromParameters:(id)a3 toParameters:(id)a4 withFractionComplete:(float)a5
{
  if ([a3 type])
  {
    [BWStreamingCVAFilterRendererParameters updateByInterpolatingFromParameters:toParameters:withFractionComplete:];
  }

  else if ([a4 type])
  {
    [BWStreamingCVAFilterRendererParameters updateByInterpolatingFromParameters:toParameters:withFractionComplete:];
  }

  else
  {
    self->_renderingStrategy = [a4 renderingStrategy];
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

    renderingStrategy = self->_renderingStrategy;
    if (renderingStrategy <= 0xA)
    {
      if (((1 << renderingStrategy) & 0x555) != 0)
      {
        if (v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v12;
        }

        if (!v14)
        {
          v14 = v10;
        }

        *&v16 = a5;
        [(BWStreamingCVAFilterRendererParameters *)self setForegroundColorLookupTable:[(BWColorLookupCache *)self->_colorLookupCache interpolatedColorLookupTableFromTable:v10 toTable:v12 fractionComplete:v16]];
        *&v19 = a5;
        [(BWStreamingCVAFilterRendererParameters *)self setBackgroundColorLookupTable:[(BWColorLookupCache *)self->_colorLookupCache interpolatedColorLookupTableFromTable:v14 toTable:v18 fractionComplete:v19]];
        self->_interpolationFractionComplete = 1.0;
      }

      else
      {
        if (((1 << renderingStrategy) & 0x2A) == 0)
        {
          -[BWStreamingCVAFilterRendererParameters setForegroundColorLookupTable:](self, "setForegroundColorLookupTable:", [a4 foregroundColorLookupTable]);
        }

        self->_interpolationFractionComplete = a5;
      }
    }
  }
}

- (void)setColorFilter:(id)a3
{
  colorFilter = self->_colorFilter;
  if (colorFilter != a3)
  {

    self->_colorFilter = a3;

    [(BWStreamingCVAFilterRendererParameters *)self _ensureParametersForColorFilter:a3 outputRenderingStrategy:&self->_renderingStrategy];
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