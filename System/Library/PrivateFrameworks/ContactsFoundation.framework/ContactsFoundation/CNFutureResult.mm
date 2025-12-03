@interface CNFutureResult
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setResult:(id)result error:(id)error;
@end

@implementation CNFutureResult

- (id)description
{
  result = [(CNFutureResult *)self result];
  if (result)
  {

LABEL_4:
    result2 = [(CNFutureResult *)self result];

    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (result2)
    {
      result3 = [(CNFutureResult *)self result];
      [v6 stringWithFormat:@"<%@: %p result='%@'>", v8, self, result3];
    }

    else
    {
      result3 = [(CNFutureResult *)self error];
      [v6 stringWithFormat:@"<%@: %p error='%@'>", v8, self, result3];
    }
    v10 = ;

    goto LABEL_8;
  }

  error = [(CNFutureResult *)self error];

  if (error)
  {
    goto LABEL_4;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  v8 = NSStringFromClass(v13);
  v10 = [v12 stringWithFormat:@"<%@: %p unfinished>", v8, self];
LABEL_8:

  return v10;
}

- (void)setResult:(id)result error:(id)error
{
  if (result)
  {
    [(CNFutureResult *)self setResult:result, error];
  }

  else
  {
    [(CNFutureResult *)self setError:error];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  result = [(CNFutureResult *)self result];
  error = [(CNFutureResult *)self error];
  [v4 setResult:result error:error];

  return v4;
}

@end