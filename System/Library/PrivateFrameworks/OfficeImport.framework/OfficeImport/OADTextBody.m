@interface OADTextBody
- (BOOL)isEmpty;
- (BOOL)isSimilarToTextBody:(id)a3;
- (BOOL)propagateActualTextStyleToTextListStyle;
- (OADTextBody)init;
- (id)addParagraph;
- (id)description;
- (id)findFirstTextRunOfClass:(Class)a3;
- (id)firstParagraphEffects;
- (id)overrideTextListStyle;
- (id)plainText;
- (unint64_t)newLineCount;
- (unint64_t)nonEmptyParagraphCount;
- (void)applyTextListStyle:(id)a3;
- (void)changeParentTextListStylePreservingEffectiveValues:(id)a3 ownTextListStyle:(BOOL)a4;
- (void)flattenProperties;
- (void)removeLastParagraphIfEmpty;
- (void)removeLeadingNewlines;
- (void)removeTrailingNewlines;
- (void)removeUnnecessaryOverrides;
- (void)setParentTextListStyle:(id)a3;
@end

@implementation OADTextBody

- (OADTextBody)init
{
  v8.receiver = self;
  v8.super_class = OADTextBody;
  v2 = [(OADTextBody *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(OADTextBodyProperties);
    mProperties = v2->mProperties;
    v2->mProperties = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mParagraphs = v2->mParagraphs;
    v2->mParagraphs = v5;
  }

  return v2;
}

- (id)addParagraph
{
  v3 = objc_alloc_init(OADParagraph);
  [(NSMutableArray *)self->mParagraphs addObject:v3];

  return v3;
}

- (void)removeUnnecessaryOverrides
{
  v3 = [(NSMutableArray *)self->mParagraphs count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(NSMutableArray *)self->mParagraphs objectAtIndex:i];
      [v6 removeUnnecessaryOverrides];
    }
  }

  [(OADTextListStyle *)self->mTextListStyle removeUnnecessaryOverrides];
  mProperties = self->mProperties;

  [(OADTextBodyProperties *)mProperties removeUnnecessaryOverrides];
}

- (id)overrideTextListStyle
{
  mTextListStyle = self->mTextListStyle;
  if (!mTextListStyle)
  {
    v4 = objc_alloc_init(OADTextListStyle);
    v5 = self->mTextListStyle;
    self->mTextListStyle = v4;

    [(NSMutableArray *)self->mParagraphs makeObjectsPerformSelector:sel_setParentTextListStyle_ withObject:self->mTextListStyle];
    mTextListStyle = self->mTextListStyle;
  }

  return mTextListStyle;
}

- (BOOL)isEmpty
{
  v3 = [(NSMutableArray *)self->mParagraphs count];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    for (i = 0; i != v4; v5 = i >= v4)
    {
      v7 = [(NSMutableArray *)self->mParagraphs objectAtIndex:i];
      v8 = [v7 isEmpty];

      if ((v8 & 1) == 0)
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

- (unint64_t)nonEmptyParagraphCount
{
  if (![(NSMutableArray *)self->mParagraphs count])
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  v5 = 1;
  do
  {
    v6 = [(NSMutableArray *)self->mParagraphs objectAtIndex:v3];
    v4 = v4 + ([v6 isEmpty] ^ 1);

    v3 = v5;
  }

  while ([(NSMutableArray *)self->mParagraphs count]> v5++);
  return v4;
}

- (unint64_t)newLineCount
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->mParagraphs;
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

        v3 += [*(*(&v8 + 1) + 8 * v6++) lineBreakCount] + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v3;
}

- (id)firstParagraphEffects
{
  if ([(OADTextBody *)self paragraphCount])
  {
    v3 = [(OADTextBody *)self paragraphAtIndex:0];
    v4 = [v3 properties];

    if (v4 && [v4 hasEffects])
    {
      v5 = [v4 effects];
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

  return v5;
}

- (void)applyTextListStyle:(id)a3
{
  v6 = a3;
  if (!self->mTextListStyle)
  {
    v4 = objc_alloc_init(OADTextListStyle);
    mTextListStyle = self->mTextListStyle;
    self->mTextListStyle = v4;

    [(OADTextListStyle *)self->mTextListStyle overrideWithTextStyle:v6];
  }

  [(NSMutableArray *)self->mParagraphs makeObjectsPerformSelector:sel_applyProperties_ withObject:v6];
}

- (void)setParentTextListStyle:(id)a3
{
  v4 = a3;
  mTextListStyle = self->mTextListStyle;
  v8 = v4;
  if (!mTextListStyle)
  {
    v6 = objc_alloc_init(OADTextListStyle);
    v7 = self->mTextListStyle;
    self->mTextListStyle = v6;

    [(NSMutableArray *)self->mParagraphs makeObjectsPerformSelector:sel_setParentTextListStyle_ withObject:self->mTextListStyle];
    mTextListStyle = self->mTextListStyle;
    v4 = v8;
  }

  [(OADTextListStyle *)mTextListStyle setParentTextListStyle:v4];
}

- (void)changeParentTextListStylePreservingEffectiveValues:(id)a3 ownTextListStyle:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  mTextListStyle = self->mTextListStyle;
  if (mTextListStyle)
  {
    self->mTextListStyle = 0;
  }

  if (v4)
  {
    v8 = objc_alloc_init(OADTextListStyle);
    v9 = self->mTextListStyle;
    self->mTextListStyle = v8;

    [(OADTextListStyle *)self->mTextListStyle setParentTextListStyle:v6];
    if ([(OADTextBody *)self propagateActualTextStyleToTextListStyle])
    {
      [(OADTextListStyle *)self->mTextListStyle changeParentTextListStylePreservingEffectiveValues:v6];
    }

    v10 = self->mTextListStyle;

    v6 = v10;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11 = self->mParagraphs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v15 + 1) + 8 * v14++) changeParentTextListStylePreservingEffectiveValues:{v6, v15}];
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)removeTrailingNewlines
{
  v3 = [(NSMutableArray *)self->mParagraphs count];
  if (v3 - 1 >= 0)
  {
    v4 = v3;
    while (1)
    {
      v5 = [(NSMutableArray *)self->mParagraphs objectAtIndex:--v4];
      if (![v5 isEmpty])
      {
        break;
      }

      [(NSMutableArray *)self->mParagraphs removeLastObject];

      if (v4 <= 0)
      {
        return;
      }
    }
  }
}

