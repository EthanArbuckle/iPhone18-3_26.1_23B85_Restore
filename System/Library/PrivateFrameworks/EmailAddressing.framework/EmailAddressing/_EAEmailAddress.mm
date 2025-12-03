@interface _EAEmailAddress
- (BOOL)isEqual:(id)equal;
- (NSString)rawAddress;
- (_EAEmailAddress)initWithCoder:(id)coder;
- (_EAEmailAddress)initWithEmailAddress:(id)address;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _EAEmailAddress

- (unint64_t)hash
{
  rawAddress = [(_EAEmailAddress *)self rawAddress];
  v4 = rawAddress;
  if (rawAddress)
  {
    lowercaseString = [rawAddress lowercaseString];
    v6 = [lowercaseString hash];
  }

  else
  {
    lowercaseString = [(_EAEmailAddress *)self emailAddress];
    v5LowercaseString = [lowercaseString lowercaseString];
    v6 = [v5LowercaseString hash];
  }

  return v6;
}

- (NSString)rawAddress
{
  emailAddress = [(_EAEmailAddress *)self emailAddress];
  v3 = [EAEmailAddressParser rawAddressFromFullAddress:emailAddress];

  return v3;
}

- (_EAEmailAddress)initWithEmailAddress:(id)address
{
  addressCopy = address;
  v9.receiver = self;
  v9.super_class = _EAEmailAddress;
  v5 = [(_EAEmailAddress *)&v9 init];
  if (v5)
  {
    v6 = [addressCopy copy];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v6;
  }

  return v5;
}

- (id)description
{
  emailAddress = [(_EAEmailAddress *)self emailAddress];
  v3 = [emailAddress description];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rawAddress = [(_EAEmailAddress *)self rawAddress];
    rawAddress2 = [equalCopy rawAddress];
    v7 = rawAddress2;
    if (rawAddress)
    {
      v8 = [rawAddress caseInsensitiveCompare:rawAddress2] == 0;
    }

    else if (rawAddress2)
    {
      v8 = 0;
    }

    else
    {
      emailAddress = [(_EAEmailAddress *)self emailAddress];
      emailAddress2 = [equalCopy emailAddress];
      v8 = [emailAddress caseInsensitiveCompare:emailAddress2] == 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_EAEmailAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _EAEmailAddress;
  v5 = [(_EAEmailAddress *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_emailAddress"];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  emailAddress = [(_EAEmailAddress *)self emailAddress];
  [coderCopy encodeObject:emailAddress forKey:@"EFPropertyKey_emailAddress"];
}

@end