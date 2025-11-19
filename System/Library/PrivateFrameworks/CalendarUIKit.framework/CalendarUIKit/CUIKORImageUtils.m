@interface CUIKORImageUtils
+ (CGRect)_frameMutatedForProximityToHourLine:(CGRect)a3;
+ (CGRect)backgroundImageFrameForState:(id)a3;
+ (UIEdgeInsets)_edgeInsets:(UIEdgeInsets)a3 scaledByFont:(id)a4;
+ (UIEdgeInsets)standardBackgroundMargins:(BOOL)a3;
+ (id)_calendarColorDotImageForColor:(id)a3 baseSize:(double)a4 font:(id)a5;
+ (id)_calendarColorDotImageForColor:(id)a3 diameter:(double)a4;
+ (id)_calendarColorDotImageForColor:(id)a3 diameter:(double)a4 enabled:(BOOL)a5 adjustWhiteColor:(BOOL)a6;
+ (id)scaledCalendarInvitationDotForFont:(id)a3;
+ (unint64_t)_uniqueDotHashForColor:(id)a3 diameter:(double)a4;
+ (void)calculateBackgroundImageFrame:(CGRect *)a3 travelTimeFrame:(CGRect *)a4 forState:(id)a5 withMargins:(UIEdgeInsets)a6;
@end

@implementation CUIKORImageUtils

+ (id)scaledCalendarInvitationDotForFont:(id)a3
{
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v4 systemBlueColor];
  v7 = [a1 _calendarColorDotImageForColor:v6 baseSize:v5 font:6.0];

  [a1 _edgeInsets:v5 scaledByFont:{1.0, 0.0, 0.5, 3.0}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v7 cuik_imageWithInsets:{v9, v11, v13, v15}];

  return v16;
}

+ (id)_calendarColorDotImageForColor:(id)a3 diameter:(double)a4 enabled:(BOOL)a5 adjustWhiteColor:(BOOL)a6
{
  v9 = a3;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x4010000000;
  v19[4] = 0;
  v19[5] = 0;
  v19[3] = &unk_1CADB7076;
  v20 = a4;
  v21 = a4;
  v10 = MEMORY[0x1E69DCAB8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__CUIKORImageUtils__calendarColorDotImageForColor_diameter_enabled_adjustWhiteColor___block_invoke;
  v14[3] = &unk_1E839A458;
  v11 = v9;
  v17 = a5;
  v15 = v11;
  v16 = v19;
  v18 = a6;
  v12 = [v10 cuik_drawImageWithSize:v14 drawBlock:{v20, v21}];

  _Block_object_dispose(v19, 8);

  return v12;
}

void __85__CUIKORImageUtils__calendarColorDotImageForColor_diameter_enabled_adjustWhiteColor___block_invoke(uint64_t a1, CGContext *a2)
{
  v4 = *(a1 + 32);
  if ((*(a1 + 48) & 1) == 0)
  {
    v8 = v4;
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.65 alpha:1.0];
    v6 = CUIKBlendColorsSourceOver(v8, v5);

    v4 = v6;
  }

  v9 = v4;
  [v4 setFill];
  CGContextFillEllipseInRect(a2, *(*(*(a1 + 40) + 8) + 32));
  if (CUIKColorIsWhite(*(a1 + 32)) && *(a1 + 49) == 1)
  {
    v7 = [MEMORY[0x1E69DC888] grayColor];
    CGContextSetLineWidth(a2, 1.0);
    *(*(*(a1 + 40) + 8) + 32) = CGRectInset(*(*(*(a1 + 40) + 8) + 32), 0.5, 0.5);
    [v7 setStroke];
    CGContextStrokeEllipseInRect(a2, *(*(*(a1 + 40) + 8) + 32));
  }
}

+ (unint64_t)_uniqueDotHashForColor:(id)a3 diameter:(double)a4
{
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  [a3 cuik_getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  return (v9 * 100.0) | ((a4 * 100.0) << 28) | ((v8 * 100.0) << 7) | ((v7 * 100.0) << 14) | ((v6 * 100.0) << 21);
}

+ (id)_calendarColorDotImageForColor:(id)a3 diameter:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (_calendarColorDotImageForColor_diameter__onceToken == -1)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  +[CUIKORImageUtils _calendarColorDotImageForColor:diameter:];
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  v8 = [MEMORY[0x1E69DC888] cuik_systemBackgroundColor];
  v9 = CUIKAdjustedColorForBackgroundColor(v7, v8);

  v10 = [a1 _uniqueDotHashForColor:v9 diameter:a4];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  v12 = [_calendarColorDotImageForColor_diameter____CachedDotImages objectForKey:v11];
  if (!v12)
  {
    v12 = [a1 _calendarColorDotImageForColor:v9 diameter:1 enabled:1 adjustWhiteColor:a4];
    if (v12)
    {
      [_calendarColorDotImageForColor_diameter____CachedDotImages setObject:v12 forKey:v11];
    }
  }

LABEL_9:

  return v12;
}

