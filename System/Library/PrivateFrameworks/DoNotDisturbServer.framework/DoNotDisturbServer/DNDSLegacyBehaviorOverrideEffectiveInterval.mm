@interface DNDSLegacyBehaviorOverrideEffectiveInterval
- (DNDSLegacyBehaviorOverrideEffectiveInterval)initWithCoder:(id)a3;
- (DNDSLegacyBehaviorOverrideEffectiveInterval)initWithStartComponents:(id)a3 endComponents:(id)a4 calendarIdentifier:(id)a5 repeatInterval:(unint64_t)a6 identifier:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDSLegacyBehaviorOverrideEffectiveInterval

- (DNDSLegacyBehaviorOverrideEffectiveInterval)initWithStartComponents:(id)a3 endComponents:(id)a4 calendarIdentifier:(id)a5 repeatInterval:(unint64_t)a6 identifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v28.receiver = self;
  v28.super_class = DNDSLegacyBehaviorOverrideEffectiveInterval;
  v16 = [(DNDSLegacyBehaviorOverrideEffectiveInterval *)&v28 init];
  if (v16)
  {
    v17 = [v12 copy];
    startComponents = v16->_startComponents;
    v16->_startComponents = v17;

    v19 = [v13 copy];
    endComponents = v16->_endComponents;
    v16->_endComponents = v19;

    v21 = [v14 copy];
    v22 = v21;
    v23 = *MEMORY[0x277CBE5C0];
    if (v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = *MEMORY[0x277CBE5C0];
    }

    objc_storeStrong(&v16->_calendarIdentifier, v24);

    v16->_repeatInterval = a6;
    v25 = [v15 copy];
    identifier = v16->_identifier;
    v16->_identifier = v25;
  }

  return v16;
}

- (DNDSLegacyBehaviorOverrideEffectiveInterval)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startComponents"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endComponents"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"calendar"];
  v8 = [v4 decodeIntegerForKey:@"repeatInterval"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v10 = [(DNDSLegacyBehaviorOverrideEffectiveInterval *)self initWithStartComponents:v5 endComponents:v6 calendarIdentifier:v7 repeatInterval:v8 identifier:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DNDSLegacyBehaviorOverrideEffectiveInterval *)self startComponents];
  [v4 encodeObject:v5 forKey:@"startComponents"];

  v6 = [(DNDSLegacyBehaviorOverrideEffectiveInterval *)self endComponents];
  [v4 encodeObject:v6 forKey:@"endComponents"];

  v7 = [(DNDSLegacyBehaviorOverrideEffectiveInterval *)self calendarIdentifier];
  [v4 encodeObject:v7 forKey:@"calendar"];

  [v4 encodeInteger:-[DNDSLegacyBehaviorOverrideEffectiveInterval repeatInterval](self forKey:{"repeatInterval"), @"repeatInterval"}];
  v8 = [(DNDSLegacyBehaviorOverrideEffectiveInterval *)self identifier];
  [v4 encodeObject:v8 forKey:@"identifier"];
}

@end