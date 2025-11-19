@interface WDDocument
- (WDDocument)init;
- (id)addImageBulletText;
- (id)addSection;
- (id)annotationBlockIterator;
- (id)annotationIterator;
- (id)citationFor:(id)a3;
- (id)colorMap;
- (id)description;
- (id)endnoteBlockIterator;
- (id)endnoteIterator;
- (id)footnoteBlockIterator;
- (id)footnoteIterator;
- (id)imageBulletParagraph;
- (id)imageBulletWithCharacterOffset:(int)a3;
- (id)listDefinitionWithListId:(int)a3;
- (id)listLevelWithListId:(int)a3 levelIndex:(unsigned __int8)a4;
- (id)mainBlocksIterator;
- (id)mainRunsIterator;
- (id)newAnnotationBlockIterator;
- (id)newAnnotationIterator;
- (id)newEndnoteBlockIterator;
- (id)newEndnoteIterator;
- (id)newFootnoteBlockIterator;
- (id)newFootnoteIterator;
- (id)newMainBlocksIterator;
- (id)newMainRunsIterator;
- (id)newSectionIterator;
- (id)revisionAuthorAt:(unint64_t)a3;
- (id)sectionIterator;
- (void)addChangeTrackingEditAtDate:(id)a3 authorIndex:(int)a4;
- (void)addImageBullets;
- (void)addObjPointer:(id)a3;
- (void)removeEmptySections;
- (void)removeObjPointer:(id)a3;
- (void)setAutoHyphenate:(BOOL)a3;
- (void)setBookFold:(BOOL)a3;
- (void)setBorderSurroundFooter:(BOOL)a3;
- (void)setBorderSurroundHeader:(BOOL)a3;
- (void)setEvenAndOddHeaders:(BOOL)a3;
- (void)setKinsokuStrict:(BOOL)a3;
- (void)setNoTabForHangingIndents:(BOOL)a3;
- (void)setShowFormatting:(BOOL)a3;
- (void)setShowInsertionsAndDeletions:(BOOL)a3;
- (void)setShowMarkup:(BOOL)a3;
- (void)setShowOutline:(BOOL)a3;
- (void)setShowRevisionMarksOnScreen:(BOOL)a3;
- (void)setTrackChanges:(BOOL)a3;
@end

@implementation WDDocument

- (WDDocument)init
{
  v45.receiver = self;
  v45.super_class = WDDocument;
  v2 = [(OCDDocument *)&v45 init];
  v3 = v2;
  if (v2)
  {
    v2->mZoomPercentage = 100;
    v4 = objc_alloc_init(WDFontTable);
    mFontTable = v3->mFontTable;
    v3->mFontTable = v4;

    v6 = [[WDStyleSheet alloc] initWithDocument:v3];
    mStyleSheet = v3->mStyleSheet;
    v3->mStyleSheet = v6;

    v8 = [[WDListDefinitionTable alloc] initWithDocument:v3];
    mListDefinitionTable = v3->mListDefinitionTable;
    v3->mListDefinitionTable = v8;

    v10 = [[WDListTable alloc] initWithDocument:v3];
    mListTable = v3->mListTable;
    v3->mListTable = v10;

    v12 = [[WDRevisionAuthorTable alloc] initWithDocument:v3];
    mRevisionAuthorTable = v3->mRevisionAuthorTable;
    v3->mRevisionAuthorTable = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mSections = v3->mSections;
    v3->mSections = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mChangeTrackingEditDates = v3->mChangeTrackingEditDates;
    v3->mChangeTrackingEditDates = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mChangeTrackingEditAuthors = v3->mChangeTrackingEditAuthors;
    v3->mChangeTrackingEditAuthors = v18;

    v20 = [[WDCitationTable alloc] initWithDocument:v3];
    mCitationTable = v3->mCitationTable;
    v3->mCitationTable = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mObjPointers = v3->mObjPointers;
    v3->mObjPointers = v22;

    v24 = [[WDText alloc] initWithDocument:v3 textType:2];
    mFootnoteSeparator = v3->mFootnoteSeparator;
    v3->mFootnoteSeparator = v24;

    v26 = [[WDText alloc] initWithDocument:v3 textType:2];
    mFootnoteContinuationSeparator = v3->mFootnoteContinuationSeparator;
    v3->mFootnoteContinuationSeparator = v26;

    v28 = [[WDText alloc] initWithDocument:v3 textType:2];
    mFootnoteContinuationNotice = v3->mFootnoteContinuationNotice;
    v3->mFootnoteContinuationNotice = v28;

    v30 = [[WDText alloc] initWithDocument:v3 textType:2];
    mEndnoteSeparator = v3->mEndnoteSeparator;
    v3->mEndnoteSeparator = v30;

    v32 = [[WDText alloc] initWithDocument:v3 textType:2];
    mEndnoteContinuationSeparator = v3->mEndnoteContinuationSeparator;
    v3->mEndnoteContinuationSeparator = v32;

    v34 = [[WDText alloc] initWithDocument:v3 textType:2];
    mEndnoteContinuationNotice = v3->mEndnoteContinuationNotice;
    v3->mEndnoteContinuationNotice = v34;

    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mDocumentImages = v3->mDocumentImages;
    v3->mDocumentImages = v36;

    v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mImageBullets = v3->mImageBullets;
    v3->mImageBullets = v38;

    v3->mFootnoteNumberingStart = 1;
    v3->mFootnotePosition = 1;
    v3->mFootnoteNumberFormat = 0;
    v3->mEndnotePosition = 3;
    v3->mEndnoteNumberFormat = 2;
    v40 = objc_alloc_init(OADBackgroundProperties);
    mDocumentBackground = v3->mDocumentBackground;
    v3->mDocumentBackground = &v40->super;

    v42 = v3->mDocumentBackground;
    v43 = +[OADNullFill nullFill];
    [(OADBackground *)v42 setFill:v43];
  }

  return v3;
}

