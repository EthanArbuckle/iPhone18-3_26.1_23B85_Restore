@interface CNEncodedFetchResponse
+ (id)emptyResponse;
- (CNEncodedFetchResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNEncodedFetchResponse

+ (id)emptyResponse
{
  v2 = objc_alloc_init(objc_opt_class());
  data = [MEMORY[0x1E695DEF0] data];
  [v2 setData:data];

  return v2;
}

- (CNEncodedFetchResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CNEncodedFetchResponse *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_data"];
    v7 = [v6 copy];
    data = v5->_data;
    v5->_data = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_matchInfo"];
    v15 = [v14 copy];
    matchInfo = v5->_matchInfo;
    v5->_matchInfo = v15;

    v17 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  data = self->_data;
  coderCopy = coder;
  [coderCopy encodeObject:data forKey:@"_data"];
  [coderCopy encodeObject:self->_matchInfo forKey:@"_matchInfo"];
}

@end