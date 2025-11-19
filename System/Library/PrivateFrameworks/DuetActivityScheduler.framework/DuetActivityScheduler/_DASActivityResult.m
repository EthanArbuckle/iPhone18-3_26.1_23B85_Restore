@interface _DASActivityResult
- (BOOL)isEqual:(id)a3;
- (_DASActivityResult)initWithCoder:(id)a3;
- (_DASActivityResult)initWithIdentifier:(id)a3;
- (_DASActivityResult)initWithIdentifier:(id)a3 count:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionary;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DASActivityResult

- (_DASActivityResult)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _DASActivityResult;
  v6 = [(_DASActivityResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v7->_count = 0;
  }

  return v7;
}

- (_DASActivityResult)initWithIdentifier:(id)a3 count:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _DASActivityResult;
  v8 = [(_DASActivityResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_count = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(_DASActivityResult *)v4 identifier];
      v6 = [v5 isEqual:self->_identifier];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  identifier = self->_identifier;
  count = self->_count;

  return [v4 initWithIdentifier:identifier count:count];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  identifier = self->_identifier;
  count = self->_count;

  return [v4 initWithIdentifier:identifier count:count];
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_count];
  [v5 encodeObject:v6 forKey:@"count"];
}

- (_DASActivityResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"count"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(objc_opt_class()) initWithIdentifier:v5 count:{objc_msgSend(v6, "intValue")}];
  }

  return v8;
}

- (id)dictionary
{
  v8[1] = *MEMORY[0x1E69E9840];
  count = self->_count;
  identifier = self->_identifier;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:count];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&identifier count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end