- (id)addSection
{
  v3 = [[WDSection alloc] initWithDocument:self];
  [(NSMutableArray *)self->mSections addObject:v3];

  return v3;
}

- (id)addImageBulletText
{
  mImageBulletText = self->mImageBulletText;
  if (!mImageBulletText)
  {
    v4 = [[WDText alloc] initWithDocument:self textType:0];
    v5 = self->mImageBulletText;
    self->mImageBulletText = v4;

    mImageBulletText = self->mImageBulletText;
  }

  return mImageBulletText;
}

- (id)imageBulletParagraph
{
  mImageBulletText = self->mImageBulletText;
  if (!mImageBulletText)
  {
    v4 = [[WDText alloc] initWithDocument:self textType:0];
    v5 = self->mImageBulletText;
    self->mImageBulletText = v4;

    mImageBulletText = self->mImageBulletText;
  }

  if (![(WDText *)mImageBulletText blockCount])
  {
    v6 = [(WDText *)self->mImageBulletText addParagraph];
    v7 = [v6 addBookmark:@"_PictureBullets" type:0];
  }

  v8 = self->mImageBulletText;

  return [(WDText *)v8 blockAt:0];
}

- (void)addObjPointer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableSet *)self->mObjPointers addObject:v4];
  }
}

- (void)removeObjPointer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableSet *)self->mObjPointers removeObject:v4];
  }
}

- (void)setBorderSurroundHeader:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 296) = *(self + 296) & 0xFD | v3;
}

- (void)setBorderSurroundFooter:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 296) = *(self + 296) & 0xFB | v3;
}

- (void)setKinsokuStrict:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 296) = *(self + 296) & 0xF7 | v3;
}

- (void)setAutoHyphenate:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 296) = *(self + 296) & 0xEF | v3;
}

- (void)setEvenAndOddHeaders:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 296) = *(self + 296) & 0xDF | v3;
}

- (id)citationFor:(id)a3
{
  v3 = [(WDCitationTable *)self->mCitationTable citationFor:a3];

  return v3;
}

- (id)listDefinitionWithListId:(int)a3
{
  v4 = [(WDDocument *)self listWithListId:*&a3];
  v5 = v4;
  if (v4)
  {
    v6 = -[WDDocument listDefinitionWithListDefinitionId:](self, "listDefinitionWithListDefinitionId:", [v4 listDefinitionId]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)listLevelWithListId:(int)a3 levelIndex:(unsigned __int8)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = [(WDDocument *)self listWithListId:?];
  v8 = [v7 levelOverrideForLevel:v4];
  if ([v8 isListLevelOverridden])
  {
    v9 = [v8 listLevel];
  }

  else
  {
    v10 = [(WDDocument *)self listDefinitionWithListId:v5];
    v9 = [v10 levelAt:v4];
  }

  return v9;
}

- (void)setBookFold:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 296) = *(self + 296) & 0xBF | v3;
}

- (id)imageBulletWithCharacterOffset:(int)a3
{
  if ([(NSMutableArray *)self->mImageBullets count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->mImageBullets objectAtIndex:a3];
  }

  return v5;
}

- (void)addImageBullets
{
  if (!self->mImageBulletText)
  {
    return;
  }

  v13 = [(WDDocument *)self imageBulletParagraph];
  v3 = [v13 addBookmark:@"_PictureBullets" type:1];
  v4 = [(NSMutableArray *)self->mSections lastObject];
  v5 = [v4 text];

  v6 = [v5 blockCount];
  if (v6)
  {
    v7 = [v5 blockAt:v6 - 1];
    v8 = v7;
    if (v7 && ![v7 blockType])
    {
      v9 = v8;
      v10 = [v13 runCount];
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v12 = [v13 runAt:i];
          [v9 addRun:v12];
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v5 addBlock:v13];
LABEL_12:
}

- (id)revisionAuthorAt:(unint64_t)a3
{
  if (a3 == -1)
  {
    v4 = TCBundle();
    v3 = [v4 localizedStringForKey:@"Unknown" value:&stru_286EE1130 table:@"TCCompatibility"];
  }

  else
  {
    v3 = [(WDRevisionAuthorTable *)self->mRevisionAuthorTable authorAt:?];
  }

  return v3;
}

- (void)setShowMarkup:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 296) = v3 & 0x80 | *(self + 296) & 0x7F;
}

