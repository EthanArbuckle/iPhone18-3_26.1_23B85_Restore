@interface DNDModeAssertionScheduleLifetime
- (BOOL)isEqual:(id)equal;
- (DNDModeAssertionScheduleLifetime)initWithCoder:(id)coder;
- (DNDModeAssertionScheduleLifetime)initWithScheduleIdentifier:(id)identifier behavior:(unint64_t)behavior;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDModeAssertionScheduleLifetime

- (DNDModeAssertionScheduleLifetime)initWithScheduleIdentifier:(id)identifier behavior:(unint64_t)behavior
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = DNDModeAssertionScheduleLifetime;
  _init = [(DNDModeAssertionLifetime *)&v11 _init];
  if (_init)
  {
    v8 = [identifierCopy copy];
    scheduleIdentifier = _init->_scheduleIdentifier;
    _init->_scheduleIdentifier = v8;

    _init->_behavior = behavior;
  }

  return _init;
}

- (unint64_t)hash
{
  scheduleIdentifier = [(DNDModeAssertionScheduleLifetime *)self scheduleIdentifier];
  v4 = [scheduleIdentifier hash];
  lifetimeType = [(DNDModeAssertionScheduleLifetime *)self lifetimeType];

  return lifetimeType ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = equalCopy;
      scheduleIdentifier = [(DNDModeAssertionScheduleLifetime *)self scheduleIdentifier];
      scheduleIdentifier2 = [(DNDModeAssertionScheduleLifetime *)v9 scheduleIdentifier];
      if (scheduleIdentifier != scheduleIdentifier2)
      {
        scheduleIdentifier3 = [(DNDModeAssertionScheduleLifetime *)self scheduleIdentifier];
        if (!scheduleIdentifier3)
        {
          v14 = 0;
          goto LABEL_15;
        }

        v3 = scheduleIdentifier3;
        scheduleIdentifier4 = [(DNDModeAssertionScheduleLifetime *)v9 scheduleIdentifier];
        if (!scheduleIdentifier4)
        {
          v14 = 0;
          goto LABEL_14;
        }

        v4 = scheduleIdentifier4;
        scheduleIdentifier5 = [(DNDModeAssertionScheduleLifetime *)self scheduleIdentifier];
        scheduleIdentifier6 = [(DNDModeAssertionScheduleLifetime *)v9 scheduleIdentifier];
        if (![scheduleIdentifier5 isEqual:scheduleIdentifier6])
        {
          v14 = 0;
LABEL_11:

LABEL_14:
          goto LABEL_15;
        }
      }

      behavior = [(DNDModeAssertionScheduleLifetime *)self behavior];
      v14 = behavior == [(DNDModeAssertionScheduleLifetime *)v9 behavior];
      if (scheduleIdentifier != scheduleIdentifier2)
      {
        goto LABEL_11;
      }

LABEL_15:

      goto LABEL_16;
    }

    v14 = 0;
  }

LABEL_16:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  scheduleIdentifier = [(DNDModeAssertionScheduleLifetime *)self scheduleIdentifier];
  v6 = DNDStringFromModeAssertionScheduleLifetimeBehavior([(DNDModeAssertionScheduleLifetime *)self behavior]);
  v7 = [v3 stringWithFormat:@"<%@: %p scheduleIdentifier: '%@'; behavior: %@>", v4, self, scheduleIdentifier, v6];;

  return v7;
}

- (DNDModeAssertionScheduleLifetime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduleIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"behavior"];

  v7 = [(DNDModeAssertionScheduleLifetime *)self initWithScheduleIdentifier:v5 behavior:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  scheduleIdentifier = [(DNDModeAssertionScheduleLifetime *)self scheduleIdentifier];
  [coderCopy encodeObject:scheduleIdentifier forKey:@"scheduleIdentifier"];

  [coderCopy encodeInteger:-[DNDModeAssertionScheduleLifetime behavior](self forKey:{"behavior"), @"behavior"}];
}

@end