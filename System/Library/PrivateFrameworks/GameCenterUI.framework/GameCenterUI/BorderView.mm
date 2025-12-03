@interface BorderView
- (UIColor)backgroundColor;
- (void)setBackgroundColor:(id)color;
- (void)setClipsToBounds:(BOOL)bounds;
@end

@implementation BorderView

- (UIColor)backgroundColor
{
  selfCopy = self;
  v3 = sub_24E0D9934();

  return v3;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_24E135AD8(color);
}

- (void)setClipsToBounds:(BOOL)bounds
{
  selfCopy = self;
  sub_24E135BF0();
}

@end