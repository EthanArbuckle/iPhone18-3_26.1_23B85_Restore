@interface NUSurfaceRenderJob
- (id)imageAccumulationNodeWithImageSize:(id)a3 tileSize:(id)a4 borderSize:(id)a5 format:(id)a6 colorSpace:(id)a7 headroom:(float)a8;
- (id)result;
@end

@implementation NUSurfaceRenderJob

- (id)result
{
  v3 = objc_alloc_init(_NUSurfaceRenderResult);
  v4 = [(NUImageRenderJob *)self renderedRegion];
  [(_NUImageRenderResult *)v3 setRegion:v4];

  v5 = [(NUImageRenderJob *)self renderedImage];
  [(_NUSurfaceRenderResult *)v3 setImage:v5];

  v6 = [(NURenderJob *)self outputGeometry];
  [(_NUImageRenderResult *)v3 setGeometry:v6];

  return v3;
}

- (id)imageAccumulationNodeWithImageSize:(id)a3 tileSize:(id)a4 borderSize:(id)a5 format:(id)a6 colorSpace:(id)a7 headroom:(float)a8
{
  var1 = a5.var1;
  var0 = a5.var0;
  v11 = a4.var1;
  v12 = a4.var0;
  v13 = a3.var1;
  v14 = a3.var0;
  v16 = a7;
  v17 = a6;
  v18 = [NUSurfaceImageAccumulationNode alloc];
  v19 = [(NURenderJob *)self renderNode];
  *&v20 = a8;
  v21 = [(NUImageAccumulationNode *)v18 initWithImageSize:v14 tileSize:v13 borderSize:v12 pixelFormat:v11 colorSpace:var0 headroom:var1 input:v20, v17, v16, v19];

  return v21;
}

@end