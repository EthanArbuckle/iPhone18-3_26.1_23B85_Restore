@interface WDTableCellDescriptor
- (void)setBottomBorderOverridden:(BOOL)overridden;
- (void)setBottomMarginOverridden:(BOOL)overridden;
- (void)setBottomMarginTypeOverridden:(BOOL)overridden;
- (void)setDiagonalDownBorderOverridden:(BOOL)overridden;
- (void)setDiagonalUpBorderOverridden:(BOOL)overridden;
- (void)setFirstInSetOfVerticallyMergedCells:(BOOL)cells;
- (void)setFirstInSetOfVerticallyMergedCellsOverridden:(BOOL)overridden;
- (void)setLeftBorderOverridden:(BOOL)overridden;
- (void)setLeftMarginOverridden:(BOOL)overridden;
- (void)setLeftMarginTypeOverridden:(BOOL)overridden;
- (void)setNoWrap:(BOOL)wrap;
- (void)setNoWrapOverridden:(BOOL)overridden;
- (void)setRightBorderOverridden:(BOOL)overridden;
- (void)setRightMarginOverridden:(BOOL)overridden;
- (void)setRightMarginTypeOverridden:(BOOL)overridden;
- (void)setTopBorderOverridden:(BOOL)overridden;
- (void)setTopMarginTypeOverridden:(BOOL)overridden;
- (void)setVerticallyMergedCell:(BOOL)cell;
- (void)setVerticallyMergedCellOverridden:(BOOL)overridden;
- (void)setWidthTypeOverridden:(BOOL)overridden;
@end

@implementation WDTableCellDescriptor

- (void)setTopBorderOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = *(self + 108) & 0xFD | v3;
}

- (void)setLeftBorderOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = *(self + 108) & 0xFB | v3;
}

- (void)setBottomBorderOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = *(self + 108) & 0xF7 | v3;
}

- (void)setRightBorderOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = *(self + 108) & 0xEF | v3;
}

- (void)setDiagonalUpBorderOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = *(self + 108) & 0xDF | v3;
}

- (void)setDiagonalDownBorderOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = *(self + 108) & 0xBF | v3;
}

- (void)setWidthTypeOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = v3 & 0x80 | *(self + 108) & 0x7F;
}

- (void)setTopMarginTypeOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 109) = *(self + 109) & 0xFD | v3;
}

- (void)setBottomMarginOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 109) = *(self + 109) & 0xFB | v3;
}

- (void)setBottomMarginTypeOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 109) = *(self + 109) & 0xF7 | v3;
}

- (void)setLeftMarginOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 109) = *(self + 109) & 0xEF | v3;
}

- (void)setLeftMarginTypeOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 109) = *(self + 109) & 0xDF | v3;
}

- (void)setRightMarginOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 109) = *(self + 109) & 0xBF | v3;
}

- (void)setRightMarginTypeOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 109) = v3 & 0x80 | *(self + 109) & 0x7F;
}

- (void)setVerticallyMergedCell:(BOOL)cell
{
  if (cell)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 110) = *(self + 110) & 0xFD | v3;
}

- (void)setVerticallyMergedCellOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 110) = *(self + 110) & 0xFB | v3;
}

- (void)setFirstInSetOfVerticallyMergedCells:(BOOL)cells
{
  if (cells)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 110) = *(self + 110) & 0xF7 | v3;
}

- (void)setFirstInSetOfVerticallyMergedCellsOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 110) = *(self + 110) & 0xEF | v3;
}

- (void)setNoWrap:(BOOL)wrap
{
  if (wrap)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 110) = *(self + 110) & 0xDF | v3;
}

- (void)setNoWrapOverridden:(BOOL)overridden
{
  if (overridden)
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