@interface IPPhaseState
- (IPPhaseState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IPPhaseState

- (IPPhaseState)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = IPPhaseState;
  v5 = [(IPPhaseState *)&v7 init];
  if (v5)
  {
    v5->_totalUnitCount = [v4 decodeInt64ForKey:@"totalUnitCount"];
    v5->_completedUnitCount = [v4 decodeInt64ForKey:@"completedUnitCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  totalUnitCount = self->_totalUnitCount;
  v5 = a3;
  [v5 encodeInt64:totalUnitCount forKey:@"totalUnitCount"];
  [v5 encodeInt64:self->_completedUnitCount forKey:@"completedUnitCount"];
}

@end