@interface BLTSupplementaryActionInfo
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation BLTSupplementaryActionInfo

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = BLTSupplementaryActionInfo;
  v4 = [(BLTActionInfo *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendObject:self->_identifier withName:@"identifier"];

  return v4;
}

@end