@interface IRPolicyInspection
- (IRPolicyInspection)initWithName:(id)a3;
- (NSSet)candidates;
@end

@implementation IRPolicyInspection

- (IRPolicyInspection)initWithName:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = IRPolicyInspection;
  v6 = [(IRPolicyInspection *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    internalCandidates = v6->_internalCandidates;
    v6->_internalCandidates = v7;

    objc_storeStrong(&v6->_name, a3);
  }

  return v6;
}

- (NSSet)candidates
{
  v2 = [(NSMutableSet *)self->_internalCandidates copy];

  return v2;
}

@end