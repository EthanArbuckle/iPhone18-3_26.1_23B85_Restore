@interface GDViewAccessToken
- (GDViewAccessToken)initWithCoder:(id)coder;
- (GDViewAccessToken)initWithToken:(id)token url:(id)url tableName:(id)name alwaysAvailable:(BOOL)available;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDViewAccessToken

- (GDViewAccessToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = GDViewAccessToken;
  v6 = [(GDViewAccessToken *)&v16 init];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"GDViewAccessToken.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"token"}];
    }

    objc_storeStrong(&v6->_token, v7);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    if (!v8)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v6 file:@"GDViewAccessToken.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"url"}];
    }

    url = v6->_url;
    v6->_url = v8;
    v10 = v8;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tableName"];
    tableName = v6->_tableName;
    v6->_tableName = v11;

    v6->_alwaysAvailable = [coderCopy decodeBoolForKey:@"alwaysAvailable"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  token = self->_token;
  coderCopy = coder;
  [coderCopy encodeObject:token forKey:@"token"];
  [coderCopy encodeObject:self->_url forKey:@"url"];
  [coderCopy encodeObject:self->_tableName forKey:@"tableName"];
  [coderCopy encodeBool:self->_alwaysAvailable forKey:@"alwaysAvailable"];
}

- (GDViewAccessToken)initWithToken:(id)token url:(id)url tableName:(id)name alwaysAvailable:(BOOL)available
{
  tokenCopy = token;
  urlCopy = url;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = GDViewAccessToken;
  v13 = [(GDViewAccessToken *)&v21 init];
  if (v13)
  {
    v14 = [tokenCopy copy];
    token = v13->_token;
    v13->_token = v14;

    v16 = [urlCopy copy];
    url = v13->_url;
    v13->_url = v16;

    v18 = [nameCopy copy];
    tableName = v13->_tableName;
    v13->_tableName = v18;

    v13->_alwaysAvailable = available;
  }

  return v13;
}

@end