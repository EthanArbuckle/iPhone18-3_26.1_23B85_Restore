@interface PKPassSectionDetailDrillInField
- (PKPassSectionDetailDrillInField)initWithCoder:(id)a3;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassSectionDetailDrillInField

- (id)asDictionary
{
  v2 = [(PKPassField *)self asMutableDictionary];
  v3 = [v2 copy];

  return v3;
}

- (PKPassSectionDetailDrillInField)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassSectionDetailDrillInField;
  v5 = [(PKPassField *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"sectionIdentifiers"];
    [(PKPassSectionDetailDrillInField *)v5 setSectionIdentifiers:v6];

    -[PKPassSectionDetailDrillInField setAuthRequirement:](v5, "setAuthRequirement:", [v4 decodeIntegerForKey:@"authRequirement"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    [(PKPassSectionDetailDrillInField *)v5 setLocalizedTitle:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassSectionDetailDrillInField;
  v4 = a3;
  [(PKPassField *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sectionIdentifiers forKey:{@"sectionIdentifiers", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_authRequirement forKey:@"authRequirement"];
  [v4 encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = PKPassSectionDetailDrillInField;
  v5 = [(PKPassField *)&v9 copyWithZone:?];
  v6 = [(NSArray *)self->_sectionIdentifiers copyWithZone:a3];
  [v5 setSectionIdentifiers:v6];

  [v5 setAuthRequirement:self->_authRequirement];
  v7 = [(NSString *)self->_localizedTitle copyWithZone:a3];
  [v5 setLocalizedTitle:v7];

  return v5;
}

@end