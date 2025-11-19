@interface IDSIDStatusKey
+ (id)statusIDKeyWithService:(id)a3 URI:(id)a4;
- (BOOL)isEqual:(id)a3;
- (IDSIDStatusKey)initWithCoder:(id)a3;
- (IDSIDStatusKey)initWithService:(id)a3 URI:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSIDStatusKey

+ (id)statusIDKeyWithService:(id)a3 URI:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithService:v7 URI:v6];

  return v8;
}

- (IDSIDStatusKey)initWithService:(id)a3 URI:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v14.receiver = self;
    v14.super_class = IDSIDStatusKey;
    v11 = [(IDSIDStatusKey *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_service, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v10 = self;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 service];
    v7 = [(IDSIDStatusKey *)self service];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 uriString];
      v9 = [(IDSIDStatusKey *)self uriString];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(IDSIDStatusKey *)self service];
  v4 = [v3 hash];
  v5 = [(IDSIDStatusKey *)self uriString];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = [(IDSIDStatusKey *)self service];
  v4 = [(IDSIDStatusKey *)self uriString];
  v5 = [NSString stringWithFormat:@"<service:%@, URI:%@>", v3, v4];

  return v5;
}

- (IDSIDStatusKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URI"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URI"];

  v7 = [(IDSIDStatusKey *)self initWithService:v5 URI:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSIDStatusKey *)self service];
  [v4 encodeObject:v5 forKey:@"URI"];

  v6 = [(IDSIDStatusKey *)self uriString];
  [v4 encodeObject:v6 forKey:@"URI"];
}

@end