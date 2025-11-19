@interface PKPeerPaymentPreferencesProfileAppearance
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToProfileAppearance:(id)a3;
- (PKPeerPaymentPreferencesProfileAppearance)initWithCoder:(id)a3;
- (PKPeerPaymentPreferencesProfileAppearance)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentPreferencesProfileAppearance

- (PKPeerPaymentPreferencesProfileAppearance)initWithDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKPeerPaymentPreferencesProfileAppearance;
  v5 = [(PKPeerPaymentPreferencesProfileAppearance *)&v7 init];
  if (v5)
  {
    v5->_shareLastName = [v4 PKBoolForKey:@"shareLastName"];
    v5->_shareProfilePicture = [v4 PKBoolForKey:@"shareProfilePicture"];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_shareLastName];
  [v3 setObject:v4 forKey:@"shareLastName"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_shareProfilePicture];
  [v3 setObject:v5 forKey:@"shareProfilePicture"];

  v6 = [v3 copy];

  return v6;
}

- (PKPeerPaymentPreferencesProfileAppearance)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKPeerPaymentPreferencesProfileAppearance;
  v5 = [(PKPeerPaymentPreferencesProfileAppearance *)&v7 init];
  if (v5)
  {
    v5->_shareLastName = [v4 decodeBoolForKey:@"shareLastName"];
    v5->_shareProfilePicture = [v4 decodeBoolForKey:@"shareProfilePicture"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  shareLastName = self->_shareLastName;
  v5 = a3;
  [v5 encodeBool:shareLastName forKey:@"shareLastName"];
  [v5 encodeBool:self->_shareProfilePicture forKey:@"shareProfilePicture"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[PKPeerPaymentPreferencesProfileAppearance allocWithZone:?]];
  *(result + 8) = self->_shareLastName;
  *(result + 9) = self->_shareProfilePicture;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentPreferencesProfileAppearance *)self isEqualToProfileAppearance:v5];
  }

  return v6;
}

- (BOOL)isEqualToProfileAppearance:(id)a3
{
  v4 = a3;
  v5 = v4 && self->_shareLastName == v4[8] && self->_shareProfilePicture == v4[9];

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_shareLastName - v4 + 32 * v4;
  v6 = self->_shareProfilePicture - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_shareLastName)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"shareLastName: '%@'; ", v5];
  if (self->_shareProfilePicture)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v4 appendFormat:@"shareProfilePicture: '%@'; ", v6];
  [v4 appendFormat:@">"];

  return v4;
}

@end