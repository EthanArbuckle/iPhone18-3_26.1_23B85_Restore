@interface OADParagraph
- (BOOL)hasBulletCharacterProperties;
- (BOOL)isEmpty;
- (BOOL)isSimilarToParagraph:(id)paragraph;
- (OADParagraph)init;
- (id)addDateTimeFieldWithFormat:(int)format;
- (id)addFooterField;
- (id)addGenericTextFieldWithGuid:(id)guid type:(id)type;
- (id)addRegularTextRun;
- (id)addSlideNumberField;
- (id)addTextLineBreak;
- (id)bulletCharacterProperties;
- (id)description;
- (id)findFirstTextRunOfClass:(Class)class;
- (id)plainText;
- (unint64_t)characterCount;
- (unint64_t)lineBreakCount;
- (void)applyProperties:(id)properties;
- (void)changeParentParagraphPropertiesPreservingEffectiveValues:(id)values;
- (void)changeParentTextListStylePreservingEffectiveValues:(id)values;
- (void)removeUnnecessaryOverrides;
- (void)setParentTextListStyle:(id)style;
@end

@implementation OADParagraph

- (OADParagraph)init
{
  v10.receiver = self;
  v10.super_class = OADParagraph;
  v2 = [(OADParagraph *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(OADParagraphProperties);
    mProperties = v2->mProperties;
    v2->mProperties = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mTextRuns = v2->mTextRuns;
    v2->mTextRuns = v5;

    v7 = objc_alloc_init(OADCharacterProperties);
    mParagraphEndCharacterProperties = v2->mParagraphEndCharacterProperties;
    v2->mParagraphEndCharacterProperties = v7;

    [(OADProperties *)v2->mParagraphEndCharacterProperties setParent:v2->mProperties];
  }

  return v2;
}

- (id)addRegularTextRun
{
  v3 = objc_alloc_init(OADRegularTextRun);
  properties = [(OADTextRun *)v3 properties];
  [properties setParent:self->mProperties];

  [(NSMutableArray *)self->mTextRuns addObject:v3];

  return v3;
}

- (id)addFooterField
{
  v3 = objc_alloc_init(OADFooterField);
  properties = [(OADTextRun *)v3 properties];
  [properties setParent:self->mProperties];

  [(NSMutableArray *)self->mTextRuns addObject:v3];

  return v3;
}

- (id)addSlideNumberField
{
  v3 = objc_alloc_init(PDSlideNumberField);
  properties = [(OADTextRun *)v3 properties];
  [properties setParent:self->mProperties];

  [(NSMutableArray *)self->mTextRuns addObject:v3];

  return v3;
}

- (void)removeUnnecessaryOverrides
{
  [(OADCharacterProperties *)self->mParagraphEndCharacterProperties removeUnnecessaryOverrides];
  textRunCount = [(OADParagraph *)self textRunCount];
  if (textRunCount)
  {
    v4 = textRunCount;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(OADParagraph *)self textRunAtIndex:i];
      [v6 removeUnnecessaryOverrides];
    }
  }

  mProperties = self->mProperties;

  [(OADParagraphProperties *)mProperties removeUnnecessaryOverrides];
}

- (id)addTextLineBreak
{
  v3 = objc_alloc_init(OADTextLineBreak);
  properties = [(OADTextRun *)v3 properties];
  [properties setParent:self->mProperties];

  [(NSMutableArray *)self->mTextRuns addObject:v3];

  return v3;
}

- (BOOL)isEmpty
{
  textRunCount = [(OADParagraph *)self textRunCount];
  if (textRunCount)
  {
    v4 = textRunCount;
    v5 = 0;
    for (i = 0; i != v4; v5 = i >= v4)
    {
      v7 = [(OADParagraph *)self textRunAtIndex:i];
      isEmpty = [v7 isEmpty];

      if ((isEmpty & 1) == 0)
      {
        break;
      }

      ++i;
    }
  }

  else
  {
    return 1;
  }

  return v5;
}

- (unint64_t)characterCount
{
  textRunCount = [(OADParagraph *)self textRunCount];
  if (!textRunCount)
  {
    return 0;
  }

  v4 = textRunCount;
  v5 = 0;
  for (i = 0; i != v4; ++i)
  {
    v7 = [(OADParagraph *)self textRunAtIndex:i];
    v5 += [v7 characterCount];
  }

  return v5;
}

- (unint64_t)lineBreakCount
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->mTextRuns;
  v3 = 0;
  v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        v3 += objc_opt_isKindOfClass() & 1;
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v3;
}

