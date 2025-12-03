@interface ITAttentionAwarenessContext
- (BOOL)isEqual:(id)equal;
- (ITAttentionAwarenessContext)init;
@end

@implementation ITAttentionAwarenessContext

- (ITAttentionAwarenessContext)init
{
  v6.receiver = self;
  v6.super_class = ITAttentionAwarenessContext;
  v2 = [(ITAttentionAwarenessContext *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = uUID;
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    identifier = self->_identifier;
    identifier = [equalCopy identifier];
    v6 = [(NSUUID *)identifier isEqual:identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end