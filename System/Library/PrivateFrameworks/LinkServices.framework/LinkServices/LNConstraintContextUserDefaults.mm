@interface LNConstraintContextUserDefaults
- (LNConstraintContextUserDefaults)initWithIdentifier:(id)a3;
- (id)valueForKeyPath:(id)a3;
@end

@implementation LNConstraintContextUserDefaults

- (id)valueForKeyPath:(id)a3
{
  v4 = a3;
  v5 = self->_container;
  v6 = [v4 componentsSeparatedByString:@"."];
  if ([v6 count] == 1)
  {
    v7 = v4;
    v8 = self->_identifier;
    if (!v5)
    {
      goto LABEL_6;
    }

LABEL_5:
    v10 = _CFPreferencesCopyAppValueWithContainer();
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = [v6 lastObject];
  v9 = [v6 subarrayWithRange:{0, objc_msgSend(v6, "count") - 1}];
  v8 = [v9 componentsJoinedByString:@"."];

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = _CFPreferencesCopyAppValueWithContainer();
LABEL_7:

  return v10;
}

- (LNConstraintContextUserDefaults)initWithIdentifier:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"LNActionConstraint+Evaluation.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v20.receiver = self;
  v20.super_class = LNConstraintContextUserDefaults;
  v6 = [(LNConstraintContextUserDefaults *)&v20 init];
  if (v6)
  {
    v7 = [v5 copy];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = v5;
    container_query_create();
    container_query_set_class();
    v10 = xpc_string_create([v9 UTF8String]);
    container_query_set_identifiers();

    container_query_operation_set_flags();
    if (container_query_get_single_result())
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:container_get_path()];
    }

    else
    {
      container_query_get_last_error();
      if (container_error_get_type() != 72)
      {
        v12 = container_error_copy_unlocalized_description();
        v13 = getLNLogCategoryExecution();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [v9 UTF8String];
          v15 = "<null>";
          if (v12)
          {
            v15 = v12;
          }

          *buf = 136315394;
          v22 = v14;
          v23 = 2080;
          v24 = v15;
          _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_ERROR, "failed to lookup container for %s: %s\n", buf, 0x16u);
        }

        free(v12);
      }

      v11 = 0;
    }

    container_query_free();

    container = v6->_container;
    v6->_container = v11;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

@end