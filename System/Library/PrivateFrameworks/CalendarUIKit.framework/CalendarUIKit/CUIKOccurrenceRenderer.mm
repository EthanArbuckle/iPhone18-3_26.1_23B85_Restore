@interface CUIKOccurrenceRenderer
+ (id)reminderBackgroundColor:(BOOL)color style:(int64_t)style miniPreview:(BOOL)preview completed:(BOOL)completed darkenForAllDayArea:(BOOL)area;
+ (id)reminderStrokeColor:(BOOL)color stack:(BOOL)stack style:(int64_t)style;
+ (id)renderColorBlockImageWithSize:(CGSize)size colorBarColor:(CGColor *)color backgroundColor:(CGColor *)backgroundColor stripeColor:(CGColor *)stripeColor stripedImageAlpha:(double)alpha;
+ (id)renderReminderBackgroundSelected:(BOOL)selected stackDepth:(int)depth userInterfaceStyle:(int64_t)style miniPreview:(BOOL)preview completed:(BOOL)completed;
+ (id)renderStrings:(id)strings withSize:(CGSize)size font:(id)font edgeInsets:(UIEdgeInsets)insets leadingIcon:(id)icon trailingIcons:(id)icons shouldAutoHideLeadingIcon:(BOOL)leadingIcon;
+ (id)renderingBlockForStrings:(id)strings withSize:(CGSize)size font:(id)font edgeInsets:(UIEdgeInsets)insets leadingIcon:(id)icon trailingIcons:(id)icons outImageSize:(CGSize *)imageSize shouldAutoHideLeadingIcon:(BOOL)self0;
+ (void)drawReminderInContext:(CGContext *)context rect:(CGRect)rect fillColor:(id)color strokeColor:(id)strokeColor coveringReminderRect:(CGRect)reminderRect allDay:(BOOL)day;
+ (void)renderReminderInPreparedContext:(CGContext *)context bounds:(CGRect)bounds selected:(BOOL)selected stackDepth:(int)depth userInterfaceStyle:(int64_t)style miniPreview:(BOOL)preview allDay:(BOOL)day completed:(BOOL)self0;
@end

@implementation CUIKOccurrenceRenderer

+ (id)renderColorBlockImageWithSize:(CGSize)size colorBarColor:(CGColor *)color backgroundColor:(CGColor *)backgroundColor stripeColor:(CGColor *)stripeColor stripedImageAlpha:(double)alpha
{
  height = size.height;
  width = size.width;
  v12 = +[CUIKInterface shared];
  interfaceIsLeftToRight = [v12 interfaceIsLeftToRight];

  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (color)
  {
    +[CUIKORImageUtils colorBarThickness];
    v16 = v17;
    +[CUIKORImageUtils occurrencePadding];
    v15 = v18;
    v14 = 1.0;
  }

  v19 = height - (v16 + v16);
  v20 = v19 * 0.5;
  if (v19 * 0.5 < 0.0)
  {
    v20 = 0.0;
  }

  if (v19 >= v15 + v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = v20;
  }

  v22 = v15 + v14 + v16;
  v23 = v16 * 0.5;
  v24 = CUIKCeilToScreenScale(v16 * 0.5) + v21;
  if (stripeColor)
  {
    v25 = CUIKCeilToScreenScale(v23);
    v26 = v25 + v25 + v21 * 2.0 + 9.0;
    if (height >= v26)
    {
      v27 = 9.0;
    }

    else
    {
      v27 = height;
    }

    if (height >= v26)
    {
      v28 = v24;
    }

    else
    {
      v28 = 0.0;
    }

    v29 = v21;
    if (color)
    {
      v30 = v28;
      if (height >= v26)
      {
        v28 = height - v24 + floor((height + v24 * -2.0) / 9.0) * -9.0;
        v27 = v24 + 9.0 + v28;
        v30 = v24;
      }
    }

    else
    {
      v30 = v28;
    }

    if (interfaceIsLeftToRight)
    {
      width = v22 + 9.0;
      v31 = v22;
    }

    else
    {
      v31 = 0.0;
      if (color)
      {
        if (width >= v22 + 9.0)
        {
          v22 = width + floor((width - v22) / 9.0) * -9.0;
          width = v22 + 9.0;
          goto LABEL_32;
        }
      }

      else
      {
        width = 9.0;
      }
    }

    v22 = 0.0;
  }

  else
  {
    if (interfaceIsLeftToRight)
    {
      v31 = v22;
    }

    else
    {
      v31 = 0.0;
    }

    if (interfaceIsLeftToRight)
    {
      v22 = 0.0;
    }

    v32 = CUIKCeilToScreenScale(v23);
    v27 = CUIKCeilToScreenScale(0.01) + v32 + v32 + v15 * 2.0;
    width = v15 + v16 + 2.0;
    v28 = v24;
    v29 = v21;
    v30 = v24;
  }

LABEL_32:
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __116__CUIKOccurrenceRenderer_renderColorBlockImageWithSize_colorBarColor_backgroundColor_stripeColor_stripedImageAlpha___block_invoke;
  v37[3] = &__block_descriptor_137_e20_v16__0__CGContext__8l;
  v37[4] = stripeColor;
  v37[5] = backgroundColor;
  *&v37[6] = alpha;
  v37[7] = 0;
  v37[8] = 0;
  *&v37[9] = width;
  *&v37[10] = v27;
  v37[11] = color;
  *&v37[12] = v16;
  *&v37[13] = v15;
  v38 = interfaceIsLeftToRight;
  *&v37[14] = width;
  *&v37[15] = v29;
  *&v37[16] = v27;
  v33 = [MEMORY[0x1E69DCAB8] cuik_drawImageWithSize:v37 drawBlock:width];
  v34 = [MEMORY[0x1E69DCAB8] cuik_resizableImageFromOriginalImage:v33 withCapInsets:stripeColor == 0 resizingMode:{v30, v31, v28, v22}];

  return v34;
}

