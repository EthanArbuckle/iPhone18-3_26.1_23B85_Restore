@interface NURAWGeometryResetNode
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NURAWGeometryResetNode

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = NURAWGeometryResetNode;
  v6 = [(NURawFilterNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (id)_evaluateImageGeometry:(id *)geometry
{
  v18.receiver = self;
  v18.super_class = NURAWGeometryResetNode;
  v5 = [(NUFilterNode *)&v18 _evaluateImageGeometry:?];
  if (v5)
  {
    v6 = [(NURenderNode *)self outputImage:geometry];
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
      renderScale = [v5 renderScale];
      v6 = -[NUImageGeometry initWithExtent:renderScale:orientation:](v8, "initWithExtent:renderScale:orientation:", &v17, renderScale, v14, [v5 orientation]);
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