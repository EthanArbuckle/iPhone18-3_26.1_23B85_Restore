@interface COMTAction
- (BOOL)isEqual:(id)a3;
- (COMTAction)init;
- (COMTAction)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COMTAction

- (COMTAction)init
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  actionIdentifier = self->_actionIdentifier;
  self->_actionIdentifier = v4;

  return self;
}

- (COMTAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AI"];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(COMTAction *)self actionIdentifier];
  [v4 encodeObject:v5 forKey:@"AI"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(COMTAction *)self actionIdentifier];
      v6 = [(COMTAction *)v4 actionIdentifier];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end