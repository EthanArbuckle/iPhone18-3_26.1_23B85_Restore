@interface RTTripClusterMetadataFetchOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFetchOptions:(id)a3;
- (RTTripClusterMetadataFetchOptions)init;
- (RTTripClusterMetadataFetchOptions)initWithCoder:(id)a3;
- (RTTripClusterMetadataFetchOptions)initWithOriginVisitLatitude:(double)a3 originVisitLongitude:(double)a4 destinationVisitLatitude:(double)a5 destinationVisitLongitude:(double)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterMetadataFetchOptions

- (RTTripClusterMetadataFetchOptions)initWithOriginVisitLatitude:(double)a3 originVisitLongitude:(double)a4 destinationVisitLatitude:(double)a5 destinationVisitLongitude:(double)a6
{
  v11.receiver = self;
  v11.super_class = RTTripClusterMetadataFetchOptions;
  result = [(RTTripClusterMetadataFetchOptions *)&v11 init];
  if (result)
  {
    result->_originVisitLatitude = a3;
    result->_originVisitLongitude = a4;
    result->_destinationVisitLatitude = a5;
    result->_destinationVisitLongitude = a6;
  }

  return result;
}

- (RTTripClusterMetadataFetchOptions)init
{
  v3.receiver = self;
  v3.super_class = RTTripClusterMetadataFetchOptions;
  result = [(RTTripClusterMetadataFetchOptions *)&v3 init];
  if (result)
  {
    *&result->_destinationVisitLatitude = 0u;
    *&result->_originVisitLatitude = 0u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterMetadataFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  [(RTTripClusterMetadataFetchOptions *)self originVisitLatitude];
  v6 = v5;
  [v4 originVisitLatitude];
  v8 = vabdd_f64(v6, v7);
  [(RTTripClusterMetadataFetchOptions *)self originVisitLongitude];
  v10 = v9;
  [v4 originVisitLongitude];
  v12 = v11;
  [(RTTripClusterMetadataFetchOptions *)self destinationVisitLatitude];
  v14 = v13;
  [v4 destinationVisitLatitude];
  v16 = v15;
  [(RTTripClusterMetadataFetchOptions *)self destinationVisitLongitude];
  v18 = v17;
  [v4 destinationVisitLongitude];
  if (v8 < 2.22044605e-16)
  {
    v20 = vabdd_f64(v18, v19);
    v21 = vabdd_f64(v10, v12) < 2.22044605e-16;
    if (vabdd_f64(v14, v16) >= 2.22044605e-16)
    {
      v21 = 0;
    }

    v22 = v20 < 2.22044605e-16 && v21;
  }

  else
  {
LABEL_8:
    v22 = 0;
  }

  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(RTTripClusterMetadataFetchOptions *)self originVisitLatitude];
  [v4 encodeDouble:@"originVisitLat" forKey:?];
  [(RTTripClusterMetadataFetchOptions *)self originVisitLongitude];
  [v4 encodeDouble:@"originVisitLon" forKey:?];
  [(RTTripClusterMetadataFetchOptions *)self destinationVisitLatitude];
  [v4 encodeDouble:@"destinationVisitLat" forKey:?];
  [(RTTripClusterMetadataFetchOptions *)self destinationVisitLongitude];
  [v4 encodeDouble:@"destinationVisitLon" forKey:?];
}

- (RTTripClusterMetadataFetchOptions)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"originVisitLat"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"originVisitLon"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"destinationVisitLat"];
  v10 = v9;
  [v4 decodeDoubleForKey:@"destinationVisitLon"];
  v12 = v11;

  return [(RTTripClusterMetadataFetchOptions *)self initWithOriginVisitLatitude:v6 originVisitLongitude:v8 destinationVisitLatitude:v10 destinationVisitLongitude:v12];
}

@end