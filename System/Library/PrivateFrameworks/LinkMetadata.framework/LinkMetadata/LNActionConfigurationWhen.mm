@interface LNActionConfigurationWhen
- (BOOL)isEqual:(id)equal;
- (LNActionConfigurationWhen)initWithCoder:(id)coder;
- (LNActionConfigurationWhen)initWithCondition:(id)condition when:(id)when otherwise:(id)otherwise;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionConfigurationWhen

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_27:

      goto LABEL_28;
    }

    condition = [(LNActionConfigurationWhen *)self condition];
    condition2 = [(LNActionConfigurationWhen *)v6 condition];
    v9 = condition;
    v10 = condition2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_25;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    when = [(LNActionConfigurationWhen *)self when];
    when2 = [(LNActionConfigurationWhen *)v6 when];
    v14 = when;
    v18 = when2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v12 = [v14 isEqual:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    otherwise = [(LNActionConfigurationWhen *)self otherwise];
    otherwise2 = [(LNActionConfigurationWhen *)v6 otherwise];
    v20 = otherwise;
    v23 = otherwise2;
    v19 = v23;
    if (v20 == v23)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v20 && v23)
      {
        LOBYTE(v12) = [v20 isEqual:v23];
      }
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  when = [(LNActionConfigurationWhen *)self when];
  v4 = [when hash];
  otherwise = [(LNActionConfigurationWhen *)self otherwise];
  v6 = [otherwise hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  condition = [(LNActionConfigurationWhen *)self condition];
  [coderCopy encodeObject:condition forKey:@"condition"];

  when = [(LNActionConfigurationWhen *)self when];
  [coderCopy encodeObject:when forKey:@"when"];

  otherwise = [(LNActionConfigurationWhen *)self otherwise];
  [coderCopy encodeObject:otherwise forKey:@"otherwise"];
}

- (LNActionConfigurationWhen)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"condition"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"when"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherwise"];
      self = [(LNActionConfigurationWhen *)self initWithCondition:v5 when:v6 otherwise:v7];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  condition = [(LNActionConfigurationWhen *)self condition];
  when = [(LNActionConfigurationWhen *)self when];
  otherwise = [(LNActionConfigurationWhen *)self otherwise];
  v9 = [v3 stringWithFormat:@"<%@: %p, condition: %@, when: %@, otherwise: %@>", v5, self, condition, when, otherwise];

  return v9;
}

- (LNActionConfigurationWhen)initWithCondition:(id)condition when:(id)when otherwise:(id)otherwise
{
  conditionCopy = condition;
  whenCopy = when;
  otherwiseCopy = otherwise;
  if (!whenCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionConfigurationWhen.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"when"}];
  }

  v22.receiver = self;
  v22.super_class = LNActionConfigurationWhen;
  v12 = [(LNActionConfigurationWhen *)&v22 init];
  if (v12)
  {
    v13 = [conditionCopy copy];
    condition = v12->_condition;
    v12->_condition = v13;

    v15 = [whenCopy copy];
    when = v12->_when;
    v12->_when = v15;

    v17 = [otherwiseCopy copy];
    otherwise = v12->_otherwise;
    v12->_otherwise = v17;

    v19 = v12;
  }

  return v12;
}

@end