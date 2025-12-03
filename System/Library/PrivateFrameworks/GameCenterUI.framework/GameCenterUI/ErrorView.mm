@interface ErrorView
- (UIEdgeInsets)layoutMargins;
- (void)layoutSubviews;
- (void)setLayoutMargins:(UIEdgeInsets)margins;
@end

@implementation ErrorView

- (UIEdgeInsets)layoutMargins
{
  selfCopy = self;
  sub_24E1DEFF8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setLayoutMargins:(UIEdgeInsets)margins
{
  selfCopy = self;
  sub_24E1DF088();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E1DF0A0();
}

@end