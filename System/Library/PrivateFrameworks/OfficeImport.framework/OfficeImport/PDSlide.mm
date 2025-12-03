@interface PDSlide
- (OITSUNoCopyDictionary)commentParents;
- (id)background;
- (id)commentForAuthorId:(unint64_t)id authorIdx:(unint64_t)idx;
- (id)defaultTheme;
- (id)description;
- (id)inheritedTextStyleForPlaceholderType:(int)type;
- (id)masterGraphicForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex;
- (id)parentShapePropertiesForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex;
- (id)parentTextBodyPropertiesForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex;
- (id)parentTextStyleForPlaceholderType:(int)type placeholderTypeIndex:(int)index defaultTextListStyle:(id)style overrideIndex:(BOOL)overrideIndex;
- (id)parentTextStyleForTables;
- (id)transition;
- (void)addComment:(id)comment;
- (void)doneWithContent;
- (void)removeUnnecessaryOverrides;
- (void)setInheritedTextStyle:(id)style placeholderType:(int)type defaultTextListStyle:(id)listStyle;
- (void)setUpPropertyHierarchyPreservingEffectiveValues;
@end

@implementation PDSlide

- (id)background
{
  mColorMapOverride = self->super.super.mBackground;
  if (!mColorMapOverride)
  {
    mColorMapOverride = self->super.mColorMapOverride;
    if (mColorMapOverride)
    {
      mColorMapOverride = [(OADBackground *)mColorMapOverride background];
    }
  }

  return mColorMapOverride;
}

- (id)defaultTheme
{
  slideLayout = [(PDSlide *)self slideLayout];
  defaultTheme = [slideLayout defaultTheme];

  return defaultTheme;
}

- (id)parentTextStyleForTables
{
  slideLayout = [(PDSlide *)self slideLayout];
  parentTextStyleForTables = [slideLayout parentTextStyleForTables];

  return parentTextStyleForTables;
}

- (id)parentTextBodyPropertiesForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex
{
  overrideIndexCopy = overrideIndex;
  v6 = *&index;
  v7 = *&type;
  v9 = objc_opt_class();
  slideLayout = [(PDSlide *)self slideLayout];
  v11 = [slideLayout placeholderWithType:v7 placeholderTypeIndex:v6 overrideIndex:overrideIndexCopy];
  v12 = TSUDynamicCast(v9, v11);

  if (!v12 && (v13 = objc_opt_class(), -[PDSlide slideLayout](self, "slideLayout"), v14 = objc_claimAutoreleasedReturnValue(), [v14 placeholderWithType:v7 placeholderTypeIndex:v6 useBaseTypeMatch:1 overrideIndex:overrideIndexCopy], v15 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(v13, v15), v12 = objc_claimAutoreleasedReturnValue(), v15, v14, !v12) || (objc_msgSend(v12, "textBody"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "properties"), v17 = objc_claimAutoreleasedReturnValue(), v16, !v17))
  {
    slideLayout2 = [(PDSlide *)self slideLayout];
    v17 = [slideLayout2 parentTextBodyPropertiesForPlaceholderType:v7 placeholderTypeIndex:v6 overrideIndex:overrideIndexCopy];
  }

  return v17;
}

- (id)parentTextStyleForPlaceholderType:(int)type placeholderTypeIndex:(int)index defaultTextListStyle:(id)style overrideIndex:(BOOL)overrideIndex
{
  overrideIndexCopy = overrideIndex;
  v7 = *&index;
  v8 = *&type;
  styleCopy = style;
  slideLayout = [(PDSlide *)self slideLayout];
  v12 = objc_opt_class();
  v13 = [slideLayout placeholderWithType:v8 placeholderTypeIndex:v7 overrideIndex:overrideIndexCopy];
  v14 = TSUDynamicCast(v12, v13);

  if (!v14 && (v15 = objc_opt_class(), [slideLayout placeholderWithType:v8 placeholderTypeIndex:v7 useBaseTypeMatch:1 overrideIndex:overrideIndexCopy], v16 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(v15, v16), v14 = objc_claimAutoreleasedReturnValue(), v16, !v14) || (objc_msgSend(v14, "textBody"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "textListStyle"), v18 = objc_claimAutoreleasedReturnValue(), v17, !v18))
  {
    v18 = [slideLayout parentTextStyleForPlaceholderType:v8 placeholderTypeIndex:v7 defaultTextListStyle:styleCopy overrideIndex:overrideIndexCopy];
    if (!v18)
    {
      v18 = styleCopy;
    }
  }

  return v18;
}

