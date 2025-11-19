@interface GCSMouseProfile
+ (id)newDefaultProfile;
- (GCSJSONObject)jsonObject;
- (GCSMouseProfile)init;
- (GCSMouseProfile)initWithBundleIdentifier:(id)a3 trackingSpeed:(double)a4 useLinearTracking:(BOOL)a5;
- (GCSMouseProfile)initWithCoder:(id)a3;
- (GCSMouseProfile)initWithJSONObject:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setTrackingSpeed:(double)a3;
@end

@implementation GCSMouseProfile

- (GCSMouseProfile)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"abstract method" userInfo:0];
  objc_exception_throw(v2);
}

- (GCSMouseProfile)initWithBundleIdentifier:(id)a3 trackingSpeed:(double)a4 useLinearTracking:(BOOL)a5
{
  v8 = a3;
  if ([v8 length] && (v14.receiver = self, v14.super_class = GCSMouseProfile, (self = -[GCSMouseProfile init](&v14, sel_init)) != 0))
  {
    v9 = [v8 copy];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = v9;

    v11 = -1.0;
    if (a4 > 0.0)
    {
      v11 = a4;
    }

    self->_trackingSpeed = v11;
    self->_useLinearTracking = a5;
    self = self;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GCSMouseProfile alloc];
  bundleIdentifier = self->_bundleIdentifier;
  trackingSpeed = self->_trackingSpeed;
  useLinearTracking = self->_useLinearTracking;

  return [(GCSMouseProfile *)v4 initWithBundleIdentifier:bundleIdentifier trackingSpeed:useLinearTracking useLinearTracking:trackingSpeed];
}

- (GCSMouseProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GCSMouseProfile;
  v5 = [(GCSMouseProfile *)&v11 init];
  if (v5 && ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"], v6 = objc_claimAutoreleasedReturnValue(), bundleIdentifier = v5->_bundleIdentifier, v5->_bundleIdentifier = v6, bundleIdentifier, v5->_bundleIdentifier))
  {
    [v4 decodeDoubleForKey:@"trackingSpeed"];
    if (v8 <= 0.0)
    {
      v8 = -1.0;
    }

    v5->_trackingSpeed = v8;
    v5->_useLinearTracking = [v4 decodeBoolForKey:@"useLinearTracking"];
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  if (self->_trackingSpeed > 0.0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v5 encodeObject:v4 forKey:@"trackingSpeed"];
  }

  [v5 encodeBool:self->_useLinearTracking forKey:@"trackingSpeed"];
}

- (GCSMouseProfile)initWithJSONObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v12.receiver = self;
  v12.super_class = GCSMouseProfile;
  self = [(GCSMouseProfile *)&v12 init];
  if (!self)
  {
    goto LABEL_7;
  }

  v5 = [v4 _gcs_stringForJSONKey:@"_bundleIdentifier"];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v5;

  if (self->_bundleIdentifier)
  {
    v7 = [v4 _gcs_numberForJSONKey:@"_trackingSpeed"];
    [v7 doubleValue];
    self->_trackingSpeed = v8;

    if (self->_trackingSpeed <= 0.0)
    {
      self->_trackingSpeed = -1.0;
    }

    v9 = [v4 _gcs_numberForJSONKey:@"_useLinearTracking"];
    self->_useLinearTracking = [v9 BOOLValue];

    self = self;
    v10 = self;
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  return v10;
}

- (GCSJSONObject)jsonObject
{
  v3 = objc_opt_new();
  [v3 setObject:self->_bundleIdentifier forKeyedSubscript:@"_bundleIdentifier"];
  if (self->_trackingSpeed > 0.0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v3 setObject:v4 forKeyedSubscript:@"_trackingSpeed"];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_useLinearTracking];
  [v3 setObject:v5 forKeyedSubscript:@"_useLinearTracking"];

  v6 = [v3 copy];

  return v6;
}

- (void)setTrackingSpeed:(double)a3
{
  if (a3 <= 0.0)
  {
    a3 = -1.0;
  }

  self->_trackingSpeed = a3;
}

+ (id)newDefaultProfile
{
  v2 = [GCSMouseProfile alloc];
  v3 = +[GCSMouseProfile defaultIdentifier];
  v4 = [(GCSMouseProfile *)v2 initWithBundleIdentifier:v3 trackingSpeed:0 useLinearTracking:-1.0];

  return v4;
}

@end