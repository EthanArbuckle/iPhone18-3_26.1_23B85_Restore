@interface NURAWGeometryResetNode
- (id)_evaluateImageGeometry:(id *)a3;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation NURAWGeometryResetNode

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v8.receiver = self;
  v8.super_class = NURAWGeometryResetNode;
  v6 = [(NURawFilterNode *)&v8 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];

  return v6;
}

- (id)_evaluateImageGeometry:(id *)a3
{
  v18.receiver = self;
  v18.super_class = NURAWGeometryResetNode;
  v5 = [(NUFilterNode *)&v18 _evaluateImageGeometry:?];
  if (v5)
  {
    v6 = [(NURenderNode *)self outputImage:a3];
    v7 = v6;
    if (v6)
    {
      v8 = [NUImageGeometry alloc];
      [(NUImageGeometry *)v7 extent];
      v20.origin.x = v9;
      v20.origin.y = v10;
      v20.size.width = v11;
      v20.size.height = v12;
      NU::RectT<long>::RectT(v19, &v20, 1);
      v13 = [v5 renderScale];
      v6 = -[NUImageGeometry initWithExtent:renderScale:orientation:](v8, "initWithExtent:renderScale:orientation:", &v17, v13, v14, [v5 orientation]);
    }

    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end