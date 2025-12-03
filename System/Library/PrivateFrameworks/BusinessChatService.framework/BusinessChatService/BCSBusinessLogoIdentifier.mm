@interface BCSBusinessLogoIdentifier
- (BCSBusinessLogoIdentifier)initWithBusinessId:(id)id;
- (BCSBusinessLogoIdentifier)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BCSBusinessLogoIdentifier

- (BCSBusinessLogoIdentifier)initWithBusinessId:(id)id
{
  idCopy = id;
  v9.receiver = self;
  v9.super_class = BCSBusinessLogoIdentifier;
  v6 = [(BCSBusinessLogoIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_businessId, id);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    businessId = [(BCSBusinessLogoIdentifier *)self businessId];
    v6 = [businessId copy];
    v7 = v4[1];
    v4[1] = v6;
  }

  return v4;
}

- (BCSBusinessLogoIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BCSBusinessLogoIdentifier;
  v5 = [(BCSBusinessLogoIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BusinessId"];
    businessId = v5->_businessId;
    v5->_businessId = v6;
  }

  return v5;
}

@end