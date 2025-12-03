@interface WDDocument
- (WDDocument)init;
- (id)addImageBulletText;
- (id)addSection;
- (id)annotationBlockIterator;
- (id)annotationIterator;
- (id)citationFor:(id)for;
- (id)colorMap;
- (id)description;
- (id)endnoteBlockIterator;
- (id)endnoteIterator;
- (id)footnoteBlockIterator;
- (id)footnoteIterator;
- (id)imageBulletParagraph;
- (id)imageBulletWithCharacterOffset:(int)offset;
- (id)listDefinitionWithListId:(int)id;
- (id)listLevelWithListId:(int)id levelIndex:(unsigned __int8)index;
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
- (id)revisionAuthorAt:(unint64_t)at;
- (id)sectionIterator;
- (void)addChangeTrackingEditAtDate:(id)date authorIndex:(int)index;
- (void)addImageBullets;
- (void)addObjPointer:(id)pointer;
- (void)removeEmptySections;
- (void)removeObjPointer:(id)pointer;
- (void)setAutoHyphenate:(BOOL)hyphenate;
- (void)setBookFold:(BOOL)fold;
- (void)setBorderSurroundFooter:(BOOL)footer;
- (void)setBorderSurroundHeader:(BOOL)header;
- (void)setEvenAndOddHeaders:(BOOL)headers;
- (void)setKinsokuStrict:(BOOL)strict;
- (void)setNoTabForHangingIndents:(BOOL)indents;
- (void)setShowFormatting:(BOOL)formatting;
- (void)setShowInsertionsAndDeletions:(BOOL)deletions;
- (void)setShowMarkup:(BOOL)markup;
- (void)setShowOutline:(BOOL)outline;
- (void)setShowRevisionMarksOnScreen:(BOOL)screen;
- (void)setTrackChanges:(BOOL)changes;
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
    addParagraph = [(WDText *)self->mImageBulletText addParagraph];
    v7 = [addParagraph addBookmark:@"_PictureBullets" type:0];
  }

  v8 = self->mImageBulletText;

  return [(WDText *)v8 blockAt:0];
}

- (void)addObjPointer:(id)pointer
{
  pointerCopy = pointer;
  if (pointerCopy)
  {
    [(NSMutableSet *)self->mObjPointers addObject:pointerCopy];
  }
}

- (void)removeObjPointer:(id)pointer
{
  pointerCopy = pointer;
  if (pointerCopy)
  {
    [(NSMutableSet *)self->mObjPointers removeObject:pointerCopy];
  }
}

- (void)setBorderSurroundHeader:(BOOL)header
{
  if (header)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 296) = *(self + 296) & 0xFD | v3;
}

- (void)setBorderSurroundFooter:(BOOL)footer
{
  if (footer)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 296) = *(self + 296) & 0xFB | v3;
}

- (void)setKinsokuStrict:(BOOL)strict
{
  if (strict)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 296) = *(self + 296) & 0xF7 | v3;
}

- (void)setAutoHyphenate:(BOOL)hyphenate
{
  if (hyphenate)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 296) = *(self + 296) & 0xEF | v3;
}

- (void)setEvenAndOddHeaders:(BOOL)headers
{
  if (headers)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 296) = *(self + 296) & 0xDF | v3;
}

- (id)citationFor:(id)for
{
  v3 = [(WDCitationTable *)self->mCitationTable citationFor:for];

  return v3;
}

- (id)listDefinitionWithListId:(int)id
{
  v4 = [(WDDocument *)self listWithListId:*&id];
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

- (id)listLevelWithListId:(int)id levelIndex:(unsigned __int8)index
{
  indexCopy = index;
  v5 = *&id;
  v7 = [(WDDocument *)self listWithListId:?];
  v8 = [v7 levelOverrideForLevel:indexCopy];
  if ([v8 isListLevelOverridden])
  {
    listLevel = [v8 listLevel];
  }

  else
  {
    v10 = [(WDDocument *)self listDefinitionWithListId:v5];
    listLevel = [v10 levelAt:indexCopy];
  }

  return listLevel;
}

- (void)setBookFold:(BOOL)fold
{
  if (fold)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 296) = *(self + 296) & 0xBF | v3;
}

- (id)imageBulletWithCharacterOffset:(int)offset
{
  if ([(NSMutableArray *)self->mImageBullets count]<= offset)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->mImageBullets objectAtIndex:offset];
  }

  return v5;
}

