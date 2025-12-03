@interface MADImageSafetyClassificationRequest
- (MADImageSafetyClassificationRequest)init;
- (MADImageSafetyClassificationRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (MADImageSafetyClassificationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MADImageSafetyClassificationRequest;
  v5 = [(MADRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StagedText"];
    stagedText = v5->_stagedText;
    v5->_stagedText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ConversationIdentifier"];
    conversationIdentifier = v5->_conversationIdentifier;
    v5->_conversationIdentifier = v8;

    v5->_enableNudityDetection = [coderCopy decodeBoolForKey:@"EnableNudityDetection"];
    v5->_enableGoreViolenceDetection = [coderCopy decodeBoolForKey:@"EnableGoreViolenceDetection"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADImageSafetyClassificationRequest;
  coderCopy = coder;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_stagedText forKey:{@"StagedText", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_conversationIdentifier forKey:@"ConversationIdentifier"];
  [coderCopy encodeBool:self->_enableNudityDetection forKey:@"EnableNudityDetection"];
  [coderCopy encodeBool:self->_enableGoreViolenceDetection forKey:@"EnableGoreViolenceDetection"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"stagedText: %@, ", self->_stagedText];
  [string appendFormat:@"conversationIdentifier: %@, ", self->_conversationIdentifier];
  if (self->_enableNudityDetection)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [string appendFormat:@"enableNudityDetection: %@, ", v6];
  if (self->_enableGoreViolenceDetection)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [string appendFormat:@"enableGoreViolenceDetection: %@, ", v7];
  results = [(MADRequest *)self results];
  [string appendFormat:@"results: %@, ", results];

  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

@end