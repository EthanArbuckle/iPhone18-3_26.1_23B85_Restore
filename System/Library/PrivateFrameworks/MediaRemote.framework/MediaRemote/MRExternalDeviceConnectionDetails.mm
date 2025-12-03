@interface MRExternalDeviceConnectionDetails
- (id)description;
@end

@implementation MRExternalDeviceConnectionDetails

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  startDate = [(MRExternalDeviceConnectionDetails *)self startDate];
  startDate2 = [(MRExternalDeviceConnectionDetails *)self startDate];
  [startDate2 timeIntervalSinceNow];
  v8 = -v7;
  requestID = [(MRExternalDeviceConnectionDetails *)self requestID];
  reason = [(MRExternalDeviceConnectionDetails *)self reason];
  v11 = [v3 initWithFormat:@"<%@:%p %@ (%lf seconds ago) %@ %@ (%u)>", v4, self, startDate, *&v8, requestID, reason, -[MRExternalDeviceConnectionDetails qos](self, "qos")];

  return v11;
}

@end