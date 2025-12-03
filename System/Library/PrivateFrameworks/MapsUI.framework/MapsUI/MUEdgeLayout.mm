@interface MUEdgeLayout
- (MUEdgeLayout)initWithItem:(id)item container:(id)container;
- (MUEdgeLayout)initWithItem:(id)item container:(id)container insets:(NSDirectionalEdgeInsets)insets;
- (MUEdgeLayout)initWithItem:(id)item container:(id)container insets:(NSDirectionalEdgeInsets)insets edges:(unint64_t)edges priority:(float)priority;
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

- (MUEdgeLayout)initWithItem:(id)item container:(id)container insets:(NSDirectionalEdgeInsets)insets edges:(unint64_t)edges priority:(float)priority
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  containerCopy = container;
  itemCopy = item;
  v17 = [MUEdgeLayoutInternal alloc];
  *&v18 = priority;
  v19 = [(MUEdgeLayoutInternal *)v17 initWithItem:itemCopy container:containerCopy insets:edges edges:top priority:leading, bottom, trailing, v18];

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

- (MUEdgeLayout)initWithItem:(id)item container:(id)container insets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  containerCopy = container;
  itemCopy = item;
  trailing = [[MUEdgeLayoutInternal alloc] initWithItem:itemCopy container:containerCopy insets:top, leading, bottom, trailing];

  v17.receiver = self;
  v17.super_class = MUEdgeLayout;
  v14 = [(MUConstraintLayout *)&v17 initWithInternal:trailing];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_internal, trailing);
  }

  return v15;
}

- (MUEdgeLayout)initWithItem:(id)item container:(id)container
{
  containerCopy = container;
  itemCopy = item;
  v8 = [[MUEdgeLayoutInternal alloc] initWithItem:itemCopy container:containerCopy];

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