- (void)addImageBullets
{
  if (!self->mImageBulletText)
  {
    return;
  }

  imageBulletParagraph = [(WDDocument *)self imageBulletParagraph];
  v3 = [imageBulletParagraph addBookmark:@"_PictureBullets" type:1];
  lastObject = [(NSMutableArray *)self->mSections lastObject];
  text = [lastObject text];

  blockCount = [text blockCount];
  if (blockCount)
  {
    v7 = [text blockAt:blockCount - 1];
    v8 = v7;
    if (v7 && ![v7 blockType])
    {
      v9 = v8;
      runCount = [imageBulletParagraph runCount];
      if (runCount)
      {
        for (i = 0; i != runCount; ++i)
        {
          v12 = [imageBulletParagraph runAt:i];
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
  [text addBlock:imageBulletParagraph];
LABEL_12:
}

- (id)revisionAuthorAt:(unint64_t)at
{
  if (at == -1)
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

- (void)setShowMarkup:(BOOL)markup
{
  if (markup)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 296) = v3 & 0x80 | *(self + 296) & 0x7F;
}

- (void)setTrackChanges:(BOOL)changes
{
  if (changes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 297) = *(self + 297) & 0xFD | v3;
}

- (void)setShowRevisionMarksOnScreen:(BOOL)screen
{
  if (screen)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 297) = *(self + 297) & 0xFB | v3;
}

- (void)setShowInsertionsAndDeletions:(BOOL)deletions
{
  if (deletions)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 297) = *(self + 297) & 0xF7 | v3;
}

- (void)setShowFormatting:(BOOL)formatting
{
  if (formatting)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 297) = *(self + 297) & 0xEF | v3;
}

- (void)setShowOutline:(BOOL)outline
{
  if (outline)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 297) = *(self + 297) & 0xDF | v3;
}

- (void)setNoTabForHangingIndents:(BOOL)indents
{
  if (indents)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 297) = *(self + 297) & 0xBF | v3;
}

- (void)addChangeTrackingEditAtDate:(id)date authorIndex:(int)index
{
  v4 = *&index;
  [(NSMutableArray *)self->mChangeTrackingEditDates addObject:date];
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
      text = [v5 text];
      blockCount = [text blockCount];

      if (!blockCount)
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
  newSectionIterator = [(WDDocument *)self newSectionIterator];

  return newSectionIterator;
}

- (id)newSectionIterator
{
  v3 = [WDArrayIterator alloc];
  mSections = self->mSections;

  return [(WDArrayIterator *)v3 initWithArray:mSections];
}

- (id)mainBlocksIterator
{
  newMainBlocksIterator = [(WDDocument *)self newMainBlocksIterator];

  return newMainBlocksIterator;
}

- (id)newMainBlocksIterator
{
  newSectionIterator = [(WDDocument *)self newSectionIterator];
  v3 = [(WDCombinedIterator *)[WDSectionBlockIterator alloc] initWithParentIterator:newSectionIterator];

  return v3;
}

- (id)mainRunsIterator
{
  newMainRunsIterator = [(WDDocument *)self newMainRunsIterator];

  return newMainRunsIterator;
}

- (id)newMainRunsIterator
{
  newMainBlocksIterator = [(WDDocument *)self newMainBlocksIterator];
  v3 = [(WDCombinedIterator *)[WDBlockRunIterator alloc] initWithParentIterator:newMainBlocksIterator];

  return v3;
}

- (id)footnoteIterator
{
  newFootnoteIterator = [(WDDocument *)self newFootnoteIterator];

  return newFootnoteIterator;
}

- (id)newFootnoteIterator
{
  newMainRunsIterator = [(WDDocument *)self newMainRunsIterator];
  v3 = [(WDTestIterator *)[WDFootnoteIterator alloc] initWithIterator:newMainRunsIterator];

  return v3;
}

- (id)endnoteIterator
{
  newEndnoteIterator = [(WDDocument *)self newEndnoteIterator];

  return newEndnoteIterator;
}

- (id)newEndnoteIterator
{
  newMainRunsIterator = [(WDDocument *)self newMainRunsIterator];
  v3 = [(WDTestIterator *)[WDEndnoteIterator alloc] initWithIterator:newMainRunsIterator];

  return v3;
}

- (id)annotationIterator
{
  newAnnotationIterator = [(WDDocument *)self newAnnotationIterator];

  return newAnnotationIterator;
}

- (id)newAnnotationIterator
{
  newMainRunsIterator = [(WDDocument *)self newMainRunsIterator];
  v3 = [(WDTestIterator *)[WDAnnotationIterator alloc] initWithIterator:newMainRunsIterator];

  return v3;
}

- (id)footnoteBlockIterator
{
  newFootnoteBlockIterator = [(WDDocument *)self newFootnoteBlockIterator];

  return newFootnoteBlockIterator;
}

- (id)newFootnoteBlockIterator
{
  newFootnoteIterator = [(WDDocument *)self newFootnoteIterator];
  v3 = [(WDCombinedIterator *)[WDNoteBlockIterator alloc] initWithParentIterator:newFootnoteIterator];

  return v3;
}

- (id)endnoteBlockIterator
{
  newEndnoteBlockIterator = [(WDDocument *)self newEndnoteBlockIterator];

  return newEndnoteBlockIterator;
}

- (id)newEndnoteBlockIterator
{
  newEndnoteIterator = [(WDDocument *)self newEndnoteIterator];
  v3 = [(WDCombinedIterator *)[WDNoteBlockIterator alloc] initWithParentIterator:newEndnoteIterator];

  return v3;
}

- (id)annotationBlockIterator
{
  newAnnotationBlockIterator = [(WDDocument *)self newAnnotationBlockIterator];

  return newAnnotationBlockIterator;
}

- (id)newAnnotationBlockIterator
{
  newAnnotationIterator = [(WDDocument *)self newAnnotationIterator];
  v3 = [(WDCombinedIterator *)[WDNoteBlockIterator alloc] initWithParentIterator:newAnnotationIterator];

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