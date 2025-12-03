@interface PKPassSectionDetailDrillInField
- (PKPassSectionDetailDrillInField)initWithCoder:(id)coder;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassSectionDetailDrillInField

- (id)asDictionary
{
  asMutableDictionary = [(PKPassField *)self asMutableDictionary];
  v3 = [asMutableDictionary copy];

  return v3;
}

- (PKPassSectionDetailDrillInField)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPassSectionDetailDrillInField;
  v5 = [(PKPassField *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"sectionIdentifiers"];
    [(PKPassSectionDetailDrillInField *)v5 setSectionIdentifiers:v6];

    -[PKPassSectionDetailDrillInField setAuthRequirement:](v5, "setAuthRequirement:", [coderCopy decodeIntegerForKey:@"authRequirement"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    [(PKPassSectionDetailDrillInField *)v5 setLocalizedTitle:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassSectionDetailDrillInField;
  coderCopy = coder;
  [(PKPassField *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sectionIdentifiers forKey:{@"sectionIdentifiers", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_authRequirement forKey:@"authRequirement"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = PKPassSectionDetailDrillInField;
  v5 = [(PKPassField *)&v9 copyWithZone:?];
  v6 = [(NSArray *)self->_sectionIdentifiers copyWithZone:zone];
  [v5 setSectionIdentifiers:v6];

  [v5 setAuthRequirement:self->_authRequirement];
  v7 = [(NSString *)self->_localizedTitle copyWithZone:zone];
  [v5 setLocalizedTitle:v7];

  return v5;
}

@end