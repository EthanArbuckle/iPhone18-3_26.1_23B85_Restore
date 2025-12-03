@interface MOEventProactiveSuggested
+ (id)describeCategory:(unint64_t)category;
- (MOEventProactiveSuggested)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventProactiveSuggested

+ (id)describeCategory:(unint64_t)category
{
  if (category > 0xC)
  {
    return @"Unknown";
  }

  else
  {
    return off_278775DD8[category];
  }
}

- (void)encodeWithCoder:(id)coder
{
  suggestedEventTitle = self->_suggestedEventTitle;
  coderCopy = coder;
  [coderCopy encodeObject:suggestedEventTitle forKey:@"suggestedEventTitle"];
  [coderCopy encodeObject:self->_suggestedEventIdentifier forKey:@"suggestedEventIdentifier"];
  [coderCopy encodeInteger:self->_suggestedEventCategory forKey:@"suggestedEventCategory"];
  [coderCopy encodeObject:self->_suggestedEvent forKey:@"suggestedEvent"];
}

- (MOEventProactiveSuggested)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MOEventProactiveSuggested;
  v5 = [(MOEventProactiveSuggested *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestedEventTitle"];
    suggestedEventTitle = v5->_suggestedEventTitle;
    v5->_suggestedEventTitle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestedEventIdentifier"];
    suggestedEventIdentifier = v5->_suggestedEventIdentifier;
    v5->_suggestedEventIdentifier = v8;

    v5->_suggestedEventCategory = [coderCopy decodeIntegerForKey:@"suggestedEventCategory"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestedEvent"];
    suggestedEvent = v5->_suggestedEvent;
    v5->_suggestedEvent = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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
  mask = [(NSString *)self->_suggestedEventTitle mask];
  v5 = [v3 initWithFormat:@"suggestedEventTitle, %@, suggestedEventIdentifier, %@", mask, self->_suggestedEventIdentifier];

  return v5;
}

@end