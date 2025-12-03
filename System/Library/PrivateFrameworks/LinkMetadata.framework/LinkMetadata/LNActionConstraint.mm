@interface LNActionConstraint
- (LNActionConstraint)initWithCoder:(id)coder;
- (LNActionConstraint)initWithRequirement:(id)requirement condition:(id)condition;
- (LNActionConstraint)initWithRequirement:(id)requirement condition:(id)condition behavior:(int64_t)behavior message:(id)message;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionConstraint

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  requirement = [(LNActionConstraint *)self requirement];
  predicateFormat = [requirement predicateFormat];
  [coderCopy encodeObject:predicateFormat forKey:@"requirement"];

  condition = [(LNActionConstraint *)self condition];
  predicateFormat2 = [condition predicateFormat];
  [coderCopy encodeObject:predicateFormat2 forKey:@"condition"];

  [coderCopy encodeInteger:-[LNActionConstraint behavior](self forKey:{"behavior"), @"behavior"}];
  message = [(LNActionConstraint *)self message];
  [coderCopy encodeObject:message forKey:@"message"];
}

- (LNActionConstraint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requirement"];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"condition"];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [coderCopy decodeIntegerForKey:@"behavior"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
  v11 = [(LNActionConstraint *)self initWithRequirement:v6 condition:v8 behavior:v9 message:v10];

  return v11;
}

- (id)description
{
  behavior = [(LNActionConstraint *)self behavior];
  v4 = @"available";
  if (behavior == 1)
  {
    v4 = @"enable";
  }

  v5 = v4;
  condition = [(LNActionConstraint *)self condition];

  v7 = MEMORY[0x1E696AEC0];
  requirement = [(LNActionConstraint *)self requirement];
  v9 = requirement;
  if (condition)
  {
    condition2 = [(LNActionConstraint *)self condition];
    v11 = [v7 stringWithFormat:@"<%@ if %@ when %@>", v5, v9, condition2];

    v5 = condition2;
  }

  else
  {
    v11 = [v7 stringWithFormat:@"<%@ if %@>", v5, requirement];
  }

  return v11;
}

- (LNActionConstraint)initWithRequirement:(id)requirement condition:(id)condition behavior:(int64_t)behavior message:(id)message
{
  requirementCopy = requirement;
  conditionCopy = condition;
  messageCopy = message;
  if (!requirementCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionConstraint.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"requirement"}];
  }

  if (behavior == 1 && !messageCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNActionConstraint.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"!(behavior == LN_TYPE(ConstraintBehaviorDisable) && !message)"}];
    goto LABEL_15;
  }

  if (conditionCopy && behavior == 9999)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNActionConstraint.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"!(behavior == LN_TYPE(ConstraintBehaviorUnavailable) && condition)"}];
  }

  if (behavior == 9999 && messageCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNActionConstraint.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"!(behavior == LN_TYPE(ConstraintBehaviorUnavailable) && message)"}];
LABEL_15:
  }

  v22.receiver = self;
  v22.super_class = LNActionConstraint;
  v15 = [(LNActionConstraint *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_requirement, requirement);
    objc_storeStrong(&v16->_condition, condition);
    v16->_behavior = behavior;
    objc_storeStrong(&v16->_message, message);
    v17 = v16;
  }

  return v16;
}

- (LNActionConstraint)initWithRequirement:(id)requirement condition:(id)condition
{
  conditionCopy = condition;
  requirementCopy = requirement;
  v8 = [[LNStaticDeferredLocalizedString alloc] initWithKey:@"Something went wrong." table:0 bundleURL:0];
  v9 = [(LNActionConstraint *)self initWithRequirement:requirementCopy condition:conditionCopy behavior:1 message:v8];

  return v9;
}

@end