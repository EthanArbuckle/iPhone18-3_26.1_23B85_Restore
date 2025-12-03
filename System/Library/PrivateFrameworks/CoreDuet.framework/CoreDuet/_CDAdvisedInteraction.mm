@interface _CDAdvisedInteraction
- (NSSet)reasons;
- (_CDAdvisedInteraction)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionOfReasons:(id)reasons;
- (void)addReason:(int64_t)reason;
- (void)addReasons:(id)reasons;
- (void)encodeWithCoder:(id)coder;
- (void)setReasons:(id)reasons;
@end

@implementation _CDAdvisedInteraction

- (_CDAdvisedInteraction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _CDAdvisedInteraction;
  v5 = [(_CDAdvisedInteraction *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v6;

    [coderCopy decodeDoubleForKey:@"score"];
    v5->_score = v8;
    v5->_mechanism = [coderCopy decodeInt64ForKey:@"mechanism"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    bundleId = v5->_bundleId;
    v5->_bundleId = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v11;

    v13 = [coderCopy decodeObjectForKey:@"reasons"];
    reasons = v5->_reasons;
    v5->_reasons = v13;

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contact = self->_contact;
  coderCopy = coder;
  [coderCopy encodeObject:contact forKey:@"contact"];
  [coderCopy encodeDouble:@"score" forKey:self->_score];
  [coderCopy encodeInt64:self->_mechanism forKey:@"mechanism"];
  [coderCopy encodeObject:self->_bundleId forKey:@"bundleId"];
  [coderCopy encodeObject:self->_account forKey:@"account"];
  [coderCopy encodeObject:self->_reasons forKey:@"reasons"];
}

- (id)descriptionOfReasons:(id)reasons
{
  if (reasons)
  {
    allObjects = [reasons allObjects];
    v4 = [MEMORY[0x1E696AD60] stringWithString:@"["];
    if ([allObjects count])
    {
      v5 = 0;
      do
      {
        v6 = [allObjects objectAtIndexedSubscript:v5];
        integerValue = [v6 integerValue];

        v8 = reasonToString(integerValue);
        [(__CFString *)v4 appendFormat:@"%@(%ld)", v8, integerValue];

        if (v5 != [allObjects count] - 1)
        {
          [(__CFString *)v4 appendString:@", "];
        }

        ++v5;
      }

      while ([allObjects count] > v5);
    }

    [(__CFString *)v4 appendString:@"]"];
  }

  else
  {
    v4 = @"nil";
  }

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"Advice { \n"];
  contact = [(_CDAdvisedInteraction *)self contact];
  [v3 appendFormat:@"    contact: %@\n", contact];

  [(_CDAdvisedInteraction *)self score];
  [v3 appendFormat:@"      score: %f\n", v5];
  v6 = mechanismToString([(_CDAdvisedInteraction *)self mechanism]);
  [v3 appendFormat:@"  mechanism: %@(%ld)\n", v6, -[_CDAdvisedInteraction mechanism](self, "mechanism")];

  reasons = [(_CDAdvisedInteraction *)self reasons];
  v8 = [(_CDAdvisedInteraction *)self descriptionOfReasons:reasons];
  [v3 appendFormat:@"    reasons: %@\n", v8];

  bundleId = [(_CDAdvisedInteraction *)self bundleId];
  [v3 appendFormat:@"   bundleId: %@\n", bundleId];

  account = [(_CDAdvisedInteraction *)self account];
  [v3 appendFormat:@"    account: %@\n", account];

  [v3 appendString:@"}\n"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(_CDAdvisedInteraction);
  contact = [(_CDAdvisedInteraction *)self contact];
  v6 = [contact copy];
  [(_CDAdvisedInteraction *)v4 setContact:v6];

  [(_CDAdvisedInteraction *)self score];
  [(_CDAdvisedInteraction *)v4 setScore:?];
  [(_CDAdvisedInteraction *)v4 setMechanism:[(_CDAdvisedInteraction *)self mechanism]];
  reasons = [(_CDAdvisedInteraction *)self reasons];
  v8 = [reasons copy];
  [(_CDAdvisedInteraction *)v4 setReasons:v8];

  bundleId = [(_CDAdvisedInteraction *)self bundleId];
  [(_CDAdvisedInteraction *)v4 setBundleId:bundleId];

  account = [(_CDAdvisedInteraction *)self account];
  [(_CDAdvisedInteraction *)v4 setAccount:account];

  return v4;
}

- (NSSet)reasons
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_reasons;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setReasons:(id)reasons
{
  reasonsCopy = reasons;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [reasonsCopy mutableCopy];
  reasons = selfCopy->_reasons;
  selfCopy->_reasons = v5;

  objc_sync_exit(selfCopy);
}

- (void)addReason:(int64_t)reason
{
  v4 = MEMORY[0x1E695DFD8];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  v5 = [v4 setWithObject:v6];
  [(_CDAdvisedInteraction *)self addReasons:v5];
}

- (void)addReasons:(id)reasons
{
  reasonsCopy = reasons;
  if ([reasonsCopy count])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    reasons = selfCopy->_reasons;
    if (reasons)
    {
      [(NSMutableSet *)reasons unionSet:reasonsCopy];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFA8] setWithSet:reasonsCopy];
      v7 = selfCopy->_reasons;
      selfCopy->_reasons = v6;
    }

    objc_sync_exit(selfCopy);
  }
}

@end