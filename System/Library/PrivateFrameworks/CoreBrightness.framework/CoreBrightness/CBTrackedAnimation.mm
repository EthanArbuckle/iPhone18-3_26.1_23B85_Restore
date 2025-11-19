@interface CBTrackedAnimation
- (CBTrackedAnimation)initWithIdentifier:(id)a3;
- (void)dealloc;
- (void)startTracking;
- (void)stopTracking;
@end

@implementation CBTrackedAnimation

- (CBTrackedAnimation)initWithIdentifier:(id)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = CBTrackedAnimation;
  v9 = [(CBTrackedAnimation *)&v6 init];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [v3 initWithFormat:@"Brightness-%@", v7];
  v9->_reason = v4;
  return v9;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = MEMORY[0x1E69E5920](self->_reason).n128_u64[0];
  if (v5->_trackingObject)
  {
    v2 = MEMORY[0x1E69E5920](v5->_trackingObject).n128_u64[0];
  }

  v3.receiver = v5;
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