uint64_t __60__CUIKORImageUtils__calendarColorDotImageForColor_diameter___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _calendarColorDotImageForColor_diameter____CachedDotImages;
  _calendarColorDotImageForColor_diameter____CachedDotImages = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_calendarColorDotImageForColor:(id)a3 baseSize:(double)a4 font:(id)a5
{
  v8 = a3;
  [a5 cuik_scaledValueForValue:a4];
  v9 = [a1 _calendarColorDotImageForColor:v8 diameter:?];

  return v9;
}

+ (UIEdgeInsets)_edgeInsets:(UIEdgeInsets)a3 scaledByFont:(id)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = a4;
  [v8 cuik_scaledValueForValue:top];
  v10 = v9;
  [v8 cuik_scaledValueForValue:left];
  v12 = v11;
  [v8 cuik_scaledValueForValue:bottom];
  v14 = v13;
  [v8 cuik_scaledValueForValue:right];
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

+ (CGRect)backgroundImageFrameForState:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v4 = a3;
  [a1 standardBackgroundMargins:1];
  [a1 calculateBackgroundImageFrame:&v9 travelTimeFrame:0 forState:v4 withMargins:?];

  v6 = *(&v9 + 1);
  v5 = *&v9;
  v8 = *(&v10 + 1);
  v7 = *&v10;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (void)calculateBackgroundImageFrame:(CGRect *)a3 travelTimeFrame:(CGRect *)a4 forState:(id)a5 withMargins:(UIEdgeInsets)a6
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  v43 = a5;
  [v43 travelTimeHeight];
  v14 = v13;
  [v43 backgroundRect];
  v15 = left + 0.0;
  v16 = top + 0.0;
  v18 = v17 - (left + right);
  v20 = v19 - (top + bottom);
  [a1 _frameMutatedForProximityToHourLine:{v15, top + 0.0, v18, v20}];
  MaxY = v14 + v23;
  v26 = v25 - v14;
  if (a4)
  {
    v41 = v22;
    v42 = v21;
    [v43 travelTimeHeight];
    if (v27 <= 0.0)
    {
      x = CUIKRoundRectToScreenScale(v42, MaxY, v41, v26);
      y = v35;
      width = v36;
      height = 0.0;
    }

    else
    {
      [a1 _frameMutatedForProximityToHourLine:{v15, v16, v18, v20}];
      v45.origin.x = CUIKRoundRectToScreenScale(v28, v29, v30, fmax(v14 - bottom, 0.0));
      x = v45.origin.x;
      y = v45.origin.y;
      width = v45.size.width;
      height = v45.size.height;
      MaxY = CGRectGetMaxY(v45);
    }

    a4->origin.x = x;
    a4->origin.y = y;
    a4->size.width = width;
    a4->size.height = height;
    v22 = v41;
    v21 = v42;
  }

  v37 = CUIKRoundRectToScreenScale(v21, MaxY, v22, v26);
  if (a3)
  {
    a3->origin.x = v37;
    a3->origin.y = v38;
    a3->size.width = v39;
    a3->size.height = v40;
  }
}

+ (UIEdgeInsets)standardBackgroundMargins:(BOOL)a3
{
  if (a3)
  {
    v3 = +[CUIKInterface shared];
    v4 = [v3 interfaceIsLeftToRight];

    v5 = 1.0;
    if (v4)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    if (v4)
    {
      v5 = 0.0;
    }
  }

  else
  {
    v5 = 0.0;
    v6 = 1.0;
  }

  v7 = 1.0;
  v8 = 1.0;
  result.right = v6;
  result.bottom = v8;
  result.left = v5;
  result.top = v7;
  return result;
}

+ (CGRect)_frameMutatedForProximityToHourLine:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CUIKRoundToScreenScale(0.5);
  v8 = y + v7;
  CUIKRoundToScreenScale(0.5);
  v10 = height - v9;
  v11 = x;
  v12 = v8;
  v13 = width;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end