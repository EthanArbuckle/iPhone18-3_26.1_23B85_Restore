@interface COMTDeleteAction
+ (id)actionWithTargetType:(id)type targetIdentifier:(id)identifier;
- (COMTDeleteAction)initWithCoder:(id)coder;
- (COMTDeleteAction)initWithTargetType:(id)type targetIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMTDeleteAction

+ (id)actionWithTargetType:(id)type targetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  typeCopy = type;
  v8 = [[self alloc] initWithTargetType:typeCopy targetIdentifier:identifierCopy];

  return v8;
}

- (COMTDeleteAction)initWithTargetType:(id)type targetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = COMTDeleteAction;
  v8 = [(COMTTypedAction *)&v11 initWithType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_targetIdentifier, identifier);
  }

  return v9;
}

- (COMTDeleteAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = COMTDeleteAction;
  v5 = [(COMTTypedAction *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DI"];
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COMTDeleteAction;
  coderCopy = coder;
  [(COMTTypedAction *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COMTDeleteAction *)self targetIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"DI"];
}

@end