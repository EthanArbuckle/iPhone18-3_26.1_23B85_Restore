@interface MapsSuggestionsContact
- (BOOL)isEqual:(id)a3;
- (MapsSuggestionsContact)initWithCoder:(id)a3;
- (MapsSuggestionsContact)initWithHandleValue:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MapsSuggestionsContact

- (MapsSuggestionsContact)initWithHandleValue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MapsSuggestionsContact;
  v5 = [(MapsSuggestionsContact *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    handleValue = v5->_handleValue;
    v5->_handleValue = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MapsSuggestionsContact *)self handleValue];
  v6 = [v4 initWithHandleValue:v5];

  return v6;
}

- (MapsSuggestionsContact)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsContactHandleValueKey"];

  v6 = [(MapsSuggestionsContact *)self initWithHandleValue:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      handleValue = self->_handleValue;
      v7 = [(MapsSuggestionsContact *)v5 handleValue];

      if (handleValue == v7 || (v8 = self->_handleValue, [(MapsSuggestionsContact *)v5 handleValue], v9 = objc_claimAutoreleasedReturnValue(), v10 = [(NSString *)v8 isEqualToString:v9], v9, v10))
      {
        LOBYTE(v10) = 1;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(MapsSuggestionsContact *)self handleValue];
  v5 = v4;
  v6 = &stru_1F444C108;
  if (v4)
  {
    v6 = v4;
  }

  v7 = [v3 initWithFormat:@"CONTACT '%@'", v6];

  return v7;
}

@end