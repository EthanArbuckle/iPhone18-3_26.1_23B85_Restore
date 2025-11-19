@interface IDSOffGridModeContext
- (IDSOffGridModeContext)init;
- (IDSOffGridModeContext)initWithCoder:(id)a3;
- (id)description;
@end

@implementation IDSOffGridModeContext

- (IDSOffGridModeContext)init
{
  v6.receiver = self;
  v6.super_class = IDSOffGridModeContext;
  v2 = [(IDSOffGridModeContext *)&v6 init];
  v3 = v2;
  if (v2)
  {
    error = v2->_error;
    v2->_error = 0;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSOffGridModeContext *)self error];
  v5 = [v3 stringWithFormat:@"<IDSOffGridModeContext %p>: error %@", self, v4];

  return v5;
}

- (IDSOffGridModeContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(IDSOffGridModeContext);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  [(IDSOffGridModeContext *)v5 setError:v6];
  return v5;
}

@end