@interface MADCoreMLObservation
+ (id)entryWithFeatureName:(id)a3 featureValue:(id)a4;
- (MADCoreMLObservation)initWithCoder:(id)a3;
- (MADCoreMLObservation)initWithFeatureName:(id)a3 featureValue:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADCoreMLObservation

- (MADCoreMLObservation)initWithFeatureName:(id)a3 featureValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MADCoreMLObservation;
  v9 = [(MADCoreMLObservation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureName, a3);
    objc_storeStrong(&v10->_featureValue, a4);
  }

  return v10;
}

+ (id)entryWithFeatureName:(id)a3 featureValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initWithFeatureName:v6 featureValue:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_featureName forKey:@"CoreMLFeatureName"];
  [v4 encodeObject:self->_featureValue forKey:@"CoreMLFeatureValue"];
}

- (MADCoreMLObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADCoreMLObservation;
  v5 = [(MADCoreMLObservation *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CoreMLFeatureName"];
    featureName = v5->_featureName;
    v5->_featureName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CoreMLFeatureValue"];
    featureValue = v5->_featureValue;
    v5->_featureValue = v8;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"%@: %@, ", @"CoreMLFeatureName", self->_featureName];
  [v3 appendFormat:@"%@: %@>", @"CoreMLFeatureValue", self->_featureValue];

  return v3;
}

@end