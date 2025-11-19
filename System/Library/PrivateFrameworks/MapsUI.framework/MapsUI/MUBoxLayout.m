@interface MUBoxLayout
- (MUBoxLayout)initWithContainer:(id)a3;
- (NSDirectionalEdgeInsets)insets;
- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)a3;
- (UIOffset)offsetForArrangedLayoutItem:(id)a3;
@end

@implementation MUBoxLayout

- (UIOffset)offsetForArrangedLayoutItem:(id)a3
{
  [(MUBoxLayoutInternal *)self->_internal offsetForArrangedLayoutItem:a3];
  result.vertical = v4;
  result.horizontal = v3;
  return result;
}

- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)a3
{
  [(MUBoxLayoutInternal *)self->_internal paddingForArrangedLayoutItem:a3];
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

- (MUBoxLayout)initWithContainer:(id)a3
{
  v4 = a3;
  v5 = [[MUBoxLayoutInternal alloc] initWithContainer:v4];

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