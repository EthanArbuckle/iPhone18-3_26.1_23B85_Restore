@interface NUIntermediateCacheNode
- (BOOL)shouldCacheNodeForPipelineState:(id)state;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateVideo:(id *)video;
- (id)_evaluateVideoComposition:(id *)composition;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
@end

@implementation NUIntermediateCacheNode

- (id)_evaluateVideoComposition:(id *)composition
{
  inputNode = [(NUCacheNode *)self inputNode];
  v5 = [inputNode outputVideoComposition:composition];

  return v5;
}

- (id)_evaluateVideo:(id *)video
{
  inputNode = [(NUCacheNode *)self inputNode];
  v5 = [inputNode outputVideo:video];

  return v5;
}

- (id)_evaluateImage:(id *)image
{
  inputNode = [(NUCacheNode *)self inputNode];
  v5 = [inputNode outputImage:image];

  _imageByRenderingToIntermediate = [v5 _imageByRenderingToIntermediate];

  return _imageByRenderingToIntermediate;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  cacheCopy = cache;
  stateCopy = state;
  inputNode = [(NUCacheNode *)self inputNode];
  v11 = [inputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];

  if (!v11)
  {
    v22 = 0;
    goto LABEL_15;
  }

  if (![(NUIntermediateCacheNode *)self shouldCacheNodeForPipelineState:stateCopy])
  {
    v22 = v11;
    goto LABEL_15;
  }

  if ([stateCopy evaluationMode] == 1)
  {
    settings = [(NURenderNode *)self settings];
    v13 = [settings objectForKeyedSubscript:@"keepCacheWhenAtOneToOne"];
    bOOLValue = [v13 BOOLValue];

    settings2 = [(NURenderNode *)self settings];
    v16 = [settings2 objectForKeyedSubscript:@"onlyCacheWhenAtOneToOne"];
    bOOLValue2 = [v16 BOOLValue];

    v18 = [v11 outputImageGeometry:error];
    v19 = v18;
    if (!v18)
    {
      v22 = 0;
      goto LABEL_11;
    }

    renderScale = [v18 renderScale];
    if (NUScaleEqual(renderScale, v21, NUScaleOne, *(&NUScaleOne + 1)))
    {
      if (((bOOLValue2 | bOOLValue) & 1) == 0)
      {
LABEL_7:
        v22 = v11;
LABEL_11:

        goto LABEL_15;
      }
    }

    else if (bOOLValue2)
    {
      goto LABEL_7;
    }
  }

  v23 = objc_alloc(objc_opt_class());
  settings3 = [(NURenderNode *)self settings];
  v25 = [v23 initWithInput:v11 settings:settings3 subsampleFactor:0];

  v22 = [NURenderNode nodeFromCache:v25 cache:cacheCopy];

  [v22 setEvaluatedForMode:{objc_msgSend(stateCopy, "evaluationMode")}];
LABEL_15:

  return v22;
}

- (BOOL)shouldCacheNodeForPipelineState:(id)state
{
  stateCopy = state;
  if ([stateCopy evaluationMode])
  {
    v4 = ([stateCopy disableIntermediateCaching] & 1) == 0 && objc_msgSend(stateCopy, "auxiliaryImageType") == 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end