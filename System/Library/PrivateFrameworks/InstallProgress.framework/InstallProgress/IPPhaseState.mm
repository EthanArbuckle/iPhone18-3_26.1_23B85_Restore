@interface IPPhaseState
- (IPPhaseState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IPPhaseState

- (IPPhaseState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = IPPhaseState;
  v5 = [(IPPhaseState *)&v7 init];
  if (v5)
  {
    v5->_totalUnitCount = [coderCopy decodeInt64ForKey:@"totalUnitCount"];
    v5->_completedUnitCount = [coderCopy decodeInt64ForKey:@"completedUnitCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  totalUnitCount = self->_totalUnitCount;
  coderCopy = coder;
  [coderCopy encodeInt64:totalUnitCount forKey:@"totalUnitCount"];
  [coderCopy encodeInt64:self->_completedUnitCount forKey:@"completedUnitCount"];
}

@end