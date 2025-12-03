@interface PKDynamicAssetIndex
- (PKDynamicAssetIndex)initWithContentsOfURL:(id)l;
- (id)description;
- (id)mappedAssetIdentifier:(id)identifier;
- (id)mappedStringIdentifier:(id)identifier;
@end

@implementation PKDynamicAssetIndex

- (PKDynamicAssetIndex)initWithContentsOfURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = PKDynamicAssetIndex;
  v5 = [(PKDynamicAssetIndex *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:lCopy];
    index = v5->_index;
    v5->_index = v6;

    v8 = [MEMORY[0x1E695DF00] now];
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v8;
  }

  return v5;
}

- (id)mappedAssetIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(NSDictionary *)self->_index objectForKeyedSubscript:@"AssetIdentifiers"];
  v6 = [v5 objectForKeyedSubscript:identifierCopy];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = identifierCopy;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Dynamic Assets: mapped asset identifier %{public}@ to %{public}@", &v11, 0x16u);
    }

    v8 = v6;
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = identifierCopy;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Dynamic Assets: couldn't map asset identifier %{public}@", &v11, 0xCu);
    }

    v8 = identifierCopy;
  }

  v9 = v8;

  return v9;
}

- (id)mappedStringIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(NSDictionary *)self->_index objectForKeyedSubscript:@"StringIdentifiers"];
  v6 = [v5 objectForKeyedSubscript:identifierCopy];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = identifierCopy;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Dynamic Assets: mapped string identifier %{public}@ to %{public}@", &v11, 0x16u);
    }

    v8 = v6;
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = identifierCopy;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Dynamic Assets: couldn't map string identifier %{public}@", &v11, 0xCu);
    }

    v8 = identifierCopy;
  }

  v9 = v8;

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p\n", objc_opt_class(), self];;
  v4 = [(NSDictionary *)self->_index objectForKeyedSubscript:@"AssetIdentifiers"];
  [v3 appendFormat:@"Asset identifiers:\n%@;\n", v4];

  v5 = [(NSDictionary *)self->_index objectForKeyedSubscript:@"StringIdentifiers"];
  [v3 appendFormat:@"String identifiers:\n%@;\n", v5];

  [v3 appendFormat:@">"];

  return v3;
}

@end