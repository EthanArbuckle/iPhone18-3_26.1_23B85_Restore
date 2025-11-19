@interface EDTwoCellAnchor
- (EDCellAnchorMarker)from;
- (EDCellAnchorMarker)to;
- (EDTwoCellAnchor)init;
- (id).cxx_construct;
@end

@implementation EDTwoCellAnchor

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (EDTwoCellAnchor)init
{
  v3.receiver = self;
  v3.super_class = EDTwoCellAnchor;
  result = [(EDTwoCellAnchor *)&v3 init];
  if (result)
  {
    result->mEditAs = 0;
  }

  return result;
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

- (EDCellAnchorMarker)to
{
  p_mTo = &self->mTo;
  v3 = *&self->mTo.columnIndex;
  v4 = *&p_mTo->rowIndex;
  result.rowIndex = v4;
  result.rowAdjustment = *(&v4 + 1);
  result.columnIndex = v3;
  result.columnAdjustment = *(&v3 + 1);
  return result;
}

@end