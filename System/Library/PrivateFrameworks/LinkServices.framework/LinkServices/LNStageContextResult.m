@interface LNStageContextResult
+ (id)xpcClasses;
- (LNStageContextResult)initWithCoder:(id)a3;
- (LNStageContextResult)initWithResult:(id)a3 error:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNStageContextResult

+ (id)xpcClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

- (LNStageContextResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"result"];
  v6 = [v4 decodeObjectForKey:@"error"];

  if (v5 | v6)
  {
    self = [(LNStageContextResult *)self initWithResult:v5 error:v6];
    v7 = self;
  }

  else
  {
    v8 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_ERROR, "empty LNStageContextResult from coder", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNStageContextResult *)self result];
  [v4 encodeObject:v5 forKey:@"result"];

  v6 = [(LNStageContextResult *)self error];
  [v4 encodeObject:v6 forKey:@"error"];
}

- (LNStageContextResult)initWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = LNStageContextResult;
  v8 = [(LNStageContextResult *)&v13 init];
  v9 = v8->_result;
  v8->_result = v6;
  v10 = v6;

  error = v8->_error;
  v8->_error = v7;

  return v8;
}

@end