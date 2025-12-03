@interface NTKRichComplicationCornerUtilities
+ (CGAffineTransform)transformForState:(SEL)state position:(int64_t)position device:(int64_t)device;
+ (UIEdgeInsets)_keylinePaddingForPosition:(int64_t)position conentSize:(CGSize)size forDevice:(id)device narrowTopSlots:(BOOL)slots;
+ (id)keylineViewForPosition:(int64_t)position forDevice:(id)device narrowTopSlots:(BOOL)slots;
+ (id)viewWithLegacyComplicationType:(unint64_t)type;
+ (void)updateCustomDataAnimationFromEarlierView:(id)view laterView:(id)laterView isForward:(BOOL)forward animationType:(unint64_t)type animationDuration:(double)duration animationFraction:(float)fraction;
@end

@implementation NTKRichComplicationCornerUtilities

+ (CGAffineTransform)transformForState:(SEL)state position:(int64_t)position device:(int64_t)device
{
  if ((position & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    ___LayoutConstants_block_invoke_33(a6, &v17);
    v8 = *MEMORY[0x277CBF348];
    v9 = *(MEMORY[0x277CBF348] + 8);
    if (device > 1)
    {
      if (device == 2)
      {
        v9 = *&v18;
        v8 = -*(&v17 + 1);
      }

      else if (device == 3)
      {
        v8 = *(&v17 + 1);
        v9 = *&v18;
      }
    }

    else if (device)
    {
      if (device == 1)
      {
        v8 = *(&v17 + 1);
        v9 = -*&v18;
      }
    }

    else
    {
      v8 = -*(&v17 + 1);
      v9 = -*&v18;
    }

    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
    CGAffineTransformMakeScale(retstr, 0.8, 0.8);
    v13 = *&retstr->c;
    *&v15.a = *&retstr->a;
    *&v15.c = v13;
    *&v15.tx = *&retstr->tx;
    result = CGAffineTransformTranslate(&v16, &v15, v8, v9);
    v14 = *&v16.c;
    *&retstr->a = *&v16.a;
    *&retstr->c = v14;
    v12 = *&v16.tx;
  }

  else
  {
    v10 = MEMORY[0x277CBF2C0];
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v11;
    v12 = *(v10 + 32);
  }

  *&retstr->tx = v12;
  return result;
}

+ (id)keylineViewForPosition:(int64_t)position forDevice:(id)device narrowTopSlots:(BOOL)slots
{
  slotsCopy = slots;
  deviceCopy = device;
  v9 = [self keylineImageForPosition:position filled:0 forDevice:deviceCopy narrowTopSlots:slotsCopy];
  v10 = v9;
  if (v9)
  {
    v11 = NTKKeylineViewWithImage(v9);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __86__NTKRichComplicationCornerUtilities_keylineViewForPosition_forDevice_narrowTopSlots___block_invoke;
    v14[3] = &unk_278782938;
    selfCopy = self;
    positionCopy = position;
    v15 = deviceCopy;
    v12 = [NTKKeylineTouchable touchableWithHandler:v14];
    [v11 setTouchable:v12];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __86__NTKRichComplicationCornerUtilities_keylineViewForPosition_forDevice_narrowTopSlots___block_invoke(uint64_t a1, void *a2, CGFloat a3, CGFloat a4)
{
  v7 = a2;
  v8 = objc_opt_class();
  [v7 bounds];
  v9 = [v8 hitTestPathWithViewBounds:*(a1 + 48) position:*(a1 + 32) forDevice:?];
  [v7 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v21.origin.x = v11;
  v21.origin.y = v13;
  v21.size.width = v15;
  v21.size.height = v17;
  v20.x = a3;
  v20.y = a4;
  if (CGRectContainsPoint(v21, v20))
  {
    v18 = [v9 containsPoint:{a3, a4}];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (void)updateCustomDataAnimationFromEarlierView:(id)view laterView:(id)laterView isForward:(BOOL)forward animationType:(unint64_t)type animationDuration:(double)duration animationFraction:(float)fraction
{
  forwardCopy = forward;
  viewCopy = view;
  laterViewCopy = laterView;
  memset(&v28, 0, sizeof(v28));
  if (type == 1)
  {
    v16 = *(MEMORY[0x277CBF2C0] + 16);
    *&v28.a = *MEMORY[0x277CBF2C0];
    *&v28.c = v16;
    *&v28.tx = *(MEMORY[0x277CBF2C0] + 32);
    if (forwardCopy)
    {
LABEL_5:
      v13 = MEMORY[0x277CBF2C0];
      v14 = *(MEMORY[0x277CBF2C0] + 16);
      *&v27.a = *MEMORY[0x277CBF2C0];
      *&v27.c = v14;
      *&v27.tx = *(MEMORY[0x277CBF2C0] + 32);
      v26 = v28;
      v25 = v28;
      v15 = laterViewCopy;
      goto LABEL_8;
    }
  }

  else
  {
    if (!type)
    {
      CGAffineTransformMakeScale(&v28, 0.9, 0.9);
    }

    if (forwardCopy)
    {
      goto LABEL_5;
    }
  }

  v27 = v28;
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  *&v26.a = *MEMORY[0x277CBF2C0];
  *&v26.c = v17;
  *&v26.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v25.a = *&v26.a;
  *&v25.c = v17;
  *&v25.tx = *&v26.tx;
  v13 = &v28;
  v15 = viewCopy;
LABEL_8:
  v18 = *&v13->c;
  v22 = *&v13->a;
  v23 = v18;
  v24 = *&v13->tx;
  v19 = v15;
  if (type == 1)
  {
    CDTemplicateComplicationShouldPerformFullFade();
  }

  CLKCompressFraction();
  CLKCompressFraction();
  CLKInterpolateBetweenFloatsClipped();
  [viewCopy setAlpha:?];
  CLKInterpolateBetweenTransform();
  v21[0] = v21[1];
  [viewCopy setTransform:v21];
  CLKInterpolateBetweenFloatsClipped();
  [laterViewCopy setAlpha:?];
  v21[0] = v26;
  CLKInterpolateBetweenTransform();
  v21[0] = v20;
  [laterViewCopy setTransform:v21];
}

+ (UIEdgeInsets)_keylinePaddingForPosition:(int64_t)position conentSize:(CGSize)size forDevice:(id)device narrowTopSlots:(BOOL)slots
{
  height = size.height;
  width = size.width;
  v9 = [self keylineImageForPosition:position filled:0 forDevice:device narrowTopSlots:slots];
  [v9 size];
  v11 = v10;
  v13 = v12;

  if (position > 1)
  {
    if (position == 2)
    {
      v14 = v13 - height;
      v17 = v11 - width;
      v15 = 0.0;
      v16 = 0.0;
      goto LABEL_11;
    }

    if (position == 3)
    {
      v14 = v13 - height;
      v15 = v11 - width;
      v16 = 0.0;
      goto LABEL_8;
    }
  }

  else
  {
    if (!position)
    {
      v16 = v13 - height;
      v17 = v11 - width;
      v14 = 0.0;
      v15 = 0.0;
      goto LABEL_11;
    }

    if (position == 1)
    {
      v15 = v11 - width;
      v16 = v13 - height;
      v14 = 0.0;
LABEL_8:
      v17 = 0.0;
    }
  }

LABEL_11:
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

+ (id)viewWithLegacyComplicationType:(unint64_t)type
{
  if (type)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[off_27877BEA0 alloc] initWithFontFallback:{0, v3}];
  }

  return v5;
}

@end