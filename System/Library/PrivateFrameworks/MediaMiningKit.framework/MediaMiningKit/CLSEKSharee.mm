@interface CLSEKSharee
- (BOOL)isEqual:(id)equal;
- (CLSEKSharee)initWithCoder:(id)coder;
- (CLSEKSharee)initWithEKSharee:(id)sharee;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSEKSharee

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  emailAddress = self->_emailAddress;
  coderCopy = coder;
  [coderCopy encodeObject:emailAddress forKey:@"emailAddress"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeBool:self->_isCurrentUserForSharing forKey:@"isCurrentUserForSharing"];
  [coderCopy encodeBool:self->_isCurrentUserForScheduling forKey:@"isCurrentUserForScheduling"];
}

- (CLSEKSharee)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CLSEKSharee;
  v5 = [(CLSEKSharee *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emailAddress"];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v5->_isCurrentUserForSharing = [coderCopy decodeBoolForKey:@"isCurrentUserForSharing"];
    v5->_isCurrentUserForScheduling = [coderCopy decodeBoolForKey:@"isCurrentUserForScheduling"];
  }

  return v5;
}

- (CLSEKSharee)initWithEKSharee:(id)sharee
{
  shareeCopy = sharee;
  v11.receiver = self;
  v11.super_class = CLSEKSharee;
  v5 = [(CLSEKSharee *)&v11 init];
  if (v5)
  {
    emailAddress = [shareeCopy emailAddress];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = emailAddress;

    name = [shareeCopy name];
    name = v5->_name;
    v5->_name = name;
  }

  return v5;
}

@end