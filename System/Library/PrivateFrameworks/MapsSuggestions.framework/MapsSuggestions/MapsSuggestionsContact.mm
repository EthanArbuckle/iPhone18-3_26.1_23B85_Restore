@interface MapsSuggestionsContact
- (BOOL)isEqual:(id)equal;
- (MapsSuggestionsContact)initWithCoder:(id)coder;
- (MapsSuggestionsContact)initWithHandleValue:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MapsSuggestionsContact

- (MapsSuggestionsContact)initWithHandleValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = MapsSuggestionsContact;
  v5 = [(MapsSuggestionsContact *)&v9 init];
  if (v5)
  {
    v6 = [valueCopy copy];
    handleValue = v5->_handleValue;
    v5->_handleValue = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  handleValue = [(MapsSuggestionsContact *)self handleValue];
  v6 = [v4 initWithHandleValue:handleValue];

  return v6;
}

- (MapsSuggestionsContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsContactHandleValueKey"];

  v6 = [(MapsSuggestionsContact *)self initWithHandleValue:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      handleValue = self->_handleValue;
      handleValue = [(MapsSuggestionsContact *)v5 handleValue];

      if (handleValue == handleValue || (v8 = self->_handleValue, [(MapsSuggestionsContact *)v5 handleValue], v9 = objc_claimAutoreleasedReturnValue(), v10 = [(NSString *)v8 isEqualToString:v9], v9, v10))
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
  handleValue = [(MapsSuggestionsContact *)self handleValue];
  v5 = handleValue;
  v6 = &stru_1F444C108;
  if (handleValue)
  {
    v6 = handleValue;
  }

  v7 = [v3 initWithFormat:@"CONTACT '%@'", v6];

  return v7;
}

@end