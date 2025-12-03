@interface LNStringSearchCriteria
- (BOOL)isEqual:(id)equal;
- (LNStringSearchCriteria)initWithCoder:(id)coder;
- (LNStringSearchCriteria)initWithTerm:(id)term;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNStringSearchCriteria

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      term = [(LNStringSearchCriteria *)self term];
      term2 = [(LNStringSearchCriteria *)v6 term];
      v9 = term;
      v10 = term2;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqualToString:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  term = [(LNStringSearchCriteria *)self term];
  [coderCopy encodeObject:term forKey:@"term"];
}

- (LNStringSearchCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"term"];

  if (v5)
  {
    self = [(LNStringSearchCriteria *)self initWithTerm:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (LNStringSearchCriteria)initWithTerm:(id)term
{
  termCopy = term;
  if (!termCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNStringSearchCriteria.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"term"}];
  }

  v12.receiver = self;
  v12.super_class = LNStringSearchCriteria;
  v6 = [(LNStringSearchCriteria *)&v12 init];
  if (v6)
  {
    v7 = [termCopy copy];
    term = v6->_term;
    v6->_term = v7;

    v9 = v6;
  }

  return v6;
}

@end