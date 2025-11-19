@interface MRExternalDeviceConnectionDetails
- (id)description;
@end

@implementation MRExternalDeviceConnectionDetails

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRExternalDeviceConnectionDetails *)self startDate];
  v6 = [(MRExternalDeviceConnectionDetails *)self startDate];
  [v6 timeIntervalSinceNow];
  v8 = -v7;
  v9 = [(MRExternalDeviceConnectionDetails *)self requestID];
  v10 = [(MRExternalDeviceConnectionDetails *)self reason];
  v11 = [v3 initWithFormat:@"<%@:%p %@ (%lf seconds ago) %@ %@ (%u)>", v4, self, v5, *&v8, v9, v10, -[MRExternalDeviceConnectionDetails qos](self, "qos")];

  return v11;
}

@end