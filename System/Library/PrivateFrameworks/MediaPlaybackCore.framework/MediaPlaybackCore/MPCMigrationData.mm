@interface MPCMigrationData
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPCMigrationData

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C5E3A084(coderCopy);
}

@end