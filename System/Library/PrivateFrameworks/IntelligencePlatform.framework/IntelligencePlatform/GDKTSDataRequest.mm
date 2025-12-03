@interface GDKTSDataRequest
- (GDKTSDataRequest)initWithCoder:(id)coder;
- (GDKTSDataRequest)initWithParameters:(id)parameters;
- (GDKTSDataRequest)initWithParameters:(id)parameters cadence:(int64_t)cadence;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDKTSDataRequest

- (GDKTSDataRequest)initWithCoder:(id)coder
{
  v22[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_parameters);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_cadence);
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
    intValue = [v10 intValue];

    if (intValue || ([coderCopy error], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
    {
      v12 = [(GDKTSDataRequest *)self initWithParameters:v7 cadence:intValue];
    }

    else
    {
      v12 = [(GDKTSDataRequest *)self initWithParameters:v7];
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    error = [coderCopy error];

    if (!error)
    {
      v14 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v22[0] = @"GDKTSQueryParams is nil";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v16 = [v14 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v15];
      [coderCopy failWithError:v16];
    }

    selfCopy = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  parameters = self->_parameters;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_parameters);
  [coderCopy encodeObject:parameters forKey:v6];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_cadence];
  v7 = NSStringFromSelector(sel_cadence);
  [coderCopy encodeObject:v8 forKey:v7];
}

- (GDKTSDataRequest)initWithParameters:(id)parameters cadence:(int64_t)cadence
{
  parametersCopy = parameters;
  v11.receiver = self;
  v11.super_class = GDKTSDataRequest;
  v7 = [(GDKTSDataRequest *)&v11 init];
  if (v7)
  {
    v8 = [parametersCopy copy];
    parameters = v7->_parameters;
    v7->_parameters = v8;

    v7->_cadence = cadence;
  }

  return v7;
}

- (GDKTSDataRequest)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v9.receiver = self;
  v9.super_class = GDKTSDataRequest;
  v5 = [(GDKTSDataRequest *)&v9 init];
  if (v5)
  {
    v6 = [parametersCopy copy];
    parameters = v5->_parameters;
    v5->_parameters = v6;
  }

  return v5;
}

@end