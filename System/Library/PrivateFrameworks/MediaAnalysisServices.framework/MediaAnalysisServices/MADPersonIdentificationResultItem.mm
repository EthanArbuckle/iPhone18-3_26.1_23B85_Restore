@interface MADPersonIdentificationResultItem
- (CGRect)boundingBox;
- (MADPersonIdentificationResultItem)initWithCoder:(id)coder;
- (MADPersonIdentificationResultItem)initWithPersonIdentifier:(id)identifier personName:(id)name mdID:(id)d detectionType:(signed __int16)type verified:(BOOL)verified boundingBox:(CGRect)box andConfidence:(float)confidence;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADPersonIdentificationResultItem

- (MADPersonIdentificationResultItem)initWithPersonIdentifier:(id)identifier personName:(id)name mdID:(id)d detectionType:(signed __int16)type verified:(BOOL)verified boundingBox:(CGRect)box andConfidence:(float)confidence
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  identifierCopy = identifier;
  nameCopy = name;
  dCopy = d;
  v26.receiver = self;
  v26.super_class = MADPersonIdentificationResultItem;
  v23 = [(MADPersonIdentificationResultItem *)&v26 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_personIdentifier, identifier);
    objc_storeStrong(&v24->_personName, name);
    objc_storeStrong(&v24->_mdID, d);
    v24->_detectionType = type;
    v24->_verified = verified;
    v24->_boundingBox.origin.x = x;
    v24->_boundingBox.origin.y = y;
    v24->_boundingBox.size.width = width;
    v24->_boundingBox.size.height = height;
    v24->_confidence = confidence;
  }

  return v24;
}

- (MADPersonIdentificationResultItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = MADPersonIdentificationResultItem;
  v5 = [(MADPersonIdentificationResultItem *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PersonIdentifier"];
    personIdentifier = v5->_personIdentifier;
    v5->_personIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PersonName"];
    personName = v5->_personName;
    v5->_personName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MegadomeIdentifier"];
    mdID = v5->_mdID;
    v5->_mdID = v10;

    v5->_detectionType = [coderCopy decodeInt32ForKey:@"DetectionType"];
    v5->_verified = [coderCopy decodeBoolForKey:@"Verified"];
    [coderCopy decodeRectForKey:@"BoundingBox"];
    v5->_boundingBox.origin.x = v12;
    v5->_boundingBox.origin.y = v13;
    v5->_boundingBox.size.width = v14;
    v5->_boundingBox.size.height = v15;
    [coderCopy decodeFloatForKey:@"Confidence"];
    v5->_confidence = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_personIdentifier forKey:@"PersonIdentifier"];
  [coderCopy encodeObject:self->_personName forKey:@"PersonName"];
  [coderCopy encodeObject:self->_mdID forKey:@"MegadomeIdentifier"];
  [coderCopy encodeInt32:self->_detectionType forKey:@"DetectionType"];
  [coderCopy encodeBool:self->_verified forKey:@"Verified"];
  [coderCopy encodeRect:@"BoundingBox" forKey:{self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height}];
  *&v4 = self->_confidence;
  [coderCopy encodeFloat:@"Confidence" forKey:v4];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"person-identifier: %@, ", self->_personIdentifier];
  [string appendFormat:@"person-name: %@, ", self->_personName];
  [string appendFormat:@"megadome-identifier: %@, ", self->_mdID];
  [string appendFormat:@"detection-type: %hd, ", self->_detectionType];
  if (self->_verified)
  {
    v6 = @"verified";
  }

  else
  {
    v6 = @"unverified";
  }

  [string appendFormat:@"verified: %@, ", v6];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.*f, y:%.*f}, {width:%.*f, height:%.*f}} ", 2, *&self->_boundingBox.origin.x, 2, *&self->_boundingBox.origin.y, 2, *&self->_boundingBox.size.width, 2, *&self->_boundingBox.size.height];
  [string appendFormat:@"bounding-box: %@, ", v7];

  [string appendFormat:@"confidence: %.*f>", 2, self->_confidence];

  return string;
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