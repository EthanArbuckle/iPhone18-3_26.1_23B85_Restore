@interface LNNLGRepresentation
- (BOOL)isEqual:(id)a3;
- (LNNLGRepresentation)initWithCoder:(id)a3;
- (LNNLGRepresentation)initWithType:(id)a3 title:(id)a4 value:(id)a5 format:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNNLGRepresentation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNNLGRepresentation *)self type];
  [v4 encodeObject:v5 forKey:@"type"];

  v6 = [(LNNLGRepresentation *)self title];
  [v4 encodeObject:v6 forKey:@"title"];

  v7 = [(LNNLGRepresentation *)self value];
  [v4 encodeObject:v7 forKey:@"value"];

  v8 = [(LNNLGRepresentation *)self format];
  [v4 encodeObject:v8 forKey:@"format"];
}

- (LNNLGRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"format"];

  v9 = [(LNNLGRepresentation *)self initWithType:v5 title:v6 value:v7 format:v8];
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNNLGRepresentation *)self type];
  v7 = [(LNNLGRepresentation *)self title];
  v8 = [(LNNLGRepresentation *)self value];
  v9 = [(LNNLGRepresentation *)self format];
  v10 = [v3 stringWithFormat:@"<%@: %p, type: %@, title: %@, value: %@, format: %@>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (unint64_t)hash
{
  v3 = [(LNNLGRepresentation *)self type];
  v4 = [v3 hash];
  v5 = [(LNNLGRepresentation *)self title];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNNLGRepresentation *)self value];
  v8 = [v7 hash];
  v9 = [(LNNLGRepresentation *)self format];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNNLGRepresentation *)self type];
      v8 = [(LNNLGRepresentation *)v6 type];
      if ([v7 isEqual:v8])
      {
        v9 = [(LNNLGRepresentation *)self title];
        v10 = [(LNNLGRepresentation *)v6 title];
        if ([v9 isEqual:v10])
        {
          v11 = [(LNNLGRepresentation *)self value];
          v12 = [(LNNLGRepresentation *)v6 value];
          if ([v11 isEqual:v12])
          {
            v16 = [(LNNLGRepresentation *)self format];
            v13 = [(LNNLGRepresentation *)v6 format];
            v14 = [v16 isEqual:v13];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (LNNLGRepresentation)initWithType:(id)a3 title:(id)a4 value:(id)a5 format:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = LNNLGRepresentation;
  v14 = [(LNNLGRepresentation *)&v25 init];
  if (v14)
  {
    v15 = [v10 copy];
    type = v14->_type;
    v14->_type = v15;

    v17 = [v11 copy];
    title = v14->_title;
    v14->_title = v17;

    v19 = [v12 copy];
    value = v14->_value;
    v14->_value = v19;

    v21 = [v13 copy];
    format = v14->_format;
    v14->_format = v21;

    v23 = v14;
  }

  return v14;
}

@end