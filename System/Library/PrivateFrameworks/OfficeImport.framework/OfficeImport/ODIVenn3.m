@interface ODIVenn3
+ (CGRect)mapGSpaceWithState:(id)a3;
+ (void)mapNode:(id)a3 index:(unsigned int)a4 state:(id)a5;
@end

@implementation ODIVenn3

+ (CGRect)mapGSpaceWithState:(id)a3
{
  v3 = ((([a1 nodeCountWithState:a3] - 1) * 1.6) + 2.0);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 2.0;
  result.size.height = v6;
  result.size.width = v3;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (void)mapNode:(id)a3 index:(unsigned int)a4 state:(id)a5
{
  v17 = a3;
  v7 = a5;
  v8 = TSURectWithCenterAndSize(((a4 * 1.6) + 1.0), 1.0, 2.0);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = +[ODIDrawable shapeGeometryForEllipse];
  v16 = [ODIDrawable addShapeWithBounds:v15 rotation:v7 geometry:v8 state:v10, v12, v14, 0.0];

  [ODIDrawable mapStyleAndTextFromPoint:v17 shape:v16 state:v7];
}

@end