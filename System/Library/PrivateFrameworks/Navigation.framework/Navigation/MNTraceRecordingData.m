@interface MNTraceRecordingData
- (MNTraceRecordingData)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNTraceRecordingData

- (void)encodeWithCoder:(id)a3
{
  initialUserLocation = self->_initialUserLocation;
  v5 = a3;
  [v5 encodeObject:initialUserLocation forKey:@"_initialUserLocation"];
  [v5 encodeObject:self->_waypoints forKey:@"_waypoints"];
  [v5 encodeObject:self->_initialDirectionsRequest forKey:@"_initialDirectionsRequest"];
  [v5 encodeObject:self->_initialDirectionsResponse forKey:@"_initialDirectionsResponse"];
  [v5 encodeObject:self->_initialDirectionsRequestError forKey:@"_initialDirectionsRequestError"];
  [v5 encodeDouble:@"_initialDirectionsRequestTimestamp" forKey:self->_initialDirectionsRequestTimestamp];
  [v5 encodeDouble:@"_initialDirectionsResponseTimestamp" forKey:self->_initialDirectionsResponseTimestamp];
}

- (MNTraceRecordingData)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = MNTraceRecordingData;
  v5 = [(MNTraceRecordingData *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_initialUserLocation"];
    initialUserLocation = v5->_initialUserLocation;
    v5->_initialUserLocation = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_waypoints"];
    waypoints = v5->_waypoints;
    v5->_waypoints = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_initialDirectionsRequest"];
    initialDirectionsRequest = v5->_initialDirectionsRequest;
    v5->_initialDirectionsRequest = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_initialDirectionsResponse"];
    initialDirectionsResponse = v5->_initialDirectionsResponse;
    v5->_initialDirectionsResponse = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"_initialDirectionsRequestError"];
    initialDirectionsRequestError = v5->_initialDirectionsRequestError;
    v5->_initialDirectionsRequestError = v20;

    [v4 decodeDoubleForKey:@"_initialDirectionsRequestTimestamp"];
    v5->_initialDirectionsRequestTimestamp = v22;
    [v4 decodeDoubleForKey:@"_initialDirectionsResponseTimestamp"];
    v5->_initialDirectionsResponseTimestamp = v23;
    v24 = v5;
  }

  return v5;
}

@end