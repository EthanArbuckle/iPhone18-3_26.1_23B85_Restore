@interface JFXEffectTextEditingProperties
+ (id)textEditingPropertiesWithTextEffect:(id)a3 withText:(id)a4 relativeTo:(CGRect)a5 atTime:(id *)a6 index:(unint64_t)a7 moveBeforeScalingToAvoidKeyboard:(BOOL)a8;
- (CGAffineTransform)partialTransformNoScaleNoTranslation;
- (CGPoint)scale;
- (CGRect)bounds;
- (CGRect)cachedBounds;
- (CGRect)cachedFrame;
- (CGRect)frame;
- (JFXEffectTextEditingProperties)initWithTextEffect:(id)a3 withText:(id)a4 relativeTo:(CGRect)a5 atTime:(id *)a6 index:(unint64_t)a7 moveBeforeScalingToAvoidKeyboard:(BOOL)a8;
- (double)rotation;
- (id)description;
- (void)JFX_configureWithAttributedString:(id)a3 text:(id)a4;
- (void)JFX_configureWithDefaultTypingAttributes:(id)a3;
- (void)JFX_configureWithEffect:(id)a3;
- (void)JFX_modifyAttributedString:(id)a3;
- (void)JFX_modifyEntireAttributedString:(id)a3 forTargetSize:(CGSize)a4 fontColor:(id)a5;
- (void)JFX_modifyRangesOfAttributedString:(id)a3 isOutlineDisabled:(BOOL)a4;
@end

@implementation JFXEffectTextEditingProperties

+ (id)textEditingPropertiesWithTextEffect:(id)a3 withText:(id)a4 relativeTo:(CGRect)a5 atTime:(id *)a6 index:(unint64_t)a7 moveBeforeScalingToAvoidKeyboard:(BOOL)a8
{
  v8 = a8;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v17 = a4;
  v18 = a3;
  v19 = [a1 alloc];
  v22 = *a6;
  v20 = [v19 initWithTextEffect:v18 withText:v17 relativeTo:&v22 atTime:a7 index:v8 moveBeforeScalingToAvoidKeyboard:{x, y, width, height}];

  return v20;
}

- (JFXEffectTextEditingProperties)initWithTextEffect:(id)a3 withText:(id)a4 relativeTo:(CGRect)a5 atTime:(id *)a6 index:(unint64_t)a7 moveBeforeScalingToAvoidKeyboard:(BOOL)a8
{
  v8 = a8;
  height = a5.size.height;
  width = a5.size.width;
  v15 = a3;
  v16 = a4;
  v17 = [v15 strings];
  if ([v17 count] <= a7)
  {
    v34 = 0;
  }

  else
  {
    v37 = *&a6->var0;
    var3 = a6->var3;
    v18 = [JFXTextEffectFrame frameWithEffect:v15 relativeToSize:1 origin:&v37 time:0 forcePosterFrame:0 includeDropShadow:1 includeTextFrames:width, height];
    v19 = [v18 textFrames];
    v20 = [v19 count];

    if (v20 <= a7)
    {
      v34 = 0;
    }

    else
    {
      v36.receiver = self;
      v36.super_class = JFXEffectTextEditingProperties;
      v21 = [(JFXEffectTextEditingProperties *)&v36 init];
      if (v21)
      {
        v22 = [v15 effectID];
        -[JFXEffectTextEditingProperties setIsSpecialCaseForGameOverPoster:](v21, "setIsSpecialCaseForGameOverPoster:", [v22 isEqualToString:*MEMORY[0x277D419A8]]);

        v23 = *MEMORY[0x277CBF398];
        v24 = *(MEMORY[0x277CBF398] + 8);
        v25 = *(MEMORY[0x277CBF398] + 16);
        v26 = *(MEMORY[0x277CBF398] + 24);
        [(JFXEffectTextEditingProperties *)v21 setCachedFrame:*MEMORY[0x277CBF398], v24, v25, v26];
        [(JFXEffectTextEditingProperties *)v21 setCachedBounds:v23, v24, v25, v26];
        [(JFXEffectTextEditingProperties *)v21 setMoveBeforeScalingToAvoidKeyboard:v8];
        [(JFXEffectTextEditingProperties *)v21 JFX_configureWithEffect:v15];
        v27 = [v15 indexOfTextObjectUsedForEditViewTransform];
        v28 = [v18 textFrames];
        v29 = [v28 objectAtIndexedSubscript:v27];
        [(JFXEffectTextEditingProperties *)v21 setEffectFrame:v29];

        v30 = [v17 objectAtIndexedSubscript:a7];
        [(JFXEffectTextEditingProperties *)v21 JFX_configureWithAttributedString:v30 text:v16];

        v31 = [v15 defaultTypingAttributes:a7];
        [(JFXEffectTextEditingProperties *)v21 JFX_configureWithDefaultTypingAttributes:v31];

        v32 = MEMORY[0x277D415F8];
        v33 = [(JFXEffectTextEditingProperties *)v21 defaultTypingAttributes];
        -[JFXEffectTextEditingProperties setIsAllCaps:](v21, "setIsAllCaps:", [v32 isAllCapsFromAttributes:v33]);
      }

      self = v21;
      v34 = self;
    }
  }

  return v34;
}

