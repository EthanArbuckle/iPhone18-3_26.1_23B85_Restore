@interface CollectionViewLayoutContainer
- (CGSize)contentSize;
- (CGSize)effectiveContentSize;
- (NSDirectionalEdgeInsets)contentInsets;
- (NSDirectionalEdgeInsets)effectiveContentInsets;
@end

@implementation CollectionViewLayoutContainer

- (CGSize)contentSize
{
  v2 = sub_24E12AEC4();
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)effectiveContentSize
{
  v2 = self;
  sub_24E12AF54();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (NSDirectionalEdgeInsets)contentInsets
{
  v2 = sub_24E12AFA0();
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (NSDirectionalEdgeInsets)effectiveContentInsets
{
  v2 = sub_24E12B018();
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

@end