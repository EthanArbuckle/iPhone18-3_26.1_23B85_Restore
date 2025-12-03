@interface RTTripSegment
+ (id)mergeTripSegment:(id)segment other:(id)other;
- (BOOL)isEqual:(id)equal;
- (RTTripSegment)initWithCoder:(id)coder;
- (RTTripSegment)initWithTripSegmentIdentifier:(id)identifier dateInterval:(id)interval tripDistance:(double)distance tripDistanceUncertainty:(double)uncertainty modeOfTransportation:(int64_t)transportation isConsumedByClustering:(BOOL)clustering tripSegmentSequence:(int)sequence tripSegmentSequenceMax:(int)self0 originLatitude:(double)self1 originLongitude:(double)self2 destinationLatitude:(double)self3 destinationLongitude:(double)self4 tripCommuteID:(id)self5;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripSegment

- (RTTripSegment)initWithTripSegmentIdentifier:(id)identifier dateInterval:(id)interval tripDistance:(double)distance tripDistanceUncertainty:(double)uncertainty modeOfTransportation:(int64_t)transportation isConsumedByClustering:(BOOL)clustering tripSegmentSequence:(int)sequence tripSegmentSequenceMax:(int)self0 originLatitude:(double)self1 originLongitude:(double)self2 destinationLatitude:(double)self3 destinationLongitude:(double)self4 tripCommuteID:(id)self5
{
  identifierCopy = identifier;
  intervalCopy = interval;
  dCopy = d;
  if (identifierCopy)
  {
    v36.receiver = self;
    v36.super_class = RTTripSegment;
    v30 = [(RTTripSegment *)&v36 init];
    v31 = v30;
    if (v30)
    {
      objc_storeStrong(&v30->_identifier, identifier);
      objc_storeStrong(&v31->_dateInterval, interval);
      v31->_tripDistance = distance;
      v31->_tripDistanceUncertainty = uncertainty;
      v31->_modeOfTransportation = transportation;
      v31->_isConsumedByClustering = clustering;
      v31->_tripSegmentSequence = sequence;
      v31->_tripSegmentSequenceMax = max;
      v31->_originLatitude = latitude;
      v31->_originLongitude = longitude;
      v31->_destinationLatitude = destinationLatitude;
      v31->_destinationLongitude = destinationLongitude;
      objc_storeStrong(&v31->_tripCommuteID, d);
    }

    self = v31;
    selfCopy = self;
  }

  else
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)mergeTripSegment:(id)segment other:(id)other
{
  segmentCopy = segment;
  otherCopy = other;
  [segmentCopy tripDistance];
  v8 = v7;
  [otherCopy tripDistance];
  if (v8 <= v9)
  {
    v10 = otherCopy;
  }

  else
  {
    v10 = segmentCopy;
  }

  identifier = [v10 identifier];
  [segmentCopy tripDistance];
  v12 = v11;
  [otherCopy tripDistance];
  if (v12 > v13)
  {
    v14 = segmentCopy;
  }

  else
  {
    v14 = otherCopy;
  }

  tripCommuteID = [v14 tripCommuteID];
  dateInterval = [segmentCopy dateInterval];
  startDate = [dateInterval startDate];
  dateInterval2 = [otherCopy dateInterval];
  startDate2 = [dateInterval2 startDate];
  v19 = [startDate earlierDate:startDate2];

  dateInterval3 = [segmentCopy dateInterval];
  endDate = [dateInterval3 endDate];
  dateInterval4 = [otherCopy dateInterval];
  endDate2 = [dateInterval4 endDate];
  v24 = [endDate laterDate:endDate2];

  v66 = v19;
  v25 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v19 endDate:v24];
  [segmentCopy tripDistance];
  v27 = v26;
  [otherCopy tripDistance];
  if (v27 <= v28)
  {
    v29 = otherCopy;
  }

  else
  {
    v29 = segmentCopy;
  }

  modeOfTransportation = [v29 modeOfTransportation];
  if (![segmentCopy modeOfTransportation] || !objc_msgSend(otherCopy, "modeOfTransportation"))
  {
    modeOfTransportation = 0;
  }

  [segmentCopy tripDistance];
  v65 = v31;
  [segmentCopy tripDistanceUncertainty];
  v64 = v32;
  [segmentCopy tripDistanceUncertainty];
  v34 = v33;
  [otherCopy tripDistance];
  v36 = v35;
  [otherCopy tripDistanceUncertainty];
  v38 = v37;
  [otherCopy tripDistanceUncertainty];
  v40 = v39;
  [segmentCopy tripDistance];
  v42 = v41;
  [otherCopy tripDistance];
  v44 = v43;
  [segmentCopy tripDistance];
  v46 = v45;
  [otherCopy tripDistance];
  v48 = v47;
  v49 = [RTTripSegment alloc];
  if ([segmentCopy isConsumedByClustering])
  {
    isConsumedByClustering = [otherCopy isConsumedByClustering];
  }

  else
  {
    isConsumedByClustering = 0;
  }

  v51 = v46 + v48;
  v52 = sqrt((v36 * v38 * v40 + v65 * v64 * v34) / (v42 + v44));
  tripSegmentSequence = [segmentCopy tripSegmentSequence];
  tripSegmentSequenceMax = [segmentCopy tripSegmentSequenceMax];
  [segmentCopy originLatitude];
  v56 = v55;
  [segmentCopy originLongitude];
  v58 = v57;
  [segmentCopy destinationLatitude];
  v60 = v59;
  [segmentCopy destinationLongitude];
  v62 = [(RTTripSegment *)v49 initWithTripSegmentIdentifier:identifier dateInterval:v25 tripDistance:modeOfTransportation tripDistanceUncertainty:isConsumedByClustering modeOfTransportation:tripSegmentSequence isConsumedByClustering:tripSegmentSequenceMax tripSegmentSequence:v51 tripSegmentSequenceMax:v52 originLatitude:v56 originLongitude:v58 destinationLatitude:v60 destinationLongitude:v61 tripCommuteID:tripCommuteID];

  return v62;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"tripSegmentIdentifier"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeDouble:@"tripDistance" forKey:self->_tripDistance];
  [coderCopy encodeDouble:@"tripDistanceUncertainty" forKey:self->_tripDistanceUncertainty];
  [coderCopy encodeInteger:self->_modeOfTransportation forKey:@"modeOfTransportation"];
  [coderCopy encodeBool:self->_isConsumedByClustering forKey:@"isConsumedByClustering"];
  [coderCopy encodeInt32:self->_tripSegmentSequence forKey:@"tripSequenceNumber"];
  [coderCopy encodeInt32:self->_tripSegmentSequenceMax forKey:@"tripSequenceNumberMax"];
  [coderCopy encodeDouble:@"originLatitude" forKey:self->_originLatitude];
  [coderCopy encodeDouble:@"originLongitude" forKey:self->_originLongitude];
  [coderCopy encodeDouble:@"destinationLatitude" forKey:self->_destinationLatitude];
  [coderCopy encodeDouble:@"destinationLongitude" forKey:self->_destinationLongitude];
  [coderCopy encodeObject:self->_tripCommuteID forKey:@"tripCommuteID"];
}

