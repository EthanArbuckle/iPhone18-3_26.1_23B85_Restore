@interface LNStringSearchCriteria
- (BOOL)isEqual:(id)a3;
- (LNStringSearchCriteria)initWithCoder:(id)a3;
- (LNStringSearchCriteria)initWithTerm:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNStringSearchCriteria

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNStringSearchCriteria *)self term];
      v8 = [(LNStringSearchCriteria *)v6 term];
      v9 = v7;
      v10 = v8;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNStringSearchCriteria *)self term];
  [v4 encodeObject:v5 forKey:@"term"];
}

- (LNStringSearchCriteria)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"term"];

  if (v5)
  {
    self = [(LNStringSearchCriteria *)self initWithTerm:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (LNStringSearchCriteria)initWithTerm:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LNStringSearchCriteria.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"term"}];
  }

  v12.receiver = self;
  v12.super_class = LNStringSearchCriteria;
  v6 = [(LNStringSearchCriteria *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    term = v6->_term;
    v6->_term = v7;

    v9 = v6;
  }

  return v6;
}

@end