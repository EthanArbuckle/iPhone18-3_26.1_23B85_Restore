@interface PBPresentationReaderState
- (PBPresentationReaderState)initWithReader:(void *)reader tgtPresentation:(id)presentation;
- (PBReaderMasterStyleInfo)currentSourceMasterStyleInfoOfType:(int)type;
- (id)fontEntityAtIndex:(unint64_t)index;
- (id)hyperlinkInfoWithId:(unsigned int)id createIfAbsent:(BOOL)absent;
- (id)masterStyles:(id)styles;
- (id)sourceTextBoxContainerHolderForTargetShape:(id)shape;
- (unint64_t)getSlideIndexAt:(unint64_t)at;
- (void)addFontEntity:(id)entity charSet:(int)set type:(int)type family:(int)family;
- (void)addSlideIndex:(unint64_t)index;
- (void)dealloc;
- (void)setCurrentBulletStyle:(id)style macCharStyle:(id)charStyle;
- (void)setCurrentTextType:(int)type placeholderIndex:(unsigned int)index;
- (void)setSourceTextBoxContainerHolder:(id)holder forTargetShape:(id)shape;
@end

@implementation PBPresentationReaderState

- (void)dealloc
{
  mCurrentSlideTextBlockRecordIndexRangeVector = self->mCurrentSlideTextBlockRecordIndexRangeVector;
  if (mCurrentSlideTextBlockRecordIndexRangeVector)
  {
    v4 = *mCurrentSlideTextBlockRecordIndexRangeVector;
    if (*mCurrentSlideTextBlockRecordIndexRangeVector)
    {
      mCurrentSlideTextBlockRecordIndexRangeVector[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x25F897000](mCurrentSlideTextBlockRecordIndexRangeVector, 0x20C40960023A9);
  }

  self->mCurrentSlideTextBlockRecordIndexRangeVector = 0;
  CFRelease(self->mHyperlinkMap);
  mSrcDocMasterStyleInfoVector = self->mSrcDocMasterStyleInfoVector;
  if (mSrcDocMasterStyleInfoVector)
  {
    v6 = *mSrcDocMasterStyleInfoVector;
    if (*mSrcDocMasterStyleInfoVector)
    {
      mSrcDocMasterStyleInfoVector[1] = v6;
      operator delete(v6);
    }

    MEMORY[0x25F897000](mSrcDocMasterStyleInfoVector, 0x20C40960023A9);
  }

  self->mSrcDocMasterStyleInfoVector = 0;
  v7.receiver = self;
  v7.super_class = PBPresentationReaderState;
  [(PBPresentationReaderState *)&v7 dealloc];
}

- (PBPresentationReaderState)initWithReader:(void *)reader tgtPresentation:(id)presentation
{
  presentationCopy = presentation;
  v10.receiver = self;
  v10.super_class = PBPresentationReaderState;
  v8 = [(PBPresentationReaderState *)&v10 init];
  if (v8)
  {
    v8->mPptBinaryReader = reader;
    objc_storeStrong(&v8->mTgtPresentation, presentation);
    operator new();
  }

  return 0;
}

- (void)addSlideIndex:(unint64_t)index
{
  mSlideIndexes = self->mSlideIndexes;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [(NSMutableArray *)mSlideIndexes addObject:?];
}

- (unint64_t)getSlideIndexAt:(unint64_t)at
{
  v3 = [(NSMutableArray *)self->mSlideIndexes objectAtIndex:at];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)addFontEntity:(id)entity charSet:(int)set type:(int)type family:(int)family
{
  v6 = *&family;
  v7 = *&type;
  v8 = *&set;
  entityCopy = entity;
  v10 = [[PBFontEntity alloc] initWithName:entityCopy charSet:v8 type:v7 family:v6];
  [(NSMutableArray *)self->mFontEntities addObject:v10];
}

- (id)fontEntityAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->mFontEntities count]<= index)
  {
    v6 = [PBPresentationReaderState fontEntityAtIndex:]::defaultFontEntity;
    if (![PBPresentationReaderState fontEntityAtIndex:]::defaultFontEntity)
    {
      v7 = [[PBFontEntity alloc] initWithName:@"Arial" charSet:0 type:0 family:0];
      v8 = [PBPresentationReaderState fontEntityAtIndex:]::defaultFontEntity;
      [PBPresentationReaderState fontEntityAtIndex:]::defaultFontEntity = v7;

      v6 = [PBPresentationReaderState fontEntityAtIndex:]::defaultFontEntity;
    }

    v5 = v6;
  }

  else
  {
    v5 = [(NSMutableArray *)self->mFontEntities objectAtIndex:index];
  }

  return v5;
}