- (void)setTrackChanges:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 297) = *(self + 297) & 0xFD | v3;
}

- (void)setShowRevisionMarksOnScreen:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 297) = *(self + 297) & 0xFB | v3;
}

- (void)setShowInsertionsAndDeletions:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 297) = *(self + 297) & 0xF7 | v3;
}

- (void)setShowFormatting:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 297) = *(self + 297) & 0xEF | v3;
}

- (void)setShowOutline:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 297) = *(self + 297) & 0xDF | v3;
}

- (void)setNoTabForHangingIndents:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 297) = *(self + 297) & 0xBF | v3;
}

- (void)addChangeTrackingEditAtDate:(id)a3 authorIndex:(int)a4
{
  v4 = *&a4;
  [(NSMutableArray *)self->mChangeTrackingEditDates addObject:a3];
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v4];
  [(NSMutableArray *)self->mChangeTrackingEditAuthors addObject:?];
}

- (void)removeEmptySections
{
  v3 = [(NSMutableArray *)self->mSections count];
  if (v3)
  {
    v4 = v3 - 1;
    do
    {
      v5 = [(NSMutableArray *)self->mSections objectAtIndex:v4];
      v6 = [v5 text];
      v7 = [v6 blockCount];

      if (!v7)
      {
        [(NSMutableArray *)self->mSections removeObjectAtIndex:v4];
      }

      --v4;
    }

    while (v4 != -1);
  }
}

- (id)sectionIterator
{
  v2 = [(WDDocument *)self newSectionIterator];

  return v2;
}

- (id)newSectionIterator
{
  v3 = [WDArrayIterator alloc];
  mSections = self->mSections;

  return [(WDArrayIterator *)v3 initWithArray:mSections];
}

- (id)mainBlocksIterator
{
  v2 = [(WDDocument *)self newMainBlocksIterator];

  return v2;
}

- (id)newMainBlocksIterator
{
  v2 = [(WDDocument *)self newSectionIterator];
  v3 = [(WDCombinedIterator *)[WDSectionBlockIterator alloc] initWithParentIterator:v2];

  return v3;
}

- (id)mainRunsIterator
{
  v2 = [(WDDocument *)self newMainRunsIterator];

  return v2;
}

- (id)newMainRunsIterator
{
  v2 = [(WDDocument *)self newMainBlocksIterator];
  v3 = [(WDCombinedIterator *)[WDBlockRunIterator alloc] initWithParentIterator:v2];

  return v3;
}

- (id)footnoteIterator
{
  v2 = [(WDDocument *)self newFootnoteIterator];

  return v2;
}

- (id)newFootnoteIterator
{
  v2 = [(WDDocument *)self newMainRunsIterator];
  v3 = [(WDTestIterator *)[WDFootnoteIterator alloc] initWithIterator:v2];

  return v3;
}

- (id)endnoteIterator
{
  v2 = [(WDDocument *)self newEndnoteIterator];

  return v2;
}

- (id)newEndnoteIterator
{
  v2 = [(WDDocument *)self newMainRunsIterator];
  v3 = [(WDTestIterator *)[WDEndnoteIterator alloc] initWithIterator:v2];

  return v3;
}

- (id)annotationIterator
{
  v2 = [(WDDocument *)self newAnnotationIterator];

  return v2;
}

- (id)newAnnotationIterator
{
  v2 = [(WDDocument *)self newMainRunsIterator];
  v3 = [(WDTestIterator *)[WDAnnotationIterator alloc] initWithIterator:v2];

  return v3;
}

- (id)footnoteBlockIterator
{
  v2 = [(WDDocument *)self newFootnoteBlockIterator];

  return v2;
}

- (id)newFootnoteBlockIterator
{
  v2 = [(WDDocument *)self newFootnoteIterator];
  v3 = [(WDCombinedIterator *)[WDNoteBlockIterator alloc] initWithParentIterator:v2];

  return v3;
}

- (id)endnoteBlockIterator
{
  v2 = [(WDDocument *)self newEndnoteBlockIterator];

  return v2;
}

- (id)newEndnoteBlockIterator
{
  v2 = [(WDDocument *)self newEndnoteIterator];
  v3 = [(WDCombinedIterator *)[WDNoteBlockIterator alloc] initWithParentIterator:v2];

  return v3;
}

- (id)annotationBlockIterator
{
  v2 = [(WDDocument *)self newAnnotationBlockIterator];

  return v2;
}

- (id)newAnnotationBlockIterator
{
  v2 = [(WDDocument *)self newAnnotationIterator];
  v3 = [(WDCombinedIterator *)[WDNoteBlockIterator alloc] initWithParentIterator:v2];

  return v3;
}

- (id)colorMap
{
  mColorMap = self->mColorMap;
  if (!mColorMap)
  {
    v4 = objc_alloc_init(OADColorMap);
    v5 = self->mColorMap;
    self->mColorMap = v4;

    [(OADColorMap *)self->mColorMap addDefaultMappings:1];
    mColorMap = self->mColorMap;
  }

  return mColorMap;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDDocument;
  v2 = [(WDDocument *)&v4 description];

  return v2;
}

@end