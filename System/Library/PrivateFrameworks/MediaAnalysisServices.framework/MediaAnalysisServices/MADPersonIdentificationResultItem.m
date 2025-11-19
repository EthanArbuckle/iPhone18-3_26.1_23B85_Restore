@interface MADPersonIdentificationResultItem
- (CGRect)boundingBox;
- (MADPersonIdentificationResultItem)initWithCoder:(id)a3;
- (MADPersonIdentificationResultItem)initWithPersonIdentifier:(id)a3 personName:(id)a4 mdID:(id)a5 detectionType:(signed __int16)a6 verified:(BOOL)a7 boundingBox:(CGRect)a8 andConfidence:(float)a9;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADPersonIdentificationResultItem

- (MADPersonIdentificationResultItem)initWithPersonIdentifier:(id)a3 personName:(id)a4 mdID:(id)a5 detectionType:(signed __int16)a6 verified:(BOOL)a7 boundingBox:(CGRect)a8 andConfidence:(float)a9
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v26.receiver = self;
  v26.super_class = MADPersonIdentificationResultItem;
  v23 = [(MADPersonIdentificationResultItem *)&v26 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_personIdentifier, a3);
    objc_storeStrong(&v24->_personName, a4);
    objc_storeStrong(&v24->_mdID, a5);
    v24->_detectionType = a6;
    v24->_verified = a7;
    v24->_boundingBox.origin.x = x;
    v24->_boundingBox.origin.y = y;
    v24->_boundingBox.size.width = width;
    v24->_boundingBox.size.height = height;
    v24->_confidence = a9;
  }

  return v24;
}

- (MADPersonIdentificationResultItem)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MADPersonIdentificationResultItem;
  v5 = [(MADPersonIdentificationResultItem *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PersonIdentifier"];
    personIdentifier = v5->_personIdentifier;
    v5->_personIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PersonName"];
    personName = v5->_personName;
    v5->_personName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MegadomeIdentifier"];
    mdID = v5->_mdID;
    v5->_mdID = v10;

    v5->_detectionType = [v4 decodeInt32ForKey:@"DetectionType"];
    v5->_verified = [v4 decodeBoolForKey:@"Verified"];
    [v4 decodeRectForKey:@"BoundingBox"];
    v5->_boundingBox.origin.x = v12;
    v5->_boundingBox.origin.y = v13;
    v5->_boundingBox.size.width = v14;
    v5->_boundingBox.size.height = v15;
    [v4 decodeFloatForKey:@"Confidence"];
    v5->_confidence = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_personIdentifier forKey:@"PersonIdentifier"];
  [v5 encodeObject:self->_personName forKey:@"PersonName"];
  [v5 encodeObject:self->_mdID forKey:@"MegadomeIdentifier"];
  [v5 encodeInt32:self->_detectionType forKey:@"DetectionType"];
  [v5 encodeBool:self->_verified forKey:@"Verified"];
  [v5 encodeRect:@"BoundingBox" forKey:{self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height}];
  *&v4 = self->_confidence;
  [v5 encodeFloat:@"Confidence" forKey:v4];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"person-identifier: %@, ", self->_personIdentifier];
  [v3 appendFormat:@"person-name: %@, ", self->_personName];
  [v3 appendFormat:@"megadome-identifier: %@, ", self->_mdID];
  [v3 appendFormat:@"detection-type: %hd, ", self->_detectionType];
  if (self->_verified)
  {
    v6 = @"verified";
  }

  else
  {
    v6 = @"unverified";
  }

  [v3 appendFormat:@"verified: %@, ", v6];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.*f, y:%.*f}, {width:%.*f, height:%.*f}} ", 2, *&self->_boundingBox.origin.x, 2, *&self->_boundingBox.origin.y, 2, *&self->_boundingBox.size.width, 2, *&self->_boundingBox.size.height];
  [v3 appendFormat:@"bounding-box: %@, ", v7];

  [v3 appendFormat:@"confidence: %.*f>", 2, self->_confidence];

  return v3;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end