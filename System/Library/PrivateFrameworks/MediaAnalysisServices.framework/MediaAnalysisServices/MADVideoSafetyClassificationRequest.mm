@interface MADVideoSafetyClassificationRequest
- (MADVideoSafetyClassificationRequest)init;
- (MADVideoSafetyClassificationRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (MADVideoSafetyClassificationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MADVideoSafetyClassificationRequest;
  v5 = [(MADVideoRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Sampling"];
    sampling = v5->_sampling;
    v5->_sampling = v6;

    v5->_appliesPreferredTrackTransform = [coderCopy decodeBoolForKey:@"AppliesPreferredTrackTransform"];
    v5->_requiresScoresAndLabels = [coderCopy decodeBoolForKey:@"RequiresScoresAndLabels"];
    v5->_requiresBlastdoor = [coderCopy decodeBoolForKey:@"RequiresBlastdoor"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SensitiveFrameCountThreshold"];
    sensitiveFrameCountThreshold = v5->_sensitiveFrameCountThreshold;
    v5->_sensitiveFrameCountThreshold = v8;

    v5->_enableNudityDetection = [coderCopy decodeBoolForKey:@"EnableNudityDetection"];
    v5->_enableGoreViolenceDetection = [coderCopy decodeBoolForKey:@"EnableGoreViolenceDetection"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVideoSafetyClassificationRequest;
  coderCopy = coder;
  [(MADVideoRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sampling forKey:{@"Sampling", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_appliesPreferredTrackTransform forKey:@"AppliesPreferredTrackTransform"];
  [coderCopy encodeBool:self->_requiresBlastdoor forKey:@"RequiresBlastdoor"];
  [coderCopy encodeBool:self->_requiresScoresAndLabels forKey:@"RequiresScoresAndLabels"];
  [coderCopy encodeObject:self->_sensitiveFrameCountThreshold forKey:@"SensitiveFrameCountThreshold"];
  [coderCopy encodeBool:self->_enableNudityDetection forKey:@"EnableNudityDetection"];
  [coderCopy encodeBool:self->_enableGoreViolenceDetection forKey:@"EnableGoreViolenceDetection"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p", v5, self];

  [string appendFormat:@", sampling: %@", self->_sampling];
  if (self->_appliesPreferredTrackTransform)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [string appendFormat:@", appliesPreferredTrackTransform: %@", v6];
  if (self->_requiresScoresAndLabels)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [string appendFormat:@", requiresScoresAndLaels: %@", v7];
  if (self->_requiresBlastdoor)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [string appendFormat:@", requiresBlastdoor: %@", v8];
  [string appendFormat:@", sensitiveFrameCountThreshold: %@", self->_sensitiveFrameCountThreshold];
  if (self->_enableNudityDetection)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [string appendFormat:@", enableNudityDetection: %@", v9];
  if (self->_enableGoreViolenceDetection)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [string appendFormat:@", enableGoreViolenceDetection: %@", v10];
  [string appendString:@">"];

  return string;
}

@end