@interface LNAsyncSequenceReference
- (BOOL)isEqual:(id)a3;
- (LNAsyncSequenceReference)initWithCoder:(id)a3;
- (LNAsyncSequenceReference)initWithIdentifier:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAsyncSequenceReference

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAsyncSequenceReference *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (LNAsyncSequenceReference)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  if (v5)
  {
    self = [(LNAsyncSequenceReference *)self initWithIdentifier:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(LNAsyncSequenceReference *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNAsyncSequenceReference *)self identifier];
      v8 = [(LNAsyncSequenceReference *)v6 identifier];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNAsyncSequenceReference *)self identifier];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"<%@ %@>", v5, v7];

  return v8;
}

- (LNAsyncSequenceReference)initWithIdentifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LNAsyncSequenceReference.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v12.receiver = self;
  v12.super_class = LNAsyncSequenceReference;
  v7 = [(LNAsyncSequenceReference *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_identifier, a3);
    v9 = v8;
  }

  return v8;
}

@end