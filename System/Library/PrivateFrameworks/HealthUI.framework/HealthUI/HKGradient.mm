@interface HKGradient
+ (id)defaultGradient;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHKGradient:(id)gradient;
- (HKGradient)initWithColors:(id)colors locations:(id)locations;
- (HKGradient)initWithTopColor:(id)color bottomColor:(id)bottomColor;
- (UIColor)bottomColor;
- (UIColor)topColor;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HKGradient

- (HKGradient)initWithColors:(id)colors locations:(id)locations
{
  colorsCopy = colors;
  locationsCopy = locations;
  v12.receiver = self;
  v12.super_class = HKGradient;
  v9 = [(HKGradient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_colors, colors);
    objc_storeStrong(&v10->_locations, locations);
  }

  return v10;
}

- (HKGradient)initWithTopColor:(id)color bottomColor:(id)bottomColor
{
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = color;
  v12[1] = bottomColor;
  v6 = MEMORY[0x1E695DEC8];
  bottomColorCopy = bottomColor;
  colorCopy = color;
  v9 = [v6 arrayWithObjects:v12 count:2];

  v10 = [(HKGradient *)self initWithColors:v9 locations:&unk_1F4380FE8];
  return v10;
}

+ (id)defaultGradient
{
  v2 = objc_alloc(objc_opt_class());
  redColor = [MEMORY[0x1E69DC888] redColor];
  blueColor = [MEMORY[0x1E69DC888] blueColor];
  v5 = [v2 initWithTopColor:redColor bottomColor:blueColor];

  return v5;
}

- (UIColor)topColor
{
  colors = [(HKGradient *)self colors];
  firstObject = [colors firstObject];

  return firstObject;
}

- (UIColor)bottomColor
{
  colors = [(HKGradient *)self colors];
  lastObject = [colors lastObject];

  return lastObject;
}

- (BOOL)isEqualToHKGradient:(id)gradient
{
  gradientCopy = gradient;
  if (gradientCopy)
  {
    colors = [(HKGradient *)self colors];
    colors2 = [gradientCopy colors];
    if ([colors isEqualToArray:colors2])
    {
      locations = [(HKGradient *)self locations];
      locations2 = [gradientCopy locations];
      v9 = [locations isEqualToArray:locations2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKGradient *)self isEqualToHKGradient:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  colors = [(HKGradient *)self colors];
  v4 = [colors hash];
  locations = [(HKGradient *)self locations];
  v6 = [locations hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    colors = [(HKGradient *)self colors];
    v7 = [colors copyWithZone:zone];
    [v5 setColors:v7];

    locations = [(HKGradient *)self locations];
    v9 = [locations copyWithZone:zone];
    [v5 setLocations:v9];
  }

  return v5;
}

@end