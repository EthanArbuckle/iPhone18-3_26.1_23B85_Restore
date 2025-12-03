@interface PKPeerPaymentPreferencesProfileAppearance
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToProfileAppearance:(id)appearance;
- (PKPeerPaymentPreferencesProfileAppearance)initWithCoder:(id)coder;
- (PKPeerPaymentPreferencesProfileAppearance)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentPreferencesProfileAppearance

- (PKPeerPaymentPreferencesProfileAppearance)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = PKPeerPaymentPreferencesProfileAppearance;
  v5 = [(PKPeerPaymentPreferencesProfileAppearance *)&v7 init];
  if (v5)
  {
    v5->_shareLastName = [dictionaryCopy PKBoolForKey:@"shareLastName"];
    v5->_shareProfilePicture = [dictionaryCopy PKBoolForKey:@"shareProfilePicture"];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_shareLastName];
  [dictionary setObject:v4 forKey:@"shareLastName"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_shareProfilePicture];
  [dictionary setObject:v5 forKey:@"shareProfilePicture"];

  v6 = [dictionary copy];

  return v6;
}

- (PKPeerPaymentPreferencesProfileAppearance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKPeerPaymentPreferencesProfileAppearance;
  v5 = [(PKPeerPaymentPreferencesProfileAppearance *)&v7 init];
  if (v5)
  {
    v5->_shareLastName = [coderCopy decodeBoolForKey:@"shareLastName"];
    v5->_shareProfilePicture = [coderCopy decodeBoolForKey:@"shareProfilePicture"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  shareLastName = self->_shareLastName;
  coderCopy = coder;
  [coderCopy encodeBool:shareLastName forKey:@"shareLastName"];
  [coderCopy encodeBool:self->_shareProfilePicture forKey:@"shareProfilePicture"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[PKPeerPaymentPreferencesProfileAppearance allocWithZone:?]];
  *(result + 8) = self->_shareLastName;
  *(result + 9) = self->_shareProfilePicture;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentPreferencesProfileAppearance *)self isEqualToProfileAppearance:v5];
  }

  return v6;
}

- (BOOL)isEqualToProfileAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v5 = appearanceCopy && self->_shareLastName == appearanceCopy[8] && self->_shareProfilePicture == appearanceCopy[9];

  return v5;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = PKCombinedHash(17, array);
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