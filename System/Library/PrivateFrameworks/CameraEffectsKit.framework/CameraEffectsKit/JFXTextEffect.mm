@interface JFXTextEffect
- (BOOL)isAppearanceEqual:(id)equal forPurpose:(unint64_t)purpose;
- (BOOL)textBakedIn;
- (BOOL)textBounds:(CGRect *)bounds atIndex:(unint64_t)index time:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeMasks:(BOOL)masks;
- (PVCGPointQuad)textCornersAtIndex:(SEL)index time:(unint64_t)time forcePosterFrame:(id *)frame includeDropShadow:(BOOL)shadow scale:(BOOL)scale relativeTo:(CGPoint)to basisOrigin:(CGRect)origin;
- (UIColor)customTextEditTintColor;
- (id)contentProperties;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customTextEditColor;
- (id)defaultAttributedString:(unint64_t)string;
- (id)defaultTypingAttributes:(unint64_t)attributes;
- (id)editUIProperties;
- (id)localizedDefaultFontName;
- (id)localizedDefaultText;
- (id)strings;
- (id)textBoundsAtTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeMasks:(BOOL)masks;
- (id)textEffectContentDataSource;
- (id)textFrameAtIndex:(unint64_t)index time:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow relativeTo:(CGRect)to basisOrigin:(int)origin;
- (id)textFramesAtTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow relativeTo:(CGRect)to basisOrigin:(int)origin;
- (int64_t)textHitTest:(CGPoint)test time:(id *)time relativeTo:(CGRect)to basisOrigin:(int)origin;
- (unint64_t)maxCharacters;
- (void)beginTextEditing;
- (void)enableDynamicLineSpacingForDiacritics:(BOOL)diacritics;
- (void)endTextEditing;
- (void)setFont:(id)font atIndex:(unint64_t)index;
- (void)setFontScale:(float)scale atIndex:(unint64_t)index;
- (void)setFontSize:(float)size atIndex:(unint64_t)index;
- (void)setString:(id)string atIndex:(unint64_t)index;
- (void)setupLocalizedText;
@end

@implementation JFXTextEffect

- (id)localizedDefaultText
{
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    textEffectContentDataSource = [(JFXTextEffect *)self textEffectContentDataSource];
    v5 = textEffectContentDataSource;
    if (textEffectContentDataSource)
    {
      localizedDefaultText = [textEffectContentDataSource localizedDefaultText];
    }

    else
    {
      localizedDefaultText = 0;
    }
  }

  else
  {
    effectID = [(JFXEffect *)self effectID];
    v8 = [effectID stringByAppendingString:@"_DEFAULT_TEXT"];

    v9 = MEMORY[0x277CCA8D8];
    v5 = v8;
    jfxBundle = [v9 jfxBundle];
    v11 = [jfxBundle localizedStringForKey:v5 value:&stru_28553D028 table:0];

    if ([v11 isEqualToString:v5])
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    localizedDefaultText = v12;
  }

  return localizedDefaultText;
}

- (id)localizedDefaultFontName
{
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    textEffectContentDataSource = [(JFXTextEffect *)self textEffectContentDataSource];
    v5 = textEffectContentDataSource;
    if (textEffectContentDataSource)
    {
      localizedDefaultFontName = [textEffectContentDataSource localizedDefaultFontName];
    }

    else
    {
      localizedDefaultFontName = 0;
    }
  }

  else
  {
    effectID = [(JFXEffect *)self effectID];
    v8 = [effectID stringByAppendingString:@"_FONT"];

    v9 = MEMORY[0x277CCA8D8];
    v5 = v8;
    jfxBundle = [v9 jfxBundle];
    v11 = [jfxBundle localizedStringForKey:v5 value:&stru_28553D028 table:0];

    if ([v11 isEqualToString:v5])
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    localizedDefaultFontName = v12;
  }

  return localizedDefaultFontName;
}

