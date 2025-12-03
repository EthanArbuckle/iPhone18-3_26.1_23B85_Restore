@interface NTKRichComplicationBezelView
+ (CGAffineTransform)transformForState:(SEL)state;
+ (id)keylineImageWithFilled:(BOOL)filled forDevice:(id)device;
+ (id)keylineViewForDevice:(id)device;
+ (id)layoutRuleForState:(int64_t)state faceBounds:(CGRect)bounds dialDiameter:(double)diameter forDevice:(id)device;
+ (id)viewWithLegacyComplicationType:(unint64_t)type;
+ (void)updateCustomDataAnimationFromEarlierView:(id)view laterView:(id)laterView isForward:(BOOL)forward animationType:(unint64_t)type animationDuration:(double)duration animationFraction:(float)fraction bezelTextUpdateHandler:(id)handler;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NTKRichComplicationBezelView)init;
- (NTKRichComplicationBezelView)initWithFamily:(int64_t)family;
- (NTKRichComplicationBezelViewDelegate)delegate;
- (void)_createHitTestPathIfNecessary;
- (void)_setLayoutTransformToView:(id)view origin:(CGPoint)origin rotationInDegree:(double)degree centerScale:(double)scale;
- (void)_updateHitTestShape:(int64_t)shape frame:(CGRect)frame;
@end

@implementation NTKRichComplicationBezelView

+ (id)keylineImageWithFilled:(BOOL)filled forDevice:(id)device
{
  filledCopy = filled;
  deviceCopy = device;
  v6 = (NTKWhistlerSubdialComplicationDistanceFromCenter)();
  v7 = v6 - NTKWhistlerSubdialComplicationEditingInset(deviceCopy);
  v8 = NTKWhistlerSubdialComplicationDistanceFromCenter(deviceCopy) * 0.95;
  [NTKAnalogUtilities largeDialDiameterForDevice:deviceCopy];
  v10 = v9 * 0.5 - NTKKeylineWidth();
  v11 = NTKWhistlerSubdialComplicationDiameter(deviceCopy);
  v13 = v7 + v12 * 0.5 + ___LayoutConstants_block_invoke_4(v11, deviceCopy);
  v14 = [off_27877BE80 heartKeylineWithDevice:deviceCopy outerRadius:filledCopy innerRadius:v10 sideComplicationDistance:v13 topComplicationDistance:v7 strokeWidth:v8 filled:NTKKeylineWidth()];

  return v14;
}

