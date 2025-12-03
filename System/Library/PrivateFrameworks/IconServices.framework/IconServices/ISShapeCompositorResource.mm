@interface ISShapeCompositorResource
+ (double)continuousCornerRadiusForSize:(CGSize)size;
+ (id)circleShape;
+ (id)continuousRoundedRectShape;
+ (id)tvOSRoundedRectShape;
- (id)_init;
- (id)imageForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISShapeCompositorResource

+ (id)continuousRoundedRectShape
{
  if (continuousRoundedRectShape_onceToken != -1)
  {
    +[ISShapeCompositorResource continuousRoundedRectShape];
  }

  v3 = continuousRoundedRectShape_resource;

  return v3;
}

uint64_t __55__ISShapeCompositorResource_continuousRoundedRectShape__block_invoke()
{
  continuousRoundedRectShape_resource = [(ISShapeCompositorResource *)[ISContinuousRoundedRect alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)circleShape
{
  if (circleShape_onceToken != -1)
  {
    +[ISShapeCompositorResource circleShape];
  }

  v3 = circleShape_resource;

  return v3;
}

uint64_t __40__ISShapeCompositorResource_circleShape__block_invoke()
{
  circleShape_resource = [(ISShapeCompositorResource *)[ISCircle alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)tvOSRoundedRectShape
{
  if (tvOSRoundedRectShape_onceToken != -1)
  {
    +[ISShapeCompositorResource tvOSRoundedRectShape];
  }

  v3 = tvOSRoundedRectShape_resource;

  return v3;
}

uint64_t __49__ISShapeCompositorResource_tvOSRoundedRectShape__block_invoke()
{
  tvOSRoundedRectShape_resource = objc_alloc_init(IStvOSRoundedRect);

  return MEMORY[0x1EEE66BB8]();
}

+ (double)continuousCornerRadiusForSize:(CGSize)size
{
  if (size.width >= size.height)
  {
    height = size.height;
  }

  else
  {
    height = size.width;
  }

  v4 = +[ISDefaults sharedInstance];
  isSolariumCornerRadiusEnabled = [v4 isSolariumCornerRadiusEnabled];

  v6 = 0.225;
  if (isSolariumCornerRadiusEnabled)
  {
    v6 = 0.26;
  }

  return height * v6;
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = ISShapeCompositorResource;
  v2 = [(ISShapeCompositorResource *)&v7 init];
  if (v2)
  {
    black = [MEMORY[0x1E69A8968] black];
    fillColor = v2->_fillColor;
    v2->_fillColor = black;

    lineColor = v2->_lineColor;
    v2->_lineColor = 0;
    v2->_lineWidth = 0.0;
  }

  return v2;
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:@"Abstract method called." reason:0 userInfo:{0, size.width, size.height, scale}];
  objc_exception_throw(v4);
}

@end