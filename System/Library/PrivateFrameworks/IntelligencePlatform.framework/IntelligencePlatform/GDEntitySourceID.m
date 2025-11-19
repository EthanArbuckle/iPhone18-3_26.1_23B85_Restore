@interface GDEntitySourceID
- (GDEntitySourceID)initWithCoder:(id)a3;
- (GDEntitySourceID)initWithValue:(id)a3 source:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDEntitySourceID

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GDEntitySourceID *)self value];
  v5 = [(GDEntitySourceID *)self source];
  v6 = [v3 stringWithFormat:@"<GDEntitySourceID: %@, source: %@>", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  value = self->_value;
  source = self->_source;

  return [v4 initWithValue:value source:source];
}

- (GDEntitySourceID)initWithCoder:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    if (v6 || ([v4 error], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      self = [(GDEntitySourceID *)self initWithValue:v5 source:v6];
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = [v4 error];

    if (!v8)
    {
      v9 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A578];
      v16[0] = @"GDEntityResolution value is nil";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v11 = [v9 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
      [v4 failWithError:v11];
    }

    v7 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  value = self->_value;
  v5 = a3;
  [v5 encodeObject:value forKey:@"value"];
  [v5 encodeObject:self->_source forKey:@"source"];
}

- (GDEntitySourceID)initWithValue:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = GDEntitySourceID;
  v8 = [(GDEntitySourceID *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    value = v8->_value;
    v8->_value = v9;

    v11 = [v7 copy];
    source = v8->_source;
    v8->_source = v11;
  }

  return v8;
}

@end