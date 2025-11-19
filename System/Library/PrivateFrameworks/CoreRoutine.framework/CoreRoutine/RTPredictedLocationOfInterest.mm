@interface RTPredictedLocationOfInterest
- (BOOL)isEqual:(id)a3;
- (RTPredictedLocationOfInterest)initWithCoder:(id)a3;
- (RTPredictedLocationOfInterest)initWithLocationOfInterest:(id)a3 confidence:(double)a4 nextEntryTime:(id)a5 modeOfTransportation:(int64_t)a6 sources:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setConfidence:(double)a3;
@end

@implementation RTPredictedLocationOfInterest

- (RTPredictedLocationOfInterest)initWithLocationOfInterest:(id)a3 confidence:(double)a4 nextEntryTime:(id)a5 modeOfTransportation:(int64_t)a6 sources:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a7;
  if (v13)
  {
    v21.receiver = self;
    v21.super_class = RTPredictedLocationOfInterest;
    v16 = [(RTPredictedLocationOfInterest *)&v21 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_locationOfInterest, a3);
      v17->_confidence = a4;
      objc_storeStrong(&v17->_nextEntryTime, a5);
      v17->_modeOfTransportation = a6;
      objc_storeStrong(&v17->_sources, a7);
    }

    self = v17;
    v18 = self;
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationOfInterest", buf, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (RTPredictedLocationOfInterest)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = RTPredictedLocationOfInterest;
  v5 = [(RTPredictedLocationOfInterest *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationOfInterest"];
    locationOfInterest = v5->_locationOfInterest;
    v5->_locationOfInterest = v6;

    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nextEntryTime"];
    nextEntryTime = v5->_nextEntryTime;
    v5->_nextEntryTime = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeOfTransportation"];
    v5->_modeOfTransportation = [v11 unsignedIntegerValue];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"sources"];
    sources = v5->_sources;
    v5->_sources = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  locationOfInterest = self->_locationOfInterest;
  v6 = a3;
  [v6 encodeObject:locationOfInterest forKey:@"locationOfInterest"];
  [v6 encodeDouble:@"confidence" forKey:self->_confidence];
  [v6 encodeObject:self->_nextEntryTime forKey:@"nextEntryTime"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_modeOfTransportation];
  [v6 encodeObject:v5 forKey:@"modeOfTransportation"];

  [v6 encodeObject:self->_sources forKey:@"sources"];
}

- (void)setConfidence:(double)a3
{
  if (a3 <= 1.0)
  {
    if (a3 >= 0.0)
    {
      self->_confidence = a3;
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

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (v7 == self)
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

  v8 = v7;
  v9 = [(RTPredictedLocationOfInterest *)self locationOfInterest];
  if (v9 || ([(RTPredictedLocationOfInterest *)v8 locationOfInterest], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(RTPredictedLocationOfInterest *)self locationOfInterest];
    v4 = [(RTPredictedLocationOfInterest *)v8 locationOfInterest];
    if (([v3 isEqual:v4] & 1) == 0)
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
    v15 = [(RTPredictedLocationOfInterest *)self nextEntryTime];
    if (!v15)
    {
      v29 = [(RTPredictedLocationOfInterest *)v8 nextEntryTime];
      if (!v29)
      {
        v30 = v10;
        v29 = 0;
        v17 = 0;
LABEL_26:
        v19 = [(RTPredictedLocationOfInterest *)self modeOfTransportation];
        if (v19 != [(RTPredictedLocationOfInterest *)v8 modeOfTransportation])
        {
          v11 = 0;
          v23 = v30;
          if (!v17)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        v20 = [(RTPredictedLocationOfInterest *)self sources];
        if (v20 || ([(RTPredictedLocationOfInterest *)v8 sources], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v27 = v17;
          [(RTPredictedLocationOfInterest *)self sources];
          v21 = v26 = v20;
          v22 = [(RTPredictedLocationOfInterest *)v8 sources];
          v11 = [v21 isEqualToArray:v22];

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
          if (!v15)
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

    v16 = [(RTPredictedLocationOfInterest *)self nextEntryTime];
    v5 = [(RTPredictedLocationOfInterest *)v8 nextEntryTime];
    if ([v16 isEqualToDate:v5])
    {
      v28 = v16;
      v30 = v10;
      v17 = 1;
      goto LABEL_26;
    }

    if (v15)
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
  if (!v9)
  {
  }

LABEL_24:
  return v11;
}

- (unint64_t)hash
{
  v3 = [(RTPredictedLocationOfInterest *)self locationOfInterest];
  v4 = [v3 hash];
  v5 = MEMORY[0x1E696AD98];
  [(RTPredictedLocationOfInterest *)self confidence];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 hash];
  v8 = [(RTPredictedLocationOfInterest *)self nextEntryTime];
  v9 = v7 ^ v4 ^ [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[RTPredictedLocationOfInterest modeOfTransportation](self, "modeOfTransportation")}];
  v11 = [v10 hash];
  v12 = [(RTPredictedLocationOfInterest *)self sources];
  v13 = v11 ^ [v12 hash];

  return v9 ^ v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTPredictedLocationOfInterest *)self locationOfInterest];
  [(RTPredictedLocationOfInterest *)self confidence];
  v6 = v5;
  v7 = [(RTPredictedLocationOfInterest *)self nextEntryTime];
  v8 = [v7 stringFromDate];
  v9 = [RTRoutineManager modeOfTransportationToString:[(RTPredictedLocationOfInterest *)self modeOfTransportation]];
  v10 = [(RTPredictedLocationOfInterest *)self sources];
  v11 = [v3 stringWithFormat:@"loi, %@, prediction confidence, %f, next entry time, %@, mode of transportation, %@, sources, %@", v4, v6, v8, v9, v10];

  return v11;
}

@end