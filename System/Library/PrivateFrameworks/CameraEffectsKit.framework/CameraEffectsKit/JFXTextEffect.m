@interface JFXTextEffect
- (BOOL)isAppearanceEqual:(id)a3 forPurpose:(unint64_t)a4;
- (BOOL)textBakedIn;
- (BOOL)textBounds:(CGRect *)a3 atIndex:(unint64_t)a4 time:(id *)a5 forcePosterFrame:(BOOL)a6 includeDropShadow:(BOOL)a7 includeMasks:(BOOL)a8;
- (PVCGPointQuad)textCornersAtIndex:(SEL)a3 time:(unint64_t)a4 forcePosterFrame:(id *)a5 includeDropShadow:(BOOL)a6 scale:(BOOL)a7 relativeTo:(CGPoint)a8 basisOrigin:(CGRect)a9;
- (UIColor)customTextEditTintColor;
- (id)contentProperties;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customTextEditColor;
- (id)defaultAttributedString:(unint64_t)a3;
- (id)defaultTypingAttributes:(unint64_t)a3;
- (id)editUIProperties;
- (id)localizedDefaultFontName;
- (id)localizedDefaultText;
- (id)strings;
- (id)textBoundsAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeDropShadow:(BOOL)a5 includeMasks:(BOOL)a6;
- (id)textEffectContentDataSource;
- (id)textFrameAtIndex:(unint64_t)a3 time:(id *)a4 forcePosterFrame:(BOOL)a5 includeDropShadow:(BOOL)a6 relativeTo:(CGRect)a7 basisOrigin:(int)a8;
- (id)textFramesAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeDropShadow:(BOOL)a5 relativeTo:(CGRect)a6 basisOrigin:(int)a7;
- (int64_t)textHitTest:(CGPoint)a3 time:(id *)a4 relativeTo:(CGRect)a5 basisOrigin:(int)a6;
- (unint64_t)maxCharacters;
- (void)beginTextEditing;
- (void)enableDynamicLineSpacingForDiacritics:(BOOL)a3;
- (void)endTextEditing;
- (void)setFont:(id)a3 atIndex:(unint64_t)a4;
- (void)setFontScale:(float)a3 atIndex:(unint64_t)a4;
- (void)setFontSize:(float)a3 atIndex:(unint64_t)a4;
- (void)setString:(id)a3 atIndex:(unint64_t)a4;
- (void)setupLocalizedText;
@end

@implementation JFXTextEffect

- (id)localizedDefaultText
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXTextEffect *)self textEffectContentDataSource];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 localizedDefaultText];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = [(JFXEffect *)self effectID];
    v8 = [v7 stringByAppendingString:@"_DEFAULT_TEXT"];

    v9 = MEMORY[0x277CCA8D8];
    v5 = v8;
    v10 = [v9 jfxBundle];
    v11 = [v10 localizedStringForKey:v5 value:&stru_28553D028 table:0];

    if ([v11 isEqualToString:v5])
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    v6 = v12;
  }

  return v6;
}

- (id)localizedDefaultFontName
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXTextEffect *)self textEffectContentDataSource];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 localizedDefaultFontName];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = [(JFXEffect *)self effectID];
    v8 = [v7 stringByAppendingString:@"_FONT"];

    v9 = MEMORY[0x277CCA8D8];
    v5 = v8;
    v10 = [v9 jfxBundle];
    v11 = [v10 localizedStringForKey:v5 value:&stru_28553D028 table:0];

    if ([v11 isEqualToString:v5])
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    v6 = v12;
  }

  return v6;
}

