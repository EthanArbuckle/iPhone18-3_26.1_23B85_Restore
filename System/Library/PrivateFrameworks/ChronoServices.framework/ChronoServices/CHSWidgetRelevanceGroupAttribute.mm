@interface CHSWidgetRelevanceGroupAttribute
+ (CHSWidgetRelevanceGroupAttribute)ungrouped;
- (BOOL)isEqual:(id)equal;
- (CHSWidgetRelevanceGroupAttribute)initWithCoder:(id)coder;
- (CHSWidgetRelevanceGroupAttribute)initWithNamedGroupIdentifier:(id)identifier groupType:(unint64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidgetRelevanceGroupAttribute

- (CHSWidgetRelevanceGroupAttribute)initWithNamedGroupIdentifier:(id)identifier groupType:(unint64_t)type
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = CHSWidgetRelevanceGroupAttribute;
  _init = [(CHSWidgetRelevanceAttribute *)&v12 _init];
  v8 = _init;
  if (_init)
  {
    _init->_groupType = type;
    v9 = [identifierCopy copy];
    groupIdentifier = v8->_groupIdentifier;
    v8->_groupIdentifier = v9;
  }

  return v8;
}

+ (CHSWidgetRelevanceGroupAttribute)ungrouped
{
  v2 = [[self alloc] initWithNamedGroupIdentifier:0 groupType:0];

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  if (self->_groupType)
  {
    v5 = @"named";
  }

  else
  {
    v5 = @"ungrouped";
  }

  [v3 appendString:v5 withName:@"groupType"];
  [v4 appendString:self->_groupIdentifier withName:@"groupIdentifier" skipIfEmpty:1];
  build = [v4 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_groupType == self->_groupType)
    {
      groupIdentifier = equalCopy->_groupIdentifier;
      v6 = self->_groupIdentifier;
      v7 = BSEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CHSWidgetRelevanceGroupAttribute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CHSWidgetRelevanceGroupAttribute;
  v5 = [(CHSWidgetRelevanceAttribute *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_groupType = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_groupType forKey:@"type"];
  [coderCopy encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
}

@end