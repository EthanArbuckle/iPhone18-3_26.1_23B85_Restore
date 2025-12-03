@interface ICTableColumnTextContainer
- (CGRect)lineFragmentRectForProposedRect:(CGRect)rect atIndex:(unint64_t)index writingDirection:(int64_t)direction remainingRect:(CGRect *)remainingRect;
- (void)setSize:(CGSize)size;
@end

@implementation ICTableColumnTextContainer

- (CGRect)lineFragmentRectForProposedRect:(CGRect)rect atIndex:(unint64_t)index writingDirection:(int64_t)direction remainingRect:(CGRect *)remainingRect
{
  v31.receiver = self;
  v31.super_class = ICTableColumnTextContainer;
  [(ICTextContainer *)&v31 lineFragmentRectForProposedRect:index atIndex:direction writingDirection:remainingRect remainingRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  objc_opt_class();
  layoutManager = [(ICTableColumnTextContainer *)self layoutManager];
  v17 = ICDynamicCast();

  columnTextStorage = [v17 columnTextStorage];
  tableLayoutManager = [v17 tableLayoutManager];
  v30[0] = 0;
  v30[1] = 0;
  v20 = [columnTextStorage rowAtIndex:index rowRange:v30];
  if (v30[0] == index)
  {
    rowPositions = [tableLayoutManager rowPositions];
    v22 = [rowPositions objectForKey:v20];

    if (v22)
    {
      rowPositions2 = [tableLayoutManager rowPositions];
      v24 = [rowPositions2 objectForKey:v20];
      [v24 doubleValue];
      v11 = v25;
    }
  }

  v26 = v9;
  v27 = v11;
  v28 = v13;
  v29 = v15;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)setSize:(CGSize)size
{
  width = size.width;
  [(ICTableColumnTextContainer *)self size:size.width];
  if (width != v6 || v5 != 1.79769313e308)
  {
    v8.receiver = self;
    v8.super_class = ICTableColumnTextContainer;
    [(ICTableColumnTextContainer *)&v8 setSize:width, 1.79769313e308];
  }
}

@end