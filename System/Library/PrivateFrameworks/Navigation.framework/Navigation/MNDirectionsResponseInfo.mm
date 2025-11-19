@interface MNDirectionsResponseInfo
- (MNDirectionsResponseInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNDirectionsResponseInfo

- (void)encodeWithCoder:(id)a3
{
  routeInfos = self->_routeInfos;
  v5 = a3;
  [v5 encodeObject:routeInfos forKey:@"_routeInfos"];
  [v5 encodeObject:self->_request forKey:@"_request"];
  [v5 encodeObject:self->_response forKey:@"_response"];
  [v5 encodeObject:self->_error forKey:@"_error"];
  [v5 encodeObject:self->_directionsError forKey:@"_directionsError"];
  [v5 encodeObject:self->_traceRecordingData forKey:@"_traceRecordingData"];
}

- (MNDirectionsResponseInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MNDirectionsResponseInfo *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_routeInfos"];
    routeInfos = v5->_routeInfos;
    v5->_routeInfos = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_request"];
    request = v5->_request;
    v5->_request = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_response"];
    response = v5->_response;
    v5->_response = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_error"];
    error = v5->_error;
    v5->_error = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_directionsError"];
    directionsError = v5->_directionsError;
    v5->_directionsError = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_traceRecordingData"];
    traceRecordingData = v5->_traceRecordingData;
    v5->_traceRecordingData = v19;

    v21 = v5;
  }

  return v5;
}

@end