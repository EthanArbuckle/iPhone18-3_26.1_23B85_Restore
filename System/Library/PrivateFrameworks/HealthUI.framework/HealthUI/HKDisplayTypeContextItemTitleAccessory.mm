@interface HKDisplayTypeContextItemTitleAccessory
+ (HKDisplayTypeContextItemTitleAccessory)titleAccessoryWithImagedNamed:(id)named imageColor:(id)color;
- (BOOL)_isEqualToTitleAccessory:(id)accessory;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HKDisplayTypeContextItemTitleAccessory

+ (HKDisplayTypeContextItemTitleAccessory)titleAccessoryWithImagedNamed:(id)named imageColor:(id)color
{
  namedCopy = named;
  colorCopy = color;
  v7 = objc_alloc_init(HKDisplayTypeContextItemTitleAccessory);
  systemImageName = v7->_systemImageName;
  v7->_systemImageName = namedCopy;
  v9 = namedCopy;

  color = v7->_color;
  v7->_color = colorCopy;

  return v7;
}

- (BOOL)_isEqualToTitleAccessory:(id)accessory
{
  accessoryCopy = accessory;
  systemImageName = self->_systemImageName;
  systemImageName = [accessoryCopy systemImageName];
  if ([(NSString *)systemImageName isEqualToString:systemImageName])
  {
    color = self->_color;
    color = [accessoryCopy color];
    v9 = color == color;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKDisplayTypeContextItemTitleAccessory *)self _isEqualToTitleAccessory:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 1, self->_systemImageName);
  objc_storeStrong(v4 + 2, self->_color);
  return v4;
}

@end