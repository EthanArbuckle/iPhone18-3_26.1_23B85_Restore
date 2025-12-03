@interface MNRealtimeUpdate
- (MNRealtimeUpdate)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNRealtimeUpdate

- (MNRealtimeUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MNRealtimeUpdate;
  v5 = [(MNRealtimeUpdate *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routeID"];
    routeID = v5->_routeID;
    v5->_routeID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_routeID forKey:@"routeID"];
  [coderCopy encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  error = self->_error;
  if (error)
  {
    [coderCopy encodeObject:error forKey:@"error"];
  }
}

@end