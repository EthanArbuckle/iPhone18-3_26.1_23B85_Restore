@interface MUStackLayout
- (MUStackLayout)initWithContainer:(id)container axis:(int64_t)axis;
- (NSDirectionalEdgeInsets)insets;
- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)item;
- (UIOffset)offsetForArrangedLayoutItem:(id)item;
@end

@implementation MUStackLayout

- (UIOffset)offsetForArrangedLayoutItem:(id)item
{
  [(MUStackLayoutInternal *)self->_internal offsetForArrangedLayoutItem:item];
  result.vertical = v4;
  result.horizontal = v3;
  return result;
}

- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)item
{
  [(MUStackLayoutInternal *)self->_internal paddingForArrangedLayoutItem:item];
  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

- (NSDirectionalEdgeInsets)insets
{
  [(MUStackLayoutInternal *)self->_internal insets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (MUStackLayout)initWithContainer:(id)container axis:(int64_t)axis
{
  containerCopy = container;
  v7 = [[MUStackLayoutInternal alloc] initWithContainer:containerCopy axis:axis];

  v11.receiver = self;
  v11.super_class = MUStackLayout;
  v8 = [(MUConstraintLayout *)&v11 initWithInternal:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_internal, v7);
  }

  return v9;
}

@end