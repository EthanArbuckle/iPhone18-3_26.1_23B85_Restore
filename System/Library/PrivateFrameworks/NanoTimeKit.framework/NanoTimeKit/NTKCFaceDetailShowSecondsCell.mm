@interface NTKCFaceDetailShowSecondsCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailShowSecondsCell)initWithCollection:(id)collection;
@end

@implementation NTKCFaceDetailShowSecondsCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCFaceDetailShowSecondsCell)initWithCollection:(id)collection
{
  collectionCopy = collection;
  v11.receiver = self;
  v11.super_class = NTKCFaceDetailShowSecondsCell;
  v6 = [(NTKCFaceDetailToggleCell *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, collection);
    localizedName = [(NTKEditOptionCollection *)v7->_collection localizedName];
    textLabel = [(NTKCFaceDetailShowSecondsCell *)v7 textLabel];
    [textLabel setText:localizedName];
  }

  return v7;
}

@end