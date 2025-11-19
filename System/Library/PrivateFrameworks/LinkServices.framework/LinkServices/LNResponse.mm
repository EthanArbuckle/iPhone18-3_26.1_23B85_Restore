@interface LNResponse
- (LNResponse)initWithCoder:(id)a3;
- (LNResponse)initWithIdentifier:(id)a3 context:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNResponse

- (LNResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    self = [(LNResponse *)self initWithIdentifier:v5 context:v6];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNResponse *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNResponse *)self context];
  [v4 encodeObject:v6 forKey:@"context"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNResponse *)self identifier];
  v7 = [(LNResponse *)self context];
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, context: %@>", v5, self, v6, v7];

  return v8;
}

- (LNResponse)initWithIdentifier:(id)a3 context:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"LNResponse.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v15.receiver = self;
  v15.super_class = LNResponse;
  v10 = [(LNResponse *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, a3);
    objc_storeStrong(&v11->_context, a4);
    v12 = v11;
  }

  return v11;
}

@end