- (RTTripSegment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tripSegmentIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  [coderCopy decodeDoubleForKey:@"tripDistance"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"tripDistanceUncertainty"];
  v10 = v9;
  v11 = [coderCopy decodeIntegerForKey:@"modeOfTransportation"];
  v12 = [coderCopy decodeBoolForKey:@"isConsumedByClustering"];
  v13 = [coderCopy decodeInt32ForKey:@"tripSequenceNumber"];
  v14 = [coderCopy decodeInt32ForKey:@"tripSequenceNumberMax"];
  [coderCopy decodeDoubleForKey:@"originLatitude"];
  v16 = v15;
  [coderCopy decodeDoubleForKey:@"originLongitude"];
  v18 = v17;
  [coderCopy decodeDoubleForKey:@"destinationLatitude"];
  v20 = v19;
  [coderCopy decodeDoubleForKey:@"destinationLongitude"];
  v22 = v21;
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tripCommuteID"];

  v24 = [(RTTripSegment *)self initWithTripSegmentIdentifier:v5 dateInterval:v6 tripDistance:v11 tripDistanceUncertainty:v12 modeOfTransportation:v13 isConsumedByClustering:v14 tripSegmentSequence:v8 tripSegmentSequenceMax:v10 originLatitude:v16 originLongitude:v18 destinationLatitude:v20 destinationLongitude:v22 tripCommuteID:v23];
  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v39 = [equalCopy isMemberOfClass:objc_opt_class()];
  identifier = self->_identifier;
  identifier = [equalCopy identifier];
  v38 = [(NSUUID *)identifier isEqual:identifier];

  dateInterval = self->_dateInterval;
  dateInterval = [equalCopy dateInterval];
  v37 = [(NSDateInterval *)dateInterval isEqual:dateInterval];

  tripDistance = self->_tripDistance;
  [equalCopy tripDistance];
  v44 = v9;
  tripDistanceUncertainty = self->_tripDistanceUncertainty;
  [equalCopy tripDistanceUncertainty];
  v33 = v10;
  modeOfTransportation = self->_modeOfTransportation;
  modeOfTransportation = [equalCopy modeOfTransportation];
  isConsumedByClustering = self->_isConsumedByClustering;
  v12 = [equalCopy isConsumedByClustering] & 1;
  tripSegmentSequence = self->_tripSegmentSequence;
  tripSegmentSequence = [equalCopy tripSegmentSequence];
  tripSegmentSequenceMax = self->_tripSegmentSequenceMax;
  tripSegmentSequenceMax = [equalCopy tripSegmentSequenceMax];
  originLatitude = self->_originLatitude;
  [equalCopy originLatitude];
  v40 = v17;
  originLongitude = self->_originLongitude;
  [equalCopy originLongitude];
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
  [equalCopy destinationLatitude];
  LOBYTE(dateInterval) = destinationLatitude == v21;
  destinationLongitude = self->_destinationLongitude;
  [equalCopy destinationLongitude];
  v24 = v23;
  tripCommuteID = self->_tripCommuteID;
  tripCommuteID = [equalCopy tripCommuteID];

  v27 = [(NSUUID *)tripCommuteID isEqual:tripCommuteID];
  v28 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v47, v45), vceqq_f64(v43, v41)))) & dateInterval;
  if (destinationLongitude != v24)
  {
    v28 = 0;
  }

  if (tripSegmentSequence != tripSegmentSequence)
  {
    v28 = 0;
  }

  if (tripSegmentSequenceMax != tripSegmentSequenceMax || v12 != isConsumedByClustering || modeOfTransportation != modeOfTransportation)
  {
    v28 = 0;
  }

  return v28 & v27 & v39 & v37 & v38;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  uTF8String = [uUIDString UTF8String];
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
  uUIDString2 = [(NSUUID *)self->_tripCommuteID UUIDString];
  v16 = [v3 stringWithFormat:@"UUID, %s, dateInterval, %@, tripDistance, %.1f, tripDistanceUncertainty, %.1f, modeOfTransportation, %llu, isConsumedByClustering, %d, tripSeqNumber, %d, tripSeqNumberMax, %d, originLat, %f, originLon, %f, dstLat, %f, dstLon, %f, tripCommuteID, %s", uTF8String, v6, *&tripDistance, *&tripDistanceUncertainty, modeOfTransportation, isConsumedByClustering, tripSegmentSequence, tripSegmentSequenceMax, v18, *&destinationLatitude, *&destinationLongitude, objc_msgSend(uUIDString2, "UTF8String")];

  return v16;
}

@end