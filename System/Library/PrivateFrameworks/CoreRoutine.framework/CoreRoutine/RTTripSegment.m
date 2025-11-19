@interface RTTripSegment
+ (id)mergeTripSegment:(id)a3 other:(id)a4;
- (BOOL)isEqual:(id)a3;
- (RTTripSegment)initWithCoder:(id)a3;
- (RTTripSegment)initWithTripSegmentIdentifier:(id)a3 dateInterval:(id)a4 tripDistance:(double)a5 tripDistanceUncertainty:(double)a6 modeOfTransportation:(int64_t)a7 isConsumedByClustering:(BOOL)a8 tripSegmentSequence:(int)a9 tripSegmentSequenceMax:(int)a10 originLatitude:(double)a11 originLongitude:(double)a12 destinationLatitude:(double)a13 destinationLongitude:(double)a14 tripCommuteID:(id)a15;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripSegment

- (RTTripSegment)initWithTripSegmentIdentifier:(id)a3 dateInterval:(id)a4 tripDistance:(double)a5 tripDistanceUncertainty:(double)a6 modeOfTransportation:(int64_t)a7 isConsumedByClustering:(BOOL)a8 tripSegmentSequence:(int)a9 tripSegmentSequenceMax:(int)a10 originLatitude:(double)a11 originLongitude:(double)a12 destinationLatitude:(double)a13 destinationLongitude:(double)a14 tripCommuteID:(id)a15
{
  v28 = a3;
  v35 = a4;
  v29 = a15;
  if (v28)
  {
    v36.receiver = self;
    v36.super_class = RTTripSegment;
    v30 = [(RTTripSegment *)&v36 init];
    v31 = v30;
    if (v30)
    {
      objc_storeStrong(&v30->_identifier, a3);
      objc_storeStrong(&v31->_dateInterval, a4);
      v31->_tripDistance = a5;
      v31->_tripDistanceUncertainty = a6;
      v31->_modeOfTransportation = a7;
      v31->_isConsumedByClustering = a8;
      v31->_tripSegmentSequence = a9;
      v31->_tripSegmentSequenceMax = a10;
      v31->_originLatitude = a11;
      v31->_originLongitude = a12;
      v31->_destinationLatitude = a13;
      v31->_destinationLongitude = a14;
      objc_storeStrong(&v31->_tripCommuteID, a15);
    }

    self = v31;
    v32 = self;
  }

  else
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v32 = 0;
  }

  return v32;
}