void __116__CUIKOccurrenceRenderer_renderColorBlockImageWithSize_colorBarColor_backgroundColor_stripeColor_stripedImageAlpha___block_invoke(uint64_t a1, CGContext *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v4 = [MEMORY[0x1E69DCAB8] cuik_stripedImageWithBackgroundColor:*(a1 + 40) stripeColor:*(a1 + 32) scale:CUIKScaleFactor()];
    v5 = [MEMORY[0x1E69DC888] colorWithPatternImage:v4];
    v6 = [v5 colorWithAlphaComponent:*(a1 + 48)];
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = *(a1 + 40);
  }

  CGContextSetFillColorWithColor(a2, v7);
  CGContextFillRect(a2, *(a1 + 56));
  v8 = *(a1 + 88);
  if (v8)
  {
    CGContextSetStrokeColorWithColor(a2, v8);
    CGContextSetLineCap(a2, kCGLineCapRound);
    CGContextSetLineWidth(a2, *(a1 + 96));
    v9 = *(a1 + 96);
    v10 = *(a1 + 104) + v9 * 0.5;
    if ((*(a1 + 136) & 1) == 0)
    {
      v10 = *(a1 + 112) - v10;
    }

    v11 = *(a1 + 128);
    v12 = *(a1 + 120) + v9 * 0.5;
    points.x = v10;
    points.y = v12;
    v14 = v10;
    v15 = v11 - v12;
    CGContextStrokeLineSegments(a2, &points, 2uLL);
  }
}

+ (id)renderReminderBackgroundSelected:(BOOL)selected stackDepth:(int)depth userInterfaceStyle:(int64_t)style miniPreview:(BOOL)preview completed:(BOOL)completed
{
  v18 = (depth - 1);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __111__CUIKOccurrenceRenderer_renderReminderBackgroundSelected_stackDepth_userInterfaceStyle_miniPreview_completed___block_invoke;
  v19[3] = &__block_descriptor_87_e20_v16__0__CGContext__8l;
  v19[5] = 0;
  v19[6] = 0;
  v19[4] = self;
  __asm
  {
    FMOV            V1.2D, #2.0
    FMOV            V0.2D, #4.0
    FMOV            V2.2D, #3.0
  }

  v20 = vrndpq_f64(vmlaq_f64(_Q2, _Q0, vmlaq_n_f64(_Q1, xmmword_1CAD58140, v18)));
  selectedCopy = selected;
  depthCopy = depth;
  styleCopy = style;
  previewCopy = preview;
  completedCopy = completed;
  v14 = [MEMORY[0x1E69DCAB8] cuik_drawImageWithSize:v19 drawBlock:*&v20];
  v15 = ceil((v18 * 0.375 + 1.0) * 4.0);
  v16 = [MEMORY[0x1E69DCAB8] cuik_resizableImageFromOriginalImage:v14 withCapInsets:1 resizingMode:{4.0, v15, ceil((v18 * 0.5 + 1.0) * 4.0), v15}];

  return v16;
}

