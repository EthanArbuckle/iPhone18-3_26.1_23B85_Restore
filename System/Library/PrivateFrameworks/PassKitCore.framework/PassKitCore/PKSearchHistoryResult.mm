@interface PKSearchHistoryResult
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKSearchHistoryResult)initWithCoder:(id)a3;
- (unint64_t)hash;
@end

@implementation PKSearchHistoryResult

- (PKSearchHistoryResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKSearchHistoryResult *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchHistory"];
    searchHistory = v5->_searchHistory;
    v5->_searchHistory = v6;
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PKSearchHistoryResult;
  v3 = [(PKSearchHistoryResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"searchHistory: '%@'; ", self->_searchHistory];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    searchHistory = self->_searchHistory;
    v6 = v4[1];
    if (searchHistory && v6)
    {
      v7 = [(NSString *)searchHistory isEqual:?];
    }

    else
    {
      v7 = searchHistory == v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_searchHistory];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

@end