- (void)removeLeadingNewlines
{
  for (i = self->mParagraphs; [(NSMutableArray *)i count]; i = self->mParagraphs)
  {
    v4 = [(NSMutableArray *)self->mParagraphs objectAtIndex:0];
    if (([v4 isEmpty] & 1) == 0)
    {

      return;
    }

    [(NSMutableArray *)self->mParagraphs removeObjectAtIndex:0];
  }
}

- (void)removeLastParagraphIfEmpty
{
  if ([(NSMutableArray *)self->mParagraphs count])
  {
    v3 = [(NSMutableArray *)self->mParagraphs lastObject];
    if ([v3 isEmpty])
    {
      [(NSMutableArray *)self->mParagraphs removeLastObject];
    }
  }
}

- (void)flattenProperties
{
  [(OADProperties *)self->mProperties flatten];
  v3 = [(NSMutableArray *)self->mParagraphs count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(NSMutableArray *)self->mParagraphs objectAtIndex:i];
      v7 = [v6 properties];
      [v7 flatten];
    }
  }

  mTextListStyle = self->mTextListStyle;

  [(OADTextListStyle *)mTextListStyle flatten];
}

- (BOOL)propagateActualTextStyleToTextListStyle
{
  v3 = [(OADTextBody *)self textListStyle];
  v4 = [(OADTextBody *)self paragraphCount];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [(OADTextBody *)self paragraphAtIndex:i];
      v7 = [v6 properties];
      v8 = [v7 level];

      if (i != v8)
      {

        goto LABEL_10;
      }

      v9 = [v6 textRunCount];

      if (v9 != 1)
      {
        goto LABEL_10;
      }
    }

    for (j = 0; j != v4; ++j)
    {
      v11 = [(OADTextBody *)self paragraphAtIndex:j];
      v12 = [v11 properties];
      v13 = [v3 propertiesForListLevel:j];
      [v13 overrideWithProperties:v12];
      v14 = [v11 textRunAtIndex:0];
      v15 = [v14 properties];
      [v13 overrideWithCharacterProperties:v15];
    }

    v16 = 1;
  }

  else
  {
LABEL_10:
    v16 = 0;
  }

  return v16;
}

- (BOOL)isSimilarToTextBody:(id)a3
{
  v4 = a3;
  v5 = [v4 paragraphCount];
  if ([v4 paragraphCount] == v5)
  {
    if (v5)
    {
      v6 = 0;
      v7 = v5 - 1;
      do
      {
        v8 = [(OADTextBody *)self paragraphAtIndex:v6];
        v9 = [v4 paragraphAtIndex:v6];
        v10 = [v8 isSimilarToParagraph:v9];

        if (!v10)
        {
          break;
        }
      }

      while (v7 != v6++);
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)plainText
{
  v3 = objc_opt_new();
  v4 = [(NSMutableArray *)self->mParagraphs count];
  if (v4)
  {
    v5 = 0;
    for (i = 0; i != v4; ++i)
    {
      v7 = [(NSMutableArray *)self->mParagraphs objectAtIndex:i];
      if (([v7 isEmpty] & 1) == 0)
      {
        if (v5)
        {
          [v3 appendString:@"\n"];
        }

        v8 = [v7 plainText];
        [v3 appendString:v8];

        v5 = 1;
      }
    }
  }

  return v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTextBody;
  v2 = [(OADTextBody *)&v4 description];

  return v2;
}

- (id)findFirstTextRunOfClass:(Class)a3
{
  v5 = 0;
  while ([(NSMutableArray *)self->mParagraphs count]> v5)
  {
    v6 = [(NSMutableArray *)self->mParagraphs objectAtIndex:v5];
    v7 = [v6 findFirstTextRunOfClass:a3];

    ++v5;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end