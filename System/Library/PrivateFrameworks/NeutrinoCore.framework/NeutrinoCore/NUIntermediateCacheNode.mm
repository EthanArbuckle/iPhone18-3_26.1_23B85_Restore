@interface NUIntermediateCacheNode
- (BOOL)shouldCacheNodeForPipelineState:(id)a3;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateVideo:(id *)a3;
- (id)_evaluateVideoComposition:(id *)a3;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
@end

@implementation NUIntermediateCacheNode

- (id)_evaluateVideoComposition:(id *)a3
{
  v4 = [(NUCacheNode *)self inputNode];
  v5 = [v4 outputVideoComposition:a3];

  return v5;
}

- (id)_evaluateVideo:(id *)a3
{
  v4 = [(NUCacheNode *)self inputNode];
  v5 = [v4 outputVideo:a3];

  return v5;
}

- (id)_evaluateImage:(id *)a3
{
  v4 = [(NUCacheNode *)self inputNode];
  v5 = [v4 outputImage:a3];

  v6 = [v5 _imageByRenderingToIntermediate];

  return v6;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NUCacheNode *)self inputNode];
  v11 = [v10 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];

  if (!v11)
  {
    v22 = 0;
    goto LABEL_15;
  }

  if (![(NUIntermediateCacheNode *)self shouldCacheNodeForPipelineState:v9])
  {
    v22 = v11;
    goto LABEL_15;
  }

  if ([v9 evaluationMode] == 1)
  {
    v12 = [(NURenderNode *)self settings];
    v13 = [v12 objectForKeyedSubscript:@"keepCacheWhenAtOneToOne"];
    v14 = [v13 BOOLValue];

    v15 = [(NURenderNode *)self settings];
    v16 = [v15 objectForKeyedSubscript:@"onlyCacheWhenAtOneToOne"];
    v17 = [v16 BOOLValue];

    v18 = [v11 outputImageGeometry:a5];
    v19 = v18;
    if (!v18)
    {
      v22 = 0;
      goto LABEL_11;
    }

    v20 = [v18 renderScale];
    if (NUScaleEqual(v20, v21, NUScaleOne, *(&NUScaleOne + 1)))
    {
      if (((v17 | v14) & 1) == 0)
      {
LABEL_7:
        v22 = v11;
LABEL_11:

        goto LABEL_15;
      }
    }

    else if (v17)
    {
      goto LABEL_7;
    }
  }

  v23 = objc_alloc(objc_opt_class());
  v24 = [(NURenderNode *)self settings];
  v25 = [v23 initWithInput:v11 settings:v24 subsampleFactor:0];

  v22 = [NURenderNode nodeFromCache:v25 cache:v8];

  [v22 setEvaluatedForMode:{objc_msgSend(v9, "evaluationMode")}];
LABEL_15:

  return v22;
}

- (BOOL)shouldCacheNodeForPipelineState:(id)a3
{
  v3 = a3;
  if ([v3 evaluationMode])
  {
    v4 = ([v3 disableIntermediateCaching] & 1) == 0 && objc_msgSend(v3, "auxiliaryImageType") == 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end