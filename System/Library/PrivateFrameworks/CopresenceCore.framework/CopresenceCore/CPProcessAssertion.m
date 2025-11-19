@interface CPProcessAssertion
+ (id)processAssertionNameForBundleIdentifier:(id)a3;
+ (id)processAssertionWithBundleIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CPProcessAssertion)initWithBundleIdentifier:(id)a3;
- (id)name;
- (unint64_t)hash;
- (void)acquireWithCompletionHandler:(id)a3;
- (void)dealloc;
@end

@implementation CPProcessAssertion

- (CPProcessAssertion)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPProcessAssertion;
  v6 = [(CPProcessAssertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
  }

  return v7;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_processAssertion)
  {
    v3 = CPDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(CPProcessAssertion *)self bundleIdentifier];
      *buf = 136315394;
      v8 = "[CPProcessAssertion dealloc]";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1AEB26000, v3, OS_LOG_TYPE_INFO, "%s Invalidating process assertion for %@", buf, 0x16u);
    }

    [(BKSProcessAssertion *)self->_processAssertion invalidate];
  }

  v6.receiver = self;
  v6.super_class = CPProcessAssertion;
  [(CPProcessAssertion *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)acquireWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x1E698D038];
  v5 = a3;
  v6 = [v4 alloc];
  v9 = [(CPProcessAssertion *)self bundleIdentifier];
  v7 = [(CPProcessAssertion *)self name];
  v8 = [v6 initWithBundleIdentifier:v9 flags:11 reason:10008 name:v7 withHandler:v5];

  [(CPProcessAssertion *)self setProcessAssertion:v8];
}

+ (id)processAssertionWithBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x1E698D038];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [a1 processAssertionNameForBundleIdentifier:v5];
  v8 = [v6 initWithBundleIdentifier:v5 flags:11 reason:10008 name:v7];

  return v8;
}

+ (id)processAssertionNameForBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v3 stringWithFormat:@"%@-%@", objc_opt_class(), v4];

  return v5;
}

- (id)name
{
  v3 = objc_opt_class();
  v4 = [(CPProcessAssertion *)self bundleIdentifier];
  v5 = [v3 processAssertionNameForBundleIdentifier:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CPProcessAssertion *)self bundleIdentifier];
    v6 = [v4 bundleIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(CPProcessAssertion *)self bundleIdentifier];
  v3 = [v2 hash];

  return v3;
}

@end