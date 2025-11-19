@interface NUAssertionPolicyComposite
- (NUAssertionPolicyComposite)init;
- (void)notifyAssertion:(id)a3;
@end

@implementation NUAssertionPolicyComposite

- (void)notifyAssertion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NUAssertionPolicyComposite *)self policies];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) notifyAssertion:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (NUAssertionPolicyComposite)init
{
  v6.receiver = self;
  v6.super_class = NUAssertionPolicyComposite;
  v2 = [(NUAssertionPolicyComposite *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  policies = v2->_policies;
  v2->_policies = v3;

  return v2;
}

@end