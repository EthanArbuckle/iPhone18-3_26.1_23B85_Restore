@interface MOEventProactiveSuggested
+ (id)describeCategory:(unint64_t)a3;
- (MOEventProactiveSuggested)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventProactiveSuggested

+ (id)describeCategory:(unint64_t)a3
{
  if (a3 > 0xC)
  {
    return @"Unknown";
  }

  else
  {
    return off_278775DD8[a3];
  }
}

- (void)encodeWithCoder:(id)a3
{
  suggestedEventTitle = self->_suggestedEventTitle;
  v5 = a3;
  [v5 encodeObject:suggestedEventTitle forKey:@"suggestedEventTitle"];
  [v5 encodeObject:self->_suggestedEventIdentifier forKey:@"suggestedEventIdentifier"];
  [v5 encodeInteger:self->_suggestedEventCategory forKey:@"suggestedEventCategory"];
  [v5 encodeObject:self->_suggestedEvent forKey:@"suggestedEvent"];
}

- (MOEventProactiveSuggested)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MOEventProactiveSuggested;
  v5 = [(MOEventProactiveSuggested *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestedEventTitle"];
    suggestedEventTitle = v5->_suggestedEventTitle;
    v5->_suggestedEventTitle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestedEventIdentifier"];
    suggestedEventIdentifier = v5->_suggestedEventIdentifier;
    v5->_suggestedEventIdentifier = v8;

    v5->_suggestedEventCategory = [v4 decodeIntegerForKey:@"suggestedEventCategory"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestedEvent"];
    suggestedEvent = v5->_suggestedEvent;
    v5->_suggestedEvent = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOEventProactiveSuggested);
  objc_storeStrong(&v4->_suggestedEvent, self->_suggestedEvent);
  objc_storeStrong(&v4->_suggestedEventTitle, self->_suggestedEventTitle);
  v4->_suggestedEventCategory = self->_suggestedEventCategory;
  objc_storeStrong(&v4->_suggestedEventIdentifier, self->_suggestedEventIdentifier);
  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(NSString *)self->_suggestedEventTitle mask];
  v5 = [v3 initWithFormat:@"suggestedEventTitle, %@, suggestedEventIdentifier, %@", v4, self->_suggestedEventIdentifier];

  return v5;
}

@end