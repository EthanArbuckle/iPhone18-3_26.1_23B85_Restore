@interface HKDisplayTypeContextItemTitleAccessory
+ (HKDisplayTypeContextItemTitleAccessory)titleAccessoryWithImagedNamed:(id)a3 imageColor:(id)a4;
- (BOOL)_isEqualToTitleAccessory:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HKDisplayTypeContextItemTitleAccessory

+ (HKDisplayTypeContextItemTitleAccessory)titleAccessoryWithImagedNamed:(id)a3 imageColor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(HKDisplayTypeContextItemTitleAccessory);
  systemImageName = v7->_systemImageName;
  v7->_systemImageName = v5;
  v9 = v5;

  color = v7->_color;
  v7->_color = v6;

  return v7;
}

- (BOOL)_isEqualToTitleAccessory:(id)a3
{
  v4 = a3;
  systemImageName = self->_systemImageName;
  v6 = [v4 systemImageName];
  if ([(NSString *)systemImageName isEqualToString:v6])
  {
    color = self->_color;
    v8 = [v4 color];
    v9 = color == v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKDisplayTypeContextItemTitleAccessory *)self _isEqualToTitleAccessory:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong(v4 + 1, self->_systemImageName);
  objc_storeStrong(v4 + 2, self->_color);
  return v4;
}

@end