- (id)addGenericTextFieldWithGuid:(id)guid type:(id)type
{
  guidCopy = guid;
  typeCopy = type;
  v8 = [[OADGenericTextField alloc] initWithGuid:guidCopy type:typeCopy];
  properties = [(OADTextRun *)v8 properties];
  [properties setParent:self->mProperties];

  [(NSMutableArray *)self->mTextRuns addObject:v8];

  return v8;
}

- (id)addDateTimeFieldWithFormat:(int)format
{
  v3 = *&format;
  v5 = objc_alloc_init(OADDateTimeField);
  properties = [(OADTextRun *)v5 properties];
  [properties setParent:self->mProperties];

  [(OADDateTimeField *)v5 setFormat:v3];
  [(NSMutableArray *)self->mTextRuns addObject:v5];

  return v5;
}

- (BOOL)hasBulletCharacterProperties
{
  if ([(OADParagraph *)self isEmpty])
  {
    return 0;
  }

  v4 = [(OADParagraph *)self textRunAtIndex:0];
  properties = [v4 properties];
  v3 = properties != 0;

  return v3;
}

- (id)bulletCharacterProperties
{
  v2 = [(OADParagraph *)self textRunAtIndex:0];
  properties = [v2 properties];

  return properties;
}

- (void)setParentTextListStyle:(id)style
{
  styleCopy = style;
  mProperties = self->mProperties;
  v5 = [styleCopy propertiesForListLevel:{-[OADParagraphProperties level](mProperties, "level")}];
  [(OADProperties *)mProperties setParent:v5];
}

- (void)changeParentTextListStylePreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v4 = [valuesCopy propertiesForListLevel:{-[OADParagraphProperties level](self->mProperties, "level")}];
  [(OADParagraph *)self changeParentParagraphPropertiesPreservingEffectiveValues:v4];
}

- (void)changeParentParagraphPropertiesPreservingEffectiveValues:(id)values
{
  v15 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  [(OADProperties *)self->mProperties changeParentPreservingEffectiveValues:valuesCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->mTextRuns;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        properties = [*(*(&v10 + 1) + 8 * v8) properties];
        [properties changeParentPreservingEffectiveValues:self->mProperties];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(OADProperties *)self->mParagraphEndCharacterProperties changeParentPreservingEffectiveValues:self->mProperties];
}

- (void)applyProperties:(id)properties
{
  propertiesCopy = properties;
  properties = [(OADParagraph *)self properties];
  v5 = [propertiesCopy propertiesForListLevel:{objc_msgSend(properties, "level")}];
  [properties overrideWithProperties:v5];
}

- (BOOL)isSimilarToParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  textRunCount = [(OADParagraph *)self textRunCount];
  if ([paragraphCopy textRunCount] != textRunCount)
  {
LABEL_11:
    LOBYTE(v11) = 0;
    goto LABEL_12;
  }

  if (textRunCount)
  {
    v6 = 0;
    v7 = textRunCount - 1;
    while (1)
    {
      v8 = [(OADParagraph *)self textRunAtIndex:v6];
      v9 = [paragraphCopy textRunAtIndex:v6];
      v10 = objc_opt_class();
      if (v10 != objc_opt_class())
      {
        break;
      }

      v11 = [v8 isSimilarToTextRun:v9];

      if (v11)
      {
        if (v7 != v6++)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  LOBYTE(v11) = 1;
LABEL_12:

  return v11;
}

- (id)plainText
{
  v3 = objc_opt_new();
  textRunCount = [(OADParagraph *)self textRunCount];
  if (textRunCount)
  {
    for (i = 0; i != textRunCount; ++i)
    {
      v6 = [(OADParagraph *)self textRunAtIndex:i];
      if (([v6 isEmpty] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 appendString:@"\n"];
        }
      }

      else
      {
        text = [v6 text];
        [v3 appendString:text];
      }
    }
  }

  return v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADParagraph;
  v2 = [(OADParagraph *)&v4 description];

  return v2;
}

- (id)findFirstTextRunOfClass:(Class)class
{
  v4 = 0;
  while ([(NSMutableArray *)self->mTextRuns count]> v4)
  {
    v5 = v4;
    v6 = [(NSMutableArray *)self->mTextRuns objectAtIndex:v4];
    isKindOfClass = objc_opt_isKindOfClass();

    v4 = v5 + 1;
    if (isKindOfClass)
    {
      v8 = [(NSMutableArray *)self->mTextRuns objectAtIndex:v5];
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end