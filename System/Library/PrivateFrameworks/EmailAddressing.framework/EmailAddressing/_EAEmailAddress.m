@interface _EAEmailAddress
- (BOOL)isEqual:(id)a3;
- (NSString)rawAddress;
- (_EAEmailAddress)initWithCoder:(id)a3;
- (_EAEmailAddress)initWithEmailAddress:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _EAEmailAddress

- (unint64_t)hash
{
  v3 = [(_EAEmailAddress *)self rawAddress];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 lowercaseString];
    v6 = [v5 hash];
  }

  else
  {
    v5 = [(_EAEmailAddress *)self emailAddress];
    v7 = [v5 lowercaseString];
    v6 = [v7 hash];
  }

  return v6;
}

- (NSString)rawAddress
{
  v2 = [(_EAEmailAddress *)self emailAddress];
  v3 = [EAEmailAddressParser rawAddressFromFullAddress:v2];

  return v3;
}

- (_EAEmailAddress)initWithEmailAddress:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _EAEmailAddress;
  v5 = [(_EAEmailAddress *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v6;
  }

  return v5;
}

- (id)description
{
  v2 = [(_EAEmailAddress *)self emailAddress];
  v3 = [v2 description];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_EAEmailAddress *)self rawAddress];
    v6 = [v4 rawAddress];
    v7 = v6;
    if (v5)
    {
      v8 = [v5 caseInsensitiveCompare:v6] == 0;
    }

    else if (v6)
    {
      v8 = 0;
    }

    else
    {
      v9 = [(_EAEmailAddress *)self emailAddress];
      v10 = [v4 emailAddress];
      v8 = [v9 caseInsensitiveCompare:v10] == 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_EAEmailAddress)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _EAEmailAddress;
  v5 = [(_EAEmailAddress *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_emailAddress"];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(_EAEmailAddress *)self emailAddress];
  [v5 encodeObject:v4 forKey:@"EFPropertyKey_emailAddress"];
}

@end