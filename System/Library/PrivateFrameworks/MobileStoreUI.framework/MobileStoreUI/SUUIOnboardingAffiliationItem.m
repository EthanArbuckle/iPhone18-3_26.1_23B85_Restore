@interface SUUIOnboardingAffiliationItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SUUIOnboardingAffiliationItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setFillColor:self->_fillColor];
  [v4 setIdentifier:self->_identifier];
  [v4 setImageName:self->_imageName];
  [v4 setImageTreatment:self->_imageTreatment];
  [v4 setImageURL:self->_imageURL];
  [v4 setTitle:self->_title];
  [v4 setUserAffinityCount:self->_userAffinityCount];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUIOnboardingAffiliationItem;
  v4 = [(SUUIOnboardingAffiliationItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: [%@, %@]", v4, self->_identifier, self->_title];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(SUUIOnboardingAffiliationItem *)self identifier];
    v8 = [v4 identifier];
    v6 = [v7 isEqualToString:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end