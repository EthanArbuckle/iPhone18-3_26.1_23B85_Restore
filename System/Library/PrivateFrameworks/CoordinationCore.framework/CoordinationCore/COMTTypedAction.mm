@interface COMTTypedAction
- (COMTTypedAction)initWithCoder:(id)a3;
- (COMTTypedAction)initWithType:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COMTTypedAction

- (COMTTypedAction)initWithType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = COMTTypedAction;
  v6 = [(COMTAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetType, a3);
  }

  return v7;
}

- (COMTTypedAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COMTTypedAction;
  v5 = [(COMTAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TT"];
    targetType = v5->_targetType;
    v5->_targetType = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = COMTTypedAction;
  v4 = a3;
  [(COMTAction *)&v6 encodeWithCoder:v4];
  v5 = [(COMTTypedAction *)self targetType:v6.receiver];
  [v4 encodeObject:v5 forKey:@"TT"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(COMTAction *)self actionIdentifier];
  v7 = [(COMTTypedAction *)self targetType];
  v8 = [v3 stringWithFormat:@"<%@: %p, id = %@, type = %@>", v5, self, v6, v7];

  return v8;
}

@end