- (id)parentShapePropertiesForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex
{
  overrideIndexCopy = overrideIndex;
  v6 = *&index;
  v7 = *&type;
  slideLayout = [(PDSlide *)self slideLayout];
  v9 = objc_opt_class();
  v10 = [slideLayout placeholderWithType:v7 placeholderTypeIndex:v6 overrideIndex:overrideIndexCopy];
  v11 = TSUDynamicCast(v9, v10);

  if (!v11 && (v12 = objc_opt_class(), [slideLayout placeholderWithType:v7 placeholderTypeIndex:v6 useBaseTypeMatch:1 overrideIndex:overrideIndexCopy], v13 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(v12, v13), v11 = objc_claimAutoreleasedReturnValue(), v13, !v11) || (objc_msgSend(v11, "shapeProperties"), (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = [slideLayout parentShapePropertiesForPlaceholderType:v7 placeholderTypeIndex:v6 overrideIndex:overrideIndexCopy];
  }

  return v14;
}

- (id)masterGraphicForPlaceholderType:(int)type placeholderTypeIndex:(int)index overrideIndex:(BOOL)overrideIndex
{
  overrideIndexCopy = overrideIndex;
  v6 = *&index;
  v7 = *&type;
  slideLayout = [(PDSlide *)self slideLayout];
  v9 = objc_opt_class();
  v10 = [slideLayout placeholderWithType:v7 placeholderTypeIndex:v6 overrideIndex:overrideIndexCopy];
  v11 = TSUDynamicCast(v9, v10);

  if (!v11)
  {
    v12 = objc_opt_class();
    v13 = [slideLayout placeholderWithType:v7 placeholderTypeIndex:v6 useBaseTypeMatch:1 overrideIndex:overrideIndexCopy];
    v11 = TSUDynamicCast(v12, v13);

    if (!v11)
    {
      v14 = objc_opt_class();
      slideMaster = [slideLayout slideMaster];
      v16 = [slideMaster placeholderWithType:v7 placeholderTypeIndex:v6 overrideIndex:overrideIndexCopy];
      v11 = TSUDynamicCast(v14, v16);
    }
  }

  return v11;
}

- (void)addComment:(id)comment
{
  commentCopy = comment;
  mSlideLayout = self->mSlideLayout;
  v8 = commentCopy;
  if (!mSlideLayout)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->mSlideLayout;
    self->mSlideLayout = v6;

    mSlideLayout = self->mSlideLayout;
    commentCopy = v8;
  }

  [(PDSlideLayout *)mSlideLayout addObject:commentCopy];
}

- (id)commentForAuthorId:(unint64_t)id authorIdx:(unint64_t)idx
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->mSlideLayout;
  v7 = [(PDSlideLayout *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 authorId] == id)
        {
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "index")}];
          v12 = [v11 unsignedIntegerValue] == idx;

          if (v12)
          {
            v13 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [(PDSlideLayout *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (OITSUNoCopyDictionary)commentParents
{
  v27 = *MEMORY[0x277D85DE8];
  mNotesSlide = self->mNotesSlide;
  if (!mNotesSlide)
  {
    v4 = objc_opt_new();
    v5 = self->mNotesSlide;
    self->mNotesSlide = v4;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = self->mSlideLayout;
    v6 = [(PDSlideLayout *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          parent = [v9 parent];
          v11 = parent == 0;

          if (v11)
          {
            v19 = self->mNotesSlide;
            array = [MEMORY[0x277CBEB18] array];
            [(PDNotesSlide *)v19 setObject:array forUncopiedKey:v9];
          }

          else
          {
            v12 = objc_opt_class();
            v13 = self->mNotesSlide;
            parent2 = [v9 parent];
            v15 = [(PDNotesSlide *)v13 objectForKeyedSubscript:parent2];
            array = TSUDynamicCast(v12, v15);

            if (!array)
            {
              v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PDSlide commentParents]"];
              v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Dom/PDSlide.mm"];
              [OITSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:230 isFatal:0 description:"child comment being mapped before the parent"];

              +[OITSUAssertionHandler logBacktraceThrottled];
            }

            [array addObject:v9];
          }
        }

        v6 = [(PDSlideLayout *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v6);
    }

    mNotesSlide = self->mNotesSlide;
  }

  return mNotesSlide;
}

- (void)doneWithContent
{
  mSlideLayout = self->mSlideLayout;
  self->mSlideLayout = 0;

  [(NSMutableArray *)self->mComments doneWithContent];
  mComments = self->mComments;
  self->mComments = 0;

  v5.receiver = self;
  v5.super_class = PDSlide;
  [(PDSlideChild *)&v5 doneWithContent];
}

- (void)setInheritedTextStyle:(id)style placeholderType:(int)type defaultTextListStyle:(id)listStyle
{
  styleCopy = style;
  listStyleCopy = listStyle;
  v9 = listStyleCopy;
  v10 = type & 0xFFFFFFFD;
  if ((type & 0xFFFFFFFD) == 1)
  {
    slideLayout = [(PDSlide *)self slideLayout];
    slideMaster = [slideLayout slideMaster];
    bodyTextStyle = [slideMaster bodyTextStyle];
  }

  else
  {
    v11 = listStyleCopy;
    if (v10)
    {
      goto LABEL_6;
    }

    slideLayout = [(PDSlide *)self slideLayout];
    slideMaster = [slideLayout slideMaster];
    bodyTextStyle = [slideMaster titleTextStyle];
  }

  v11 = bodyTextStyle;

LABEL_6:
  [styleCopy setParentTextListStyle:v11];
}

- (id)inheritedTextStyleForPlaceholderType:(int)type
{
  if ((type & 0xFFFFFFFD) == 1)
  {
    slideLayout = [(PDSlide *)self slideLayout];
    slideMaster = [slideLayout slideMaster];
    bodyTextStyle = [slideMaster bodyTextStyle];
    goto LABEL_5;
  }

  if ((type & 0xFFFFFFFD) == 0)
  {
    slideLayout = [(PDSlide *)self slideLayout];
    slideMaster = [slideLayout slideMaster];
    bodyTextStyle = [slideMaster titleTextStyle];
LABEL_5:
    v6 = bodyTextStyle;

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)transition
{
  mColorMapOverride = self->super.super.mTransition;
  if (!mColorMapOverride)
  {
    mColorMapOverride = self->super.mColorMapOverride;
    if (mColorMapOverride)
    {
      mColorMapOverride = [(PDTransition *)mColorMapOverride transition];
    }
  }

  return mColorMapOverride;
}

- (void)setUpPropertyHierarchyPreservingEffectiveValues
{
  v3.receiver = self;
  v3.super_class = PDSlide;
  [(PDSlideBase *)&v3 setUpPropertyHierarchyPreservingEffectiveValues];
  [(NSMutableArray *)self->mComments setUpPropertyHierarchyPreservingEffectiveValues];
}

- (void)removeUnnecessaryOverrides
{
  v3.receiver = self;
  v3.super_class = PDSlide;
  [(PDSlideBase *)&v3 removeUnnecessaryOverrides];
  [(NSMutableArray *)self->mComments removeUnnecessaryOverrides];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDSlide;
  v2 = [(PDSlideChild *)&v4 description];

  return v2;
}

@end