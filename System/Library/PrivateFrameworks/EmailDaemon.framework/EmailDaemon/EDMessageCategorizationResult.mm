@interface EDMessageCategorizationResult
- (BOOL)isEqual:(id)equal;
- (EDMessageCategorizationResult)init;
- (EDMessageCategorizationResult)initWithCategory:(id)category metadata:(id)metadata;
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

- (EDMessageCategorizationResult)initWithCategory:(id)category metadata:(id)metadata
{
  categoryCopy = category;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = EDMessageCategorizationResult;
  v9 = [(EDMessageCategorizationResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_category, category);
    objc_storeStrong(&v10->_metadata, metadata);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = equalCopy;
    category = [(EDMessageCategorizationResult *)self category];
    category2 = [v6 category];
    if (category == category2)
    {
      metadata = [(EDMessageCategorizationResult *)self metadata];
      metadata2 = [v6 metadata];
      v9 = [metadata isEqual:metadata2];
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
  category = [(EDMessageCategorizationResult *)self category];
  v4 = [category hash];

  metadata = [(EDMessageCategorizationResult *)self metadata];
  v6 = [metadata hash] + 5859909;

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