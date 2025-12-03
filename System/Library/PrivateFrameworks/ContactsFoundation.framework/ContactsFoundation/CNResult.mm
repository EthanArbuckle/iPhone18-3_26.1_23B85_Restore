@interface CNResult
+ (id)failureWithError:(id)error;
+ (id)resultWithBlock:(id)block;
+ (id)resultWithFuture:(id)future timeout:(double)timeout;
+ (id)resultWithValue:(id)value orError:(id)error;
+ (id)successWithValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (CNResult)initWithValue:(id)value error:(id)error;
- (id)description;
- (id)flatMap:(id)map;
- (id)map:(id)map;
- (id)recover:(id)recover;
- (id)valueWithError:(id *)error;
@end

@implementation CNResult

+ (id)resultWithValue:(id)value orError:(id)error
{
  errorCopy = error;
  valueCopy = value;
  v8 = [[self alloc] initWithValue:valueCopy error:errorCopy];

  return v8;
}

+ (id)resultWithBlock:(id)block
{
  v8 = 0;
  v4 = (*(block + 2))(block, &v8);
  v5 = v8;
  v6 = [self resultWithValue:v4 orError:v5];

  return v6;
}

+ (id)resultWithFuture:(id)future timeout:(double)timeout
{
  v9 = 0;
  v5 = [future resultWithTimeout:&v9 error:timeout];
  v6 = v9;
  v7 = [self resultWithValue:v5 orError:v6];

  return v7;
}

+ (id)successWithValue:(id)value
{
  valueCopy = value;
  v5 = [[self alloc] initWithValue:valueCopy error:0];

  return v5;
}

+ (id)failureWithError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] initWithValue:0 error:errorCopy];

  return v5;
}

- (CNResult)initWithValue:(id)value error:(id)error
{
  valueCopy = value;
  errorCopy = error;
  v13.receiver = self;
  v13.super_class = CNResult;
  v8 = [(CNResult *)&v13 init];
  if (v8)
  {
    v9 = [CNEither eitherWithLeft:valueCopy right:errorCopy];
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
    value = [(CNResult *)self value];
    v5 = @"value";
  }

  else
  {
    value = [(CNResult *)self error];
    v5 = @"error";
  }

  v6 = [v3 appendName:v5 object:value];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 1;
  if (self != equalCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (either = self->_either, either | equalCopy->_either) && ![(CNEither *)either isEqual:?])
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)valueWithError:(id *)error
{
  value = [(CNResult *)self value];
  error = [(CNResult *)self error];
  v7 = value;
  v8 = v7;
  if (error && !v7)
  {
    v9 = error;
    *error = error;
  }

  return v8;
}

- (id)map:(id)map
{
  mapCopy = map;
  if ([(CNResult *)self isSuccess])
  {
    value = [(CNResult *)self value];
    v6 = mapCopy[2](mapCopy, value);
    selfCopy = [CNResult successWithValue:v6];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)flatMap:(id)map
{
  mapCopy = map;
  if ([(CNResult *)self isSuccess])
  {
    value = [(CNResult *)self value];
    selfCopy = mapCopy[2](mapCopy, value);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)recover:(id)recover
{
  recoverCopy = recover;
  if ([(CNResult *)self isFailure])
  {
    error = [(CNResult *)self error];
    selfCopy = recoverCopy[2](recoverCopy, error);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end