- (void)JFX_configureWithEffect:(id)a3
{
  v10 = a3;
  v4 = [v10 effectID];
  [(JFXEffectTextEditingProperties *)self setUseFullTransform:[JFXEffectEditingUtilities shouldUseFullTransformWhileEditingTextForEffectID:v4]];

  v5 = [v10 customTextEditColor];
  [(JFXEffectTextEditingProperties *)self setCustomTextColor:v5];

  v6 = [v10 customTextEditTintColor];
  [(JFXEffectTextEditingProperties *)self setCustomTextEditTintColor:v6];

  v7 = [v10 effectID];
  [(JFXEffectTextEditingProperties *)self setOutlineDisabled:[JFXEffectEditingUtilities shouldDisableTextOutlineWhileEditingTextForEffectID:v7]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v10;
    -[JFXEffectTextEditingProperties setIsEmoji:](self, "setIsEmoji:", [v8 isEmoji]);
    v9 = [v8 isTextFlipped];

    [(JFXEffectTextEditingProperties *)self setIsTextFlipped:v9];
  }

  else
  {
    [(JFXEffectTextEditingProperties *)self setIsEmoji:0];
  }
}

- (void)JFX_configureWithAttributedString:(id)a3 text:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v6 && [v13 length])
  {
    v7 = [v6 length];
    v8 = [v13 length];
    if (v7 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = [v13 attributesAtIndex:0 longestEffectiveRange:0 inRange:{0, v9}];
    v11 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v6 attributes:v10];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v13];
  }

  [MEMORY[0x277D415F8] baselineOffsetFromAttributedString:v11];
  [(JFXEffectTextEditingProperties *)self setBaselineYOffset:?];
  [(JFXEffectTextEditingProperties *)self JFX_modifyAttributedString:v11];
  if ([v11 length])
  {
    v12 = [v11 attribute:@"TXNumSoftLines" atIndex:0 effectiveRange:0];
    -[JFXEffectTextEditingProperties setNumberOfLines:](self, "setNumberOfLines:", [v12 unsignedIntegerValue]);
  }

  else
  {
    [(JFXEffectTextEditingProperties *)self setNumberOfLines:1];
  }

  [(JFXEffectTextEditingProperties *)self setAttributedText:v11];
}

- (void)JFX_configureWithDefaultTypingAttributes:(id)a3
{
  v4 = MEMORY[0x277CCAB48];
  v5 = a3;
  v10 = [[v4 alloc] initWithString:@" " attributes:v5];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D740C0]];

  [(JFXEffectTextEditingProperties *)self setDefaultTextColor:v6];
  [(JFXEffectTextEditingProperties *)self JFX_modifyAttributedString:v10];
  v7 = [v10 attributesAtIndex:0 effectiveRange:0];
  [(JFXEffectTextEditingProperties *)self setDefaultTypingAttributes:v7];

  v8 = [(JFXEffectTextEditingProperties *)self defaultTypingAttributes];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D74118]];

  -[JFXEffectTextEditingProperties setTextAlignment:](self, "setTextAlignment:", [v9 alignment]);
}

