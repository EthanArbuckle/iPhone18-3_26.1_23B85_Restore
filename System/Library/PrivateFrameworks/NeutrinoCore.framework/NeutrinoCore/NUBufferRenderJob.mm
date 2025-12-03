@interface NUBufferRenderJob
- (id)imageAccumulationNodeWithImageSize:(id)size tileSize:(id)tileSize borderSize:(id)borderSize format:(id)format colorSpace:(id)space headroom:(float)headroom;
- (id)result;
@end

@implementation NUBufferRenderJob

- (id)result
{
  v3 = objc_alloc_init(_NUBufferRenderResult);
  renderedRegion = [(NUImageRenderJob *)self renderedRegion];
  [(_NUImageRenderResult *)v3 setRegion:renderedRegion];

  renderedImage = [(NUImageRenderJob *)self renderedImage];
  [(_NUBufferRenderResult *)v3 setImage:renderedImage];

  outputGeometry = [(NURenderJob *)self outputGeometry];
  [(_NUImageRenderResult *)v3 setGeometry:outputGeometry];

  return v3;
}

- (id)imageAccumulationNodeWithImageSize:(id)size tileSize:(id)tileSize borderSize:(id)borderSize format:(id)format colorSpace:(id)space headroom:(float)headroom
{
  var1 = borderSize.var1;
  var0 = borderSize.var0;
  v11 = tileSize.var1;
  v12 = tileSize.var0;
  v13 = size.var1;
  v14 = size.var0;
  spaceCopy = space;
  formatCopy = format;
  v18 = [NUBufferImageAccumulationNode alloc];
  renderNode = [(NURenderJob *)self renderNode];
  *&v20 = headroom;
  v21 = [(NUImageAccumulationNode *)v18 initWithImageSize:v14 tileSize:v13 borderSize:v12 pixelFormat:v11 colorSpace:var0 headroom:var1 input:v20, formatCopy, spaceCopy, renderNode];

  return v21;
}

@end