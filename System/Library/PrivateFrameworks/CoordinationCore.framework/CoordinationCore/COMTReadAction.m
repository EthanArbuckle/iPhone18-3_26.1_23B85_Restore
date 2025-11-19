@interface COMTReadAction
+ (id)actionWithTargetType:(id)a3 targetMemento:(id)a4;
- (COMTReadAction)initWithCoder:(id)a3;
- (COMTReadAction)initWithTargetType:(id)a3 targetMemento:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COMTReadAction

+ (id)actionWithTargetType:(id)a3 targetMemento:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTargetType:v7 targetMemento:v6];

  return v8;
}

- (COMTReadAction)initWithTargetType:(id)a3 targetMemento:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = COMTReadAction;
  v8 = [(COMTTypedAction *)&v11 initWithType:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_memento, a4);
  }

  return v9;
}

- (COMTReadAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COMTReadAction;
  v5 = [(COMTTypedAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TTM"];
    memento = v5->_memento;
    v5->_memento = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = COMTReadAction;
  v4 = a3;
  [(COMTTypedAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_memento forKey:{@"TTM", v5.receiver, v5.super_class}];
}

@end