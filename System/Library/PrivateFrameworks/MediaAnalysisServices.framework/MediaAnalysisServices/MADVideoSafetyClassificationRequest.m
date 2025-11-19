@interface MADVideoSafetyClassificationRequest
- (MADVideoSafetyClassificationRequest)init;
- (MADVideoSafetyClassificationRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVideoSafetyClassificationRequest

- (MADVideoSafetyClassificationRequest)init
{
  v3.receiver = self;
  v3.super_class = MADVideoSafetyClassificationRequest;
  result = [(MADVideoSafetyClassificationRequest *)&v3 init];
  if (result)
  {
    result->_enableNudityDetection = 1;
    result->_appliesPreferredTrackTransform = 1;
  }

  return result;
}

- (MADVideoSafetyClassificationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADVideoSafetyClassificationRequest;
  v5 = [(MADVideoRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Sampling"];
    sampling = v5->_sampling;
    v5->_sampling = v6;

    v5->_appliesPreferredTrackTransform = [v4 decodeBoolForKey:@"AppliesPreferredTrackTransform"];
    v5->_requiresScoresAndLabels = [v4 decodeBoolForKey:@"RequiresScoresAndLabels"];
    v5->_requiresBlastdoor = [v4 decodeBoolForKey:@"RequiresBlastdoor"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SensitiveFrameCountThreshold"];
    sensitiveFrameCountThreshold = v5->_sensitiveFrameCountThreshold;
    v5->_sensitiveFrameCountThreshold = v8;

    v5->_enableNudityDetection = [v4 decodeBoolForKey:@"EnableNudityDetection"];
    v5->_enableGoreViolenceDetection = [v4 decodeBoolForKey:@"EnableGoreViolenceDetection"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVideoSafetyClassificationRequest;
  v4 = a3;
  [(MADVideoRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sampling forKey:{@"Sampling", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_appliesPreferredTrackTransform forKey:@"AppliesPreferredTrackTransform"];
  [v4 encodeBool:self->_requiresBlastdoor forKey:@"RequiresBlastdoor"];
  [v4 encodeBool:self->_requiresScoresAndLabels forKey:@"RequiresScoresAndLabels"];
  [v4 encodeObject:self->_sensitiveFrameCountThreshold forKey:@"SensitiveFrameCountThreshold"];
  [v4 encodeBool:self->_enableNudityDetection forKey:@"EnableNudityDetection"];
  [v4 encodeBool:self->_enableGoreViolenceDetection forKey:@"EnableGoreViolenceDetection"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p", v5, self];

  [v3 appendFormat:@", sampling: %@", self->_sampling];
  if (self->_appliesPreferredTrackTransform)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@", appliesPreferredTrackTransform: %@", v6];
  if (self->_requiresScoresAndLabels)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@", requiresScoresAndLaels: %@", v7];
  if (self->_requiresBlastdoor)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@", requiresBlastdoor: %@", v8];
  [v3 appendFormat:@", sensitiveFrameCountThreshold: %@", self->_sensitiveFrameCountThreshold];
  if (self->_enableNudityDetection)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@", enableNudityDetection: %@", v9];
  if (self->_enableGoreViolenceDetection)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v3 appendFormat:@", enableGoreViolenceDetection: %@", v10];
  [v3 appendString:@">"];

  return v3;
}

@end