+ (void)renderReminderInPreparedContext:(CGContext *)context bounds:(CGRect)bounds selected:(BOOL)selected stackDepth:(int)depth userInterfaceStyle:(int64_t)style miniPreview:(BOOL)preview allDay:(BOOL)day completed:(BOOL)self0
{
  dayCopy = day;
  selectedCopy = selected;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v27 = [self reminderBackgroundColor:selected style:style miniPreview:preview completed:completed];
  v20 = depth - 1;
  v21 = height + (depth - 1) * -2.0;
  v22 = [self reminderStrokeColor:selectedCopy stack:depth > 1 style:style];
  [self drawReminderInContext:context rect:v27 fillColor:v22 strokeColor:dayCopy coveringReminderRect:x allDay:{y, width, v21, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  if (depth >= 2)
  {
    do
    {
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = v21;
      v30 = CGRectInset(v29, 1.5, 0.0);
      v23 = v30.origin.x;
      v24 = v30.size.width;
      v25 = v30.size.height;
      v26 = v30.origin.y + 2.0;
      [self drawReminderInContext:context rect:v27 fillColor:v22 strokeColor:dayCopy coveringReminderRect:v30.origin.x allDay:v30.origin.y + 2.0];
      v21 = v25;
      width = v24;
      y = v26;
      x = v23;
      --v20;
    }

    while (v20);
  }
}

+ (void)drawReminderInContext:(CGContext *)context rect:(CGRect)rect fillColor:(id)color strokeColor:(id)strokeColor coveringReminderRect:(CGRect)reminderRect allDay:(BOOL)day
{
  height = reminderRect.size.height;
  width = reminderRect.size.width;
  y = reminderRect.origin.y;
  x = reminderRect.origin.x;
  v14 = rect.size.height;
  v15 = rect.size.width;
  v16 = rect.origin.y;
  v17 = rect.origin.x;
  colorCopy = color;
  strokeColorCopy = strokeColor;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  IsNull = CGRectIsNull(v35);
  v36.origin.x = v17;
  v36.origin.y = v16;
  v36.size.width = v15;
  v36.size.height = v14;
  v21 = CGPathCreateWithRoundedRect(v36, 4.0, 4.0, 0);
  v22 = 0;
  if (!IsNull)
  {
    CGContextBeginPath(context);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v38 = CGRectInset(v37, 0.5, 0.5);
    v23 = v38.origin.x;
    v24 = v38.origin.y;
    v25 = v38.size.width;
    v26 = v38.size.height;
    v22 = CGPathCreateWithRoundedRect(v38, 3.75, 3.75, 0);
    CGContextAddPath(context, v22);
    CGContextAddPath(context, v21);
    CGContextClosePath(context);
    CGContextEOClip(context);
    CGContextBeginPath(context);
    v39.origin.x = v23;
    v39.origin.y = v24;
    v39.size.width = v25;
    v39.size.height = v26;
    v40.origin.y = CGRectGetMaxY(v39) + -0.9;
    v40.size.height = v14 - (v40.origin.y - v16);
    v40.origin.x = v17;
    v40.size.width = v15;
    CGContextAddRect(context, v40);
    CGContextClosePath(context);
    CGContextClip(context);
  }

  CGContextSetFillColorWithColor(context, [colorCopy CGColor]);
  CGContextBeginPath(context);
  CGContextAddPath(context, v21);
  CGContextClosePath(context);
  CGContextFillPath(context);
  CGPathRelease(v21);
  if (strokeColorCopy && !day)
  {
    v41.origin.x = v17;
    v41.origin.y = v16;
    v41.size.width = v15;
    v41.size.height = v14;
    v42 = CGRectInset(v41, 0.5, 0.5);
    v27 = CGPathCreateWithRoundedRect(v42, v14 + -0.25, v14 + -0.25, 0);
    CGContextBeginPath(context);
    CGContextAddPath(context, v27);
    CGContextClosePath(context);
    CGContextSetStrokeColorWithColor(context, [strokeColorCopy CGColor]);
    CGContextSetLineWidth(context, 0.5);
    CGContextStrokePath(context);
    CGPathRelease(v27);
  }

  if (!IsNull)
  {
    v28 = v14 * 0.5;
    v29 = *MEMORY[0x1E695F060];
    v30 = *(MEMORY[0x1E695F060] + 8);
    v33.width = *MEMORY[0x1E695F060];
    v33.height = v30;
    CGContextSetShadow(context, v33, v28);
    CGContextSetFillColorWithColor(context, [colorCopy CGColor]);
    CGContextBeginPath(context);
    CGContextAddPath(context, v22);
    CGContextClosePath(context);
    CGContextFillPath(context);
    v34.width = v29;
    v34.height = v30;
    CGContextSetShadowWithColor(context, v34, 0.0, 0);
    CGContextResetClip(context);
  }

  if (v22)
  {
    CGPathRelease(v22);
  }
}

+ (id)reminderBackgroundColor:(BOOL)color style:(int64_t)style miniPreview:(BOOL)preview completed:(BOOL)completed darkenForAllDayArea:(BOOL)area
{
  if (color)
  {
    systemGray2Color = [MEMORY[0x1E69DC888] systemGray2Color];
LABEL_5:
    v8 = systemGray2Color;
    goto LABEL_6;
  }

  if (preview)
  {
    systemGray2Color = [MEMORY[0x1E69DC888] cuik_systemBackgroundColor];
    goto LABEL_5;
  }

  completedCopy = completed;
  if (style == 2 || !area)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v13 = CUIKAdjustedColorForColor(whiteColor, style);
    v8 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle(v13, 0, style, 0);

    if (!completedCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.85 alpha:0.56];
  if (completedCopy)
  {
LABEL_14:
    v14 = [v8 cuik_colorWithAlphaScaled:0.35];

    v8 = v14;
  }

LABEL_6:

  return v8;
}

+ (id)reminderStrokeColor:(BOOL)color stack:(BOOL)stack style:(int64_t)style
{
  if (color)
  {
    if (stack)
    {
      if (style == 2)
      {
        v5 = 0.407843137;
        v6 = 0.423529412;
      }

      else
      {
        v5 = 0.596078431;
        v6 = 0.611764706;
      }

      systemFillColor = [MEMORY[0x1E69DC888] colorWithRed:v5 green:v5 blue:v6 alpha:1.0];
    }

    else
    {
      systemFillColor = 0;
    }
  }

  else
  {
    systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
  }

  return systemFillColor;
}

+ (id)renderStrings:(id)strings withSize:(CGSize)size font:(id)font edgeInsets:(UIEdgeInsets)insets leadingIcon:(id)icon trailingIcons:(id)icons shouldAutoHideLeadingIcon:(BOOL)leadingIcon
{
  v18 = 0.0;
  v19 = 0.0;
  v9 = [self renderingBlockForStrings:strings withSize:font font:icon edgeInsets:icons leadingIcon:&v18 trailingIcons:leadingIcon outImageSize:size.width shouldAutoHideLeadingIcon:{size.height, insets.top, insets.left, insets.bottom, insets.right}];
  v10 = MEMORY[0x1E69DCAB8];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __117__CUIKOccurrenceRenderer_renderStrings_withSize_font_edgeInsets_leadingIcon_trailingIcons_shouldAutoHideLeadingIcon___block_invoke;
  v16[3] = &unk_1E839A5D0;
  v17 = v9;
  v11 = v18;
  v12 = v19;
  v13 = v9;
  v14 = [v10 cuik_drawImageWithSize:v16 drawBlock:{v11, v12}];

  return v14;
}

+ (id)renderingBlockForStrings:(id)strings withSize:(CGSize)size font:(id)font edgeInsets:(UIEdgeInsets)insets leadingIcon:(id)icon trailingIcons:(id)icons outImageSize:(CGSize *)imageSize shouldAutoHideLeadingIcon:(BOOL)self0
{
  leadingIconCopy = leadingIcon;
  bottom = insets.bottom;
  top = insets.top;
  height = size.height;
  width = size.width;
  v81 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  fontCopy = font;
  iconCopy = icon;
  iconsCopy = icons;
  v23 = +[CUIKInterface shared];
  layoutDirectionOrOverride = [v23 layoutDirectionOrOverride];

  v25 = 0.0;
  v26 = 0.0;
  if (iconCopy)
  {
    [iconCopy size];
    v26 = v27;
  }

  if ([iconsCopy count])
  {
    v61 = leadingIconCopy;
    v62 = layoutDirectionOrOverride;
    v28 = fontCopy;
    v78 = 0u;
    v79 = 0u;
    v77 = 0u;
    v76 = 0u;
    v29 = iconsCopy;
    v30 = [v29 countByEnumeratingWithState:&v76 objects:v80 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v77;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v77 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [*(*(&v76 + 1) + 8 * i) size];
          v35 = v25 + v34;
          +[CUIKORImageUtils occurrencePadding];
          v25 = v35 + v36;
        }

        v31 = [v29 countByEnumeratingWithState:&v76 objects:v80 count:16];
      }

      while (v31);
    }

    fontCopy = v28;
    layoutDirectionOrOverride = v62;
    leadingIconCopy = v61;
  }

  v37 = width - (v26 + v25);
  if (leadingIconCopy)
  {
    +[CUIKORImageUtils hideIconBreakpoint];
    if (v37 < v38)
    {
      v26 = 0.0;
    }
  }

  v63 = v26;
  +[CUIKORImageUtils hideIconBreakpoint];
  if (v37 >= v39)
  {
    v40 = v25;
  }

  else
  {
    v40 = 0.0;
  }

  combinedString = [stringsCopy combinedString];
  [combinedString boundingRectWithSize:33 options:0 context:{width - v40, height}];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v50 = bottom + v49;
  v83.origin.x = v43;
  v83.origin.y = v45;
  v83.size.width = v47;
  v83.size.height = v50;
  v51 = width - CGRectGetMinX(v83);
  v52 = top + v45;
  v84.origin.x = v43;
  v84.origin.y = v52;
  v84.size.width = v51;
  v84.size.height = v50;
  MaxX = CGRectGetMaxX(v84);
  v85.origin.x = v43;
  v85.origin.y = v52;
  v85.size.width = v51;
  v85.size.height = v50;
  MaxY = CGRectGetMaxY(v85);
  if (imageSize)
  {
    imageSize->width = MaxX;
    imageSize->height = MaxY;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __141__CUIKOccurrenceRenderer_renderingBlockForStrings_withSize_font_edgeInsets_leadingIcon_trailingIcons_outImageSize_shouldAutoHideLeadingIcon___block_invoke;
  aBlock[3] = &unk_1E839A620;
  v69 = v43;
  v70 = v52;
  v71 = v51;
  v72 = v50;
  v65 = iconsCopy;
  v66 = fontCopy;
  v75 = layoutDirectionOrOverride == 1;
  v73 = v40;
  v74 = v63;
  v67 = iconCopy;
  v68 = stringsCopy;
  v55 = stringsCopy;
  v56 = iconCopy;
  v57 = fontCopy;
  v58 = iconsCopy;
  v59 = _Block_copy(aBlock);

  return v59;
}

void __141__CUIKOccurrenceRenderer_renderingBlockForStrings_withSize_font_edgeInsets_leadingIcon_trailingIcons_outImageSize_shouldAutoHideLeadingIcon___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v55 = 0;
  v56 = &v55;
  v57 = 0x4010000000;
  v58 = &unk_1CADB7076;
  v2 = *(a1 + 80);
  v59 = *(a1 + 64);
  v60 = v2;
  if ([*(a1 + 32) count] && *(a1 + 96) > 0.0)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v3 = [*(a1 + 32) reverseObjectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v4)
    {
      v5 = *v52;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v52 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v51 + 1) + 8 * i);
          [v7 size];
          v9 = v8;
          v11 = v10;
          MaxX = CGRectGetMaxX(v56[1]);
          y = v56[1].origin.y;
          v15 = [(UIFont *)*(a1 + 40) cuik_lineHeight];
          v16 = CUIKCeilToScreenScale(y + (v15 - v11) * 0.5);
          +[CUIKORImageUtils occurrencePadding];
          p_x = &v56->origin.x;
          v20 = v56[1].size.width - (v9 + v18);
          v56[1].size.width = v20;
          if (*(a1 + 112) == 1)
          {
            v21 = p_x[4];
            v22 = p_x[5];
            v23 = p_x[7];
            MinX = CGRectGetMinX(*(&v20 - 2));
            +[CUIKORImageUtils occurrencePadding];
            v56[1].origin.x = v9 + v25 + v56[1].origin.x;
          }

          else
          {
            MinX = MaxX - v9;
          }

          [(UIImage *)v7 cuik_drawAtPoint:v17, MinX, v16];
        }

        v4 = [v3 countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v4);
    }
  }

  if (*(a1 + 104) > 0.0)
  {
    [*(a1 + 48) size];
    v27 = v26;
    v29 = v28;
    v30 = *(a1 + 64);
    v31 = *(a1 + 72);
    v33 = [(UIFont *)*(a1 + 40) cuik_lineHeight];
    v35 = CUIKCeilToScreenScale(v31 + (v33 - v29) * 0.5);
    if (*(a1 + 112) == 1)
    {
      v36 = CGRectGetMaxX(v56[1]) - v27 + 1.0;
      v37 = v27 + 3.0 + -1.0;
      v38 = v56;
    }

    else
    {
      v36 = v30 + -1.0;
      v37 = v27 + 3.0 + -1.0;
      v38 = v56;
      v56[1].origin.x = v37 + v56[1].origin.x;
    }

    v38[1].size.width = v38[1].size.width - v37;
    [(UIImage *)*(a1 + 48) cuik_drawAtPoint:v34, v36, v35];
  }

  v39 = [*(a1 + 56) trailingString];

  if (v39)
  {
    v40 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
    v41 = [*(a1 + 56) trailingString];
    [v41 drawWithRect:33 options:v40 context:{v56[1].origin.x, v56[1].origin.y, v56[1].size.width, v56[1].size.height}];

    [v40 totalBounds];
    v42 = CGRectGetWidth(v63) + 2.0;
    v43 = v56;
    v56[1].size.width = v56[1].size.width - v42;
    if (*(a1 + 112) == 1)
    {
      v43[1].origin.x = v42 + v43[1].origin.x;
    }
  }

  v44 = [*(a1 + 56) trailingString];
  if (!v44 || (v45 = CGRectGetWidth(v56[1]) < 10.0, v44, !v45))
  {
    v46 = [*(a1 + 56) nonNilComponents];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __141__CUIKOccurrenceRenderer_renderingBlockForStrings_withSize_font_edgeInsets_leadingIcon_trailingIcons_outImageSize_shouldAutoHideLeadingIcon___block_invoke_2;
    v48[3] = &unk_1E839A5F8;
    v50 = &v55;
    v47 = v46;
    v49 = v47;
    [v47 enumerateObjectsUsingBlock:v48];
  }

  _Block_object_dispose(&v55, 8);
}

void __141__CUIKOccurrenceRenderer_renderingBlockForStrings_withSize_font_edgeInsets_leadingIcon_trailingIcons_outImageSize_shouldAutoHideLeadingIcon___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  [v8 boundingRectWithSize:33 options:0 context:{*(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
  Height = CGRectGetHeight(v10);
  if (Height > CGRectGetHeight(*(*(*(a1 + 40) + 8) + 32)))
  {
    goto LABEL_5;
  }

  [v8 drawWithRect:33 options:0 context:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
  *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 56) - Height;
  *(*(*(a1 + 40) + 8) + 40) = Height + *(*(*(a1 + 40) + 8) + 40);
  if ([*(a1 + 32) count] - 1 != a3)
  {
    *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 56) + -1.0;
    *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 40) + 8) + 40) + 1.0;
  }

  if (CGRectGetHeight(*(*(*(a1 + 40) + 8) + 32)) <= 0.0)
  {
LABEL_5:
    *a4 = 1;
  }
}

@end