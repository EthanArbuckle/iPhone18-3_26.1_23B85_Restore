@interface CPSUserDefaultsResponse
- (CPSUserDefaultsResponse)initWithCoder:(id)coder;
- (id)description;
@end

@implementation CPSUserDefaultsResponse

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_values withName:@"values"];
  build = [v3 build];

  return build;
}

- (CPSUserDefaultsResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CPSUserDefaultsResponse;
  v5 = [(CPSUserDefaultsResponse *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"values"];
    values = v5->_values;
    v5->_values = v13;
  }

  return v5;
}

@end