- (void)setupLocalizedText
{
  a2->receiver = self;
  a2->super_class = JFXTextEffect;
  v3 = [(objc_super *)a2 description];
  effectID = [self effectID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2(&dword_242A3B000, v5, v6, "The font for '%@-%@' is not localized and there is no Default Text.", v7, v8, v9, v10, v11);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = JFXTextEffect;
  return [(JFXEffect *)&v4 copyWithZone:zone];
}

- (BOOL)isAppearanceEqual:(id)equal forPurpose:(unint64_t)purpose
{
  equalCopy = equal;
  v15.receiver = self;
  v15.super_class = JFXTextEffect;
  if ([(JFXEffect *)&v15 isAppearanceEqual:equalCopy forPurpose:purpose])
  {
    v7 = *MEMORY[0x277D41B28];
    v8 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41B28]];
    v9 = [equalCopy parameterForKey:v7];
    if (v8 == v9 || [v8 isEqualToString:v9])
    {
      v10 = *MEMORY[0x277D41B48];
      v11 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41B48]];
      v12 = [equalCopy parameterForKey:v10];
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
  contentDataSource = [(JFXEffect *)self contentDataSource];
  if (contentDataSource)
  {
    v4 = contentDataSource;
    contentDataSource2 = [(JFXEffect *)self contentDataSource];
    v6 = [contentDataSource2 conformsToProtocol:&unk_2855DAE48];

    if (v6)
    {
      contentDataSource = [(JFXEffect *)self contentDataSource];
    }

    else
    {
      contentDataSource = 0;
    }
  }

  return contentDataSource;
}

- (id)contentProperties
{
  textEffectContentDataSource = [(JFXTextEffect *)self textEffectContentDataSource];
  if (textEffectContentDataSource)
  {
    v22.receiver = self;
    v22.super_class = JFXTextEffect;
    contentProperties = [(JFXEffect *)&v22 contentProperties];
    v5 = [contentProperties mutableCopy];

    contentProperties2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
    localizedDefaultText = [textEffectContentDataSource localizedDefaultText];

    if (localizedDefaultText)
    {
      localizedDefaultText2 = [textEffectContentDataSource localizedDefaultText];
      [contentProperties2 setObject:localizedDefaultText2 forKeyedSubscript:@"localizedDefaultText"];
    }

    localizedDefaultFontName = [textEffectContentDataSource localizedDefaultFontName];

    if (localizedDefaultFontName)
    {
      localizedDefaultFontName2 = [textEffectContentDataSource localizedDefaultFontName];
      [contentProperties2 setObject:localizedDefaultFontName2 forKeyedSubscript:@"localizedDefaultFontName"];
    }

    renderTextWithMotionWhenEditing = [textEffectContentDataSource renderTextWithMotionWhenEditing];

    if (renderTextWithMotionWhenEditing)
    {
      renderTextWithMotionWhenEditing2 = [textEffectContentDataSource renderTextWithMotionWhenEditing];
      [contentProperties2 setObject:renderTextWithMotionWhenEditing2 forKeyedSubscript:@"renderTextWithMotionWhenEditing"];
    }

    textEditColor = [textEffectContentDataSource textEditColor];

    if (textEditColor)
    {
      textEditColor2 = [textEffectContentDataSource textEditColor];
      [contentProperties2 setObject:textEditColor2 forKeyedSubscript:@"textEditColor"];
    }

    textEditSelectionTintColor = [textEffectContentDataSource textEditSelectionTintColor];

    if (textEditSelectionTintColor)
    {
      textEditSelectionTintColor2 = [textEffectContentDataSource textEditSelectionTintColor];
      [contentProperties2 setObject:textEditSelectionTintColor2 forKeyedSubscript:@"textEditSelectionTintColor"];
    }

    maxCharacters = [textEffectContentDataSource maxCharacters];

    if (maxCharacters)
    {
      maxCharacters2 = [textEffectContentDataSource maxCharacters];
      [contentProperties2 setObject:maxCharacters2 forKeyedSubscript:@"maxCharacters"];
    }

    v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(textEffectContentDataSource, "isTextBakedIn")}];
    [contentProperties2 setObject:v19 forKeyedSubscript:@"isTextBakedIn"];

    if (v5)
    {
      [v5 addEntriesFromDictionary:contentProperties2];
      v20 = v5;

      contentProperties2 = v20;
    }
  }

  else
  {
    v23.receiver = self;
    v23.super_class = JFXTextEffect;
    contentProperties2 = [(JFXEffect *)&v23 contentProperties];
  }

  return contentProperties2;
}

