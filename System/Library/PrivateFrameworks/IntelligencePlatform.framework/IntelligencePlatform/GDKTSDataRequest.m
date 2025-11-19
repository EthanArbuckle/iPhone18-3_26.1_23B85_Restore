@interface GDKTSDataRequest
- (GDKTSDataRequest)initWithCoder:(id)a3;
- (GDKTSDataRequest)initWithParameters:(id)a3;
- (GDKTSDataRequest)initWithParameters:(id)a3 cadence:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDKTSDataRequest

- (GDKTSDataRequest)initWithCoder:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_parameters);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_cadence);
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];
    v11 = [v10 intValue];

    if (v11 || ([v4 error], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
    {
      v12 = [(GDKTSDataRequest *)self initWithParameters:v7 cadence:v11];
    }

    else
    {
      v12 = [(GDKTSDataRequest *)self initWithParameters:v7];
    }

    self = v12;
    v17 = self;
  }

  else
  {
    v13 = [v4 error];

    if (!v13)
    {
      v14 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v22[0] = @"GDKTSQueryParams is nil";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v16 = [v14 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v15];
      [v4 failWithError:v16];
    }

    v17 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  parameters = self->_parameters;
  v5 = a3;
  v6 = NSStringFromSelector(sel_parameters);
  [v5 encodeObject:parameters forKey:v6];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_cadence];
  v7 = NSStringFromSelector(sel_cadence);
  [v5 encodeObject:v8 forKey:v7];
}

- (GDKTSDataRequest)initWithParameters:(id)a3 cadence:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = GDKTSDataRequest;
  v7 = [(GDKTSDataRequest *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    parameters = v7->_parameters;
    v7->_parameters = v8;

    v7->_cadence = a4;
  }

  return v7;
}

- (GDKTSDataRequest)initWithParameters:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GDKTSDataRequest;
  v5 = [(GDKTSDataRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    parameters = v5->_parameters;
    v5->_parameters = v6;
  }

  return v5;
}

@end