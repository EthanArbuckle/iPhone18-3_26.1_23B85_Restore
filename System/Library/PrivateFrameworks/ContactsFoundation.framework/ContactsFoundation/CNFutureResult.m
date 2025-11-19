@interface CNFutureResult
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setResult:(id)a3 error:(id)a4;
@end

@implementation CNFutureResult

- (id)description
{
  v3 = [(CNFutureResult *)self result];
  if (v3)
  {

LABEL_4:
    v5 = [(CNFutureResult *)self result];

    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (v5)
    {
      v9 = [(CNFutureResult *)self result];
      [v6 stringWithFormat:@"<%@: %p result='%@'>", v8, self, v9];
    }

    else
    {
      v9 = [(CNFutureResult *)self error];
      [v6 stringWithFormat:@"<%@: %p error='%@'>", v8, self, v9];
    }
    v10 = ;

    goto LABEL_8;
  }

  v4 = [(CNFutureResult *)self error];

  if (v4)
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

- (void)setResult:(id)a3 error:(id)a4
{
  if (a3)
  {
    [(CNFutureResult *)self setResult:a3, a4];
  }

  else
  {
    [(CNFutureResult *)self setError:a4];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(CNFutureResult *)self result];
  v6 = [(CNFutureResult *)self error];
  [v4 setResult:v5 error:v6];

  return v4;
}

@end