@interface _CDAdvisedInteraction
- (NSSet)reasons;
- (_CDAdvisedInteraction)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionOfReasons:(id)a3;
- (void)addReason:(int64_t)a3;
- (void)addReasons:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setReasons:(id)a3;
@end

@implementation _CDAdvisedInteraction

- (_CDAdvisedInteraction)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _CDAdvisedInteraction;
  v5 = [(_CDAdvisedInteraction *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v6;

    [v4 decodeDoubleForKey:@"score"];
    v5->_score = v8;
    v5->_mechanism = [v4 decodeInt64ForKey:@"mechanism"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    bundleId = v5->_bundleId;
    v5->_bundleId = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v11;

    v13 = [v4 decodeObjectForKey:@"reasons"];
    reasons = v5->_reasons;
    v5->_reasons = v13;

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contact = self->_contact;
  v5 = a3;
  [v5 encodeObject:contact forKey:@"contact"];
  [v5 encodeDouble:@"score" forKey:self->_score];
  [v5 encodeInt64:self->_mechanism forKey:@"mechanism"];
  [v5 encodeObject:self->_bundleId forKey:@"bundleId"];
  [v5 encodeObject:self->_account forKey:@"account"];
  [v5 encodeObject:self->_reasons forKey:@"reasons"];
}

- (id)descriptionOfReasons:(id)a3
{
  if (a3)
  {
    v3 = [a3 allObjects];
    v4 = [MEMORY[0x1E696AD60] stringWithString:@"["];
    if ([v3 count])
    {
      v5 = 0;
      do
      {
        v6 = [v3 objectAtIndexedSubscript:v5];
        v7 = [v6 integerValue];

        v8 = reasonToString(v7);
        [(__CFString *)v4 appendFormat:@"%@(%ld)", v8, v7];

        if (v5 != [v3 count] - 1)
        {
          [(__CFString *)v4 appendString:@", "];
        }

        ++v5;
      }

      while ([v3 count] > v5);
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
  v4 = [(_CDAdvisedInteraction *)self contact];
  [v3 appendFormat:@"    contact: %@\n", v4];

  [(_CDAdvisedInteraction *)self score];
  [v3 appendFormat:@"      score: %f\n", v5];
  v6 = mechanismToString([(_CDAdvisedInteraction *)self mechanism]);
  [v3 appendFormat:@"  mechanism: %@(%ld)\n", v6, -[_CDAdvisedInteraction mechanism](self, "mechanism")];

  v7 = [(_CDAdvisedInteraction *)self reasons];
  v8 = [(_CDAdvisedInteraction *)self descriptionOfReasons:v7];
  [v3 appendFormat:@"    reasons: %@\n", v8];

  v9 = [(_CDAdvisedInteraction *)self bundleId];
  [v3 appendFormat:@"   bundleId: %@\n", v9];

  v10 = [(_CDAdvisedInteraction *)self account];
  [v3 appendFormat:@"    account: %@\n", v10];

  [v3 appendString:@"}\n"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_CDAdvisedInteraction);
  v5 = [(_CDAdvisedInteraction *)self contact];
  v6 = [v5 copy];
  [(_CDAdvisedInteraction *)v4 setContact:v6];

  [(_CDAdvisedInteraction *)self score];
  [(_CDAdvisedInteraction *)v4 setScore:?];
  [(_CDAdvisedInteraction *)v4 setMechanism:[(_CDAdvisedInteraction *)self mechanism]];
  v7 = [(_CDAdvisedInteraction *)self reasons];
  v8 = [v7 copy];
  [(_CDAdvisedInteraction *)v4 setReasons:v8];

  v9 = [(_CDAdvisedInteraction *)self bundleId];
  [(_CDAdvisedInteraction *)v4 setBundleId:v9];

  v10 = [(_CDAdvisedInteraction *)self account];
  [(_CDAdvisedInteraction *)v4 setAccount:v10];

  return v4;
}

- (NSSet)reasons
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_reasons;
  objc_sync_exit(v2);

  return v3;
}

- (void)setReasons:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 mutableCopy];
  reasons = v4->_reasons;
  v4->_reasons = v5;

  objc_sync_exit(v4);
}

- (void)addReason:(int64_t)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [v4 setWithObject:v6];
  [(_CDAdvisedInteraction *)self addReasons:v5];
}

- (void)addReasons:(id)a3
{
  v8 = a3;
  if ([v8 count])
  {
    v4 = self;
    objc_sync_enter(v4);
    reasons = v4->_reasons;
    if (reasons)
    {
      [(NSMutableSet *)reasons unionSet:v8];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFA8] setWithSet:v8];
      v7 = v4->_reasons;
      v4->_reasons = v6;
    }

    objc_sync_exit(v4);
  }
}

@end