- (void)JFX_modifyAttributedString:(id)a3
{
  v9 = a3;
  if ([v9 length])
  {
    [v9 size];
    v5 = v4;
    v7 = v6;
    [v9 beginEditing];
    [(JFXEffectTextEditingProperties *)self JFX_modifyRangesOfAttributedString:v9 isOutlineDisabled:[(JFXEffectTextEditingProperties *)self isOutlineDisabled]];
    v8 = [(JFXEffectTextEditingProperties *)self customTextColor];
    [(JFXEffectTextEditingProperties *)self JFX_modifyEntireAttributedString:v9 forTargetSize:v8 fontColor:v5, v7];

    [v9 endEditing];
  }
}

- (void)JFX_modifyRangesOfAttributedString:(id)a3 isOutlineDisabled:(BOOL)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = 1.0;
    v8 = 1.0;
    if (![(JFXEffectTextEditingProperties *)self useFullTransform])
    {
      [(JFXEffectTextEditingProperties *)self scale];
      v7 = v9;
      v8 = v10;
    }

    v11 = [v6 length];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__JFXEffectTextEditingProperties_JFX_modifyRangesOfAttributedString_isOutlineDisabled___block_invoke;
    v12[3] = &unk_278D7BF40;
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v16 = a4;
    [v13 enumerateAttributesInRange:0 options:v11 usingBlock:{0, v12}];
  }
}

void __87__JFXEffectTextEditingProperties_JFX_modifyRangesOfAttributedString_isOutlineDisabled___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  [MEMORY[0x277D415F8] modifyAttributedStringByApplyingSubstituteFont:*(a1 + 32) attributes:v7 range:{a3, a4}];
  [MEMORY[0x277D415F8] modifyAttributedStringByAdjustingKerning:*(a1 + 32) attributes:v7 range:a3 scale:{a4, *(a1 + 40)}];
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) removeAttribute:*MEMORY[0x277D74160] range:{a3, a4}];
  }

  else
  {
    [MEMORY[0x277D415F8] modifyAttributedStringByAdjustingOutline:*(a1 + 32) attributes:v7 range:a3 scale:{a4, *(a1 + 40)}];
  }
}

- (void)JFX_modifyEntireAttributedString:(id)a3 forTargetSize:(CGSize)a4 fontColor:(id)a5
{
  height = a4.height;
  width = a4.width;
  v20 = a3;
  v9 = a5;
  if ([v20 length])
  {
    v10 = 1.0;
    v11 = 1.0;
    if (![(JFXEffectTextEditingProperties *)self useFullTransform])
    {
      [(JFXEffectTextEditingProperties *)self scale];
      v10 = v12;
      v11 = v13;
    }

    v14 = [(JFXEffectTextEditingProperties *)self isSpecialCaseForGameOverPoster];
    v15 = v10 * 0.73;
    if (v14)
    {
      v11 = v11 * 0.73;
      v10 = v10 * 0.73;
    }

    [MEMORY[0x277D415F8] modifyAttributedStringByAdjustingFontSize:v20 scale:{v10, v15}];
    [v20 removeAttribute:*MEMORY[0x277D74078] range:{0, objc_msgSend(v20, "length")}];
    [MEMORY[0x277D415F8] modifyAttributedStringByAdjustingForNegativeLineSpacing:v20 scale:v10];
    v16 = MEMORY[0x277D415F8];
    [(JFXEffectTextEditingProperties *)self rotation];
    [v16 modifyAttributedStringByAdjustingShadow:v20 scale:v10 rotation:v17];
    if (v9)
    {
      v18 = [v20 length];
      v19 = *MEMORY[0x277D740C0];
      [v20 removeAttribute:*MEMORY[0x277D740C0] range:{0, v18}];
      [v20 addAttribute:v19 value:v9 range:{0, v18}];
    }

    if (![(JFXEffectTextEditingProperties *)self isSpecialCaseForGameOverPoster])
    {
      [MEMORY[0x277D415F8] modifyAttributedStringByAdjustingFont:v20 toFitSize:{width * v10, height * v11}];
    }
  }
}