- (void)setupLocalizedText
{
  a2->receiver = a1;
  a2->super_class = JFXTextEffect;
  v3 = [(objc_super *)a2 description];
  v4 = [a1 effectID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2(&dword_242A3B000, v5, v6, "The font for '%@-%@' is not localized and there is no Default Text.", v7, v8, v9, v10, v11);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = JFXTextEffect;
  return [(JFXEffect *)&v4 copyWithZone:a3];
}

- (BOOL)isAppearanceEqual:(id)a3 forPurpose:(unint64_t)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = JFXTextEffect;
  if ([(JFXEffect *)&v15 isAppearanceEqual:v6 forPurpose:a4])
  {
    v7 = *MEMORY[0x277D41B28];
    v8 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41B28]];
    v9 = [v6 parameterForKey:v7];
    if (v8 == v9 || [v8 isEqualToString:v9])
    {
      v10 = *MEMORY[0x277D41B48];
      v11 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41B48]];
      v12 = [v6 parameterForKey:v10];
      if (v11 == v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = [v11 isEqualToString:v12];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)textEffectContentDataSource
{
  v3 = [(JFXEffect *)self contentDataSource];
  if (v3)
  {
    v4 = v3;
    v5 = [(JFXEffect *)self contentDataSource];
    v6 = [v5 conformsToProtocol:&unk_2855DAE48];

    if (v6)
    {
      v3 = [(JFXEffect *)self contentDataSource];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)contentProperties
{
  v3 = [(JFXTextEffect *)self textEffectContentDataSource];
  if (v3)
  {
    v22.receiver = self;
    v22.super_class = JFXTextEffect;
    v4 = [(JFXEffect *)&v22 contentProperties];
    v5 = [v4 mutableCopy];

    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
    v7 = [v3 localizedDefaultText];

    if (v7)
    {
      v8 = [v3 localizedDefaultText];
      [v6 setObject:v8 forKeyedSubscript:@"localizedDefaultText"];
    }

    v9 = [v3 localizedDefaultFontName];

    if (v9)
    {
      v10 = [v3 localizedDefaultFontName];
      [v6 setObject:v10 forKeyedSubscript:@"localizedDefaultFontName"];
    }

    v11 = [v3 renderTextWithMotionWhenEditing];

    if (v11)
    {
      v12 = [v3 renderTextWithMotionWhenEditing];
      [v6 setObject:v12 forKeyedSubscript:@"renderTextWithMotionWhenEditing"];
    }

    v13 = [v3 textEditColor];

    if (v13)
    {
      v14 = [v3 textEditColor];
      [v6 setObject:v14 forKeyedSubscript:@"textEditColor"];
    }

    v15 = [v3 textEditSelectionTintColor];

    if (v15)
    {
      v16 = [v3 textEditSelectionTintColor];
      [v6 setObject:v16 forKeyedSubscript:@"textEditSelectionTintColor"];
    }

    v17 = [v3 maxCharacters];

    if (v17)
    {
      v18 = [v3 maxCharacters];
      [v6 setObject:v18 forKeyedSubscript:@"maxCharacters"];
    }

    v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isTextBakedIn")}];
    [v6 setObject:v19 forKeyedSubscript:@"isTextBakedIn"];

    if (v5)
    {
      [v5 addEntriesFromDictionary:v6];
      v20 = v5;

      v6 = v20;
    }
  }

  else
  {
    v23.receiver = self;
    v23.super_class = JFXTextEffect;
    v6 = [(JFXEffect *)&v23 contentProperties];
  }

  return v6;
}

- (id)strings
{
  v2 = [(JFXEffect *)self renderEffect];
  v3 = [v2 effectParameters];

  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D41B28]];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D41B48]];
  if (v5)
  {
    [v4 addObject:v5];
  }

  if (v6)
  {
    [v4 addObject:v6];
  }

  return v4;
}

- (void)setString:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v10 = v6;
  v7 = MEMORY[0x277D41B28];
  if (a4)
  {
    v7 = MEMORY[0x277D41B48];
  }

  [(JFXEffect *)self setParameter:v6 forKey:*v7];
  if ([v10 length])
  {
    v8 = [v10 isEqualToString:@" "];
  }

  else
  {
    v8 = 1;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  [(JFXEffect *)self setParameter:v9 forKey:*MEMORY[0x277D41B00]];
}

- (void)enableDynamicLineSpacingForDiacritics:(BOOL)a3
{
  v4 = *MEMORY[0x277D41A58];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(JFXEffect *)self setParameter:v5 forKey:v4];
}

