@interface CNResult
+ (id)failureWithError:(id)a3;
+ (id)resultWithBlock:(id)a3;
+ (id)resultWithFuture:(id)a3 timeout:(double)a4;
+ (id)resultWithValue:(id)a3 orError:(id)a4;
+ (id)successWithValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CNResult)initWithValue:(id)a3 error:(id)a4;
- (id)description;
- (id)flatMap:(id)a3;
- (id)map:(id)a3;
- (id)recover:(id)a3;
- (id)valueWithError:(id *)a3;
@end

@implementation CNResult

+ (id)resultWithValue:(id)a3 orError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithValue:v7 error:v6];

  return v8;
}

+ (id)resultWithBlock:(id)a3
{
  v8 = 0;
  v4 = (*(a3 + 2))(a3, &v8);
  v5 = v8;
  v6 = [a1 resultWithValue:v4 orError:v5];

  return v6;
}

+ (id)resultWithFuture:(id)a3 timeout:(double)a4
{
  v9 = 0;
  v5 = [a3 resultWithTimeout:&v9 error:a4];
  v6 = v9;
  v7 = [a1 resultWithValue:v5 orError:v6];

  return v7;
}

+ (id)successWithValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithValue:v4 error:0];

  return v5;
}

+ (id)failureWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithValue:0 error:v4];

  return v5;
}

- (CNResult)initWithValue:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CNResult;
  v8 = [(CNResult *)&v13 init];
  if (v8)
  {
    v9 = [CNEither eitherWithLeft:v6 right:v7];
    either = v8->_either;
    v8->_either = v9;

    v11 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  if ([(CNResult *)self isSuccess])
  {
    v4 = [(CNResult *)self value];
    v5 = @"value";
  }

  else
  {
    v4 = [(CNResult *)self error];
    v5 = @"error";
  }

  v6 = [v3 appendName:v5 object:v4];

  v7 = [v3 build];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 1;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (either = self->_either, either | v4->_either) && ![(CNEither *)either isEqual:?])
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)valueWithError:(id *)a3
{
  v5 = [(CNResult *)self value];
  v6 = [(CNResult *)self error];
  v7 = v5;
  v8 = v7;
  if (a3 && !v7)
  {
    v9 = v6;
    *a3 = v6;
  }

  return v8;
}

- (id)map:(id)a3
{
  v4 = a3;
  if ([(CNResult *)self isSuccess])
  {
    v5 = [(CNResult *)self value];
    v6 = v4[2](v4, v5);
    v7 = [CNResult successWithValue:v6];
  }

  else
  {
    v7 = self;
  }

  return v7;
}

- (id)flatMap:(id)a3
{
  v4 = a3;
  if ([(CNResult *)self isSuccess])
  {
    v5 = [(CNResult *)self value];
    v6 = v4[2](v4, v5);
  }

  else
  {
    v6 = self;
  }

  return v6;
}

- (id)recover:(id)a3
{
  v4 = a3;
  if ([(CNResult *)self isFailure])
  {
    v5 = [(CNResult *)self error];
    v6 = v4[2](v4, v5);
  }

  else
  {
    v6 = self;
  }

  return v6;
}

@end