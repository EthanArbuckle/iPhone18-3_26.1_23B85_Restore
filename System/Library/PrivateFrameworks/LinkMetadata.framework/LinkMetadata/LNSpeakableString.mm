@interface LNSpeakableString
- (BOOL)isEqual:(id)a3;
- (LNSpeakableString)initWithCoder:(id)a3;
- (LNSpeakableString)initWithSpoken:(id)a3 printed:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSpeakableString

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNSpeakableString *)self spoken];
  [v4 encodeObject:v5 forKey:@"spoken"];

  v6 = [(LNSpeakableString *)self printed];
  [v4 encodeObject:v6 forKey:@"printed"];
}

- (LNSpeakableString)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spoken"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"printed"];
    if (v6)
    {
      self = [(LNSpeakableString *)self initWithSpoken:v5 printed:v6];
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNSpeakableString *)self spoken];
  v7 = [(LNSpeakableString *)self printed];
  v8 = [v3 stringWithFormat:@"<%@: %p, spoken: %@, printed: %@>", v5, self, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(LNSpeakableString *)self spoken];
  v4 = [v3 hash];
  v5 = [(LNSpeakableString *)self printed];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNSpeakableString *)self spoken];
      v8 = [(LNSpeakableString *)v6 spoken];
      if ([v7 isEqual:v8])
      {
        v9 = [(LNSpeakableString *)self printed];
        v10 = [(LNSpeakableString *)v6 printed];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (LNSpeakableString)initWithSpoken:(id)a3 printed:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"LNSpeakableString.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"spoken"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"LNSpeakableString.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"printed"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNSpeakableString;
  v10 = [(LNSpeakableString *)&v19 init];
  if (v10)
  {
    v11 = [v7 copy];
    spoken = v10->_spoken;
    v10->_spoken = v11;

    v13 = [v9 copy];
    printed = v10->_printed;
    v10->_printed = v13;

    v15 = v10;
  }

  return v10;
}

@end