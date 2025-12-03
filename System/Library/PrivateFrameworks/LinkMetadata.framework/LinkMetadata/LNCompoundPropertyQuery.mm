@interface LNCompoundPropertyQuery
+ (id)andComparisons:(id)comparisons;
+ (id)orComparisons:(id)comparisons;
- (BOOL)isEqual:(id)equal;
- (LNCompoundPropertyQuery)initWithCoder:(id)coder;
- (LNCompoundPropertyQuery)initWithType:(unint64_t)type comparisons:(id)comparisons;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNCompoundPropertyQuery

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_comparisons forKey:@"comparisons"];
}

- (LNCompoundPropertyQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"comparisons"];

  if (v9)
  {
    self = [(LNCompoundPropertyQuery *)self initWithType:v5 comparisons:v9];
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
  comparisons = [(LNCompoundPropertyQuery *)self comparisons];
  v4 = [comparisons hash];
  type = [(LNCompoundPropertyQuery *)self type];

  return type ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        comparisons = [(LNCompoundPropertyQuery *)self comparisons];
        v8 = [comparisons count];
        comparisons2 = [(LNCompoundPropertyQuery *)v6 comparisons];
        v10 = [comparisons2 count];

        if (v8 != v10)
        {
          v13 = 0;
          goto LABEL_10;
        }

        comparisons3 = [(LNCompoundPropertyQuery *)self comparisons];
        comparisons4 = [(LNCompoundPropertyQuery *)v6 comparisons];
        v13 = [comparisons3 isEqual:comparisons4];
      }

      else
      {
        v13 = 0;
        comparisons3 = v6;
        v6 = 0;
      }
    }

    else
    {
      comparisons3 = 0;
      v13 = 0;
    }

LABEL_10:
    goto LABEL_11;
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (id)description
{
  v3 = [@"<" mutableCopy];
  comparisons = [(LNCompoundPropertyQuery *)self comparisons];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __38__LNCompoundPropertyQuery_description__block_invoke;
  v11 = &unk_1E72B0E60;
  v12 = v3;
  selfCopy = self;
  v5 = v3;
  [comparisons enumerateObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

uint64_t __38__LNCompoundPropertyQuery_description__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  [*(a1 + 32) appendFormat:@"%@", a2];
  v5 = [*(a1 + 40) comparisons];
  v6 = [v5 count] - 1;

  v7 = *(a1 + 32);
  if (v6 <= a3)
  {
    v12 = *(a1 + 32);

    return [v12 appendString:@">"];
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = [v8 type];
      v10 = @"OR";
      if (!v9)
      {
        v10 = @"AND";
      }
    }

    else
    {
      v10 = 0;
    }

    return [v7 appendFormat:@" %@ ", v10];
  }
}

- (LNCompoundPropertyQuery)initWithType:(unint64_t)type comparisons:(id)comparisons
{
  comparisonsCopy = comparisons;
  v12.receiver = self;
  v12.super_class = LNCompoundPropertyQuery;
  _init = [(LNPropertyQuery *)&v12 _init];
  v8 = _init;
  if (_init)
  {
    _init->_type = type;
    v9 = [comparisonsCopy copy];
    comparisons = v8->_comparisons;
    v8->_comparisons = v9;
  }

  return v8;
}

+ (id)orComparisons:(id)comparisons
{
  comparisonsCopy = comparisons;
  v5 = [[self alloc] initWithType:1 comparisons:comparisonsCopy];

  return v5;
}

+ (id)andComparisons:(id)comparisons
{
  comparisonsCopy = comparisons;
  v5 = [[self alloc] initWithType:0 comparisons:comparisonsCopy];

  return v5;
}

@end