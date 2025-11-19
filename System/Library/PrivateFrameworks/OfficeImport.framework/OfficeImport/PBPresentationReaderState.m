@interface PBPresentationReaderState
- (PBPresentationReaderState)initWithReader:(void *)a3 tgtPresentation:(id)a4;
- (PBReaderMasterStyleInfo)currentSourceMasterStyleInfoOfType:(int)a3;
- (id)fontEntityAtIndex:(unint64_t)a3;
- (id)hyperlinkInfoWithId:(unsigned int)a3 createIfAbsent:(BOOL)a4;
- (id)masterStyles:(id)a3;
- (id)sourceTextBoxContainerHolderForTargetShape:(id)a3;
- (unint64_t)getSlideIndexAt:(unint64_t)a3;
- (void)addFontEntity:(id)a3 charSet:(int)a4 type:(int)a5 family:(int)a6;
- (void)addSlideIndex:(unint64_t)a3;
- (void)dealloc;
- (void)setCurrentBulletStyle:(id)a3 macCharStyle:(id)a4;
- (void)setCurrentTextType:(int)a3 placeholderIndex:(unsigned int)a4;
- (void)setSourceTextBoxContainerHolder:(id)a3 forTargetShape:(id)a4;
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

- (PBPresentationReaderState)initWithReader:(void *)a3 tgtPresentation:(id)a4
{
  v7 = a4;
  v10.receiver = self;
  v10.super_class = PBPresentationReaderState;
  v8 = [(PBPresentationReaderState *)&v10 init];
  if (v8)
  {
    v8->mPptBinaryReader = a3;
    objc_storeStrong(&v8->mTgtPresentation, a4);
    operator new();
  }

  return 0;
}

- (void)addSlideIndex:(unint64_t)a3
{
  mSlideIndexes = self->mSlideIndexes;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableArray *)mSlideIndexes addObject:?];
}

- (unint64_t)getSlideIndexAt:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->mSlideIndexes objectAtIndex:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)addFontEntity:(id)a3 charSet:(int)a4 type:(int)a5 family:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v8 = *&a4;
  v11 = a3;
  v10 = [[PBFontEntity alloc] initWithName:v11 charSet:v8 type:v7 family:v6];
  [(NSMutableArray *)self->mFontEntities addObject:v10];
}

- (id)fontEntityAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->mFontEntities count]<= a3)
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
    v5 = [(NSMutableArray *)self->mFontEntities objectAtIndex:a3];
  }

  return v5;
}

- (void)setCurrentTextType:(int)a3 placeholderIndex:(unsigned int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v8 = [(PBOutlineBulletDictionary *)self->mPlaceholderBulletStyles objectForSlideId:self->mSrcSlideId textType:*&a3 placeholderIndex:*&a4];
  v7 = [(PBOutlineBulletDictionary *)self->mPlaceholderMacCharStyles objectForSlideId:self->mSrcSlideId textType:v5 placeholderIndex:v4];
  [(PBPresentationReaderState *)self setCurrentBulletStyle:v8 macCharStyle:v7];
}

- (void)setCurrentBulletStyle:(id)a3 macCharStyle:(id)a4
{
  v6 = a3;
  v7 = a4;
  mCurrentBulletStyle = self->mCurrentBulletStyle;
  self->mCurrentBulletStyle = v6;
  v10 = v6;

  mCurrentMacCharStyle = self->mCurrentMacCharStyle;
  self->mCurrentMacCharStyle = v7;
}

- (id)masterStyles:(id)a3
{
  v3 = [(OITSUNoCopyDictionary *)self->mSlideMasterToMasterStyles objectForKey:a3];

  return v3;
}

- (PBReaderMasterStyleInfo)currentSourceMasterStyleInfoOfType:(int)a3
{
  mSrcCurrentMasterStyleInfoVector = self->mSrcCurrentMasterStyleInfoVector;
  if (!mSrcCurrentMasterStyleInfoVector)
  {
    mSrcCurrentMasterStyleInfoVector = self->mSrcDocMasterStyleInfoVector;
  }

  return (*mSrcCurrentMasterStyleInfoVector + 16 * a3);
}

- (id)hyperlinkInfoWithId:(unsigned int)a3 createIfAbsent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = CFDictionaryGetValue(self->mHyperlinkMap, a3);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    v7 = objc_alloc_init(PBReaderHyperlinkInfo);
    CFDictionarySetValue(self->mHyperlinkMap, v6, v7);
  }

  return v7;
}

- (id)sourceTextBoxContainerHolderForTargetShape:(id)a3
{
  mTargetShapeToSourceTextBoxContainerHolderMap = self->mTargetShapeToSourceTextBoxContainerHolderMap;
  v4 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:a3];
  v5 = [(NSMutableDictionary *)mTargetShapeToSourceTextBoxContainerHolderMap objectForKey:v4];
  v6 = [v5 nonretainedObjectValue];

  return v6;
}

- (void)setSourceTextBoxContainerHolder:(id)a3 forTargetShape:(id)a4
{
  v9 = a4;
  mTargetShapeToSourceTextBoxContainerHolderMap = self->mTargetShapeToSourceTextBoxContainerHolderMap;
  v7 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:a3];
  v8 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v9];
  [(NSMutableDictionary *)mTargetShapeToSourceTextBoxContainerHolderMap setObject:v7 forKey:v8];
}

@end