- (void)setFont:(id)a3 atIndex:(unint64_t)a4
{
  v4 = MEMORY[0x277D41B10];
  if (a4)
  {
    v4 = MEMORY[0x277D41B30];
  }

  [(JFXEffect *)self setParameter:a3 forKey:*v4];
}

- (void)setFontSize:(float)a3 atIndex:(unint64_t)a4
{
  v6 = MEMORY[0x277D41B20];
  if (a4)
  {
    v6 = MEMORY[0x277D41B40];
  }

  v7 = MEMORY[0x277CCABB0];
  v8 = *v6;
  *&v9 = a3;
  v10 = [v7 numberWithFloat:v9];
  [(JFXEffect *)self setParameter:v10 forKey:v8];
}

- (void)setFontScale:(float)a3 atIndex:(unint64_t)a4
{
  v6 = MEMORY[0x277D41B18];
  if (a4)
  {
    v6 = MEMORY[0x277D41B38];
  }

  v7 = MEMORY[0x277CCABB0];
  v8 = *v6;
  *&v9 = a3;
  v10 = [v7 numberWithFloat:v9];
  [(JFXEffect *)self setParameter:v10 forKey:v8];
}

- (id)defaultAttributedString:(unint64_t)a3
{
  v4 = [(JFXEffect *)self renderEffect];
  v5 = [v4 defaultAttributedString:a3];

  return v5;
}

- (id)defaultTypingAttributes:(unint64_t)a3
{
  v4 = [(JFXEffect *)self renderEffect];
  v5 = [v4 defaultAttributedString:a3];

  v6 = [v5 attributesAtIndex:0 effectiveRange:0];

  return v6;
}

- (id)textFramesAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeDropShadow:(BOOL)a5 relativeTo:(CGRect)a6 basisOrigin:(int)a7
{
  v10 = *a3;
  v7 = [JFXTextEffectFrame frameWithEffect:self relativeToSize:*&a7 origin:&v10 time:a4 forcePosterFrame:a5 includeDropShadow:1 includeTextFrames:a6.size.width, a6.size.height];
  v8 = [v7 textFrames];

  return v8;
}

- (id)textFrameAtIndex:(unint64_t)a3 time:(id *)a4 forcePosterFrame:(BOOL)a5 includeDropShadow:(BOOL)a6 relativeTo:(CGRect)a7 basisOrigin:(int)a8
{
  v12 = *a4;
  v9 = [(JFXTextEffect *)self textFramesAtTime:&v12 forcePosterFrame:a5 includeDropShadow:a6 relativeTo:*&a8 basisOrigin:a7.origin.x, a7.origin.y, a7.size.width, a7.size.height];
  if ([v9 count] <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v9 objectAtIndexedSubscript:a3];
  }

  return v10;
}

- (PVCGPointQuad)textCornersAtIndex:(SEL)a3 time:(unint64_t)a4 forcePosterFrame:(id *)a5 includeDropShadow:(BOOL)a6 scale:(BOOL)a7 relativeTo:(CGPoint)a8 basisOrigin:(CGRect)a9
{
  v10 = *&a10;
  v11 = a7;
  v12 = a6;
  height = a9.size.height;
  width = a9.size.width;
  y = a8.y;
  x = a8.x;
  retstr->c = 0u;
  retstr->d = 0u;
  retstr->a = 0u;
  retstr->b = 0u;
  v20 = [(JFXEffect *)self renderEffect];
  v21 = v20;
  if (v20)
  {
    v26 = *&a5->var0;
    var3 = a5->var3;
    [v20 textCornersAtTime:&v26 index:a4 forcePosterFrame:v12 includeDropShadow:v11 scale:v10 viewSize:x viewOrigin:{y, width, height}];
  }

  else
  {
    retstr->c = 0u;
    retstr->d = 0u;
    retstr->a = 0u;
    retstr->b = 0u;
  }

  if (v10 == 1)
  {
    c = retstr->c;
    a = retstr->a;
    b = retstr->b;
    retstr->a = retstr->d;
    retstr->b = c;
    retstr->c = b;
    retstr->d = a;
  }

  return result;
}

