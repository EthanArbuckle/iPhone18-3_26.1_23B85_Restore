@interface COMTUpdateInterestAction
+ (id)actionWithTargetType:(id)a3 targetIdentifiers:(id)a4;
- (COMTUpdateInterestAction)initWithCoder:(id)a3;
- (COMTUpdateInterestAction)initWithTargetType:(id)a3 targetIdentifiers:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COMTUpdateInterestAction

+ (id)actionWithTargetType:(id)a3 targetIdentifiers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTargetType:v7 targetIdentifiers:v6];

  return v8;
}

- (COMTUpdateInterestAction)initWithTargetType:(id)a3 targetIdentifiers:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = COMTUpdateInterestAction;
  v7 = [(COMTTypedAction *)&v11 initWithType:a3];
  if (v7)
  {
    v8 = [v6 copy];
    targetIdentifiers = v7->_targetIdentifiers;
    v7->_targetIdentifiers = v8;
  }

  return v7;
}

- (COMTUpdateInterestAction)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = COMTUpdateInterestAction;
  v5 = [(COMTTypedAction *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"ITI"];
    if (!v6)
    {
      v8 = 0;
      goto LABEL_6;
    }

    targetIdentifiers = v5->_targetIdentifiers;
    v5->_targetIdentifiers = v6;
  }

  v8 = v5;
LABEL_6:

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = COMTUpdateInterestAction;
  v4 = a3;
  [(COMTTypedAction *)&v6 encodeWithCoder:v4];
  v5 = [(COMTUpdateInterestAction *)self targetIdentifiers:v6.receiver];
  [v4 encodeObject:v5 forKey:@"ITI"];
}

@end