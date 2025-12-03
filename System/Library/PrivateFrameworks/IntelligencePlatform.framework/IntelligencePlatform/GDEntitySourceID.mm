@interface GDEntitySourceID
- (GDEntitySourceID)initWithCoder:(id)coder;
- (GDEntitySourceID)initWithValue:(id)value source:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDEntitySourceID

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  value = [(GDEntitySourceID *)self value];
  source = [(GDEntitySourceID *)self source];
  v6 = [v3 stringWithFormat:@"<GDEntitySourceID: %@, source: %@>", value, source];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  value = self->_value;
  source = self->_source;

  return [v4 initWithValue:value source:source];
}

- (GDEntitySourceID)initWithCoder:(id)coder
{
  v16[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    if (v6 || ([coderCopy error], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      self = [(GDEntitySourceID *)self initWithValue:v5 source:v6];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    error = [coderCopy error];

    if (!error)
    {
      v9 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A578];
      v16[0] = @"GDEntityResolution value is nil";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v11 = [v9 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
      [coderCopy failWithError:v11];
    }

    selfCopy = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  [coderCopy encodeObject:value forKey:@"value"];
  [coderCopy encodeObject:self->_source forKey:@"source"];
}

- (GDEntitySourceID)initWithValue:(id)value source:(id)source
{
  valueCopy = value;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = GDEntitySourceID;
  v8 = [(GDEntitySourceID *)&v14 init];
  if (v8)
  {
    v9 = [valueCopy copy];
    value = v8->_value;
    v8->_value = v9;

    v11 = [sourceCopy copy];
    source = v8->_source;
    v8->_source = v11;
  }

  return v8;
}

@end