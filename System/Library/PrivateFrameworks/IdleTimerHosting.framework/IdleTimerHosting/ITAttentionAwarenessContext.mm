@interface ITAttentionAwarenessContext
- (BOOL)isEqual:(id)a3;
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
    v3 = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = v3;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    identifier = self->_identifier;
    v8 = [v4 identifier];
    v6 = [(NSUUID *)identifier isEqual:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end