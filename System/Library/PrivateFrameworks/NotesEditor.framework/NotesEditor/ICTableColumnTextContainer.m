@interface ICTableColumnTextContainer
- (CGRect)lineFragmentRectForProposedRect:(CGRect)a3 atIndex:(unint64_t)a4 writingDirection:(int64_t)a5 remainingRect:(CGRect *)a6;
- (void)setSize:(CGSize)a3;
@end

@implementation ICTableColumnTextContainer

- (CGRect)lineFragmentRectForProposedRect:(CGRect)a3 atIndex:(unint64_t)a4 writingDirection:(int64_t)a5 remainingRect:(CGRect *)a6
{
  v31.receiver = self;
  v31.super_class = ICTableColumnTextContainer;
  [(ICTextContainer *)&v31 lineFragmentRectForProposedRect:a4 atIndex:a5 writingDirection:a6 remainingRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  objc_opt_class();
  v16 = [(ICTableColumnTextContainer *)self layoutManager];
  v17 = ICDynamicCast();

  v18 = [v17 columnTextStorage];
  v19 = [v17 tableLayoutManager];
  v30[0] = 0;
  v30[1] = 0;
  v20 = [v18 rowAtIndex:a4 rowRange:v30];
  if (v30[0] == a4)
  {
    v21 = [v19 rowPositions];
    v22 = [v21 objectForKey:v20];

    if (v22)
    {
      v23 = [v19 rowPositions];
      v24 = [v23 objectForKey:v20];
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

- (void)setSize:(CGSize)a3
{
  width = a3.width;
  [(ICTableColumnTextContainer *)self size:a3.width];
  if (width != v6 || v5 != 1.79769313e308)
  {
    v8.receiver = self;
    v8.super_class = ICTableColumnTextContainer;
    [(ICTableColumnTextContainer *)&v8 setSize:width, 1.79769313e308];
  }
}

@end