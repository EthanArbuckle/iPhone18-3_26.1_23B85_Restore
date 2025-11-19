@interface MNRealtimeUpdate
- (MNRealtimeUpdate)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNRealtimeUpdate

- (MNRealtimeUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MNRealtimeUpdate;
  v5 = [(MNRealtimeUpdate *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routeID"];
    routeID = v5->_routeID;
    v5->_routeID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_routeID forKey:@"routeID"];
  [v5 encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  error = self->_error;
  if (error)
  {
    [v5 encodeObject:error forKey:@"error"];
  }
}

@end