@interface LNStageContextResult
+ (id)xpcClasses;
- (LNStageContextResult)initWithCoder:(id)coder;
- (LNStageContextResult)initWithResult:(id)result error:(id)error;
- (void)encodeWithCoder:(id)coder;
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

- (LNStageContextResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"result"];
  v6 = [coderCopy decodeObjectForKey:@"error"];

  if (v5 | v6)
  {
    self = [(LNStageContextResult *)self initWithResult:v5 error:v6];
    selfCopy = self;
  }

  else
  {
    v8 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_ERROR, "empty LNStageContextResult from coder", v10, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  result = [(LNStageContextResult *)self result];
  [coderCopy encodeObject:result forKey:@"result"];

  error = [(LNStageContextResult *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
}

- (LNStageContextResult)initWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v13.receiver = self;
  v13.super_class = LNStageContextResult;
  v8 = [(LNStageContextResult *)&v13 init];
  v9 = v8->_result;
  v8->_result = resultCopy;
  v10 = resultCopy;

  error = v8->_error;
  v8->_error = errorCopy;

  return v8;
}

@end