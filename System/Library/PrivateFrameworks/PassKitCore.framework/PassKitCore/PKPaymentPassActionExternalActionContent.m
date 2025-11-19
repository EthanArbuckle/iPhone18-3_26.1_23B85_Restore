@interface PKPaymentPassActionExternalActionContent
- (PKPaymentPassActionExternalActionContent)initWithCoder:(id)a3;
- (PKPaymentPassActionExternalActionContent)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentPassActionExternalActionContent

- (PKPaymentPassActionExternalActionContent)initWithDictionary:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v15.receiver = self;
  v15.super_class = PKPaymentPassActionExternalActionContent;
  self = [(PKPaymentPassActionExternalActionContent *)&v15 init];
  if (self)
  {
    v5 = [v4 PKStringForKey:@"type"];
    self->_type = PKPaymentPassActionTypeFromString(v5);

    type = self->_type;
    if (type != 12 && type != 10)
    {
      goto LABEL_12;
    }

    v8 = [v4 PKStringForKey:@"url"];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v8];
      url = self->_url;
      self->_url = v9;
    }

    v11 = [v4 PKStringForKey:@"displayName"];
    displayName = self->_displayName;
    self->_displayName = v11;
  }

  self = self;
  v13 = self;
LABEL_13:

  return v13;
}

- (PKPaymentPassActionExternalActionContent)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPaymentPassActionExternalActionContent;
  v5 = [(PKPaymentPassActionExternalActionContent *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKPaymentPassActionTypeFromString(v6);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v6 = a3;
  v5 = PKPaymentPassActionTypeToString(type);
  [v6 encodeObject:v5 forKey:@"type"];

  [v6 encodeObject:self->_url forKey:@"url"];
  [v6 encodeObject:self->_displayName forKey:@"displayName"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  *(v4 + 8) = self->_type;
  objc_storeStrong((v4 + 16), self->_url);
  objc_storeStrong((v4 + 24), self->_displayName);
  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ ", objc_opt_class()];;
  v4 = PKPaymentPassActionTypeToString(self->_type);
  [v3 appendFormat:@"type: '%@'; ", v4];

  [v3 appendFormat:@"url: '%@'; ", self->_url];
  [v3 appendFormat:@"displayName: '%@'; ", self->_displayName];
  [v3 appendFormat:@">"];

  return v3;
}

@end