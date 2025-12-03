@interface COMTAction
- (BOOL)isEqual:(id)equal;
- (COMTAction)init;
- (COMTAction)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMTAction

- (COMTAction)init
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  actionIdentifier = self->_actionIdentifier;
  self->_actionIdentifier = uUIDString;

  return self;
}

- (COMTAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AI"];

  v6 = [v5 copy];
  actionIdentifier = self->_actionIdentifier;
  self->_actionIdentifier = v6;

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, id = %@>", v5, self, self->_actionIdentifier];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionIdentifier = [(COMTAction *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"AI"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      actionIdentifier = [(COMTAction *)self actionIdentifier];
      actionIdentifier2 = [(COMTAction *)equalCopy actionIdentifier];
      v7 = [actionIdentifier isEqual:actionIdentifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end