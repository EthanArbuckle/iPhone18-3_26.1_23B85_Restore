@interface GCSMouseProfile
+ (id)newDefaultProfile;
- (GCSJSONObject)jsonObject;
- (GCSMouseProfile)init;
- (GCSMouseProfile)initWithBundleIdentifier:(id)identifier trackingSpeed:(double)speed useLinearTracking:(BOOL)tracking;
- (GCSMouseProfile)initWithCoder:(id)coder;
- (GCSMouseProfile)initWithJSONObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setTrackingSpeed:(double)speed;
@end

@implementation GCSMouseProfile

- (GCSMouseProfile)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"abstract method" userInfo:0];
  objc_exception_throw(v2);
}

- (GCSMouseProfile)initWithBundleIdentifier:(id)identifier trackingSpeed:(double)speed useLinearTracking:(BOOL)tracking
{
  identifierCopy = identifier;
  if ([identifierCopy length] && (v14.receiver = self, v14.super_class = GCSMouseProfile, (self = -[GCSMouseProfile init](&v14, sel_init)) != 0))
  {
    v9 = [identifierCopy copy];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = v9;

    speedCopy = -1.0;
    if (speed > 0.0)
    {
      speedCopy = speed;
    }

    self->_trackingSpeed = speedCopy;
    self->_useLinearTracking = tracking;
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GCSMouseProfile alloc];
  bundleIdentifier = self->_bundleIdentifier;
  trackingSpeed = self->_trackingSpeed;
  useLinearTracking = self->_useLinearTracking;

  return [(GCSMouseProfile *)v4 initWithBundleIdentifier:bundleIdentifier trackingSpeed:useLinearTracking useLinearTracking:trackingSpeed];
}

- (GCSMouseProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = GCSMouseProfile;
  v5 = [(GCSMouseProfile *)&v11 init];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"], v6 = objc_claimAutoreleasedReturnValue(), bundleIdentifier = v5->_bundleIdentifier, v5->_bundleIdentifier = v6, bundleIdentifier, v5->_bundleIdentifier))
  {
    [coderCopy decodeDoubleForKey:@"trackingSpeed"];
    if (v8 <= 0.0)
    {
      v8 = -1.0;
    }

    v5->_trackingSpeed = v8;
    v5->_useLinearTracking = [coderCopy decodeBoolForKey:@"useLinearTracking"];
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  if (self->_trackingSpeed > 0.0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [coderCopy encodeObject:v4 forKey:@"trackingSpeed"];
  }

  [coderCopy encodeBool:self->_useLinearTracking forKey:@"trackingSpeed"];
}

- (GCSMouseProfile)initWithJSONObject:(id)object
{
  objectCopy = object;
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

  v5 = [objectCopy _gcs_stringForJSONKey:@"_bundleIdentifier"];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v5;

  if (self->_bundleIdentifier)
  {
    v7 = [objectCopy _gcs_numberForJSONKey:@"_trackingSpeed"];
    [v7 doubleValue];
    self->_trackingSpeed = v8;

    if (self->_trackingSpeed <= 0.0)
    {
      self->_trackingSpeed = -1.0;
    }

    v9 = [objectCopy _gcs_numberForJSONKey:@"_useLinearTracking"];
    self->_useLinearTracking = [v9 BOOLValue];

    self = self;
    selfCopy = self;
  }

  else
  {
LABEL_7:
    selfCopy = 0;
  }

  return selfCopy;
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

- (void)setTrackingSpeed:(double)speed
{
  if (speed <= 0.0)
  {
    speed = -1.0;
  }

  self->_trackingSpeed = speed;
}

+ (id)newDefaultProfile
{
  v2 = [GCSMouseProfile alloc];
  v3 = +[GCSMouseProfile defaultIdentifier];
  v4 = [(GCSMouseProfile *)v2 initWithBundleIdentifier:v3 trackingSpeed:0 useLinearTracking:-1.0];

  return v4;
}

@end