@interface ICSwiftSystemPaperImageGenerator
- (BOOL)drawPaperInRect:(CGRect)rect;
- (BOOL)hasDeepLink;
- (CGRect)paperContentBounds;
- (id)imageWithFullResolution:(BOOL)resolution inverted:(BOOL)inverted;
- (void)imageWithBounds:(CGRect)bounds completion:(id)completion;
@end

@implementation ICSwiftSystemPaperImageGenerator

- (void)imageWithBounds:(CGRect)bounds completion:(id)completion
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = _Block_copy(completion);
  _Block_copy(v9);
  selfCopy = self;
  sub_1D43A3BD4(selfCopy, v9, x, y, width, height);
  _Block_release(v9);
  _Block_release(v9);
}

- (id)imageWithFullResolution:(BOOL)resolution inverted:(BOOL)inverted
{
  resolutionCopy = resolution;
  selfCopy = self;
  v6 = sub_1D43A3EB8(resolutionCopy);

  return v6;
}

- (BOOL)drawPaperInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v8 = sub_1D43A2134(x, y, width, height);

  return v8 & 1;
}

- (CGRect)paperContentBounds
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1D43A3824();

  return v3;
}

@end