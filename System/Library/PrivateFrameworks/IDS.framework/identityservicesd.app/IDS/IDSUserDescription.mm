@interface IDSUserDescription
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUserDescription:(id)a3;
- (BOOL)isIdenticalToUserDescription:(id)a3;
- (IDSUserDescription)initWithCoder:(id)a3;
- (IDSUserDescription)initWithUser:(id)a3 properties:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSUserDescription

- (IDSUserDescription)initWithUser:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v14.receiver = self;
    v14.super_class = IDSUserDescription;
    v9 = [(IDSUserDescription *)&v14 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_user, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v11 = self;
  }

  else
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to initialize IDSUserDescription, received nil user.", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (IDSUserDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v5, v6, objc_opt_class(), 0];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"user"];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prop"];

  v10 = [(IDSUserDescription *)self initWithUser:v8 properties:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  user = self->_user;
  v5 = a3;
  [v5 encodeObject:user forKey:@"user"];
  [v5 encodeObject:self->_properties forKey:@"prop"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSUserDescription *)self isEqualToUserDescription:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToUserDescription:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(IDSUserDescription *)self user];
  v6 = [v4 user];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(IDSUserDescription *)self user];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isIdenticalToUserDescription:(id)a3
{
  v4 = a3;
  v5 = [(IDSUserDescription *)self user];
  v6 = [v4 user];
  if ([v5 isIdenticalToUser:v6])
  {
    v7 = [(IDSUserDescription *)self properties];
    v8 = [v4 properties];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end