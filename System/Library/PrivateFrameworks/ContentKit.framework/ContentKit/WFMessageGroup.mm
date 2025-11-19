@interface WFMessageGroup
+ (id)objectWithWFSerializedRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (WFMessageGroup)initWithCoder:(id)a3;
- (WFMessageGroup)initWithName:(id)a3 identifier:(id)a4;
- (WFMessageGroup)initWithSpeakableString:(id)a3;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFMessageGroup

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFMessageGroup *)v4 identifier];
      v6 = [(WFMessageGroup *)self identifier];
      v7 = [v5 isEqual:v6];
      if (v7)
      {
        goto LABEL_4;
      }

      v12 = [(WFMessageGroup *)v4 identifier];
      if (v12)
      {
        v10 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v11 = [(WFMessageGroup *)self identifier];
      if (!v11)
      {
LABEL_4:
        v8 = [(WFMessageGroup *)v4 name];
        v9 = [(WFMessageGroup *)self name];
        v10 = [v8 isEqual:v9];

        if (v7)
        {
LABEL_14:

          goto LABEL_15;
        }

        v11 = 0;
      }

      else
      {
        v10 = 0;
      }

      v12 = 0;
      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(WFMessageGroup *)self identifier];
  v4 = [v3 hash];
  v5 = [(WFMessageGroup *)self name];
  v6 = v4 ^ [v5 hash];

  return v6 ^ 0xA709;
}

- (id)wfSerializedRepresentation
{
  v3 = objc_opt_new();
  v4 = [(WFMessageGroup *)self name];
  [v3 setObject:v4 forKey:@"name"];

  v5 = [(WFMessageGroup *)self identifier];
  [v3 setValue:v5 forKey:@"identifier"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFMessageGroup *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(WFMessageGroup *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];
}

- (WFMessageGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    self = [(WFMessageGroup *)self initWithName:v5 identifier:v6];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFMessageGroup)initWithSpeakableString:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFMessageGroup.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"speakableString"}];
  }

  v6 = [v5 spokenPhrase];
  v7 = [v5 vocabularyIdentifier];
  v8 = [(WFMessageGroup *)self initWithName:v6 identifier:v7];

  return v8;
}

- (WFMessageGroup)initWithName:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFMessageGroup.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v17.receiver = self;
  v17.super_class = WFMessageGroup;
  v9 = [(WFMessageGroup *)&v17 init];
  if (v9)
  {
    v10 = [v7 copy];
    name = v9->_name;
    v9->_name = v10;

    v12 = [v8 copy];
    identifier = v9->_identifier;
    v9->_identifier = v12;

    v14 = v9;
  }

  return v9;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (!v6)
  {
LABEL_12:
    v12 = 0;
    goto LABEL_17;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v15 = 136315906;
      v16 = "WFEnforceClass";
      v17 = 2114;
      v18 = v6;
      v19 = 2114;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v5;
      v11 = v20;
      _os_log_impl(&dword_21E1BD000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v15, 0x2Au);
    }

    goto LABEL_12;
  }

  v7 = [v6 objectForKey:@"name"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v6 objectForKey:@"identifier"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v13 = v9;

    v12 = [[a1 alloc] initWithName:v7 identifier:v13];
  }

  else
  {
    v12 = 0;
  }

LABEL_17:

  return v12;
}

@end