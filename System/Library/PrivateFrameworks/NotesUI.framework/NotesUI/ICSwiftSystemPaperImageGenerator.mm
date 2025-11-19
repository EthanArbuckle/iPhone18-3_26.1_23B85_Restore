@interface ICSwiftSystemPaperImageGenerator
- (BOOL)drawPaperInRect:(CGRect)a3;
- (BOOL)hasDeepLink;
- (CGRect)paperContentBounds;
- (id)imageWithFullResolution:(BOOL)a3 inverted:(BOOL)a4;
- (void)imageWithBounds:(CGRect)a3 completion:(id)a4;
@end

@implementation ICSwiftSystemPaperImageGenerator

- (void)imageWithBounds:(CGRect)a3 completion:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = _Block_copy(a4);
  _Block_copy(v9);
  v10 = self;
  sub_1D43A3BD4(v10, v9, x, y, width, height);
  _Block_release(v9);
  _Block_release(v9);
}

- (id)imageWithFullResolution:(BOOL)a3 inverted:(BOOL)a4
{
  v4 = a3;
  v5 = self;
  v6 = sub_1D43A3EB8(v4);

  return v6;
}

- (BOOL)drawPaperInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_1D43A2134(x, y, width, height);

  return v8 & 1;
}

- (CGRect)paperContentBounds
{
  v2 = self;
  v3 = sub_1D43A34C4();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (BOOL)hasDeepLink
{
  v2 = self;
  v3 = sub_1D43A3824();

  return v3;
}

@end