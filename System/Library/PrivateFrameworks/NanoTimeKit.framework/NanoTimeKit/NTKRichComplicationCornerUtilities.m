@interface NTKRichComplicationCornerUtilities
+ (CGAffineTransform)transformForState:(SEL)a3 position:(int64_t)a4 device:(int64_t)a5;
+ (UIEdgeInsets)_keylinePaddingForPosition:(int64_t)a3 conentSize:(CGSize)a4 forDevice:(id)a5 narrowTopSlots:(BOOL)a6;
+ (id)keylineViewForPosition:(int64_t)a3 forDevice:(id)a4 narrowTopSlots:(BOOL)a5;
+ (id)viewWithLegacyComplicationType:(unint64_t)a3;
+ (void)updateCustomDataAnimationFromEarlierView:(id)a3 laterView:(id)a4 isForward:(BOOL)a5 animationType:(unint64_t)a6 animationDuration:(double)a7 animationFraction:(float)a8;
@end

@implementation NTKRichComplicationCornerUtilities

+ (CGAffineTransform)transformForState:(SEL)a3 position:(int64_t)a4 device:(int64_t)a5
{
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    ___LayoutConstants_block_invoke_33(a6, &v17);
    v8 = *MEMORY[0x277CBF348];
    v9 = *(MEMORY[0x277CBF348] + 8);
    if (a5 > 1)
    {
      if (a5 == 2)
      {
        v9 = *&v18;
        v8 = -*(&v17 + 1);
      }

      else if (a5 == 3)
      {
        v8 = *(&v17 + 1);
        v9 = *&v18;
      }
    }

    else if (a5)
    {
      if (a5 == 1)
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

+ (id)keylineViewForPosition:(int64_t)a3 forDevice:(id)a4 narrowTopSlots:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [a1 keylineImageForPosition:a3 filled:0 forDevice:v8 narrowTopSlots:v5];
  v10 = v9;
  if (v9)
  {
    v11 = NTKKeylineViewWithImage(v9);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __86__NTKRichComplicationCornerUtilities_keylineViewForPosition_forDevice_narrowTopSlots___block_invoke;
    v14[3] = &unk_278782938;
    v16 = a1;
    v17 = a3;
    v15 = v8;
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

+ (void)updateCustomDataAnimationFromEarlierView:(id)a3 laterView:(id)a4 isForward:(BOOL)a5 animationType:(unint64_t)a6 animationDuration:(double)a7 animationFraction:(float)a8
{
  v9 = a5;
  v11 = a3;
  v12 = a4;
  memset(&v28, 0, sizeof(v28));
  if (a6 == 1)
  {
    v16 = *(MEMORY[0x277CBF2C0] + 16);
    *&v28.a = *MEMORY[0x277CBF2C0];
    *&v28.c = v16;
    *&v28.tx = *(MEMORY[0x277CBF2C0] + 32);
    if (v9)
    {
LABEL_5:
      v13 = MEMORY[0x277CBF2C0];
      v14 = *(MEMORY[0x277CBF2C0] + 16);
      *&v27.a = *MEMORY[0x277CBF2C0];
      *&v27.c = v14;
      *&v27.tx = *(MEMORY[0x277CBF2C0] + 32);
      v26 = v28;
      v25 = v28;
      v15 = v12;
      goto LABEL_8;
    }
  }

  else
  {
    if (!a6)
    {
      CGAffineTransformMakeScale(&v28, 0.9, 0.9);
    }

    if (v9)
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
  v15 = v11;
LABEL_8:
  v18 = *&v13->c;
  v22 = *&v13->a;
  v23 = v18;
  v24 = *&v13->tx;
  v19 = v15;
  if (a6 == 1)
  {
    CDTemplicateComplicationShouldPerformFullFade();
  }

  CLKCompressFraction();
  CLKCompressFraction();
  CLKInterpolateBetweenFloatsClipped();
  [v11 setAlpha:?];
  CLKInterpolateBetweenTransform();
  v21[0] = v21[1];
  [v11 setTransform:v21];
  CLKInterpolateBetweenFloatsClipped();
  [v12 setAlpha:?];
  v21[0] = v26;
  CLKInterpolateBetweenTransform();
  v21[0] = v20;
  [v12 setTransform:v21];
}

+ (UIEdgeInsets)_keylinePaddingForPosition:(int64_t)a3 conentSize:(CGSize)a4 forDevice:(id)a5 narrowTopSlots:(BOOL)a6
{
  height = a4.height;
  width = a4.width;
  v9 = [a1 keylineImageForPosition:a3 filled:0 forDevice:a5 narrowTopSlots:a6];
  [v9 size];
  v11 = v10;
  v13 = v12;

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v14 = v13 - height;
      v17 = v11 - width;
      v15 = 0.0;
      v16 = 0.0;
      goto LABEL_11;
    }

    if (a3 == 3)
    {
      v14 = v13 - height;
      v15 = v11 - width;
      v16 = 0.0;
      goto LABEL_8;
    }
  }

  else
  {
    if (!a3)
    {
      v16 = v13 - height;
      v17 = v11 - width;
      v14 = 0.0;
      v15 = 0.0;
      goto LABEL_11;
    }

    if (a3 == 1)
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

+ (id)viewWithLegacyComplicationType:(unint64_t)a3
{
  if (a3)
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