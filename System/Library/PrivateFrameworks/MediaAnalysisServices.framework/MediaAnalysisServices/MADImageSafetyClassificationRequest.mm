@interface MADImageSafetyClassificationRequest
- (MADImageSafetyClassificationRequest)init;
- (MADImageSafetyClassificationRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADImageSafetyClassificationRequest

- (MADImageSafetyClassificationRequest)init
{
  v3.receiver = self;
  v3.super_class = MADImageSafetyClassificationRequest;
  result = [(MADImageSafetyClassificationRequest *)&v3 init];
  if (result)
  {
    result->_enableNudityDetection = 1;
  }

  return result;
}

- (MADImageSafetyClassificationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADImageSafetyClassificationRequest;
  v5 = [(MADRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StagedText"];
    stagedText = v5->_stagedText;
    v5->_stagedText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ConversationIdentifier"];
    conversationIdentifier = v5->_conversationIdentifier;
    v5->_conversationIdentifier = v8;

    v5->_enableNudityDetection = [v4 decodeBoolForKey:@"EnableNudityDetection"];
    v5->_enableGoreViolenceDetection = [v4 decodeBoolForKey:@"EnableGoreViolenceDetection"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADImageSafetyClassificationRequest;
  v4 = a3;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_stagedText forKey:{@"StagedText", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_conversationIdentifier forKey:@"ConversationIdentifier"];
  [v4 encodeBool:self->_enableNudityDetection forKey:@"EnableNudityDetection"];
  [v4 encodeBool:self->_enableGoreViolenceDetection forKey:@"EnableGoreViolenceDetection"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"stagedText: %@, ", self->_stagedText];
  [v3 appendFormat:@"conversationIdentifier: %@, ", self->_conversationIdentifier];
  if (self->_enableNudityDetection)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"enableNudityDetection: %@, ", v6];
  if (self->_enableGoreViolenceDetection)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"enableGoreViolenceDetection: %@, ", v7];
  v8 = [(MADRequest *)self results];
  [v3 appendFormat:@"results: %@, ", v8];

  v9 = [(MADRequest *)self error];
  [v3 appendFormat:@"error: %@>", v9];

  return v3;
}

@end