- (id)textBoundsAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeDropShadow:(BOOL)a5 includeMasks:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = [(JFXEffect *)self renderEffect];
  v13 = *a3;
  v11 = [v10 textEditingBoundsAtTime:&v13 forcePosterFrame:v8 useParagraphBounds:1 includeDropShadow:v7 includeMasks:v6];

  return v11;
}

- (BOOL)textBounds:(CGRect *)a3 atIndex:(unint64_t)a4 time:(id *)a5 forcePosterFrame:(BOOL)a6 includeDropShadow:(BOOL)a7 includeMasks:(BOOL)a8
{
  v19 = *a5;
  v10 = [(JFXTextEffect *)self textBoundsAtTime:&v19 forcePosterFrame:a6 includeDropShadow:a7 includeMasks:a8];
  v11 = [v10 count];
  if (v11 <= a4)
  {
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    a3->origin = *MEMORY[0x277CBF3A0];
    a3->size = v17;
  }

  else
  {
    v12 = [v10 objectAtIndexedSubscript:a4];
    [v12 CGRectValue];
    a3->origin.x = v13;
    a3->origin.y = v14;
    a3->size.width = v15;
    a3->size.height = v16;
  }

  return v11 > a4;
}

- (int64_t)textHitTest:(CGPoint)a3 time:(id *)a4 relativeTo:(CGRect)a5 basisOrigin:(int)a6
{
  v6 = *&a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3.y;
  v13 = a3.x;
  v15 = [(JFXTextEffect *)self strings];
  v16 = [v15 count];

  if (v16 < 1)
  {
    return -1;
  }

  v17 = 0;
  while (1)
  {
    memset(&v19[1], 0, sizeof(PVCGPointQuad));
    v19[0].a = *&a4->var0;
    *&v19[0].b.x = a4->var3;
    [(JFXTextEffect *)self textCornersAtIndex:v17 time:v19 forcePosterFrame:0 includeDropShadow:1 scale:v6 relativeTo:1.0 basisOrigin:1.0, x, y, width, height];
    v19[0] = v19[1];
    v20.x = v13;
    v20.y = v12;
    if (pv_is_CGPoint_in_quad(v20, v19))
    {
      break;
    }

    if (v16 == ++v17)
    {
      return -1;
    }
  }

  return v17;
}

- (void)beginTextEditing
{
  v2 = [(JFXEffect *)self renderEffect];
  [v2 beginTextEditing];
}

- (void)endTextEditing
{
  v2 = [(JFXEffect *)self renderEffect];
  [v2 endTextEditing];
}

