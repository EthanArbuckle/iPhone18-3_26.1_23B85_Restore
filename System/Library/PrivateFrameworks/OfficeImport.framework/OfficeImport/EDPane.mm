@interface EDPane
+ (id)pane;
- (EDPane)init;
- (id)description;
- (void)setTopLeftCell:(id)cell;
@end

@implementation EDPane

+ (id)pane
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (EDPane)init
{
  v3.receiver = self;
  v3.super_class = EDPane;
  result = [(EDPane *)&v3 init];
  if (result)
  {
    result->mActivePane = 0;
    result->mXSplitPosition = 0.0;
    result->mYSplitPosition = 0.0;
  }

  return result;
}

- (void)setTopLeftCell:(id)cell
{
  cellCopy = cell;
  mTopLeftCell = self->mTopLeftCell;
  p_mTopLeftCell = &self->mTopLeftCell;
  if (mTopLeftCell != cellCopy)
  {
    v8 = cellCopy;
    objc_storeStrong(p_mTopLeftCell, cell);
    cellCopy = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDPane;
  v2 = [(EDPane *)&v4 description];

  return v2;
}

@end