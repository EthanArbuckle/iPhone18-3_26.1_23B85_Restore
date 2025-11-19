@interface COMTResult
- (COMTResult)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COMTResult

- (COMTResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RA"];

  actionIdentifier = self->_actionIdentifier;
  self->_actionIdentifier = v5;

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
  v5 = [(COMTResult *)self actionIdentifier];
  [v4 encodeObject:v5 forKey:@"RA"];
}

@end