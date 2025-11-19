@interface HMDAssociatedUnassociatedFaceCrop
- (BOOL)isEqual:(id)a3;
- (HMDAssociatedUnassociatedFaceCrop)initWithUUID:(id)a3 dataRepresentation:(id)a4 dateCreated:(id)a5 faceBoundingBox:(CGRect)a6 personFaceCropUUID:(id)a7;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDAssociatedUnassociatedFaceCrop

- (id)attributeDescriptions
{
  v10.receiver = self;
  v10.super_class = HMDAssociatedUnassociatedFaceCrop;
  v3 = [(HMDAssociatedUnassociatedFaceCrop *)&v10 attributeDescriptions];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [(HMDAssociatedUnassociatedFaceCrop *)self personFaceCropUUID];
  v7 = [v5 initWithName:@"Person Face Crop UUID" value:v6];
  [v4 addObject:v7];

  v8 = [v4 copy];

  return v8;
}

- (unint64_t)hash
{
  v2 = [(HMDAssociatedUnassociatedFaceCrop *)self personFaceCropUUID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v11.receiver = self, v11.super_class = HMDAssociatedUnassociatedFaceCrop, [(HMDAssociatedUnassociatedFaceCrop *)&v11 isEqual:v6]))
  {
    v7 = [(HMDAssociatedUnassociatedFaceCrop *)self personFaceCropUUID];
    v8 = [v6 personFaceCropUUID];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMDAssociatedUnassociatedFaceCrop)initWithUUID:(id)a3 dataRepresentation:(id)a4 dateCreated:(id)a5 faceBoundingBox:(CGRect)a6 personFaceCropUUID:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v16)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v17)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v19 = v18;
  if (!v18)
  {
LABEL_11:
    v24 = _HMFPreconditionFailure();
    return [(HMDDateCounterGroupSpecifier *)v24 description];
  }

  v26.receiver = self;
  v26.super_class = HMDAssociatedUnassociatedFaceCrop;
  v20 = [(HMDAssociatedUnassociatedFaceCrop *)&v26 initWithUUID:v15 dataRepresentation:v16 dateCreated:v17 faceBoundingBox:x, y, width, height];
  if (v20)
  {
    v21 = [v19 copy];
    personFaceCropUUID = v20->_personFaceCropUUID;
    v20->_personFaceCropUUID = v21;
  }

  return v20;
}

@end