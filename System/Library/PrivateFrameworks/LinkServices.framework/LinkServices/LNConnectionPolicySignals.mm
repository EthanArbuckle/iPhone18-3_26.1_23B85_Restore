@interface LNConnectionPolicySignals
- (LNConnectionPolicySignals)init;
- (id)description;
@end

@implementation LNConnectionPolicySignals

- (LNConnectionPolicySignals)init
{
  v6.receiver = self;
  v6.super_class = LNConnectionPolicySignals;
  v2 = [(LNConnectionPolicySignals *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldExecuteActionOnApplicationBasedOnMetadata = 1;
    v4 = v2;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNConnectionPolicySignals *)self preferredBundleIdentifier];
  v7 = [(LNConnectionPolicySignals *)self processInstanceIdentifier];
  v8 = [(LNConnectionPolicySignals *)self shouldExecuteActionOnApplicationBasedOnMetadata];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, preferredBundleIdentifier: %@, processInstanceIdentifier: %@, shouldExecuteActionOnApplicationBasedOnMetadata: %@>", v5, self, v6, v7, v9];

  return v10;
}

@end