- (CGRect)frame
{
  [(JFXEffectTextEditingProperties *)self cachedFrame];
  if (CGRectIsNull(v44))
  {
    v3 = [(JFXEffectTextEditingProperties *)self effectFrame];
    [v3 center];
    v5 = v4;
    v7 = v6;

    memset(&v42, 0, sizeof(v42));
    CGAffineTransformMakeTranslation(&t1, -v5, -v7);
    [(JFXEffectTextEditingProperties *)self rotation];
    CGAffineTransformMakeRotation(&t2, -(v8 + -3.14159265));
    CGAffineTransformConcat(&v38, &t1, &t2);
    CGAffineTransformMakeTranslation(&t1, v5, v7);
    CGAffineTransformConcat(&v42, &v38, &t1);
    v38.a = 0.0;
    *&v38.b = &v38;
    *&v38.c = 0x6010000000;
    *&v38.d = "";
    *&v38.tx = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = [(JFXEffectTextEditingProperties *)self effectFrame];
    v10 = v9;
    if (v9)
    {
      [v9 cornerPoints];
    }

    else
    {
      v37 = 0;
      memset(&t2, 0, sizeof(t2));
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v35 = v42;
    v32 = __39__JFXEffectTextEditingProperties_frame__block_invoke;
    v33 = &unk_278D7BF68;
    v34 = &v38;
    v19 = v31;
    v20 = 0;
    do
    {
      t1.a = *&t2.a;
      t1.b = *&t2.c;
      t1.c = *&t2.tx;
      t1.d = v37;
      PVCGPointQuad_get_point_at_index(&t1);
      (v32)(v19, v20);
      v20 = (v20 + 1);
    }

    while (v20 != 4);

    v21 = *(*&v38.b + 48);
    t1.a = *(*&v38.b + 32);
    t1.b = v21;
    v22 = *(*&v38.b + 80);
    t1.c = *(*&v38.b + 64);
    t1.d = v22;
    pv_bounding_CGRect(&t1);
    v12 = v23;
    v14 = v24;
    v16 = v25;
    v18 = v26;
    if ([(JFXEffectTextEditingProperties *)self isSpecialCaseForGameOverPoster])
    {
      v12 = v12 + (v16 - v16 * 0.73) * 0.5;
      v14 = v14 + (v18 - v18 * 0.73) * 0.5;
      v18 = v18 * 0.73;
      v16 = v16 * 0.73;
    }

    [(JFXEffectTextEditingProperties *)self setCachedFrame:v12, v14, v16, v18];
    _Block_object_dispose(&v38, 8);
  }

  else
  {
    [(JFXEffectTextEditingProperties *)self cachedFrame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  v27 = v12;
  v28 = v14;
  v29 = v16;
  v30 = v18;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

uint64_t __39__JFXEffectTextEditingProperties_frame__block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = vaddq_f64(*(a1 + 72), vmlaq_n_f64(vmulq_n_f64(*(a1 + 56), a3), *(a1 + 40), a2));
  y = v3.y;
  return PVCGPointQuad_set_point_at_index((*(*(a1 + 32) + 8) + 32), v3);
}

- (CGRect)bounds
{
  [(JFXEffectTextEditingProperties *)self cachedBounds];
  if (CGRectIsNull(v18))
  {
    [(JFXEffectTextEditingProperties *)self frame];
    v3 = CGRectMakeWithSize();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [(JFXEffectTextEditingProperties *)self setCachedBounds:?];
  }

  else
  {
    [(JFXEffectTextEditingProperties *)self cachedBounds];
    v3 = v10;
    v5 = v11;
    v7 = v12;
    v9 = v13;
  }

  v14 = v3;
  v15 = v5;
  v16 = v7;
  v17 = v9;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGPoint)scale
{
  v3 = [(JFXEffectTextEditingProperties *)self cachedScale];

  if (v3)
  {
    v4 = [(JFXEffectTextEditingProperties *)self cachedScale];
    [v4 CGPointValue];
    v18 = v5;
    v7 = v6;
  }

  else
  {
    v19 = 0u;
    v8 = [(JFXEffectTextEditingProperties *)self effectFrame];
    v9 = v8;
    if (v8)
    {
      [v8 transformInfo];
    }

    else
    {
      v19 = 0u;
    }

    v10 = [(JFXEffectTextEditingProperties *)self isSpecialCaseForGameOverPoster];
    v11 = vmaxnmq_f64(vabsq_f64(v19), vdupq_n_s64(0x3F50624DD2F1A9FCuLL));
    v12 = vdup_n_s32(v10);
    v13.i64[0] = v12.u32[0];
    v13.i64[1] = v12.u32[1];
    v14 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v13, 0x3FuLL)), vmulq_f64(v11, vdupq_n_s64(0x3FE75C28F5C28F5CuLL)), v11);
    v7 = *&v14.i64[1];
    v18 = *v14.i64;
    v15 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
    [(JFXEffectTextEditingProperties *)self setCachedScale:v15];
  }

  v16 = v18;
  v17 = v7;
  result.y = v17;
  result.x = v16;
  return result;
}

