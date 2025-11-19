@interface BlockBasedFocusGuide
- (BOOL)isEnabled;
- (void)setEnabled:(BOOL)a3;
@end

@implementation BlockBasedFocusGuide

- (BOOL)isEnabled
{
  v2 = self;
  v3 = sub_24E0097C4();

  return v3 & 1;
}

- (void)setEnabled:(BOOL)a3
{
  v4 = self;
  sub_24E009898(a3);
}

@end