@interface COMTUpdateInterestAction
+ (id)actionWithTargetType:(id)type targetIdentifiers:(id)identifiers;
- (COMTUpdateInterestAction)initWithCoder:(id)coder;
- (COMTUpdateInterestAction)initWithTargetType:(id)type targetIdentifiers:(id)identifiers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMTUpdateInterestAction

+ (id)actionWithTargetType:(id)type targetIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  typeCopy = type;
  v8 = [[self alloc] initWithTargetType:typeCopy targetIdentifiers:identifiersCopy];

  return v8;
}

- (COMTUpdateInterestAction)initWithTargetType:(id)type targetIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v11.receiver = self;
  v11.super_class = COMTUpdateInterestAction;
  v7 = [(COMTTypedAction *)&v11 initWithType:type];
  if (v7)
  {
    v8 = [identifiersCopy copy];
    targetIdentifiers = v7->_targetIdentifiers;
    v7->_targetIdentifiers = v8;
  }

  return v7;
}

- (COMTUpdateInterestAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = COMTUpdateInterestAction;
  v5 = [(COMTTypedAction *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"ITI"];
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COMTUpdateInterestAction;
  coderCopy = coder;
  [(COMTTypedAction *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COMTUpdateInterestAction *)self targetIdentifiers:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"ITI"];
}

@end