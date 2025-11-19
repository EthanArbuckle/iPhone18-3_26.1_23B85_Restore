@interface PKServiceProviderPurchaseAction
+ (id)actionWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToServiceProviderPurchaseAction:(id)a3;
- (PKServiceProviderPurchaseAction)initWithCoder:(id)a3;
- (PKServiceProviderPurchaseAction)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKServiceProviderPurchaseAction

+ (id)actionWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

- (PKServiceProviderPurchaseAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKServiceProviderPurchaseAction;
  v5 = [(PKServiceProviderPurchaseAction *)&v16 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 PKStringForKey:@"localizedTitle"];
    v10 = [v9 copy];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v10;

    v12 = [v4 PKStringForKey:@"localizedDescription"];
    v13 = [v12 copy];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v13;
  }

  return v5;
}

- (PKServiceProviderPurchaseAction)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKServiceProviderPurchaseAction;
  v5 = [(PKServiceProviderPurchaseAction *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    v10 = [v9 copy];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    v13 = [v12 copy];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [v5 encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_localizedTitle];
  [v3 safelyAddObject:self->_localizedDescription];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKServiceProviderPurchaseAction *)self isEqualToServiceProviderPurchaseAction:v4];

  return v5;
}

- (BOOL)isEqualToServiceProviderPurchaseAction:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
    goto LABEL_19;
  }

  identifier = self->_identifier;
  v6 = v4->_identifier;
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
  v10 = v4->_localizedTitle;
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
  v12 = v4->_localizedDescription;
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