@interface PKRule
- (PKRule)initWithCoder:(id)coder;
- (PKRule)initWithDictionary:(id)dictionary;
- (PKRule)initWithIdentifier:(id)identifier predicateFormat:(id)format osVersionRequirementRange:(id)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)parsePredicateFormat;
@end

@implementation PKRule

- (PKRule)initWithIdentifier:(id)identifier predicateFormat:(id)format osVersionRequirementRange:(id)range
{
  identifierCopy = identifier;
  formatCopy = format;
  rangeCopy = range;
  if (![identifierCopy length])
  {
    v14 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Malformed Rule in manifest: nil or empty identifier.", buf, 2u);
    }

    goto LABEL_9;
  }

  v16.receiver = self;
  v16.super_class = PKRule;
  v12 = [(PKRule *)&v16 init];
  self = v12;
  if (!v12 || (objc_storeStrong(&v12->_identifier, identifier), objc_storeStrong(&self->_predicateFormat, format), objc_storeStrong(&self->_osVersionRequirementRange, range), [(PKRule *)self parsePredicateFormat], self->_predicateFormat) && !self->_predicate)
  {
LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  self = self;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (PKRule)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKStringForKey:@"identifier"];
  v6 = [dictionaryCopy PKStringForKey:@"predicateFormat"];
  v7 = [dictionaryCopy PKDictionaryForKey:@"osVersionRange"];

  if (v7)
  {
    v8 = [[PKOSVersionRequirementRange alloc] initWithDictionary:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PKRule *)self initWithIdentifier:v5 predicateFormat:v6 osVersionRequirementRange:v8];

  return v9;
}

- (void)parsePredicateFormat
{
  if (self->_predicateFormat)
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithFormat:?];
  }

  else
  {
    v3 = 0;
  }

  predicate = self->_predicate;
  self->_predicate = v3;
}

- (PKRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKRule;
  v5 = [(PKRule *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicateFormat"];
    predicateFormat = v5->_predicateFormat;
    v5->_predicateFormat = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"osVersionRange"];
    osVersionRequirementRange = v5->_osVersionRequirementRange;
    v5->_osVersionRequirementRange = v12;

    [(NSPredicate *)v5->_predicate allowEvaluation];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_predicateFormat forKey:@"predicateFormat"];
  [coderCopy encodeObject:self->_predicate forKey:@"predicate"];
  [coderCopy encodeObject:self->_osVersionRequirementRange forKey:@"osVersionRange"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"predicate: '%@'; ", self->_predicate];
  [v3 appendFormat:@"predicateFormat: '%@'; ", self->_predicateFormat];
  [v3 appendFormat:@"osVersionRange: '%@'; ", self->_osVersionRequirementRange];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSPredicate *)self->_predicate copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_predicateFormat copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(PKOSVersionRequirementRange *)self->_osVersionRequirementRange copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

@end