@interface CLSEKSharee
- (BOOL)isEqual:(id)a3;
- (CLSEKSharee)initWithCoder:(id)a3;
- (CLSEKSharee)initWithEKSharee:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLSEKSharee

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      emailAddress = self->_emailAddress;
      if (emailAddress == v5->_emailAddress || [(NSString *)emailAddress isEqualToString:?])
      {
        name = self->_name;
        if (name == v5->_name)
        {
          v8 = 1;
        }

        else
        {
          v8 = [(NSString *)name isEqualToString:?];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  emailAddress = self->_emailAddress;
  v5 = a3;
  [v5 encodeObject:emailAddress forKey:@"emailAddress"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeBool:self->_isCurrentUserForSharing forKey:@"isCurrentUserForSharing"];
  [v5 encodeBool:self->_isCurrentUserForScheduling forKey:@"isCurrentUserForScheduling"];
}

- (CLSEKSharee)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CLSEKSharee;
  v5 = [(CLSEKSharee *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"emailAddress"];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v5->_isCurrentUserForSharing = [v4 decodeBoolForKey:@"isCurrentUserForSharing"];
    v5->_isCurrentUserForScheduling = [v4 decodeBoolForKey:@"isCurrentUserForScheduling"];
  }

  return v5;
}

- (CLSEKSharee)initWithEKSharee:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CLSEKSharee;
  v5 = [(CLSEKSharee *)&v11 init];
  if (v5)
  {
    v6 = [v4 emailAddress];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v6;

    v8 = [v4 name];
    name = v5->_name;
    v5->_name = v8;
  }

  return v5;
}

@end