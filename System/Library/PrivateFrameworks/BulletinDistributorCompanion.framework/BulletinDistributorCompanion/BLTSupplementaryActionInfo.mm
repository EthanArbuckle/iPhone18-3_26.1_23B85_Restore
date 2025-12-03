@interface BLTSupplementaryActionInfo
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation BLTSupplementaryActionInfo

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = BLTSupplementaryActionInfo;
  v4 = [(BLTActionInfo *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendObject:self->_identifier withName:@"identifier"];

  return v4;
}

@end