+ (id)mergeTripSegment:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 tripDistance];
  v8 = v7;
  [v6 tripDistance];
  if (v8 <= v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v5;
  }

  v68 = [v10 identifier];
  [v5 tripDistance];
  v12 = v11;
  [v6 tripDistance];
  if (v12 > v13)
  {
    v14 = v5;
  }

  else
  {
    v14 = v6;
  }

  v67 = [v14 tripCommuteID];
  v15 = [v5 dateInterval];
  v16 = [v15 startDate];
  v17 = [v6 dateInterval];
  v18 = [v17 startDate];
  v19 = [v16 earlierDate:v18];

  v20 = [v5 dateInterval];
  v21 = [v20 endDate];
  v22 = [v6 dateInterval];
  v23 = [v22 endDate];
  v24 = [v21 laterDate:v23];

  v66 = v19;
  v25 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v19 endDate:v24];
  [v5 tripDistance];
  v27 = v26;
  [v6 tripDistance];
  if (v27 <= v28)
  {
    v29 = v6;
  }

  else
  {
    v29 = v5;
  }

  v30 = [v29 modeOfTransportation];
  if (![v5 modeOfTransportation] || !objc_msgSend(v6, "modeOfTransportation"))
  {
    v30 = 0;
  }

  [v5 tripDistance];
  v65 = v31;
  [v5 tripDistanceUncertainty];
  v64 = v32;
  [v5 tripDistanceUncertainty];
  v34 = v33;
  [v6 tripDistance];
  v36 = v35;
  [v6 tripDistanceUncertainty];
  v38 = v37;
  [v6 tripDistanceUncertainty];
  v40 = v39;
  [v5 tripDistance];
  v42 = v41;
  [v6 tripDistance];
  v44 = v43;
  [v5 tripDistance];
  v46 = v45;
  [v6 tripDistance];
  v48 = v47;
  v49 = [RTTripSegment alloc];
  if ([v5 isConsumedByClustering])
  {
    v50 = [v6 isConsumedByClustering];
  }

  else
  {
    v50 = 0;
  }

  v51 = v46 + v48;
  v52 = sqrt((v36 * v38 * v40 + v65 * v64 * v34) / (v42 + v44));
  v53 = [v5 tripSegmentSequence];
  v54 = [v5 tripSegmentSequenceMax];
  [v5 originLatitude];
  v56 = v55;
  [v5 originLongitude];
  v58 = v57;
  [v5 destinationLatitude];
  v60 = v59;
  [v5 destinationLongitude];
  v62 = [(RTTripSegment *)v49 initWithTripSegmentIdentifier:v68 dateInterval:v25 tripDistance:v30 tripDistanceUncertainty:v50 modeOfTransportation:v53 isConsumedByClustering:v54 tripSegmentSequence:v51 tripSegmentSequenceMax:v52 originLatitude:v56 originLongitude:v58 destinationLatitude:v60 destinationLongitude:v61 tripCommuteID:v67];

  return v62;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"tripSegmentIdentifier"];
  [v5 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v5 encodeDouble:@"tripDistance" forKey:self->_tripDistance];
  [v5 encodeDouble:@"tripDistanceUncertainty" forKey:self->_tripDistanceUncertainty];
  [v5 encodeInteger:self->_modeOfTransportation forKey:@"modeOfTransportation"];
  [v5 encodeBool:self->_isConsumedByClustering forKey:@"isConsumedByClustering"];
  [v5 encodeInt32:self->_tripSegmentSequence forKey:@"tripSequenceNumber"];
  [v5 encodeInt32:self->_tripSegmentSequenceMax forKey:@"tripSequenceNumberMax"];
  [v5 encodeDouble:@"originLatitude" forKey:self->_originLatitude];
  [v5 encodeDouble:@"originLongitude" forKey:self->_originLongitude];
  [v5 encodeDouble:@"destinationLatitude" forKey:self->_destinationLatitude];
  [v5 encodeDouble:@"destinationLongitude" forKey:self->_destinationLongitude];
  [v5 encodeObject:self->_tripCommuteID forKey:@"tripCommuteID"];
}

