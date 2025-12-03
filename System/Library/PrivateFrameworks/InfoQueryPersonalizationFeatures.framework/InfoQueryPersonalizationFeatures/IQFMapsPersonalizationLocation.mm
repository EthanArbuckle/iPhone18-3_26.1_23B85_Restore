@interface IQFMapsPersonalizationLocation
- (IQFMapsPersonalizationLocation)initWithMUID:(id)d name:(id)name;
@end

@implementation IQFMapsPersonalizationLocation

- (IQFMapsPersonalizationLocation)initWithMUID:(id)d name:(id)name
{
  dCopy = d;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = IQFMapsPersonalizationLocation;
  v9 = [(IQFMapsPersonalizationLocation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_muid, d);
    objc_storeStrong(&v10->_name, name);
  }

  return v10;
}

@end