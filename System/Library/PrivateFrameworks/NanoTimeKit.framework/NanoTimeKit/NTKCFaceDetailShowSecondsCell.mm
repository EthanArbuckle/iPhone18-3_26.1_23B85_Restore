@interface NTKCFaceDetailShowSecondsCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailShowSecondsCell)initWithCollection:(id)a3;
@end

@implementation NTKCFaceDetailShowSecondsCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCFaceDetailShowSecondsCell)initWithCollection:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NTKCFaceDetailShowSecondsCell;
  v6 = [(NTKCFaceDetailToggleCell *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, a3);
    v8 = [(NTKEditOptionCollection *)v7->_collection localizedName];
    v9 = [(NTKCFaceDetailShowSecondsCell *)v7 textLabel];
    [v9 setText:v8];
  }

  return v7;
}

@end