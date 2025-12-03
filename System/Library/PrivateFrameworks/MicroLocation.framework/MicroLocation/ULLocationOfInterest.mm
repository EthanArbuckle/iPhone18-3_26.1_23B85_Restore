@interface ULLocationOfInterest
+ (id)emptyLocationOfInterest;
- (BOOL)isEqual:(id)equal;
- (ULLocationOfInterest)initWithCoder:(id)coder;
- (ULLocationOfInterest)initWithLocationOfInterestType:(unint64_t)type locationOfInterestUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULLocationOfInterest

+ (id)emptyLocationOfInterest
{
  v2 = [[self alloc] initWithLocationOfInterestType:3 locationOfInterestUUID:0];

  return v2;
}

- (ULLocationOfInterest)initWithLocationOfInterestType:(unint64_t)type locationOfInterestUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = ULLocationOfInterest;
  v7 = [(ULLocationOfInterest *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ULLocationOfInterest *)v7 setLocationOfInterestType:type];
    [(ULLocationOfInterest *)v8 setLocationOfInterestUUID:dCopy];
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  locationOfInterestType = [(ULLocationOfInterest *)self locationOfInterestType];
  locationOfInterestUUID = [(ULLocationOfInterest *)self locationOfInterestUUID];
  v7 = [v4 initWithLocationOfInterestType:locationOfInterestType locationOfInterestUUID:locationOfInterestUUID];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  locationOfInterestType = self->_locationOfInterestType;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:locationOfInterestType];
  [coderCopy encodeObject:v6 forKey:@"locationOfInterestType"];

  [coderCopy encodeObject:self->_locationOfInterestUUID forKey:@"locationOfInterestUUID"];
}

- (ULLocationOfInterest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ULLocationOfInterest;
  v5 = [(ULLocationOfInterest *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationOfInterestType"];
    v7 = v6;
    if (v6)
    {
      unsignedIntegerValue = [(ULLocationOfInterest *)v6 unsignedIntegerValue];

      v5->_locationOfInterestType = unsignedIntegerValue;
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationOfInterestUUID"];
      v10 = objc_opt_self();

      locationOfInterestUUID = v5->_locationOfInterestUUID;
      v5->_locationOfInterestUUID = v10;

      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"%@: ", v5];

  v7 = ULLocationTypeToString([(ULLocationOfInterest *)self locationOfInterestType]);
  [v6 appendFormat:@", locationOfInterestType: %@", v7];

  locationOfInterestUUID = [(ULLocationOfInterest *)self locationOfInterestUUID];
  [v6 appendFormat:@", locationOfInterestUUID: %@", locationOfInterestUUID];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[ULLocationOfInterest locationOfInterestType](self, "locationOfInterestType"), v5 == [equalCopy locationOfInterestType]))
  {
    locationOfInterestUUID = [(ULLocationOfInterest *)self locationOfInterestUUID];
    locationOfInterestUUID2 = [equalCopy locationOfInterestUUID];
    if ([locationOfInterestUUID isEqual:locationOfInterestUUID2])
    {

      v8 = 1;
    }

    else
    {
      locationOfInterestUUID3 = [(ULLocationOfInterest *)self locationOfInterestUUID];
      locationOfInterestUUID4 = [equalCopy locationOfInterestUUID];
      v8 = locationOfInterestUUID3 == locationOfInterestUUID4;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end