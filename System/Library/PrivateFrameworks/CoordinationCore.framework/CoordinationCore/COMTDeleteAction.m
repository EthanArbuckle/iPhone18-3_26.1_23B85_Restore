@interface COMTDeleteAction
+ (id)actionWithTargetType:(id)a3 targetIdentifier:(id)a4;
- (COMTDeleteAction)initWithCoder:(id)a3;
- (COMTDeleteAction)initWithTargetType:(id)a3 targetIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COMTDeleteAction

+ (id)actionWithTargetType:(id)a3 targetIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTargetType:v7 targetIdentifier:v6];

  return v8;
}

- (COMTDeleteAction)initWithTargetType:(id)a3 targetIdentifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = COMTDeleteAction;
  v8 = [(COMTTypedAction *)&v11 initWithType:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_targetIdentifier, a4);
  }

  return v9;
}

- (COMTDeleteAction)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = COMTDeleteAction;
  v5 = [(COMTTypedAction *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DI"];
    if (!v6)
    {
      v8 = 0;
      goto LABEL_6;
    }

    targetIdentifier = v5->_targetIdentifier;
    v5->_targetIdentifier = v6;
  }

  v8 = v5;
LABEL_6:

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = COMTDeleteAction;
  v4 = a3;
  [(COMTTypedAction *)&v6 encodeWithCoder:v4];
  v5 = [(COMTDeleteAction *)self targetIdentifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"DI"];
}

@end