+ (id)keylineViewForDevice:(id)device
{
  deviceCopy = device;
  v5 = [self keylineImageWithFilled:0 forDevice:deviceCopy];
  v6 = v5;
  if (v5)
  {
    v7 = NTKKeylineViewWithImage(v5);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__NTKRichComplicationBezelView_keylineViewForDevice___block_invoke;
    v10[3] = &unk_27877ED90;
    v11 = deviceCopy;
    v8 = [NTKKeylineTouchable touchableWithHandler:v10];
    [v7 setTouchable:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __53__NTKRichComplicationBezelView_keylineViewForDevice___block_invoke(uint64_t a1, void *a2, CGFloat a3, CGFloat a4)
{
  v7 = a2;
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v7 bounds];
  v20 = [NTKRichComplicationBezelUtilities hitTestPathWithViewBounds:3 shape:*(a1 + 32) shapeFrame:v9 forDevice:v11, v13, v15, v16, v17, v18, v19];
  [v7 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v32.origin.x = v22;
  v32.origin.y = v24;
  v32.size.width = v26;
  v32.size.height = v28;
  v31.x = a3;
  v31.y = a4;
  if (CGRectContainsPoint(v32, v31))
  {
    v29 = [v20 containsPoint:{a3, a4}];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (id)layoutRuleForState:(int64_t)state faceBounds:(CGRect)bounds dialDiameter:(double)diameter forDevice:(id)device
{
  deviceCopy = device;
  if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v9 = [self keylineImageWithFilled:0 forDevice:deviceCopy];
    [v9 size];
  }

  CLKSizeCenteredInRectForDevice();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  [self transformForState:state];
  v18 = *MEMORY[0x277D768C8];
  v19 = *(MEMORY[0x277D768C8] + 8);
  v20 = *(MEMORY[0x277D768C8] + 16);
  v21 = *(MEMORY[0x277D768C8] + 24);
  v24[0] = v25;
  v24[1] = v26;
  v24[2] = v27;
  v22 = [NTKComplicationLayoutRule layoutRuleForDevice:deviceCopy withReferenceFrame:3 horizontalLayout:3 verticalLayout:1 keylinePadding:v24 clip:v11 editingTransform:v13, v15, v17, v18, v19, v20, v21];

  return v22;
}

+ (CGAffineTransform)transformForState:(SEL)state
{
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return CGAffineTransformMakeScale(retstr, 0.95, 0.95);
  }

  v4 = MEMORY[0x277CBF2C0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v5;
  *&retstr->tx = *(v4 + 32);
  return result;
}

+ (id)viewWithLegacyComplicationType:(unint64_t)type
{
  if (type)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_alloc_init(NTKRichComplicationBezelEmptyView);
  }

  return v4;
}

+ (void)updateCustomDataAnimationFromEarlierView:(id)view laterView:(id)laterView isForward:(BOOL)forward animationType:(unint64_t)type animationDuration:(double)duration animationFraction:(float)fraction bezelTextUpdateHandler:(id)handler
{
  forwardCopy = forward;
  viewCopy = view;
  laterViewCopy = laterView;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *&v17 = fraction;
      [NTKRichComplicationBezelBaseCircularView updateCustomDataAnimationFromEarlierView:viewCopy laterView:laterViewCopy isForward:forwardCopy animationType:type animationDuration:handlerCopy animationFraction:duration bezelTextUpdateHandler:v17];
    }
  }
}

- (NTKRichComplicationBezelView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationBezelView;
  return [(CDRichComplicationView *)&v3 initWithFamily:9];
}

- (NTKRichComplicationBezelView)initWithFamily:(int64_t)family
{
  if (family == 9)
  {
    self = [(NTKRichComplicationBezelView *)self init];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(NTKRichComplicationBezelView *)self _createHitTestPathIfNecessary];
  [(NTKRichComplicationBezelView *)self bounds];
  v11.x = x;
  v11.y = y;
  v7 = CGRectContainsPoint(v12, v11);
  if (v7)
  {
    hitTestPath = self->_hitTestPath;

    LOBYTE(v7) = [(UIBezierPath *)hitTestPath containsPoint:x, y];
  }

  return v7;
}

- (void)_createHitTestPathIfNecessary
{
  if (!self->_hitTestPath || ([(NTKRichComplicationBezelView *)self bounds], !CGRectEqualToRect(v19, self->_hitTestBounds)))
  {
    [(NTKRichComplicationBezelView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    hitTestShape = self->_hitTestShape;
    device = [(CDRichComplicationView *)self device];
    v13 = [NTKRichComplicationBezelUtilities hitTestPathWithViewBounds:hitTestShape shape:device shapeFrame:v4 forDevice:v6, v8, v10, self->_hitTestShapeFrame.origin.x, self->_hitTestShapeFrame.origin.y, self->_hitTestShapeFrame.size.width, self->_hitTestShapeFrame.size.height];
    hitTestPath = self->_hitTestPath;
    self->_hitTestPath = v13;

    [(NTKRichComplicationBezelView *)self bounds];
    self->_hitTestBounds.origin.x = v15;
    self->_hitTestBounds.origin.y = v16;
    self->_hitTestBounds.size.width = v17;
    self->_hitTestBounds.size.height = v18;
  }
}

- (void)_updateHitTestShape:(int64_t)shape frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (self->_hitTestShape != shape || !CGRectEqualToRect(frame, self->_hitTestShapeFrame))
  {
    hitTestPath = self->_hitTestPath;
    self->_hitTestPath = 0;

    self->_hitTestShape = shape;
    self->_hitTestShapeFrame.origin.x = x;
    self->_hitTestShapeFrame.origin.y = y;
    self->_hitTestShapeFrame.size.width = width;
    self->_hitTestShapeFrame.size.height = height;
  }
}

- (void)_setLayoutTransformToView:(id)view origin:(CGPoint)origin rotationInDegree:(double)degree centerScale:(double)scale
{
  y = origin.y;
  x = origin.x;
  viewCopy = view;
  [(NTKRichComplicationBezelView *)self bounds];
  v12 = v11;
  v14 = v13;
  v15 = *(MEMORY[0x277CBF2C0] + 16);
  *&v23.a = *MEMORY[0x277CBF2C0];
  *&v23.c = v15;
  *&v23.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v22.a = *&v23.a;
  *&v22.c = v15;
  *&v22.tx = *&v23.tx;
  CGAffineTransformTranslate(&v23, &v22, x, y);
  [viewCopy center];
  v17 = v12 * 0.5 - x - v16;
  [viewCopy center];
  v19 = v14 * 0.5 - y - v18;
  v21 = v23;
  CGAffineTransformTranslate(&v22, &v21, v17, v19);
  v23 = v22;
  v21 = v22;
  CGAffineTransformScale(&v22, &v21, scale, scale);
  v23 = v22;
  CLKDegreesToRadians();
  v21 = v23;
  CGAffineTransformRotate(&v22, &v21, v20);
  v23 = v22;
  v21 = v22;
  CGAffineTransformTranslate(&v22, &v21, -v17, -v19);
  v23 = v22;
  [viewCopy setTransform:&v22];
}

- (NTKRichComplicationBezelViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end