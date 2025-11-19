@interface SGIPPerson
+ (id)personWithIPPerson:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPerson:(id)a3;
- (SGIPPerson)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGIPPerson

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGIPPerson *)self isEqualToPerson:v5];
  }

  return v6;
}

- (BOOL)isEqualToPerson:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = self->_name;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v8 = self->_handle;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_14;
    }
  }

  v12 = self->_handleType;
  v13 = v12;
  if (v12 == v4[3])
  {
    v11 = 1;
  }

  else
  {
    v11 = [(NSString *)v12 isEqual:?];
  }

LABEL_14:
  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(NSString *)self->_name copyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSString *)self->_handle copyWithZone:a3];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [(NSString *)self->_handleType copyWithZone:a3];
    v11 = v5[3];
    v5[3] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"nam"];
  [v5 encodeObject:self->_handle forKey:@"han"];
  [v5 encodeObject:self->_handleType forKey:@"hty"];
}

- (SGIPPerson)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_new();
  v7 = [v4 decodeObjectOfClass:v5 forKey:@"nam"];
  [(SGIPPerson *)v6 setName:v7];

  v8 = [v4 decodeObjectOfClass:v5 forKey:@"han"];
  [(SGIPPerson *)v6 setHandle:v8];

  v9 = [v4 decodeObjectOfClass:v5 forKey:@"hty"];

  [(SGIPPerson *)v6 setHandleType:v9];
  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_handleType hash]- v3 + 32 * v3;
  return [(NSString *)self->_handle hash]- v4 + 32 * v4;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGIPPerson '%@' ht:%@ h:%@>", self->_name, self->_handleType, self->_handle];

  return v2;
}

+ (id)personWithIPPerson:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 fullName];
  v6 = [v5 copy];
  [v4 setName:v6];

  v7 = [v3 handle];
  v8 = [v7 copy];
  [v4 setHandle:v8];

  v9 = [v3 handleType];

  v10 = [v9 copy];
  [v4 setHandleType:v10];

  return v4;
}

@end