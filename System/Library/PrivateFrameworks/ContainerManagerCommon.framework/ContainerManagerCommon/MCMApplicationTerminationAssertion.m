@interface MCMApplicationTerminationAssertion
- (MCMApplicationTerminationAssertion)initWithBundleIdentifier:(id)a3 reason:(id)a4;
- (RBSTerminationAssertion)termAssertion;
- (void)dealloc;
- (void)invalidate;
- (void)setTermAssertion:(id)a3;
@end

@implementation MCMApplicationTerminationAssertion

- (void)setTermAssertion:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_termAssertion = &self->_termAssertion;

  objc_storeStrong(p_termAssertion, a3);
}

- (RBSTerminationAssertion)termAssertion
{
  result = self->_termAssertion;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(MCMApplicationTerminationAssertion *)self termAssertion];
  if (objc_claimAutoreleasedReturnValue())
  {
    __assert_rtn("[MCMApplicationTerminationAssertion dealloc]", "MCMApplicationTerminationAssertion.m", 93, "nil == self.termAssertion");
  }

  v4.receiver = self;
  v4.super_class = MCMApplicationTerminationAssertion;
  [(MCMApplicationTerminationAssertion *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [(MCMApplicationTerminationAssertion *)self termAssertion];
  if (v3)
  {
    v5 = v3;
    [v3 invalidate];
    [(MCMApplicationTerminationAssertion *)self setTermAssertion:0];
    v3 = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (MCMApplicationTerminationAssertion)initWithBundleIdentifier:(id)a3 reason:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = MCMApplicationTerminationAssertion;
  v8 = [(MCMApplicationTerminationAssertion *)&v24 init];
  if (!v8 || !NSClassFromString(@"RBSProcessPredicate"))
  {
LABEL_21:
    v20 = v8;
    goto LABEL_22;
  }

  v9 = [MEMORY[0x1E69C7608] predicateMatchingBundleIdentifier:v6];
  if (!v9)
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "Failed to generate predicate for termination assertion for [%@]", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x1E69C7658]) initWithExplanation:v7];
  if (!v11)
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Failed to generate context for termination assertion for [%@]", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v12 = v11;
  [v11 setExceptionCode:3735933956];
  v13 = [objc_alloc(MEMORY[0x1E69C7670]) initWithPredicate:v10 context:v12];
  if (!v13)
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to init termination assertion for [%@]", buf, 0xCu);
    }

LABEL_15:
LABEL_16:

    goto LABEL_17;
  }

  v14 = v13;
  v23 = 0;
  v15 = [v13 acquireWithError:&v23];
  v16 = v23;
  if (v15)
  {
    v17 = v14;
    termAssertion = v8->_termAssertion;
    v8->_termAssertion = v17;
  }

  else
  {
    termAssertion = container_log_handle_for_category();
    if (os_log_type_enabled(termAssertion, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = v16;
      _os_log_error_impl(&dword_1DF2C3000, termAssertion, OS_LOG_TYPE_ERROR, "Failed to acquire termination assertion for [%@]: %@", buf, 0x16u);
    }
  }

  if (v15)
  {
    goto LABEL_21;
  }

LABEL_17:
  v20 = 0;
LABEL_22:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

@end