- (void)setCurrentTextType:(int)type placeholderIndex:(unsigned int)index
{
  v4 = *&index;
  v5 = *&type;
  v8 = [(PBOutlineBulletDictionary *)self->mPlaceholderBulletStyles objectForSlideId:self->mSrcSlideId textType:*&type placeholderIndex:*&index];
  v7 = [(PBOutlineBulletDictionary *)self->mPlaceholderMacCharStyles objectForSlideId:self->mSrcSlideId textType:v5 placeholderIndex:v4];
  [(PBPresentationReaderState *)self setCurrentBulletStyle:v8 macCharStyle:v7];
}

- (void)setCurrentBulletStyle:(id)style macCharStyle:(id)charStyle
{
  styleCopy = style;
  charStyleCopy = charStyle;
  mCurrentBulletStyle = self->mCurrentBulletStyle;
  self->mCurrentBulletStyle = styleCopy;
  v10 = styleCopy;

  mCurrentMacCharStyle = self->mCurrentMacCharStyle;
  self->mCurrentMacCharStyle = charStyleCopy;
}

- (id)masterStyles:(id)styles
{
  v3 = [(OITSUNoCopyDictionary *)self->mSlideMasterToMasterStyles objectForKey:styles];

  return v3;
}

- (PBReaderMasterStyleInfo)currentSourceMasterStyleInfoOfType:(int)type
{
  mSrcCurrentMasterStyleInfoVector = self->mSrcCurrentMasterStyleInfoVector;
  if (!mSrcCurrentMasterStyleInfoVector)
  {
    mSrcCurrentMasterStyleInfoVector = self->mSrcDocMasterStyleInfoVector;
  }

  return (*mSrcCurrentMasterStyleInfoVector + 16 * type);
}

- (id)hyperlinkInfoWithId:(unsigned int)id createIfAbsent:(BOOL)absent
{
  absentCopy = absent;
  idCopy = id;
  v7 = CFDictionaryGetValue(self->mHyperlinkMap, id);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !absentCopy;
  }

  if (!v8)
  {
    v7 = objc_alloc_init(PBReaderHyperlinkInfo);
    CFDictionarySetValue(self->mHyperlinkMap, idCopy, v7);
  }

  return v7;
}

- (id)sourceTextBoxContainerHolderForTargetShape:(id)shape
{
  mTargetShapeToSourceTextBoxContainerHolderMap = self->mTargetShapeToSourceTextBoxContainerHolderMap;
  v4 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:shape];
  v5 = [(NSMutableDictionary *)mTargetShapeToSourceTextBoxContainerHolderMap objectForKey:v4];
  nonretainedObjectValue = [v5 nonretainedObjectValue];

  return nonretainedObjectValue;
}

- (void)setSourceTextBoxContainerHolder:(id)holder forTargetShape:(id)shape
{
  shapeCopy = shape;
  mTargetShapeToSourceTextBoxContainerHolderMap = self->mTargetShapeToSourceTextBoxContainerHolderMap;
  v7 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:holder];
  v8 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:shapeCopy];
  [(NSMutableDictionary *)mTargetShapeToSourceTextBoxContainerHolderMap setObject:v7 forKey:v8];
}

@end