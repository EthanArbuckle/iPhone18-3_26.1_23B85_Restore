@interface LNActionConstraint
- (LNActionConstraint)initWithCoder:(id)a3;
- (LNActionConstraint)initWithRequirement:(id)a3 condition:(id)a4;
- (LNActionConstraint)initWithRequirement:(id)a3 condition:(id)a4 behavior:(int64_t)a5 message:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionConstraint

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNActionConstraint *)self requirement];
  v6 = [v5 predicateFormat];
  [v4 encodeObject:v6 forKey:@"requirement"];

  v7 = [(LNActionConstraint *)self condition];
  v8 = [v7 predicateFormat];
  [v4 encodeObject:v8 forKey:@"condition"];

  [v4 encodeInteger:-[LNActionConstraint behavior](self forKey:{"behavior"), @"behavior"}];
  v9 = [(LNActionConstraint *)self message];
  [v4 encodeObject:v9 forKey:@"message"];
}

- (LNActionConstraint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requirement"];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"condition"];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 decodeIntegerForKey:@"behavior"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
  v11 = [(LNActionConstraint *)self initWithRequirement:v6 condition:v8 behavior:v9 message:v10];

  return v11;
}

- (id)description
{
  v3 = [(LNActionConstraint *)self behavior];
  v4 = @"available";
  if (v3 == 1)
  {
    v4 = @"enable";
  }

  v5 = v4;
  v6 = [(LNActionConstraint *)self condition];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [(LNActionConstraint *)self requirement];
  v9 = v8;
  if (v6)
  {
    v10 = [(LNActionConstraint *)self condition];
    v11 = [v7 stringWithFormat:@"<%@ if %@ when %@>", v5, v9, v10];

    v5 = v10;
  }

  else
  {
    v11 = [v7 stringWithFormat:@"<%@ if %@>", v5, v8];
  }

  return v11;
}

- (LNActionConstraint)initWithRequirement:(id)a3 condition:(id)a4 behavior:(int64_t)a5 message:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (!v12)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"LNActionConstraint.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"requirement"}];
  }

  if (a5 == 1 && !v14)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"LNActionConstraint.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"!(behavior == LN_TYPE(ConstraintBehaviorDisable) && !message)"}];
    goto LABEL_15;
  }

  if (v13 && a5 == 9999)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"LNActionConstraint.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"!(behavior == LN_TYPE(ConstraintBehaviorUnavailable) && condition)"}];
  }

  if (a5 == 9999 && v14)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"LNActionConstraint.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"!(behavior == LN_TYPE(ConstraintBehaviorUnavailable) && message)"}];
LABEL_15:
  }

  v22.receiver = self;
  v22.super_class = LNActionConstraint;
  v15 = [(LNActionConstraint *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_requirement, a3);
    objc_storeStrong(&v16->_condition, a4);
    v16->_behavior = a5;
    objc_storeStrong(&v16->_message, a6);
    v17 = v16;
  }

  return v16;
}

- (LNActionConstraint)initWithRequirement:(id)a3 condition:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[LNStaticDeferredLocalizedString alloc] initWithKey:@"Something went wrong." table:0 bundleURL:0];
  v9 = [(LNActionConstraint *)self initWithRequirement:v7 condition:v6 behavior:1 message:v8];

  return v9;
}

@end