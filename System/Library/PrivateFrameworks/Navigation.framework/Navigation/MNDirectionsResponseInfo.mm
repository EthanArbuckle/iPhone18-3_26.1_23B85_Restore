@interface MNDirectionsResponseInfo
- (MNDirectionsResponseInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNDirectionsResponseInfo

- (void)encodeWithCoder:(id)coder
{
  routeInfos = self->_routeInfos;
  coderCopy = coder;
  [coderCopy encodeObject:routeInfos forKey:@"_routeInfos"];
  [coderCopy encodeObject:self->_request forKey:@"_request"];
  [coderCopy encodeObject:self->_response forKey:@"_response"];
  [coderCopy encodeObject:self->_error forKey:@"_error"];
  [coderCopy encodeObject:self->_directionsError forKey:@"_directionsError"];
  [coderCopy encodeObject:self->_traceRecordingData forKey:@"_traceRecordingData"];
}

- (MNDirectionsResponseInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MNDirectionsResponseInfo *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_routeInfos"];
    routeInfos = v5->_routeInfos;
    v5->_routeInfos = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_request"];
    request = v5->_request;
    v5->_request = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_response"];
    response = v5->_response;
    v5->_response = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_error"];
    error = v5->_error;
    v5->_error = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_directionsError"];
    directionsError = v5->_directionsError;
    v5->_directionsError = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_traceRecordingData"];
    traceRecordingData = v5->_traceRecordingData;
    v5->_traceRecordingData = v19;

    v21 = v5;
  }

  return v5;
}

@end