- (RTTripSegment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tripSegmentIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  [v4 decodeDoubleForKey:@"tripDistance"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"tripDistanceUncertainty"];
  v10 = v9;
  v11 = [v4 decodeIntegerForKey:@"modeOfTransportation"];
  v12 = [v4 decodeBoolForKey:@"isConsumedByClustering"];
  v13 = [v4 decodeInt32ForKey:@"tripSequenceNumber"];
  v14 = [v4 decodeInt32ForKey:@"tripSequenceNumberMax"];
  [v4 decodeDoubleForKey:@"originLatitude"];
  v16 = v15;
  [v4 decodeDoubleForKey:@"originLongitude"];
  v18 = v17;
  [v4 decodeDoubleForKey:@"destinationLatitude"];
  v20 = v19;
  [v4 decodeDoubleForKey:@"destinationLongitude"];
  v22 = v21;
  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tripCommuteID"];

  v24 = [(RTTripSegment *)self initWithTripSegmentIdentifier:v5 dateInterval:v6 tripDistance:v11 tripDistanceUncertainty:v12 modeOfTransportation:v13 isConsumedByClustering:v14 tripSegmentSequence:v8 tripSegmentSequenceMax:v10 originLatitude:v16 originLongitude:v18 destinationLatitude:v20 destinationLongitude:v22 tripCommuteID:v23];
  return v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v39 = [v4 isMemberOfClass:objc_opt_class()];
  identifier = self->_identifier;
  v6 = [v4 identifier];
  v38 = [(NSUUID *)identifier isEqual:v6];

  dateInterval = self->_dateInterval;
  v8 = [v4 dateInterval];
  v37 = [(NSDateInterval *)dateInterval isEqual:v8];

  tripDistance = self->_tripDistance;
  [v4 tripDistance];
  v44 = v9;
  tripDistanceUncertainty = self->_tripDistanceUncertainty;
  [v4 tripDistanceUncertainty];
  v33 = v10;
  modeOfTransportation = self->_modeOfTransportation;
  v35 = [v4 modeOfTransportation];
  isConsumedByClustering = self->_isConsumedByClustering;
  v12 = [v4 isConsumedByClustering] & 1;
  tripSegmentSequence = self->_tripSegmentSequence;
  v14 = [v4 tripSegmentSequence];
  tripSegmentSequenceMax = self->_tripSegmentSequenceMax;
  v16 = [v4 tripSegmentSequenceMax];
  originLatitude = self->_originLatitude;
  [v4 originLatitude];
  v40 = v17;
  originLongitude = self->_originLongitude;
  [v4 originLongitude];
  v18.f64[0] = originLatitude;
  v18.f64[1] = originLongitude;
  v43 = v18;
  v18.f64[0] = tripDistance;
  v18.f64[1] = tripDistanceUncertainty;
  v47 = v18;
  v18.f64[0] = v44;
  v18.f64[1] = v33;
  v45 = v18;
  v18.f64[0] = v40;
  v18.f64[1] = v19;
  v41 = v18;
  destinationLatitude = self->_destinationLatitude;
  [v4 destinationLatitude];
  LOBYTE(v8) = destinationLatitude == v21;
  destinationLongitude = self->_destinationLongitude;
  [v4 destinationLongitude];
  v24 = v23;
  tripCommuteID = self->_tripCommuteID;
  v26 = [v4 tripCommuteID];

  v27 = [(NSUUID *)tripCommuteID isEqual:v26];
  v28 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v47, v45), vceqq_f64(v43, v41)))) & v8;
  if (destinationLongitude != v24)
  {
    v28 = 0;
  }

  if (tripSegmentSequence != v14)
  {
    v28 = 0;
  }

  if (tripSegmentSequenceMax != v16 || v12 != isConsumedByClustering || modeOfTransportation != v35)
  {
    v28 = 0;
  }

  return v28 & v27 & v39 & v37 & v38;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSUUID *)self->_identifier UUIDString];
  v5 = [v4 UTF8String];
  v6 = [(NSDateInterval *)self->_dateInterval description];
  tripDistance = self->_tripDistance;
  tripDistanceUncertainty = self->_tripDistanceUncertainty;
  modeOfTransportation = self->_modeOfTransportation;
  isConsumedByClustering = self->_isConsumedByClustering;
  v18 = *&self->_originLatitude;
  destinationLatitude = self->_destinationLatitude;
  destinationLongitude = self->_destinationLongitude;
  tripSegmentSequence = self->_tripSegmentSequence;
  tripSegmentSequenceMax = self->_tripSegmentSequenceMax;
  v15 = [(NSUUID *)self->_tripCommuteID UUIDString];
  v16 = [v3 stringWithFormat:@"UUID, %s, dateInterval, %@, tripDistance, %.1f, tripDistanceUncertainty, %.1f, modeOfTransportation, %llu, isConsumedByClustering, %d, tripSeqNumber, %d, tripSeqNumberMax, %d, originLat, %f, originLon, %f, dstLat, %f, dstLon, %f, tripCommuteID, %s", v5, v6, *&tripDistance, *&tripDistanceUncertainty, modeOfTransportation, isConsumedByClustering, tripSegmentSequence, tripSegmentSequenceMax, v18, *&destinationLatitude, *&destinationLongitude, objc_msgSend(v15, "UTF8String")];

  return v16;
}

@end