@interface COMTTypedAction
- (COMTTypedAction)initWithCoder:(id)coder;
- (COMTTypedAction)initWithType:(id)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMTTypedAction

- (COMTTypedAction)initWithType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = COMTTypedAction;
  v6 = [(COMTAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetType, type);
  }

  return v7;
}

- (COMTTypedAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = COMTTypedAction;
  v5 = [(COMTAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TT"];
    targetType = v5->_targetType;
    v5->_targetType = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COMTTypedAction;
  coderCopy = coder;
  [(COMTAction *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COMTTypedAction *)self targetType:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"TT"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  actionIdentifier = [(COMTAction *)self actionIdentifier];
  targetType = [(COMTTypedAction *)self targetType];
  v8 = [v3 stringWithFormat:@"<%@: %p, id = %@, type = %@>", v5, self, actionIdentifier, targetType];

  return v8;
}

@end