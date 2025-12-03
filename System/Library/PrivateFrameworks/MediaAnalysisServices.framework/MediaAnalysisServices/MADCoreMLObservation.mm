@interface MADCoreMLObservation
+ (id)entryWithFeatureName:(id)name featureValue:(id)value;
- (MADCoreMLObservation)initWithCoder:(id)coder;
- (MADCoreMLObservation)initWithFeatureName:(id)name featureValue:(id)value;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADCoreMLObservation

- (MADCoreMLObservation)initWithFeatureName:(id)name featureValue:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = MADCoreMLObservation;
  v9 = [(MADCoreMLObservation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureName, name);
    objc_storeStrong(&v10->_featureValue, value);
  }

  return v10;
}

+ (id)entryWithFeatureName:(id)name featureValue:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v8 = [[self alloc] initWithFeatureName:nameCopy featureValue:valueCopy];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_featureName forKey:@"CoreMLFeatureName"];
  [coderCopy encodeObject:self->_featureValue forKey:@"CoreMLFeatureValue"];
}

- (MADCoreMLObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MADCoreMLObservation;
  v5 = [(MADCoreMLObservation *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CoreMLFeatureName"];
    featureName = v5->_featureName;
    v5->_featureName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CoreMLFeatureValue"];
    featureValue = v5->_featureValue;
    v5->_featureValue = v8;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"%@: %@, ", @"CoreMLFeatureName", self->_featureName];
  [string appendFormat:@"%@: %@>", @"CoreMLFeatureValue", self->_featureValue];

  return string;
}

@end