@interface ODIVenn3
+ (CGRect)mapGSpaceWithState:(id)state;
+ (void)mapNode:(id)node index:(unsigned int)index state:(id)state;
@end

@implementation ODIVenn3

+ (CGRect)mapGSpaceWithState:(id)state
{
  v3 = ((([self nodeCountWithState:state] - 1) * 1.6) + 2.0);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 2.0;
  result.size.height = v6;
  result.size.width = v3;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (void)mapNode:(id)node index:(unsigned int)index state:(id)state
{
  nodeCopy = node;
  stateCopy = state;
  v8 = TSURectWithCenterAndSize(((index * 1.6) + 1.0), 1.0, 2.0);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = +[ODIDrawable shapeGeometryForEllipse];
  v16 = [ODIDrawable addShapeWithBounds:v15 rotation:stateCopy geometry:v8 state:v10, v12, v14, 0.0];

  [ODIDrawable mapStyleAndTextFromPoint:nodeCopy shape:v16 state:stateCopy];
}

@end