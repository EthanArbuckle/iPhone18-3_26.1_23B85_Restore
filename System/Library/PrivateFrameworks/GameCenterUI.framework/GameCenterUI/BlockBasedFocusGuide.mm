@interface BlockBasedFocusGuide
- (BOOL)isEnabled;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation BlockBasedFocusGuide

- (BOOL)isEnabled
{
  selfCopy = self;
  v3 = sub_24E0097C4();

  return v3 & 1;
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_24E009898(enabled);
}

@end