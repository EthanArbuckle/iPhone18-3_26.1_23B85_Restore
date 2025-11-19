@interface BorderView
- (UIColor)backgroundColor;
- (void)setBackgroundColor:(id)a3;
- (void)setClipsToBounds:(BOOL)a3;
@end

@implementation BorderView

- (UIColor)backgroundColor
{
  v2 = self;
  v3 = sub_24E0D9934();

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E135AD8(a3);
}

- (void)setClipsToBounds:(BOOL)a3
{
  v3 = self;
  sub_24E135BF0();
}

@end