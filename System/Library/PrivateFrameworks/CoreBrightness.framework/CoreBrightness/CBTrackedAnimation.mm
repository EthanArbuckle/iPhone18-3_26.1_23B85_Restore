@interface CBTrackedAnimation
- (CBTrackedAnimation)initWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)startTracking;
- (void)stopTracking;
@end

@implementation CBTrackedAnimation

- (CBTrackedAnimation)initWithIdentifier:(id)identifier
{
  selfCopy = self;
  v8 = a2;
  identifierCopy = identifier;
  v6.receiver = self;
  v6.super_class = CBTrackedAnimation;
  selfCopy = [(CBTrackedAnimation *)&v6 init];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifierCopy = [v3 initWithFormat:@"Brightness-%@", identifierCopy];
  selfCopy->_reason = identifierCopy;
  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  v2 = MEMORY[0x1E69E5920](self->_reason).n128_u64[0];
  if (selfCopy->_trackingObject)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->_trackingObject).n128_u64[0];
  }

  v3.receiver = selfCopy;
  v3.super_class = CBTrackedAnimation;
  [(CBTrackedAnimation *)&v3 dealloc];
}

- (void)startTracking
{
  if (![(CBTrackedAnimation *)self isTracking])
  {
    v2 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    self->_trackingObject = MEMORY[0x1E69E5928](v2);
  }
}

- (void)stopTracking
{
  if ([(CBTrackedAnimation *)self isTracking])
  {
    [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    MEMORY[0x1E69E5920](self->_trackingObject);
    self->_trackingObject = 0;
  }
}

@end