@interface DNDModeAssertionScheduleLifetime
- (BOOL)isEqual:(id)a3;
- (DNDModeAssertionScheduleLifetime)initWithCoder:(id)a3;
- (DNDModeAssertionScheduleLifetime)initWithScheduleIdentifier:(id)a3 behavior:(unint64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDModeAssertionScheduleLifetime

- (DNDModeAssertionScheduleLifetime)initWithScheduleIdentifier:(id)a3 behavior:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = DNDModeAssertionScheduleLifetime;
  v7 = [(DNDModeAssertionLifetime *)&v11 _init];
  if (v7)
  {
    v8 = [v6 copy];
    scheduleIdentifier = v7->_scheduleIdentifier;
    v7->_scheduleIdentifier = v8;

    v7->_behavior = a4;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(DNDModeAssertionScheduleLifetime *)self scheduleIdentifier];
  v4 = [v3 hash];
  v5 = [(DNDModeAssertionScheduleLifetime *)self lifetimeType];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [(DNDModeAssertionScheduleLifetime *)self scheduleIdentifier];
      v11 = [(DNDModeAssertionScheduleLifetime *)v9 scheduleIdentifier];
      if (v10 != v11)
      {
        v12 = [(DNDModeAssertionScheduleLifetime *)self scheduleIdentifier];
        if (!v12)
        {
          v14 = 0;
          goto LABEL_15;
        }

        v3 = v12;
        v13 = [(DNDModeAssertionScheduleLifetime *)v9 scheduleIdentifier];
        if (!v13)
        {
          v14 = 0;
          goto LABEL_14;
        }

        v4 = v13;
        v5 = [(DNDModeAssertionScheduleLifetime *)self scheduleIdentifier];
        v6 = [(DNDModeAssertionScheduleLifetime *)v9 scheduleIdentifier];
        if (![v5 isEqual:v6])
        {
          v14 = 0;
LABEL_11:

LABEL_14:
          goto LABEL_15;
        }
      }

      v15 = [(DNDModeAssertionScheduleLifetime *)self behavior];
      v14 = v15 == [(DNDModeAssertionScheduleLifetime *)v9 behavior];
      if (v10 != v11)
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
  v5 = [(DNDModeAssertionScheduleLifetime *)self scheduleIdentifier];
  v6 = DNDStringFromModeAssertionScheduleLifetimeBehavior([(DNDModeAssertionScheduleLifetime *)self behavior]);
  v7 = [v3 stringWithFormat:@"<%@: %p scheduleIdentifier: '%@'; behavior: %@>", v4, self, v5, v6];;

  return v7;
}

- (DNDModeAssertionScheduleLifetime)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheduleIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"behavior"];

  v7 = [(DNDModeAssertionScheduleLifetime *)self initWithScheduleIdentifier:v5 behavior:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(DNDModeAssertionScheduleLifetime *)self scheduleIdentifier];
  [v5 encodeObject:v4 forKey:@"scheduleIdentifier"];

  [v5 encodeInteger:-[DNDModeAssertionScheduleLifetime behavior](self forKey:{"behavior"), @"behavior"}];
}

@end