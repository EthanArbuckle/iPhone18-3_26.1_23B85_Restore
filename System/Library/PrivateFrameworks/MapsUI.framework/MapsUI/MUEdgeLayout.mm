@interface MUEdgeLayout
- (MUEdgeLayout)initWithItem:(id)a3 container:(id)a4;
- (MUEdgeLayout)initWithItem:(id)a3 container:(id)a4 insets:(NSDirectionalEdgeInsets)a5;
- (MUEdgeLayout)initWithItem:(id)a3 container:(id)a4 insets:(NSDirectionalEdgeInsets)a5 edges:(unint64_t)a6 priority:(float)a7;
- (NSDirectionalEdgeInsets)insets;
@end

@implementation MUEdgeLayout

- (NSDirectionalEdgeInsets)insets
{
  [(MUEdgeLayoutInternal *)self->_internal insets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (MUEdgeLayout)initWithItem:(id)a3 container:(id)a4 insets:(NSDirectionalEdgeInsets)a5 edges:(unint64_t)a6 priority:(float)a7
{
  trailing = a5.trailing;
  bottom = a5.bottom;
  leading = a5.leading;
  top = a5.top;
  v15 = a4;
  v16 = a3;
  v17 = [MUEdgeLayoutInternal alloc];
  *&v18 = a7;
  v19 = [(MUEdgeLayoutInternal *)v17 initWithItem:v16 container:v15 insets:a6 edges:top priority:leading, bottom, trailing, v18];

  v23.receiver = self;
  v23.super_class = MUEdgeLayout;
  v20 = [(MUConstraintLayout *)&v23 initWithInternal:v19];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_internal, v19);
  }

  return v21;
}

- (MUEdgeLayout)initWithItem:(id)a3 container:(id)a4 insets:(NSDirectionalEdgeInsets)a5
{
  trailing = a5.trailing;
  bottom = a5.bottom;
  leading = a5.leading;
  top = a5.top;
  v11 = a4;
  v12 = a3;
  v13 = [[MUEdgeLayoutInternal alloc] initWithItem:v12 container:v11 insets:top, leading, bottom, trailing];

  v17.receiver = self;
  v17.super_class = MUEdgeLayout;
  v14 = [(MUConstraintLayout *)&v17 initWithInternal:v13];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_internal, v13);
  }

  return v15;
}

- (MUEdgeLayout)initWithItem:(id)a3 container:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[MUEdgeLayoutInternal alloc] initWithItem:v7 container:v6];

  v12.receiver = self;
  v12.super_class = MUEdgeLayout;
  v9 = [(MUConstraintLayout *)&v12 initWithInternal:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_internal, v8);
  }

  return v10;
}

@end