- (unint64_t)maxCharacters
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (!v3)
  {
    return -1;
  }

  v4 = [(JFXTextEffect *)self textEffectContentDataSource];
  v5 = v4;
  if (v4 && ([v4 maxCharacters], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [v6 unsignedIntegerValue];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (BOOL)textBakedIn
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXTextEffect *)self textEffectContentDataSource];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 isTextBakedIn];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v5 = [(JFXTextEffect *)self editUIProperties];
    v7 = [(JFXEffect *)self effectID];
    v8 = [v5 objectForKeyedSubscript:v7];

    if (v8 && ([v8 objectForKey:kJFXEffectPropertiesTextEditDisableTextEditing], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      v6 = [v9 BOOLValue];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)customTextEditColor
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXTextEffect *)self textEffectContentDataSource];
    v5 = [v4 textEditColor];
  }

  else
  {
    v6 = [(JFXEffect *)self effectID];
    v7 = [JFXEffectEditingUtilities shouldRenderTextWithMotionWhileEditingTextForEffectID:v6];

    if (v7)
    {
      v5 = [MEMORY[0x277D75348] clearColor];
      goto LABEL_13;
    }

    v4 = [(JFXTextEffect *)self editUIProperties];
    v8 = [(JFXEffect *)self effectID];
    v9 = [v4 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:kJFXEffectPropertiesTextEditColorKey];
      if ([v10 count] >= 3)
      {
        v11 = MEMORY[0x277D75348];
        v12 = [v10 objectAtIndexedSubscript:0];
        [v12 doubleValue];
        v14 = v13;
        v15 = [v10 objectAtIndexedSubscript:1];
        [v15 doubleValue];
        v17 = v16;
        v18 = [v10 objectAtIndexedSubscript:2];
        [v18 doubleValue];
        v5 = [v11 colorWithRed:v14 green:v17 blue:v19 alpha:1.0];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_13:

  return v5;
}

- (UIColor)customTextEditTintColor
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = objc_opt_self();
    v5 = [v4 textEffectContentDataSource];
    v6 = [v5 textEditSelectionTintColor];
  }

  else
  {
    v4 = [(JFXTextEffect *)self editUIProperties];
    v7 = [(JFXEffect *)self effectID];
    v5 = [v4 objectForKeyedSubscript:v7];

    if (v5)
    {
      v8 = [v5 objectForKeyedSubscript:kJFXEffectPropertiesTextEditTintColorKey];
      v9 = v8;
      if (v8)
      {
        v10 = MEMORY[0x277D75348];
        v11 = [v8 objectAtIndexedSubscript:0];
        [v11 floatValue];
        v13 = v12;
        v14 = [v9 objectAtIndexedSubscript:1];
        [v14 floatValue];
        v16 = v15;
        v17 = [v9 objectAtIndexedSubscript:2];
        [v17 floatValue];
        v6 = [v10 colorWithRed:v13 green:v16 blue:v18 alpha:1.0];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)editUIProperties
{
  if (editUIProperties_onceToken != -1)
  {
    [JFXTextEffect editUIProperties];
  }

  v3 = editUIProperties_finalDict;

  return v3;
}

void __33__JFXTextEffect_editUIProperties__block_invoke()
{
  v43 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] jfxBundle];
  v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = editUIProperties_finalDict;
  editUIProperties_finalDict = v1;

  v3 = MEMORY[0x277CBEAC0];
  v4 = [v0 pathForResource:kJFXEffectPropertiesResourceFile ofType:kJFXEffectPropertiesPlistKey];
  v5 = [v3 dictionaryWithContentsOfFile:v4];

  if (v5)
  {
    v18 = v0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [v5 allKeys];
    v22 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v22)
    {
      v20 = *v37;
      v21 = v5;
      do
      {
        v6 = 0;
        do
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v23 = v6;
          v24 = [v5 objectForKeyedSubscript:*(*(&v36 + 1) + 8 * v6)];
          if (v24)
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v26 = [v24 countByEnumeratingWithState:&v32 objects:v41 count:16];
            if (v26)
            {
              v25 = *v33;
              do
              {
                v7 = 0;
                do
                {
                  if (*v33 != v25)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v27 = v7;
                  v8 = [*(*(&v32 + 1) + 8 * v7) objectForKeyedSubscript:kJFXEffectPropertiesEffectsKey];
                  v9 = v8;
                  if (v8)
                  {
                    v30 = 0u;
                    v31 = 0u;
                    v28 = 0u;
                    v29 = 0u;
                    v10 = [v8 countByEnumeratingWithState:&v28 objects:v40 count:16];
                    if (v10)
                    {
                      v11 = v10;
                      v12 = *v29;
                      do
                      {
                        for (i = 0; i != v11; ++i)
                        {
                          if (*v29 != v12)
                          {
                            objc_enumerationMutation(v9);
                          }

                          v14 = *(*(&v28 + 1) + 8 * i);
                          v15 = [v14 objectForKeyedSubscript:kJFXEffectPropertiesIdentifierKey];
                          if (v15)
                          {
                            v16 = editUIProperties_finalDict;
                            v17 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v14];
                            [v16 setValue:v17 forKey:v15];
                          }
                        }

                        v11 = [v9 countByEnumeratingWithState:&v28 objects:v40 count:16];
                      }

                      while (v11);
                    }
                  }

                  v7 = v27 + 1;
                }

                while (v27 + 1 != v26);
                v26 = [v24 countByEnumeratingWithState:&v32 objects:v41 count:16];
              }

              while (v26);
            }
          }

          v6 = v23 + 1;
          v5 = v21;
        }

        while (v23 + 1 != v22);
        v22 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v22);
    }

    v0 = v18;
  }
}

@end