@interface MUStackLayout
- (MUStackLayout)initWithContainer:(id)a3 axis:(int64_t)a4;
- (NSDirectionalEdgeInsets)insets;
- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)a3;
- (UIOffset)offsetForArrangedLayoutItem:(id)a3;
@end

@implementation MUStackLayout

- (UIOffset)offsetForArrangedLayoutItem:(id)a3
{
  [(MUStackLayoutInternal *)self->_internal offsetForArrangedLayoutItem:a3];
  result.vertical = v4;
  result.horizontal = v3;
  return result;
}

- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)a3
{
  [(MUStackLayoutInternal *)self->_internal paddingForArrangedLayoutItem:a3];
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

- (MUStackLayout)initWithContainer:(id)a3 axis:(int64_t)a4
{
  v6 = a3;
  v7 = [[MUStackLayoutInternal alloc] initWithContainer:v6 axis:a4];

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