- (double)rotation
{
  v3 = [(JFXEffectTextEditingProperties *)self cachedRotation];

  if (v3)
  {
    v4 = [(JFXEffectTextEditingProperties *)self cachedRotation];
    [v4 doubleValue];
    v6 = v5;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v7 = [(JFXEffectTextEditingProperties *)self effectFrame];
    v8 = v7;
    if (v7)
    {
      [v7 transformInfo];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    pv_simd_quaternion_get_euler_angles();
    v6 = 0.0 + 3.14159265;
    if ([(JFXEffectTextEditingProperties *)self isTextFlipped:v11])
    {
      v6 = v6 + -3.14159265;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    [(JFXEffectTextEditingProperties *)self setCachedRotation:v9];
  }

  return v6;
}

- (CGAffineTransform)partialTransformNoScaleNoTranslation
{
  result = [(JFXEffectTextEditingProperties *)self isSpecialCaseForGameOverPoster];
  if (result)
  {
    v6 = MEMORY[0x277CBF2C0];
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v7;
    *&retstr->tx = *(v6 + 32);
  }

  else
  {
    v8 = [(JFXEffectTextEditingProperties *)self cachedPartialTransformNoScaleNoTranslation];

    if (v8)
    {
      v9 = [(JFXEffectTextEditingProperties *)self cachedPartialTransformNoScaleNoTranslation];
      v10 = v9;
      if (v9)
      {
        [v9 SIMDDouble4x4];
        v11 = v53;
        v12 = v55;
        v13 = v59;
      }

      else
      {
        v13 = 0uLL;
        v12 = 0uLL;
        v11 = 0uLL;
      }

      *&retstr->a = v11;
      *&retstr->c = v12;
      *&retstr->tx = v13;
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v14 = [(JFXEffectTextEditingProperties *)self effectFrame];
      v15 = v14;
      if (v14)
      {
        [v14 transform];
      }

      else
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
      }

      *&v16 = 0;
      *(&v16 + 1) = *(&v52 + 1);
      v51 = 0u;
      v52 = v16;
      [(JFXEffectTextEditingProperties *)self scale];
      *&v28 = 1.0 / v17;
      [(JFXEffectTextEditingProperties *)self scale];
      v19 = v18;
      pv_simd_normalize();
      v20 = 0;
      *&v21 = 0;
      *(&v21 + 1) = -1.0 / v19;
      v53 = v28;
      v54 = 0u;
      v55 = v21;
      v56 = 0u;
      v57 = 0u;
      v58 = xmmword_242B5B860;
      v59 = 0u;
      v60 = xmmword_242B5B850;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      do
      {
        v23 = *(&v53 + v20);
        v22 = *(&v53 + v20 + 16);
        v24 = (&v37 + v20);
        *v24 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v29, v23.f64[0]), v31, v23, 1), v33, v22.f64[0]), v35, v22, 1);
        v24[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v30, v23.f64[0]), v32, v23, 1), v34, v22.f64[0]), v36, v22, 1);
        v20 += 32;
      }

      while (v20 != 128);
      v49 = v41;
      v50 = v42;
      v51 = v43;
      v52 = v44;
      v45 = v37;
      v46 = v38;
      v47 = v39;
      v48 = v40;
      v57 = v41;
      v58 = v42;
      v59 = v43;
      v60 = v44;
      v53 = v37;
      v54 = v38;
      v55 = v39;
      v56 = v40;
      v25 = [MEMORY[0x277D41690] matrixWithSIMDDouble4x4:&v53];
      [(JFXEffectTextEditingProperties *)self setCachedPartialTransformNoScaleNoTranslation:v25];

      v26 = v47;
      v27 = v51;
      *&retstr->a = v45;
      *&retstr->c = v26;
      *&retstr->tx = v27;
    }
  }

  return result;
}

