@interface LNCompoundPropertyQuery
+ (id)andComparisons:(id)a3;
+ (id)orComparisons:(id)a3;
- (BOOL)isEqual:(id)a3;
- (LNCompoundPropertyQuery)initWithCoder:(id)a3;
- (LNCompoundPropertyQuery)initWithType:(unint64_t)a3 comparisons:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNCompoundPropertyQuery

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_comparisons forKey:@"comparisons"];
}

- (LNCompoundPropertyQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"comparisons"];

  if (v9)
  {
    self = [(LNCompoundPropertyQuery *)self initWithType:v5 comparisons:v9];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(LNCompoundPropertyQuery *)self comparisons];
  v4 = [v3 hash];
  v5 = [(LNCompoundPropertyQuery *)self type];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(LNCompoundPropertyQuery *)self comparisons];
        v8 = [v7 count];
        v9 = [(LNCompoundPropertyQuery *)v6 comparisons];
        v10 = [v9 count];

        if (v8 != v10)
        {
          v13 = 0;
          goto LABEL_10;
        }

        v11 = [(LNCompoundPropertyQuery *)self comparisons];
        v12 = [(LNCompoundPropertyQuery *)v6 comparisons];
        v13 = [v11 isEqual:v12];
      }

      else
      {
        v13 = 0;
        v11 = v6;
        v6 = 0;
      }
    }

    else
    {
      v11 = 0;
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
  v4 = [(LNCompoundPropertyQuery *)self comparisons];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __38__LNCompoundPropertyQuery_description__block_invoke;
  v11 = &unk_1E72B0E60;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:&v8];

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

- (LNCompoundPropertyQuery)initWithType:(unint64_t)a3 comparisons:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = LNCompoundPropertyQuery;
  v7 = [(LNPropertyQuery *)&v12 _init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = [v6 copy];
    comparisons = v8->_comparisons;
    v8->_comparisons = v9;
  }

  return v8;
}

+ (id)orComparisons:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:1 comparisons:v4];

  return v5;
}

+ (id)andComparisons:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:0 comparisons:v4];

  return v5;
}

@end