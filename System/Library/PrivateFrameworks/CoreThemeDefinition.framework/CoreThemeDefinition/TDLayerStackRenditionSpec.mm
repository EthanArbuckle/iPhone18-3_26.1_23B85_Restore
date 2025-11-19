@interface TDLayerStackRenditionSpec
- (CGSize)canvasSize;
- (CGSize)primitiveCanvasSize;
- (void)awakeFromFetch;
- (void)prepareForDeletion;
- (void)setCanvasSize:(CGSize)a3;
@end

@implementation TDLayerStackRenditionSpec

- (void)setCanvasSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(TDLayerStackRenditionSpec *)self willChangeValueForKey:@"canvasSize"];
  [(TDLayerStackRenditionSpec *)self setPrimitiveCanvasSize:width, height];
  [(TDLayerStackRenditionSpec *)self didChangeValueForKey:@"canvasSize"];
  v8.width = width;
  v8.height = height;
  v6 = NSStringFromSize(v8);

  [(TDLayerStackRenditionSpec *)self setCanvasSizeString:v6];
}

- (CGSize)canvasSize
{
  [(TDLayerStackRenditionSpec *)self willAccessValueForKey:@"canvasSize"];
  [(TDLayerStackRenditionSpec *)self primitiveCanvasSize];
  v4 = v3;
  v6 = v5;
  [(TDLayerStackRenditionSpec *)self didAccessValueForKey:@"canvasSize"];
  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)awakeFromFetch
{
  v4.receiver = self;
  v4.super_class = TDLayerStackRenditionSpec;
  [(TDLayerStackRenditionSpec *)&v4 awakeFromFetch];
  v3 = NSSizeFromString([(TDLayerStackRenditionSpec *)self canvasSizeString]);
  [(TDLayerStackRenditionSpec *)self setPrimitiveCanvasSize:v3.width, v3.height];
}

- (void)prepareForDeletion
{
  v3.receiver = self;
  v3.super_class = TDLayerStackRenditionSpec;
  [(TDLayerStackRenditionSpec *)&v3 prepareForDeletion];
  if ([(TDLayerStackRenditionSpec *)self asset])
  {
    if ([objc_msgSend(-[TDLayerStackRenditionSpec asset](self "asset")] <= 1)
    {
      [-[TDLayerStackRenditionSpec managedObjectContext](self "managedObjectContext")];
    }
  }
}

- (CGSize)primitiveCanvasSize
{
  width = self->primitiveCanvasSize.width;
  height = self->primitiveCanvasSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end