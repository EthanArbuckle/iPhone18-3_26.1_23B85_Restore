@interface BCSBusinessLogoIdentifier
- (BCSBusinessLogoIdentifier)initWithBusinessId:(id)a3;
- (BCSBusinessLogoIdentifier)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BCSBusinessLogoIdentifier

- (BCSBusinessLogoIdentifier)initWithBusinessId:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BCSBusinessLogoIdentifier;
  v6 = [(BCSBusinessLogoIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_businessId, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(BCSBusinessLogoIdentifier *)self businessId];
    v6 = [v5 copy];
    v7 = v4[1];
    v4[1] = v6;
  }

  return v4;
}

- (BCSBusinessLogoIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BCSBusinessLogoIdentifier;
  v5 = [(BCSBusinessLogoIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BusinessId"];
    businessId = v5->_businessId;
    v5->_businessId = v6;
  }

  return v5;
}

@end