- (id)strings
{
  renderEffect = [(JFXEffect *)self renderEffect];
  effectParameters = [renderEffect effectParameters];

  v4 = objc_opt_new();
  v5 = [effectParameters objectForKeyedSubscript:*MEMORY[0x277D41B28]];
  v6 = [effectParameters objectForKeyedSubscript:*MEMORY[0x277D41B48]];
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

- (void)setString:(id)string atIndex:(unint64_t)index
{
  stringCopy = string;
  v10 = stringCopy;
  v7 = MEMORY[0x277D41B28];
  if (index)
  {
    v7 = MEMORY[0x277D41B48];
  }

  [(JFXEffect *)self setParameter:stringCopy forKey:*v7];
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

- (void)enableDynamicLineSpacingForDiacritics:(BOOL)diacritics
{
  v4 = *MEMORY[0x277D41A58];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:diacritics];
  [(JFXEffect *)self setParameter:v5 forKey:v4];
}

- (void)setFont:(id)font atIndex:(unint64_t)index
{
  v4 = MEMORY[0x277D41B10];
  if (index)
  {
    v4 = MEMORY[0x277D41B30];
  }

  [(JFXEffect *)self setParameter:font forKey:*v4];
}

- (void)setFontSize:(float)size atIndex:(unint64_t)index
{
  v6 = MEMORY[0x277D41B20];
  if (index)
  {
    v6 = MEMORY[0x277D41B40];
  }

  v7 = MEMORY[0x277CCABB0];
  v8 = *v6;
  *&v9 = size;
  v10 = [v7 numberWithFloat:v9];
  [(JFXEffect *)self setParameter:v10 forKey:v8];
}

- (void)setFontScale:(float)scale atIndex:(unint64_t)index
{
  v6 = MEMORY[0x277D41B18];
  if (index)
  {
    v6 = MEMORY[0x277D41B38];
  }

  v7 = MEMORY[0x277CCABB0];
  v8 = *v6;
  *&v9 = scale;
  v10 = [v7 numberWithFloat:v9];
  [(JFXEffect *)self setParameter:v10 forKey:v8];
}

- (id)defaultAttributedString:(unint64_t)string
{
  renderEffect = [(JFXEffect *)self renderEffect];
  v5 = [renderEffect defaultAttributedString:string];

  return v5;
}

- (id)defaultTypingAttributes:(unint64_t)attributes
{
  renderEffect = [(JFXEffect *)self renderEffect];
  v5 = [renderEffect defaultAttributedString:attributes];

  v6 = [v5 attributesAtIndex:0 effectiveRange:0];

  return v6;
}

- (id)textFramesAtTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow relativeTo:(CGRect)to basisOrigin:(int)origin
{
  v10 = *time;
  v7 = [JFXTextEffectFrame frameWithEffect:self relativeToSize:*&origin origin:&v10 time:frame forcePosterFrame:shadow includeDropShadow:1 includeTextFrames:to.size.width, to.size.height];
  textFrames = [v7 textFrames];

  return textFrames;
}

- (id)textFrameAtIndex:(unint64_t)index time:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow relativeTo:(CGRect)to basisOrigin:(int)origin
{
  v12 = *time;
  v9 = [(JFXTextEffect *)self textFramesAtTime:&v12 forcePosterFrame:frame includeDropShadow:shadow relativeTo:*&origin basisOrigin:to.origin.x, to.origin.y, to.size.width, to.size.height];
  if ([v9 count] <= index)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v9 objectAtIndexedSubscript:index];
  }

  return v10;
}

