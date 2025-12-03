@interface NWKUIAQIModel
- (NWKUIAQIModel)initWithName:(id)name label:(id)label categoryDescription:(id)description color:(id)color date:(id)date expiration:(id)expiration;
@end

@implementation NWKUIAQIModel

- (NWKUIAQIModel)initWithName:(id)name label:(id)label categoryDescription:(id)description color:(id)color date:(id)date expiration:(id)expiration
{
  nameCopy = name;
  labelCopy = label;
  descriptionCopy = description;
  colorCopy = color;
  dateCopy = date;
  expirationCopy = expiration;
  v28.receiver = self;
  v28.super_class = NWKUIAQIModel;
  v20 = [(NWKUIAQIModel *)&v28 init];
  if (v20)
  {
    v21 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v21;

    v23 = [labelCopy copy];
    label = v20->_label;
    v20->_label = v23;

    v25 = [descriptionCopy copy];
    categoryDescription = v20->_categoryDescription;
    v20->_categoryDescription = v25;

    objc_storeStrong(&v20->_color, color);
    objc_storeStrong(&v20->_date, date);
    objc_storeStrong(&v20->_expiration, expiration);
  }

  return v20;
}

@end