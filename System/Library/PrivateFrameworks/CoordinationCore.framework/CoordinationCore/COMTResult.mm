@interface COMTResult
- (COMTResult)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMTResult

- (COMTResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RA"];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionIdentifier = [(COMTResult *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"RA"];
}

@end