@interface RTTripClusterMetadataFetchOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFetchOptions:(id)options;
- (RTTripClusterMetadataFetchOptions)init;
- (RTTripClusterMetadataFetchOptions)initWithCoder:(id)coder;
- (RTTripClusterMetadataFetchOptions)initWithOriginVisitLatitude:(double)latitude originVisitLongitude:(double)longitude destinationVisitLatitude:(double)visitLatitude destinationVisitLongitude:(double)visitLongitude;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripClusterMetadataFetchOptions

- (RTTripClusterMetadataFetchOptions)initWithOriginVisitLatitude:(double)latitude originVisitLongitude:(double)longitude destinationVisitLatitude:(double)visitLatitude destinationVisitLongitude:(double)visitLongitude
{
  v11.receiver = self;
  v11.super_class = RTTripClusterMetadataFetchOptions;
  result = [(RTTripClusterMetadataFetchOptions *)&v11 init];
  if (result)
  {
    result->_originVisitLatitude = latitude;
    result->_originVisitLongitude = longitude;
    result->_destinationVisitLatitude = visitLatitude;
    result->_destinationVisitLongitude = visitLongitude;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterMetadataFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)options
{
  optionsCopy = options;
  if (!optionsCopy)
  {
    goto LABEL_8;
  }

  [(RTTripClusterMetadataFetchOptions *)self originVisitLatitude];
  v6 = v5;
  [optionsCopy originVisitLatitude];
  v8 = vabdd_f64(v6, v7);
  [(RTTripClusterMetadataFetchOptions *)self originVisitLongitude];
  v10 = v9;
  [optionsCopy originVisitLongitude];
  v12 = v11;
  [(RTTripClusterMetadataFetchOptions *)self destinationVisitLatitude];
  v14 = v13;
  [optionsCopy destinationVisitLatitude];
  v16 = v15;
  [(RTTripClusterMetadataFetchOptions *)self destinationVisitLongitude];
  v18 = v17;
  [optionsCopy destinationVisitLongitude];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(RTTripClusterMetadataFetchOptions *)self originVisitLatitude];
  [coderCopy encodeDouble:@"originVisitLat" forKey:?];
  [(RTTripClusterMetadataFetchOptions *)self originVisitLongitude];
  [coderCopy encodeDouble:@"originVisitLon" forKey:?];
  [(RTTripClusterMetadataFetchOptions *)self destinationVisitLatitude];
  [coderCopy encodeDouble:@"destinationVisitLat" forKey:?];
  [(RTTripClusterMetadataFetchOptions *)self destinationVisitLongitude];
  [coderCopy encodeDouble:@"destinationVisitLon" forKey:?];
}

- (RTTripClusterMetadataFetchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"originVisitLat"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"originVisitLon"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"destinationVisitLat"];
  v10 = v9;
  [coderCopy decodeDoubleForKey:@"destinationVisitLon"];
  v12 = v11;

  return [(RTTripClusterMetadataFetchOptions *)self initWithOriginVisitLatitude:v6 originVisitLongitude:v8 destinationVisitLatitude:v10 destinationVisitLongitude:v12];
}

@end