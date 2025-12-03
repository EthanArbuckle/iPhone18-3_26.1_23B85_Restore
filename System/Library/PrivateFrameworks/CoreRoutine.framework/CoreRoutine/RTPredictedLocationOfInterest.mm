@interface RTPredictedLocationOfInterest
- (BOOL)isEqual:(id)equal;
- (RTPredictedLocationOfInterest)initWithCoder:(id)coder;
- (RTPredictedLocationOfInterest)initWithLocationOfInterest:(id)interest confidence:(double)confidence nextEntryTime:(id)time modeOfTransportation:(int64_t)transportation sources:(id)sources;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setConfidence:(double)confidence;
@end

@implementation RTPredictedLocationOfInterest

- (RTPredictedLocationOfInterest)initWithLocationOfInterest:(id)interest confidence:(double)confidence nextEntryTime:(id)time modeOfTransportation:(int64_t)transportation sources:(id)sources
{
  interestCopy = interest;
  timeCopy = time;
  sourcesCopy = sources;
  if (interestCopy)
  {
    v21.receiver = self;
    v21.super_class = RTPredictedLocationOfInterest;
    v16 = [(RTPredictedLocationOfInterest *)&v21 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_locationOfInterest, interest);
      v17->_confidence = confidence;
      objc_storeStrong(&v17->_nextEntryTime, time);
      v17->_modeOfTransportation = transportation;
      objc_storeStrong(&v17->_sources, sources);
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationOfInterest", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (RTPredictedLocationOfInterest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = RTPredictedLocationOfInterest;
  v5 = [(RTPredictedLocationOfInterest *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationOfInterest"];
    locationOfInterest = v5->_locationOfInterest;
    v5->_locationOfInterest = v6;

    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nextEntryTime"];
    nextEntryTime = v5->_nextEntryTime;
    v5->_nextEntryTime = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeOfTransportation"];
    v5->_modeOfTransportation = [v11 unsignedIntegerValue];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"sources"];
    sources = v5->_sources;
    v5->_sources = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  locationOfInterest = self->_locationOfInterest;
  coderCopy = coder;
  [coderCopy encodeObject:locationOfInterest forKey:@"locationOfInterest"];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
  [coderCopy encodeObject:self->_nextEntryTime forKey:@"nextEntryTime"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_modeOfTransportation];
  [coderCopy encodeObject:v5 forKey:@"modeOfTransportation"];

  [coderCopy encodeObject:self->_sources forKey:@"sources"];
}

- (void)setConfidence:(double)confidence
{
  if (confidence <= 1.0)
  {
    if (confidence >= 0.0)
    {
      self->_confidence = confidence;
    }

    else
    {
      self->_confidence = 0.0;
    }
  }

  else
  {
    self->_confidence = 1.0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_24;
  }

  v8 = equalCopy;
  locationOfInterest = [(RTPredictedLocationOfInterest *)self locationOfInterest];
  if (locationOfInterest || ([(RTPredictedLocationOfInterest *)v8 locationOfInterest], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    locationOfInterest2 = [(RTPredictedLocationOfInterest *)self locationOfInterest];
    locationOfInterest3 = [(RTPredictedLocationOfInterest *)v8 locationOfInterest];
    if (([locationOfInterest2 isEqual:locationOfInterest3] & 1) == 0)
    {

      v11 = 0;
      goto LABEL_21;
    }

    v10 = 1;
  }

  else
  {
    v31 = 0;
    v10 = 0;
  }

  [(RTPredictedLocationOfInterest *)self confidence];
  v13 = v12;
  [(RTPredictedLocationOfInterest *)v8 confidence];
  if (v13 == v14)
  {
    nextEntryTime = [(RTPredictedLocationOfInterest *)self nextEntryTime];
    if (!nextEntryTime)
    {
      nextEntryTime2 = [(RTPredictedLocationOfInterest *)v8 nextEntryTime];
      if (!nextEntryTime2)
      {
        v30 = v10;
        nextEntryTime2 = 0;
        v17 = 0;
LABEL_26:
        modeOfTransportation = [(RTPredictedLocationOfInterest *)self modeOfTransportation];
        if (modeOfTransportation != [(RTPredictedLocationOfInterest *)v8 modeOfTransportation])
        {
          v11 = 0;
          v23 = v30;
          if (!v17)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        sources = [(RTPredictedLocationOfInterest *)self sources];
        if (sources || ([(RTPredictedLocationOfInterest *)v8 sources], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v27 = v17;
          [(RTPredictedLocationOfInterest *)self sources];
          v21 = v26 = sources;
          sources2 = [(RTPredictedLocationOfInterest *)v8 sources];
          v11 = [v21 isEqualToArray:sources2];

          if (v26)
          {

            v23 = v30;
            if ((v27 & 1) == 0)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }

          v23 = v30;
          LOBYTE(v17) = v27;
          v24 = v25;
        }

        else
        {
          v24 = 0;
          v11 = 1;
          v23 = v30;
        }

        if ((v17 & 1) == 0)
        {
LABEL_34:
          if (!nextEntryTime)
          {
          }

          if (!v23)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_33:

        goto LABEL_34;
      }
    }

    nextEntryTime3 = [(RTPredictedLocationOfInterest *)self nextEntryTime];
    nextEntryTime4 = [(RTPredictedLocationOfInterest *)v8 nextEntryTime];
    if ([nextEntryTime3 isEqualToDate:nextEntryTime4])
    {
      v28 = nextEntryTime3;
      v30 = v10;
      v17 = 1;
      goto LABEL_26;
    }

    if (nextEntryTime)
    {
    }

    else
    {
    }
  }

  v11 = 0;
  if (v10)
  {
LABEL_20:
  }

LABEL_21:
  if (!locationOfInterest)
  {
  }

LABEL_24:
  return v11;
}

- (unint64_t)hash
{
  locationOfInterest = [(RTPredictedLocationOfInterest *)self locationOfInterest];
  v4 = [locationOfInterest hash];
  v5 = MEMORY[0x1E696AD98];
  [(RTPredictedLocationOfInterest *)self confidence];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 hash];
  nextEntryTime = [(RTPredictedLocationOfInterest *)self nextEntryTime];
  v9 = v7 ^ v4 ^ [nextEntryTime hash];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[RTPredictedLocationOfInterest modeOfTransportation](self, "modeOfTransportation")}];
  v11 = [v10 hash];
  sources = [(RTPredictedLocationOfInterest *)self sources];
  v13 = v11 ^ [sources hash];

  return v9 ^ v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  locationOfInterest = [(RTPredictedLocationOfInterest *)self locationOfInterest];
  [(RTPredictedLocationOfInterest *)self confidence];
  v6 = v5;
  nextEntryTime = [(RTPredictedLocationOfInterest *)self nextEntryTime];
  stringFromDate = [nextEntryTime stringFromDate];
  v9 = [RTRoutineManager modeOfTransportationToString:[(RTPredictedLocationOfInterest *)self modeOfTransportation]];
  sources = [(RTPredictedLocationOfInterest *)self sources];
  v11 = [v3 stringWithFormat:@"loi, %@, prediction confidence, %f, next entry time, %@, mode of transportation, %@, sources, %@", locationOfInterest, v6, stringFromDate, v9, sources];

  return v11;
}

@end