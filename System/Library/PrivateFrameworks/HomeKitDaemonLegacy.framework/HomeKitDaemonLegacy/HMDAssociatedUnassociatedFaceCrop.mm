@interface HMDAssociatedUnassociatedFaceCrop
- (BOOL)isEqual:(id)equal;
- (HMDAssociatedUnassociatedFaceCrop)initWithUUID:(id)d dataRepresentation:(id)representation dateCreated:(id)created faceBoundingBox:(CGRect)box personFaceCropUUID:(id)iD;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDAssociatedUnassociatedFaceCrop

- (id)attributeDescriptions
{
  v10.receiver = self;
  v10.super_class = HMDAssociatedUnassociatedFaceCrop;
  attributeDescriptions = [(HMDAssociatedUnassociatedFaceCrop *)&v10 attributeDescriptions];
  v4 = [attributeDescriptions mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  personFaceCropUUID = [(HMDAssociatedUnassociatedFaceCrop *)self personFaceCropUUID];
  v7 = [v5 initWithName:@"Person Face Crop UUID" value:personFaceCropUUID];
  [v4 addObject:v7];

  v8 = [v4 copy];

  return v8;
}

- (unint64_t)hash
{
  personFaceCropUUID = [(HMDAssociatedUnassociatedFaceCrop *)self personFaceCropUUID];
  v3 = [personFaceCropUUID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v11.receiver = self, v11.super_class = HMDAssociatedUnassociatedFaceCrop, [(HMDAssociatedUnassociatedFaceCrop *)&v11 isEqual:v6]))
  {
    personFaceCropUUID = [(HMDAssociatedUnassociatedFaceCrop *)self personFaceCropUUID];
    personFaceCropUUID2 = [v6 personFaceCropUUID];
    v9 = [personFaceCropUUID isEqual:personFaceCropUUID2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMDAssociatedUnassociatedFaceCrop)initWithUUID:(id)d dataRepresentation:(id)representation dateCreated:(id)created faceBoundingBox:(CGRect)box personFaceCropUUID:(id)iD
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  dCopy = d;
  representationCopy = representation;
  createdCopy = created;
  iDCopy = iD;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!representationCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!createdCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v19 = iDCopy;
  if (!iDCopy)
  {
LABEL_11:
    v24 = _HMFPreconditionFailure();
    return HMDSleepConfigurationOperationStatusAsString(v24);
  }

  v25.receiver = self;
  v25.super_class = HMDAssociatedUnassociatedFaceCrop;
  height = [(HMDAssociatedUnassociatedFaceCrop *)&v25 initWithUUID:dCopy dataRepresentation:representationCopy dateCreated:createdCopy faceBoundingBox:x, y, width, height];
  if (height)
  {
    v21 = [v19 copy];
    personFaceCropUUID = height->_personFaceCropUUID;
    height->_personFaceCropUUID = v21;
  }

  return height;
}

@end