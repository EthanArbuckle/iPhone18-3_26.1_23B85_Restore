@interface MUBoxLayout
- (MUBoxLayout)initWithContainer:(id)container;
- (NSDirectionalEdgeInsets)insets;
- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)item;
- (UIOffset)offsetForArrangedLayoutItem:(id)item;
@end

@implementation MUBoxLayout

- (UIOffset)offsetForArrangedLayoutItem:(id)item
{
  [(MUBoxLayoutInternal *)self->_internal offsetForArrangedLayoutItem:item];
  result.vertical = v4;
  result.horizontal = v3;
  return result;
}

- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)item
{
  [(MUBoxLayoutInternal *)self->_internal paddingForArrangedLayoutItem:item];
  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

- (NSDirectionalEdgeInsets)insets
{
  [(MUBoxLayoutInternal *)self->_internal insets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (MUBoxLayout)initWithContainer:(id)container
{
  containerCopy = container;
  v5 = [[MUBoxLayoutInternal alloc] initWithContainer:containerCopy];

  v9.receiver = self;
  v9.super_class = MUBoxLayout;
  v6 = [(MUConstraintLayout *)&v9 initWithInternal:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internal, v5);
  }

  return v7;
}

@end