@interface COMTReadAction
+ (id)actionWithTargetType:(id)type targetMemento:(id)memento;
- (COMTReadAction)initWithCoder:(id)coder;
- (COMTReadAction)initWithTargetType:(id)type targetMemento:(id)memento;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMTReadAction

+ (id)actionWithTargetType:(id)type targetMemento:(id)memento
{
  mementoCopy = memento;
  typeCopy = type;
  v8 = [[self alloc] initWithTargetType:typeCopy targetMemento:mementoCopy];

  return v8;
}

- (COMTReadAction)initWithTargetType:(id)type targetMemento:(id)memento
{
  mementoCopy = memento;
  v11.receiver = self;
  v11.super_class = COMTReadAction;
  v8 = [(COMTTypedAction *)&v11 initWithType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_memento, memento);
  }

  return v9;
}

- (COMTReadAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = COMTReadAction;
  v5 = [(COMTTypedAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TTM"];
    memento = v5->_memento;
    v5->_memento = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = COMTReadAction;
  coderCopy = coder;
  [(COMTTypedAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_memento forKey:{@"TTM", v5.receiver, v5.super_class}];
}

@end