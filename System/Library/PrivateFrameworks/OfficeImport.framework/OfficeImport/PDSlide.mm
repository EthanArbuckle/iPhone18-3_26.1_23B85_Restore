@interface PDSlide
- (OITSUNoCopyDictionary)commentParents;
- (id)background;
- (id)commentForAuthorId:(unint64_t)a3 authorIdx:(unint64_t)a4;
- (id)defaultTheme;
- (id)description;
- (id)inheritedTextStyleForPlaceholderType:(int)a3;
- (id)masterGraphicForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5;
- (id)parentShapePropertiesForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5;
- (id)parentTextBodyPropertiesForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5;
- (id)parentTextStyleForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 defaultTextListStyle:(id)a5 overrideIndex:(BOOL)a6;
- (id)parentTextStyleForTables;
- (id)transition;
- (void)addComment:(id)a3;
- (void)doneWithContent;
- (void)removeUnnecessaryOverrides;
- (void)setInheritedTextStyle:(id)a3 placeholderType:(int)a4 defaultTextListStyle:(id)a5;
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
  v2 = [(PDSlide *)self slideLayout];
  v3 = [v2 defaultTheme];

  return v3;
}

- (id)parentTextStyleForTables
{
  v2 = [(PDSlide *)self slideLayout];
  v3 = [v2 parentTextStyleForTables];

  return v3;
}

- (id)parentTextBodyPropertiesForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v7 = *&a3;
  v9 = objc_opt_class();
  v10 = [(PDSlide *)self slideLayout];
  v11 = [v10 placeholderWithType:v7 placeholderTypeIndex:v6 overrideIndex:v5];
  v12 = TSUDynamicCast(v9, v11);

  if (!v12 && (v13 = objc_opt_class(), -[PDSlide slideLayout](self, "slideLayout"), v14 = objc_claimAutoreleasedReturnValue(), [v14 placeholderWithType:v7 placeholderTypeIndex:v6 useBaseTypeMatch:1 overrideIndex:v5], v15 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(v13, v15), v12 = objc_claimAutoreleasedReturnValue(), v15, v14, !v12) || (objc_msgSend(v12, "textBody"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "properties"), v17 = objc_claimAutoreleasedReturnValue(), v16, !v17))
  {
    v18 = [(PDSlide *)self slideLayout];
    v17 = [v18 parentTextBodyPropertiesForPlaceholderType:v7 placeholderTypeIndex:v6 overrideIndex:v5];
  }

  return v17;
}

- (id)parentTextStyleForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 defaultTextListStyle:(id)a5 overrideIndex:(BOOL)a6
{
  v6 = a6;
  v7 = *&a4;
  v8 = *&a3;
  v10 = a5;
  v11 = [(PDSlide *)self slideLayout];
  v12 = objc_opt_class();
  v13 = [v11 placeholderWithType:v8 placeholderTypeIndex:v7 overrideIndex:v6];
  v14 = TSUDynamicCast(v12, v13);

  if (!v14 && (v15 = objc_opt_class(), [v11 placeholderWithType:v8 placeholderTypeIndex:v7 useBaseTypeMatch:1 overrideIndex:v6], v16 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(v15, v16), v14 = objc_claimAutoreleasedReturnValue(), v16, !v14) || (objc_msgSend(v14, "textBody"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "textListStyle"), v18 = objc_claimAutoreleasedReturnValue(), v17, !v18))
  {
    v18 = [v11 parentTextStyleForPlaceholderType:v8 placeholderTypeIndex:v7 defaultTextListStyle:v10 overrideIndex:v6];
    if (!v18)
    {
      v18 = v10;
    }
  }

  return v18;
}