- (PVCGPointQuad)textCornersAtIndex:(SEL)index time:(unint64_t)time forcePosterFrame:(id *)frame includeDropShadow:(BOOL)shadow scale:(BOOL)scale relativeTo:(CGPoint)to basisOrigin:(CGRect)origin
{
  v10 = *&a10;
  scaleCopy = scale;
  shadowCopy = shadow;
  height = origin.size.height;
  width = origin.size.width;
  y = to.y;
  x = to.x;
  retstr->c = 0u;
  retstr->d = 0u;
  retstr->a = 0u;
  retstr->b = 0u;
  renderEffect = [(JFXEffect *)self renderEffect];
  v21 = renderEffect;
  if (renderEffect)
  {
    v26 = *&frame->var0;
    var3 = frame->var3;
    [renderEffect textCornersAtTime:&v26 index:time forcePosterFrame:shadowCopy includeDropShadow:scaleCopy scale:v10 viewSize:x viewOrigin:{y, width, height}];
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

- (id)textBoundsAtTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeMasks:(BOOL)masks
{
  masksCopy = masks;
  shadowCopy = shadow;
  frameCopy = frame;
  renderEffect = [(JFXEffect *)self renderEffect];
  v13 = *time;
  v11 = [renderEffect textEditingBoundsAtTime:&v13 forcePosterFrame:frameCopy useParagraphBounds:1 includeDropShadow:shadowCopy includeMasks:masksCopy];

  return v11;
}

- (BOOL)textBounds:(CGRect *)bounds atIndex:(unint64_t)index time:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeMasks:(BOOL)masks
{
  v19 = *time;
  v10 = [(JFXTextEffect *)self textBoundsAtTime:&v19 forcePosterFrame:frame includeDropShadow:shadow includeMasks:masks];
  v11 = [v10 count];
  if (v11 <= index)
  {
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    bounds->origin = *MEMORY[0x277CBF3A0];
    bounds->size = v17;
  }

  else
  {
    v12 = [v10 objectAtIndexedSubscript:index];
    [v12 CGRectValue];
    bounds->origin.x = v13;
    bounds->origin.y = v14;
    bounds->size.width = v15;
    bounds->size.height = v16;
  }

  return v11 > index;
}

- (int64_t)textHitTest:(CGPoint)test time:(id *)time relativeTo:(CGRect)to basisOrigin:(int)origin
{
  v6 = *&origin;
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  v12 = test.y;
  v13 = test.x;
  strings = [(JFXTextEffect *)self strings];
  v16 = [strings count];

  if (v16 < 1)
  {
    return -1;
  }

  v17 = 0;
  while (1)
  {
    memset(&v19[1], 0, sizeof(PVCGPointQuad));
    v19[0].a = *&time->var0;
    *&v19[0].b.x = time->var3;
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
  renderEffect = [(JFXEffect *)self renderEffect];
  [renderEffect beginTextEditing];
}

- (void)endTextEditing
{
  renderEffect = [(JFXEffect *)self renderEffect];
  [renderEffect endTextEditing];
}

- (unint64_t)maxCharacters
{
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (!contentDataSource)
  {
    return -1;
  }

  textEffectContentDataSource = [(JFXTextEffect *)self textEffectContentDataSource];
  v5 = textEffectContentDataSource;
  if (textEffectContentDataSource && ([textEffectContentDataSource maxCharacters], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = -1;
  }

  return unsignedIntegerValue;
}

- (BOOL)textBakedIn
{
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    textEffectContentDataSource = [(JFXTextEffect *)self textEffectContentDataSource];
    editUIProperties = textEffectContentDataSource;
    if (textEffectContentDataSource)
    {
      isTextBakedIn = [textEffectContentDataSource isTextBakedIn];
    }

    else
    {
      isTextBakedIn = 1;
    }
  }

  else
  {
    editUIProperties = [(JFXTextEffect *)self editUIProperties];
    effectID = [(JFXEffect *)self effectID];
    v8 = [editUIProperties objectForKeyedSubscript:effectID];

    if (v8 && ([v8 objectForKey:kJFXEffectPropertiesTextEditDisableTextEditing], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      isTextBakedIn = [v9 BOOLValue];
    }

    else
    {
      isTextBakedIn = 0;
    }
  }

  return isTextBakedIn;
}

- (id)customTextEditColor
{
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    textEffectContentDataSource = [(JFXTextEffect *)self textEffectContentDataSource];
    textEditColor = [textEffectContentDataSource textEditColor];
  }

  else
  {
    effectID = [(JFXEffect *)self effectID];
    v7 = [JFXEffectEditingUtilities shouldRenderTextWithMotionWhileEditingTextForEffectID:effectID];

    if (v7)
    {
      textEditColor = [MEMORY[0x277D75348] clearColor];
      goto LABEL_13;
    }

    textEffectContentDataSource = [(JFXTextEffect *)self editUIProperties];
    effectID2 = [(JFXEffect *)self effectID];
    v9 = [textEffectContentDataSource objectForKeyedSubscript:effectID2];

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
        textEditColor = [v11 colorWithRed:v14 green:v17 blue:v19 alpha:1.0];
      }

      else
      {
        textEditColor = 0;
      }
    }

    else
    {
      textEditColor = 0;
    }
  }

LABEL_13:

  return textEditColor;
}

- (UIColor)customTextEditTintColor
{
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    editUIProperties = objc_opt_self();
    textEffectContentDataSource = [editUIProperties textEffectContentDataSource];
    textEditSelectionTintColor = [textEffectContentDataSource textEditSelectionTintColor];
  }

  else
  {
    editUIProperties = [(JFXTextEffect *)self editUIProperties];
    effectID = [(JFXEffect *)self effectID];
    textEffectContentDataSource = [editUIProperties objectForKeyedSubscript:effectID];

    if (textEffectContentDataSource)
    {
      v8 = [textEffectContentDataSource objectForKeyedSubscript:kJFXEffectPropertiesTextEditTintColorKey];
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
        textEditSelectionTintColor = [v10 colorWithRed:v13 green:v16 blue:v18 alpha:1.0];
      }

      else
      {
        textEditSelectionTintColor = 0;
      }
    }

    else
    {
      textEditSelectionTintColor = 0;
    }
  }

  return textEditSelectionTintColor;
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