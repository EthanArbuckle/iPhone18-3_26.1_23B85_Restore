@interface CHSWidgetRelevanceGroupAttribute
+ (CHSWidgetRelevanceGroupAttribute)ungrouped;
- (BOOL)isEqual:(id)a3;
- (CHSWidgetRelevanceGroupAttribute)initWithCoder:(id)a3;
- (CHSWidgetRelevanceGroupAttribute)initWithNamedGroupIdentifier:(id)a3 groupType:(unint64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSWidgetRelevanceGroupAttribute

- (CHSWidgetRelevanceGroupAttribute)initWithNamedGroupIdentifier:(id)a3 groupType:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CHSWidgetRelevanceGroupAttribute;
  v7 = [(CHSWidgetRelevanceAttribute *)&v12 _init];
  v8 = v7;
  if (v7)
  {
    v7->_groupType = a4;
    v9 = [v6 copy];
    groupIdentifier = v8->_groupIdentifier;
    v8->_groupIdentifier = v9;
  }

  return v8;
}

+ (CHSWidgetRelevanceGroupAttribute)ungrouped
{
  v2 = [[a1 alloc] initWithNamedGroupIdentifier:0 groupType:0];

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
  v6 = [v4 build];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v4->_groupType == self->_groupType)
    {
      groupIdentifier = v4->_groupIdentifier;
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

- (CHSWidgetRelevanceGroupAttribute)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CHSWidgetRelevanceGroupAttribute;
  v5 = [(CHSWidgetRelevanceAttribute *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_groupType = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_groupType forKey:@"type"];
  [v4 encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
}

@end