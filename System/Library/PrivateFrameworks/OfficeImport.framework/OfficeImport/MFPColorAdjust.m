@interface MFPColorAdjust
- (MFPColorAdjust)init;
- (void)dealloc;
- (void)setColorMatrix:(MFPColorMatrix *)a3;
- (void)setGrayMatrix:(MFPColorMatrix *)a3;
- (void)setTransparentLow:(id)a3 high:(id)a4;
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

- (void)setColorMatrix:(MFPColorMatrix *)a3
{
  mColorMatrix = self->mColorMatrix;
  if (mColorMatrix)
  {
    MEMORY[0x25F897000](mColorMatrix, 0x1000C4093FC706DLL, a3);
  }

  operator new();
}

- (void)setGrayMatrix:(MFPColorMatrix *)a3
{
  mGrayMatrix = self->mGrayMatrix;
  if (mGrayMatrix)
  {
    MEMORY[0x25F897000](mGrayMatrix, 0x1000C4093FC706DLL, a3);
  }

  operator new();
}

- (void)setTransparentLow:(id)a3 high:(id)a4
{
  v6 = a3;
  v7 = a4;
  mTransparentRangeLow = self->mTransparentRangeLow;
  self->mTransparentRangeLow = v6;
  v10 = v6;

  mTransparentRangeHigh = self->mTransparentRangeHigh;
  self->mTransparentRangeHigh = v7;
}

@end