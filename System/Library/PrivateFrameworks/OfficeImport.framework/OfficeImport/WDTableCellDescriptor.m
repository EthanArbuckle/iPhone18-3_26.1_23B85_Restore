@interface WDTableCellDescriptor
- (void)setBottomBorderOverridden:(BOOL)a3;
- (void)setBottomMarginOverridden:(BOOL)a3;
- (void)setBottomMarginTypeOverridden:(BOOL)a3;
- (void)setDiagonalDownBorderOverridden:(BOOL)a3;
- (void)setDiagonalUpBorderOverridden:(BOOL)a3;
- (void)setFirstInSetOfVerticallyMergedCells:(BOOL)a3;
- (void)setFirstInSetOfVerticallyMergedCellsOverridden:(BOOL)a3;
- (void)setLeftBorderOverridden:(BOOL)a3;
- (void)setLeftMarginOverridden:(BOOL)a3;
- (void)setLeftMarginTypeOverridden:(BOOL)a3;
- (void)setNoWrap:(BOOL)a3;
- (void)setNoWrapOverridden:(BOOL)a3;
- (void)setRightBorderOverridden:(BOOL)a3;
- (void)setRightMarginOverridden:(BOOL)a3;
- (void)setRightMarginTypeOverridden:(BOOL)a3;
- (void)setTopBorderOverridden:(BOOL)a3;
- (void)setTopMarginTypeOverridden:(BOOL)a3;
- (void)setVerticallyMergedCell:(BOOL)a3;
- (void)setVerticallyMergedCellOverridden:(BOOL)a3;
- (void)setWidthTypeOverridden:(BOOL)a3;
@end

@implementation WDTableCellDescriptor

- (void)setTopBorderOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = *(self + 108) & 0xFD | v3;
}

- (void)setLeftBorderOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = *(self + 108) & 0xFB | v3;
}

- (void)setBottomBorderOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = *(self + 108) & 0xF7 | v3;
}

- (void)setRightBorderOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = *(self + 108) & 0xEF | v3;
}

- (void)setDiagonalUpBorderOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = *(self + 108) & 0xDF | v3;
}

- (void)setDiagonalDownBorderOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = *(self + 108) & 0xBF | v3;
}

- (void)setWidthTypeOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = v3 & 0x80 | *(self + 108) & 0x7F;
}

- (void)setTopMarginTypeOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 109) = *(self + 109) & 0xFD | v3;
}

- (void)setBottomMarginOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 109) = *(self + 109) & 0xFB | v3;
}

- (void)setBottomMarginTypeOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 109) = *(self + 109) & 0xF7 | v3;
}

- (void)setLeftMarginOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 109) = *(self + 109) & 0xEF | v3;
}

- (void)setLeftMarginTypeOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 109) = *(self + 109) & 0xDF | v3;
}

- (void)setRightMarginOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 109) = *(self + 109) & 0xBF | v3;
}

- (void)setRightMarginTypeOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 109) = v3 & 0x80 | *(self + 109) & 0x7F;
}

- (void)setVerticallyMergedCell:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 110) = *(self + 110) & 0xFD | v3;
}

- (void)setVerticallyMergedCellOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 110) = *(self + 110) & 0xFB | v3;
}

- (void)setFirstInSetOfVerticallyMergedCells:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 110) = *(self + 110) & 0xF7 | v3;
}

- (void)setFirstInSetOfVerticallyMergedCellsOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 110) = *(self + 110) & 0xEF | v3;
}

- (void)setNoWrap:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 110) = *(self + 110) & 0xDF | v3;
}

- (void)setNoWrapOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 110) = *(self + 110) & 0xBF | v3;
}

@end