@interface MFPColorAdjust
- (MFPColorAdjust)init;
- (void)dealloc;
- (void)setColorMatrix:(MFPColorMatrix *)matrix;
- (void)setGrayMatrix:(MFPColorMatrix *)matrix;
- (void)setTransparentLow:(id)low high:(id)high;
@end

@implementation MFPColorAdjust

- (MFPColorAdjust)init
{
  v3.receiver = self;
  v3.super_class = MFPColorAdjust;
  result = [(MFPColorAdjust *)&v3 init];
  if (result)
  {
    result->mColorMatrixFlags = -1;
    result->mGamma = -1.0;
    result->mThreshold = -1.0;
    result->mEnabled = 1;
  }

  return result;
}

- (void)dealloc
{
  mColorMatrix = self->mColorMatrix;
  if (mColorMatrix)
  {
    MEMORY[0x25F897000](mColorMatrix, 0x1000C4093FC706DLL);
  }

  mGrayMatrix = self->mGrayMatrix;
  if (mGrayMatrix)
  {
    MEMORY[0x25F897000](mGrayMatrix, 0x1000C4093FC706DLL);
  }

  v5.receiver = self;
  v5.super_class = MFPColorAdjust;
  [(MFPColorAdjust *)&v5 dealloc];
}

- (void)setColorMatrix:(MFPColorMatrix *)matrix
{
  mColorMatrix = self->mColorMatrix;
  if (mColorMatrix)
  {
    MEMORY[0x25F897000](mColorMatrix, 0x1000C4093FC706DLL, matrix);
  }

  operator new();
}

- (void)setGrayMatrix:(MFPColorMatrix *)matrix
{
  mGrayMatrix = self->mGrayMatrix;
  if (mGrayMatrix)
  {
    MEMORY[0x25F897000](mGrayMatrix, 0x1000C4093FC706DLL, matrix);
  }

  operator new();
}

- (void)setTransparentLow:(id)low high:(id)high
{
  lowCopy = low;
  highCopy = high;
  mTransparentRangeLow = self->mTransparentRangeLow;
  self->mTransparentRangeLow = lowCopy;
  v10 = lowCopy;

  mTransparentRangeHigh = self->mTransparentRangeHigh;
  self->mTransparentRangeHigh = highCopy;
}

@end