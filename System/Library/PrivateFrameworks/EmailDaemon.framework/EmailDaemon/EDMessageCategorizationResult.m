@interface EDMessageCategorizationResult
- (BOOL)isEqual:(id)a3;
- (EDMessageCategorizationResult)init;
- (EDMessageCategorizationResult)initWithCategory:(id)a3 metadata:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation EDMessageCategorizationResult

- (EDMessageCategorizationResult)init
{
  v3 = [objc_alloc(MEMORY[0x1E699AC48]) initWithType:0 state:0];
  v4 = [(EDMessageCategorizationResult *)self initWithCategory:v3 metadata:0];

  return v4;
}

- (EDMessageCategorizationResult)initWithCategory:(id)a3 metadata:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EDMessageCategorizationResult;
  v9 = [(EDMessageCategorizationResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_category, a3);
    objc_storeStrong(&v10->_metadata, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(EDMessageCategorizationResult *)self category];
    v8 = [v6 category];
    if (v7 == v8)
    {
      v10 = [(EDMessageCategorizationResult *)self metadata];
      v11 = [v6 metadata];
      v9 = [v10 isEqual:v11];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(EDMessageCategorizationResult *)self category];
  v4 = [v3 hash];

  v5 = [(EDMessageCategorizationResult *)self metadata];
  v6 = [v5 hash] + 5859909;

  return 33 * v4 + v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(EMCategory *)self->_category type];
  v4 = EMStringFromCategoryType();
  [(EMCategory *)self->_category subtype];
  v5 = EMStringFromSubtype();
  v6 = [v3 stringWithFormat:@"Category:%@ SubCategory:%@ HighImpact:%d", v4, v5, -[EMCategory isHighImpact](self->_category, "isHighImpact")];

  return v6;
}

@end