- (id)description
{
  v20 = MEMORY[0x277CCACA8];
  v26.receiver = self;
  v26.super_class = JFXEffectTextEditingProperties;
  v19 = [(JFXEffectTextEditingProperties *)&v26 description];
  v24 = [(JFXEffectTextEditingProperties *)self attributedText];
  v23 = [(JFXEffectTextEditingProperties *)self defaultTypingAttributes];
  [(JFXEffectTextEditingProperties *)self bounds];
  v18 = NSStringFromCGRect(v28);
  [(JFXEffectTextEditingProperties *)self frame];
  v17 = NSStringFromCGRect(v29);
  v3 = MEMORY[0x277CCAE60];
  [(JFXEffectTextEditingProperties *)self scale];
  v25[0] = v4;
  v25[1] = v5;
  v22 = [v3 valueWithBytes:v25 objCType:"{CGPoint=dd}"];
  v6 = MEMORY[0x277CCABB0];
  [(JFXEffectTextEditingProperties *)self rotation];
  v15 = [v6 numberWithDouble:?];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXEffectTextEditingProperties useFullTransform](self, "useFullTransform")}];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXEffectTextEditingProperties isAllCaps](self, "isAllCaps")}];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXEffectTextEditingProperties isEmoji](self, "isEmoji")}];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXEffectTextEditingProperties isTextFlipped](self, "isTextFlipped")}];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXEffectTextEditingProperties isOutlineDisabled](self, "isOutlineDisabled")}];
  v10 = [(JFXEffectTextEditingProperties *)self customTextEditTintColor];
  v11 = [(JFXEffectTextEditingProperties *)self customTextColor];
  v12 = [(JFXEffectTextEditingProperties *)self effectFrame];
  v21 = [v20 stringWithFormat:@"%@\n    attributedText: %@\n    defaultTypingAttributes: %@\n    bounds: %@\n    frame: %@\n    scale: %@\n    rotation: %@\n    useFullTransform: %@\n    isAllCaps: %@\n    isEmoji: %@\n    isTextFlipped: %@\n    isOutlineDisabled: %@\n    customTextEditTintColor: %@\n    customTextColor: %@\n    effectFrame:\n%@\n", v19, v24, v23, v18, v17, v22, v15, v16, v14, v7, v8, v9, v10, v11, v12];

  return v21;
}

- (CGRect)cachedFrame
{
  x = self->_cachedFrame.origin.x;
  y = self->_cachedFrame.origin.y;
  width = self->_cachedFrame.size.width;
  height = self->_cachedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cachedBounds
{
  x = self->_cachedBounds.origin.x;
  y = self->_cachedBounds.origin.y;
  width = self->_cachedBounds.size.width;
  height = self->_cachedBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end