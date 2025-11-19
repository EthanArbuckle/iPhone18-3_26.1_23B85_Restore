@interface GDViewAccessToken
- (GDViewAccessToken)initWithCoder:(id)a3;
- (GDViewAccessToken)initWithToken:(id)a3 url:(id)a4 tableName:(id)a5 alwaysAvailable:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDViewAccessToken

- (GDViewAccessToken)initWithCoder:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = GDViewAccessToken;
  v6 = [(GDViewAccessToken *)&v16 init];
  if (v6)
  {
    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    if (!v7)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:v6 file:@"GDViewAccessToken.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"token"}];
    }

    objc_storeStrong(&v6->_token, v7);
    v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    if (!v8)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:v6 file:@"GDViewAccessToken.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"url"}];
    }

    url = v6->_url;
    v6->_url = v8;
    v10 = v8;

    v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"tableName"];
    tableName = v6->_tableName;
    v6->_tableName = v11;

    v6->_alwaysAvailable = [v5 decodeBoolForKey:@"alwaysAvailable"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  token = self->_token;
  v5 = a3;
  [v5 encodeObject:token forKey:@"token"];
  [v5 encodeObject:self->_url forKey:@"url"];
  [v5 encodeObject:self->_tableName forKey:@"tableName"];
  [v5 encodeBool:self->_alwaysAvailable forKey:@"alwaysAvailable"];
}

- (GDViewAccessToken)initWithToken:(id)a3 url:(id)a4 tableName:(id)a5 alwaysAvailable:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = GDViewAccessToken;
  v13 = [(GDViewAccessToken *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    token = v13->_token;
    v13->_token = v14;

    v16 = [v11 copy];
    url = v13->_url;
    v13->_url = v16;

    v18 = [v12 copy];
    tableName = v13->_tableName;
    v13->_tableName = v18;

    v13->_alwaysAvailable = a6;
  }

  return v13;
}

@end