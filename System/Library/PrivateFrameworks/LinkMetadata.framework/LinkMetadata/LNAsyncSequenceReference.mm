@interface LNAsyncSequenceReference
- (BOOL)isEqual:(id)equal;
- (LNAsyncSequenceReference)initWithCoder:(id)coder;
- (LNAsyncSequenceReference)initWithIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAsyncSequenceReference

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNAsyncSequenceReference *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (LNAsyncSequenceReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  if (v5)
  {
    self = [(LNAsyncSequenceReference *)self initWithIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  identifier = [(LNAsyncSequenceReference *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      identifier = [(LNAsyncSequenceReference *)self identifier];
      identifier2 = [(LNAsyncSequenceReference *)v6 identifier];
      v9 = [identifier isEqual:identifier2];
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
  identifier = [(LNAsyncSequenceReference *)self identifier];
  uUIDString = [identifier UUIDString];
  v8 = [v3 stringWithFormat:@"<%@ %@>", v5, uUIDString];

  return v8;
}

- (LNAsyncSequenceReference)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAsyncSequenceReference.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v12.receiver = self;
  v12.super_class = LNAsyncSequenceReference;
  v7 = [(LNAsyncSequenceReference *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_identifier, identifier);
    v9 = v8;
  }

  return v8;
}

@end