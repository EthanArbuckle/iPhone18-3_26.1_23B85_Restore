@interface ODIHNodeInfo
- (ODIHNodeInfo)init;
- (ODIHRange)xRange;
- (void)dealloc;
@end

@implementation ODIHNodeInfo

- (ODIHNodeInfo)init
{
  v4.receiver = self;
  v4.super_class = ODIHNodeInfo;
  v2 = [(ODIHNodeInfo *)&v4 init];
  if (v2)
  {
    *&v2->mTreeDepth = -1;
    v2->mExtraRowsBetweenParentAndSelf = 0;
    v2->mXRange = 0;
    v2->mConnectToVerticalSide = 0;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  mXRanges = self->mXRanges;
  if (mXRanges)
  {
    v4 = *mXRanges;
    if (*mXRanges)
    {
      mXRanges[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x25F897000](mXRanges, 0x20C40960023A9);
  }

  v5.receiver = self;
  v5.super_class = ODIHNodeInfo;
  [(ODIHNodeInfo *)&v5 dealloc];
}

- (ODIHRange)xRange
{
  mMid = self->mXRange.mMid;
  mLength = self->mXRange.mLength;
  result.mLength = mLength;
  result.mMid = mMid;
  return result;
}

@end