@interface WFMessageGroup
+ (id)objectWithWFSerializedRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (WFMessageGroup)initWithCoder:(id)coder;
- (WFMessageGroup)initWithName:(id)name identifier:(id)identifier;
- (WFMessageGroup)initWithSpeakableString:(id)string;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFMessageGroup

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(WFMessageGroup *)equalCopy identifier];
      identifier2 = [(WFMessageGroup *)self identifier];
      v7 = [identifier isEqual:identifier2];
      if (v7)
      {
        goto LABEL_4;
      }

      identifier3 = [(WFMessageGroup *)equalCopy identifier];
      if (identifier3)
      {
        v10 = 0;
LABEL_13:

        goto LABEL_14;
      }

      identifier4 = [(WFMessageGroup *)self identifier];
      if (!identifier4)
      {
LABEL_4:
        name = [(WFMessageGroup *)equalCopy name];
        name2 = [(WFMessageGroup *)self name];
        v10 = [name isEqual:name2];

        if (v7)
        {
LABEL_14:

          goto LABEL_15;
        }

        identifier4 = 0;
      }

      else
      {
        v10 = 0;
      }

      identifier3 = 0;
      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (unint64_t)hash
{
  identifier = [(WFMessageGroup *)self identifier];
  v4 = [identifier hash];
  name = [(WFMessageGroup *)self name];
  v6 = v4 ^ [name hash];

  return v6 ^ 0xA709;
}

- (id)wfSerializedRepresentation
{
  v3 = objc_opt_new();
  name = [(WFMessageGroup *)self name];
  [v3 setObject:name forKey:@"name"];

  identifier = [(WFMessageGroup *)self identifier];
  [v3 setValue:identifier forKey:@"identifier"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(WFMessageGroup *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  identifier = [(WFMessageGroup *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (WFMessageGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    self = [(WFMessageGroup *)self initWithName:v5 identifier:v6];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFMessageGroup)initWithSpeakableString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFMessageGroup.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"speakableString"}];
  }

  spokenPhrase = [stringCopy spokenPhrase];
  vocabularyIdentifier = [stringCopy vocabularyIdentifier];
  v8 = [(WFMessageGroup *)self initWithName:spokenPhrase identifier:vocabularyIdentifier];

  return v8;
}

- (WFMessageGroup)initWithName:(id)name identifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFMessageGroup.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v17.receiver = self;
  v17.super_class = WFMessageGroup;
  v9 = [(WFMessageGroup *)&v17 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    name = v9->_name;
    v9->_name = v10;

    v12 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v12;

    v14 = v9;
  }

  return v9;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  v23 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = objc_opt_class();
  v6 = representationCopy;
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

    v12 = [[self alloc] initWithName:v7 identifier:v13];
  }

  else
  {
    v12 = 0;
  }

LABEL_17:

  return v12;
}

@end