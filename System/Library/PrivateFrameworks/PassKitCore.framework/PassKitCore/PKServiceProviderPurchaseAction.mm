@interface PKServiceProviderPurchaseAction
+ (id)actionWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToServiceProviderPurchaseAction:(id)action;
- (PKServiceProviderPurchaseAction)initWithCoder:(id)coder;
- (PKServiceProviderPurchaseAction)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKServiceProviderPurchaseAction

+ (id)actionWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

- (PKServiceProviderPurchaseAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PKServiceProviderPurchaseAction;
  v5 = [(PKServiceProviderPurchaseAction *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [dictionaryCopy PKStringForKey:@"localizedTitle"];
    v10 = [v9 copy];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v10;

    v12 = [dictionaryCopy PKStringForKey:@"localizedDescription"];
    v13 = [v12 copy];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v13;
  }

  return v5;
}

- (PKServiceProviderPurchaseAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKServiceProviderPurchaseAction;
  v5 = [(PKServiceProviderPurchaseAction *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    v10 = [v9 copy];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    v13 = [v12 copy];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_localizedTitle];
  [array safelyAddObject:self->_localizedDescription];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKServiceProviderPurchaseAction *)self isEqualToServiceProviderPurchaseAction:equalCopy];

  return v5;
}

- (BOOL)isEqualToServiceProviderPurchaseAction:(id)action
{
  actionCopy = action;
  if (self == actionCopy)
  {
    v8 = 1;
    goto LABEL_19;
  }

  identifier = self->_identifier;
  v6 = actionCopy->_identifier;
  if (identifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (identifier != v6)
    {
      goto LABEL_18;
    }
  }

  else if (([(NSString *)identifier isEqual:?]& 1) == 0)
  {
    goto LABEL_18;
  }

  localizedTitle = self->_localizedTitle;
  v10 = actionCopy->_localizedTitle;
  if (!localizedTitle || !v10)
  {
    if (localizedTitle == v10)
    {
      goto LABEL_14;
    }

LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  if (([(NSString *)localizedTitle isEqual:?]& 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  localizedDescription = self->_localizedDescription;
  v12 = actionCopy->_localizedDescription;
  if (localizedDescription && v12)
  {
    v8 = [(NSString *)localizedDescription isEqual:?];
  }

  else
  {
    v8 = localizedDescription == v12;
  }

LABEL_19:

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_identifier)
  {
    [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  }

  if (self->_localizedTitle)
  {
    [v4 appendFormat:@"localizedTitle: '%@'; ", self->_localizedTitle];
  }

  if (self->_localizedDescription)
  {
    [v4 appendFormat:@"localizedDescription: %@; ", self->_localizedDescription];
  }

  [v4 appendFormat:@">"];

  return v4;
}

@end