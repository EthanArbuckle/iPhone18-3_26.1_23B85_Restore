@interface ULLocationOfInterest
+ (id)emptyLocationOfInterest;
- (BOOL)isEqual:(id)a3;
- (ULLocationOfInterest)initWithCoder:(id)a3;
- (ULLocationOfInterest)initWithLocationOfInterestType:(unint64_t)a3 locationOfInterestUUID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULLocationOfInterest

+ (id)emptyLocationOfInterest
{
  v2 = [[a1 alloc] initWithLocationOfInterestType:3 locationOfInterestUUID:0];

  return v2;
}

- (ULLocationOfInterest)initWithLocationOfInterestType:(unint64_t)a3 locationOfInterestUUID:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ULLocationOfInterest;
  v7 = [(ULLocationOfInterest *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ULLocationOfInterest *)v7 setLocationOfInterestType:a3];
    [(ULLocationOfInterest *)v8 setLocationOfInterestUUID:v6];
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ULLocationOfInterest *)self locationOfInterestType];
  v6 = [(ULLocationOfInterest *)self locationOfInterestUUID];
  v7 = [v4 initWithLocationOfInterestType:v5 locationOfInterestUUID:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  locationOfInterestType = self->_locationOfInterestType;
  v7 = a3;
  v6 = [v4 numberWithUnsignedInteger:locationOfInterestType];
  [v7 encodeObject:v6 forKey:@"locationOfInterestType"];

  [v7 encodeObject:self->_locationOfInterestUUID forKey:@"locationOfInterestUUID"];
}

- (ULLocationOfInterest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ULLocationOfInterest;
  v5 = [(ULLocationOfInterest *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationOfInterestType"];
    v7 = v6;
    if (v6)
    {
      v8 = [(ULLocationOfInterest *)v6 unsignedIntegerValue];

      v5->_locationOfInterestType = v8;
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationOfInterestUUID"];
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

  v8 = [(ULLocationOfInterest *)self locationOfInterestUUID];
  [v6 appendFormat:@", locationOfInterestUUID: %@", v8];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[ULLocationOfInterest locationOfInterestType](self, "locationOfInterestType"), v5 == [v4 locationOfInterestType]))
  {
    v6 = [(ULLocationOfInterest *)self locationOfInterestUUID];
    v7 = [v4 locationOfInterestUUID];
    if ([v6 isEqual:v7])
    {

      v8 = 1;
    }

    else
    {
      v10 = [(ULLocationOfInterest *)self locationOfInterestUUID];
      v11 = [v4 locationOfInterestUUID];
      v8 = v10 == v11;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end