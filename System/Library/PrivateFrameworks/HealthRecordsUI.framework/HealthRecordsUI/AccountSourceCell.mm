@interface AccountSourceCell
- (void)prepareForReuse;
@end

@implementation AccountSourceCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1D132CF9C();
}

@end