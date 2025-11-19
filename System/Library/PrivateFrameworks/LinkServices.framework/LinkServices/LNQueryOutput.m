@interface LNQueryOutput
- (LNQueryOutput)initWithCoder:(id)a3;
- (LNQueryOutput)initWithIdentifier:(id)a3 value:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNQueryOutput

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNQueryOutput *)self identifier];
  v7 = [(LNQueryOutput *)self value];
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, value: %@>", v5, self, v6, v7];

  return v8;
}

- (LNQueryOutput)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"value"];

  v8 = [(LNQueryOutput *)self initWithIdentifier:v5 value:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNQueryOutput *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNQueryOutput *)self value];
  [v4 encodeObject:v6 forKey:@"value"];
}

- (LNQueryOutput)initWithIdentifier:(id)a3 value:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"LNQueryOutput.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"LNQueryOutput.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"value"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = LNQueryOutput;
  v11 = [(LNQueryOutput *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_value, a4);
    v13 = v12;
  }

  return v12;
}

@end