- (id)parentShapePropertiesForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v7 = *&a3;
  v8 = [(PDSlide *)self slideLayout];
  v9 = objc_opt_class();
  v10 = [v8 placeholderWithType:v7 placeholderTypeIndex:v6 overrideIndex:v5];
  v11 = TSUDynamicCast(v9, v10);

  if (!v11 && (v12 = objc_opt_class(), [v8 placeholderWithType:v7 placeholderTypeIndex:v6 useBaseTypeMatch:1 overrideIndex:v5], v13 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(v12, v13), v11 = objc_claimAutoreleasedReturnValue(), v13, !v11) || (objc_msgSend(v11, "shapeProperties"), (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = [v8 parentShapePropertiesForPlaceholderType:v7 placeholderTypeIndex:v6 overrideIndex:v5];
  }

  return v14;
}

- (id)masterGraphicForPlaceholderType:(int)a3 placeholderTypeIndex:(int)a4 overrideIndex:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v7 = *&a3;
  v8 = [(PDSlide *)self slideLayout];
  v9 = objc_opt_class();
  v10 = [v8 placeholderWithType:v7 placeholderTypeIndex:v6 overrideIndex:v5];
  v11 = TSUDynamicCast(v9, v10);

  if (!v11)
  {
    v12 = objc_opt_class();
    v13 = [v8 placeholderWithType:v7 placeholderTypeIndex:v6 useBaseTypeMatch:1 overrideIndex:v5];
    v11 = TSUDynamicCast(v12, v13);

    if (!v11)
    {
      v14 = objc_opt_class();
      v15 = [v8 slideMaster];
      v16 = [v15 placeholderWithType:v7 placeholderTypeIndex:v6 overrideIndex:v5];
      v11 = TSUDynamicCast(v14, v16);
    }
  }

  return v11;
}

- (void)addComment:(id)a3
{
  v4 = a3;
  mSlideLayout = self->mSlideLayout;
  v8 = v4;
  if (!mSlideLayout)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->mSlideLayout;
    self->mSlideLayout = v6;

    mSlideLayout = self->mSlideLayout;
    v4 = v8;
  }

  [(PDSlideLayout *)mSlideLayout addObject:v4];
}

- (id)commentForAuthorId:(unint64_t)a3 authorIdx:(unint64_t)a4
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
        if ([v10 authorId] == a3)
        {
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "index")}];
          v12 = [v11 unsignedIntegerValue] == a4;

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
          v10 = [v9 parent];
          v11 = v10 == 0;

          if (v11)
          {
            v19 = self->mNotesSlide;
            v16 = [MEMORY[0x277CBEB18] array];
            [(PDNotesSlide *)v19 setObject:v16 forUncopiedKey:v9];
          }

          else
          {
            v12 = objc_opt_class();
            v13 = self->mNotesSlide;
            v14 = [v9 parent];
            v15 = [(PDNotesSlide *)v13 objectForKeyedSubscript:v14];
            v16 = TSUDynamicCast(v12, v15);

            if (!v16)
            {
              v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PDSlide commentParents]"];
              v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Dom/PDSlide.mm"];
              [OITSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:230 isFatal:0 description:"child comment being mapped before the parent"];

              +[OITSUAssertionHandler logBacktraceThrottled];
            }

            [v16 addObject:v9];
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

- (void)setInheritedTextStyle:(id)a3 placeholderType:(int)a4 defaultTextListStyle:(id)a5
{
  v15 = a3;
  v8 = a5;
  v9 = v8;
  v10 = a4 & 0xFFFFFFFD;
  if ((a4 & 0xFFFFFFFD) == 1)
  {
    v12 = [(PDSlide *)self slideLayout];
    v13 = [v12 slideMaster];
    v14 = [v13 bodyTextStyle];
  }

  else
  {
    v11 = v8;
    if (v10)
    {
      goto LABEL_6;
    }

    v12 = [(PDSlide *)self slideLayout];
    v13 = [v12 slideMaster];
    v14 = [v13 titleTextStyle];
  }

  v11 = v14;

LABEL_6:
  [v15 setParentTextListStyle:v11];
}

- (id)inheritedTextStyleForPlaceholderType:(int)a3
{
  if ((a3 & 0xFFFFFFFD) == 1)
  {
    v3 = [(PDSlide *)self slideLayout];
    v4 = [v3 slideMaster];
    v5 = [v4 bodyTextStyle];
    goto LABEL_5;
  }

  if ((a3 & 0xFFFFFFFD) == 0)
  {
    v3 = [(PDSlide *)self slideLayout];
    v4 = [v3 slideMaster];
    v5 = [v4 titleTextStyle];
LABEL_5:
    v6 = v5;

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