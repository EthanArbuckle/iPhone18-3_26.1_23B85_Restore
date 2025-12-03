@interface IDSUserDescription
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUserDescription:(id)description;
- (BOOL)isIdenticalToUserDescription:(id)description;
- (IDSUserDescription)initWithCoder:(id)coder;
- (IDSUserDescription)initWithUser:(id)user properties:(id)properties;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSUserDescription

- (IDSUserDescription)initWithUser:(id)user properties:(id)properties
{
  userCopy = user;
  propertiesCopy = properties;
  if (userCopy)
  {
    v14.receiver = self;
    v14.super_class = IDSUserDescription;
    v9 = [(IDSUserDescription *)&v14 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_user, user);
      objc_storeStrong(p_isa + 2, properties);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to initialize IDSUserDescription, received nil user.", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (IDSUserDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v5, v6, objc_opt_class(), 0];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"user"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prop"];

  v10 = [(IDSUserDescription *)self initWithUser:v8 properties:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  user = self->_user;
  coderCopy = coder;
  [coderCopy encodeObject:user forKey:@"user"];
  [coderCopy encodeObject:self->_properties forKey:@"prop"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSUserDescription *)self isEqualToUserDescription:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToUserDescription:(id)description
{
  if (self == description)
  {
    return 1;
  }

  descriptionCopy = description;
  user = [(IDSUserDescription *)self user];
  user2 = [descriptionCopy user];

  LOBYTE(descriptionCopy) = [user isEqual:user2];
  return descriptionCopy;
}

- (unint64_t)hash
{
  user = [(IDSUserDescription *)self user];
  v3 = [user hash];

  return v3;
}

- (BOOL)isIdenticalToUserDescription:(id)description
{
  descriptionCopy = description;
  user = [(IDSUserDescription *)self user];
  user2 = [descriptionCopy user];
  if ([user isIdenticalToUser:user2])
  {
    properties = [(IDSUserDescription *)self properties];
    properties2 = [descriptionCopy properties];
    v9 = [properties isEqual:properties2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end