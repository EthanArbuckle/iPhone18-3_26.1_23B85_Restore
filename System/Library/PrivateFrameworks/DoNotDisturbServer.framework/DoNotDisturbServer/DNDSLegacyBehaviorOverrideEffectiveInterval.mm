@interface DNDSLegacyBehaviorOverrideEffectiveInterval
- (DNDSLegacyBehaviorOverrideEffectiveInterval)initWithCoder:(id)coder;
- (DNDSLegacyBehaviorOverrideEffectiveInterval)initWithStartComponents:(id)components endComponents:(id)endComponents calendarIdentifier:(id)identifier repeatInterval:(unint64_t)interval identifier:(id)a7;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDSLegacyBehaviorOverrideEffectiveInterval

- (DNDSLegacyBehaviorOverrideEffectiveInterval)initWithStartComponents:(id)components endComponents:(id)endComponents calendarIdentifier:(id)identifier repeatInterval:(unint64_t)interval identifier:(id)a7
{
  componentsCopy = components;
  endComponentsCopy = endComponents;
  identifierCopy = identifier;
  v15 = a7;
  v28.receiver = self;
  v28.super_class = DNDSLegacyBehaviorOverrideEffectiveInterval;
  v16 = [(DNDSLegacyBehaviorOverrideEffectiveInterval *)&v28 init];
  if (v16)
  {
    v17 = [componentsCopy copy];
    startComponents = v16->_startComponents;
    v16->_startComponents = v17;

    v19 = [endComponentsCopy copy];
    endComponents = v16->_endComponents;
    v16->_endComponents = v19;

    v21 = [identifierCopy copy];
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

    v16->_repeatInterval = interval;
    v25 = [v15 copy];
    identifier = v16->_identifier;
    v16->_identifier = v25;
  }

  return v16;
}

- (DNDSLegacyBehaviorOverrideEffectiveInterval)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startComponents"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endComponents"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"calendar"];
  v8 = [coderCopy decodeIntegerForKey:@"repeatInterval"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v10 = [(DNDSLegacyBehaviorOverrideEffectiveInterval *)self initWithStartComponents:v5 endComponents:v6 calendarIdentifier:v7 repeatInterval:v8 identifier:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startComponents = [(DNDSLegacyBehaviorOverrideEffectiveInterval *)self startComponents];
  [coderCopy encodeObject:startComponents forKey:@"startComponents"];

  endComponents = [(DNDSLegacyBehaviorOverrideEffectiveInterval *)self endComponents];
  [coderCopy encodeObject:endComponents forKey:@"endComponents"];

  calendarIdentifier = [(DNDSLegacyBehaviorOverrideEffectiveInterval *)self calendarIdentifier];
  [coderCopy encodeObject:calendarIdentifier forKey:@"calendar"];

  [coderCopy encodeInteger:-[DNDSLegacyBehaviorOverrideEffectiveInterval repeatInterval](self forKey:{"repeatInterval"), @"repeatInterval"}];
  identifier = [(DNDSLegacyBehaviorOverrideEffectiveInterval *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

@end