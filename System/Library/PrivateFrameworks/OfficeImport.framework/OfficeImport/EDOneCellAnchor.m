@interface EDOneCellAnchor
- (CGSize)size;
- (EDCellAnchorMarker)from;
- (id).cxx_construct;
@end

@implementation EDOneCellAnchor

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (EDCellAnchorMarker)from
{
  p_mFrom = &self->mFrom;
  v3 = *&self->mFrom.columnIndex;
  v4 = *&p_mFrom->rowIndex;
  result.rowIndex = v4;
  result.rowAdjustment = *(&v4 + 1);
  result.columnIndex = v3;
  result.columnAdjustment = *(&v3 + 1);
  return result;
}

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end