@interface RTStoredVisitFetchOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFetchOptions:(id)a3;
- (RTStoredVisitFetchOptions)initWithAscending:(BOOL)a3 confidence:(id)a4 dateInterval:(id)a5 labelVisit:(BOOL)a6 limit:(id)a7 sources:(id)a8 redact:(BOOL)a9 filterPairedVisitEntries:(BOOL)a10;
- (RTStoredVisitFetchOptions)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTStoredVisitFetchOptions

- (RTStoredVisitFetchOptions)initWithAscending:(BOOL)a3 confidence:(id)a4 dateInterval:(id)a5 labelVisit:(BOOL)a6 limit:(id)a7 sources:(id)a8 redact:(BOOL)a9 filterPairedVisitEntries:(BOOL)a10
{
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  if (v17)
  {
    [v17 doubleValue];
    if (v21 != 0.0)
    {
      [v17 doubleValue];
      if (v22 != 1.0)
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v29 = "Invalid parameter not satisfying: !confidence || (confidence && (confidence.doubleValue == RTVisitConfidenceLow || confidence.doubleValue == RTVisitConfidenceHigh))";
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }
  }

  if (v19 && ![v19 unsignedIntegerValue])
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v29 = "Invalid parameter not satisfying: !limit || (limit && limit.unsignedIntegerValue > 0)";
      goto LABEL_17;
    }

LABEL_18:

    v27 = 0;
    goto LABEL_19;
  }

  if (v20 && ![RTVisit validVisitSources:v20])
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v29 = "Invalid parameter not satisfying: !sources || (sources && [RTVisit validVisitSources:sources])";
LABEL_17:
      _os_log_error_impl(&dword_1BF1C4000, v28, OS_LOG_TYPE_ERROR, v29, buf, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v31.receiver = self;
  v31.super_class = RTStoredVisitFetchOptions;
  v23 = [(RTStoredVisitFetchOptions *)&v31 init];
  v24 = v23;
  if (v23)
  {
    v23->_ascending = a3;
    objc_storeStrong(&v23->_confidence, a4);
    objc_storeStrong(&v24->_dateInterval, a5);
    v24->_labelVisit = a6;
    objc_storeStrong(&v24->_limit, a7);
    v25 = [v20 copy];
    sources = v24->_sources;
    v24->_sources = v25;

    v24->_redact = a9;
    v24->_filterPairedVisitEntries = a10;
  }

  self = v24;
  v27 = self;
LABEL_19:

  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  ascending = self->_ascending;
  v6 = a3;
  v7 = [v4 numberWithBool:ascending];
  [v6 encodeObject:v7 forKey:@"ascending"];

  [v6 encodeObject:self->_confidence forKey:@"confidence"];
  [v6 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_labelVisit];
  [v6 encodeObject:v8 forKey:@"labelVisit"];

  [v6 encodeObject:self->_limit forKey:@"limit"];
  [v6 encodeObject:self->_sources forKey:@"sources"];
  [v6 encodeBool:self->_redact forKey:@"redact"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_filterPairedVisitEntries];
  [v6 encodeObject:v9 forKey:@"filterPairedVisitEntries"];
}

- (RTStoredVisitFetchOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ascending"];
  v6 = [v5 BOOLValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confidence"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"labelVisit"];
  v10 = [v9 BOOLValue];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"sources"];

  LOBYTE(v14) = [v4 decodeBoolForKey:@"redact"];
  v16 = [v4 decodeBoolForKey:@"filterPairedVisitEntries"];

  BYTE1(v19) = v16;
  LOBYTE(v19) = v14;
  v17 = [(RTStoredVisitFetchOptions *)self initWithAscending:v6 confidence:v7 dateInterval:v8 labelVisit:v10 limit:v11 sources:v15 redact:v19 filterPairedVisitEntries:?];

  return v17;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTStoredVisitFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)a3
{
  v7 = a3;
  ascending = self->_ascending;
  v41 = [v7 ascending];
  confidence = self->_confidence;
  if (!confidence)
  {
    v3 = [v7 confidence];
    if (v3)
    {
      if (self->_confidence)
      {
        goto LABEL_2;
      }

      HIDWORD(v39) = 0;
    }

    else
    {
      HIDWORD(v39) = 1;
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_2:
  v9 = [v7 confidence];
  if (v9)
  {
    v4 = v9;
    v10 = self->_confidence;
    v11 = [v7 confidence];
    HIDWORD(v39) = [(NSNumber *)v10 isEqualToNumber:v11];

    if (!confidence)
    {
      goto LABEL_11;
    }
  }

  else
  {
    HIDWORD(v39) = 0;
    if (!confidence)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    goto LABEL_13;
  }

  v4 = [v7 dateInterval];
  if (!v4)
  {
    LODWORD(v39) = 1;
    goto LABEL_22;
  }

  if (self->_dateInterval)
  {
LABEL_13:
    v13 = [v7 dateInterval];
    if (v13)
    {
      v14 = v13;
      v15 = self->_dateInterval;
      v5 = [v7 dateInterval];
      LODWORD(v39) = [(NSDateInterval *)v15 isEqualToDateInterval:v5];

      if (dateInterval)
      {
        goto LABEL_23;
      }
    }

    else
    {
      LODWORD(v39) = 0;
      if (dateInterval)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    LODWORD(v39) = 0;
  }

LABEL_22:

LABEL_23:
  labelVisit = self->_labelVisit;
  v17 = [v7 labelVisit];
  limit = self->_limit;
  if (limit)
  {
    goto LABEL_24;
  }

  v5 = [v7 limit];
  if (!v5)
  {
    v23 = 1;
    goto LABEL_33;
  }

  if (!self->_limit)
  {
    v23 = 0;
LABEL_33:

    goto LABEL_34;
  }

LABEL_24:
  v19 = [v7 limit];
  if (v19)
  {
    v20 = v19;
    v21 = self->_limit;
    v22 = [v7 limit];
    v23 = [(NSNumber *)v21 isEqualToNumber:v22];

    if (!limit)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v23 = 0;
    if (!limit)
    {
      goto LABEL_33;
    }
  }

LABEL_34:
  sources = self->_sources;
  if (sources)
  {
    goto LABEL_35;
  }

  v5 = [v7 sources];
  if (!v5)
  {
    v29 = 1;
    goto LABEL_44;
  }

  if (self->_sources)
  {
LABEL_35:
    v25 = [v7 sources];
    if (v25)
    {
      v26 = v25;
      v27 = self->_sources;
      v28 = [v7 sources];
      v29 = [(NSSet *)v27 isEqual:v28];

      if (sources)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v29 = 0;
      if (sources)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    v29 = 0;
  }

LABEL_44:

LABEL_45:
  v30 = labelVisit;
  redact = self->_redact;
  v32 = [v7 redact];
  filterPairedVisitEntries = self->_filterPairedVisitEntries;
  v34 = [v7 filterPairedVisitEntries];
  v35 = 0;
  v36 = (ascending == v41) & HIDWORD(v40) & v40;
  if (v30 != v17)
  {
    v36 = 0;
  }

  if ((v36 & v23) == 1 && v29)
  {
    v35 = redact == v32 && (v34 & 1) == filterPairedVisitEntries;
  }

  return v35;
}

- (unint64_t)hash
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_ascending];
  v4 = [v3 hash];
  v5 = [(NSNumber *)self->_confidence hash];
  v6 = v5 ^ [(NSDateInterval *)self->_dateInterval hash]^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_labelVisit];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(NSNumber *)self->_limit hash];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_redact];
  v11 = [v10 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_filterPairedVisitEntries];
  v13 = v9 ^ v11 ^ [v12 hash];

  if ([(NSSet *)self->_sources count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = self->_sources;
    v15 = [(NSSet *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v13 ^= [*(*(&v21 + 1) + 8 * v18++) hash];
        }

        while (v16 != v18);
        v16 = [(NSSet *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)description
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  if (self->_ascending)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  confidence = self->_confidence;
  v6 = [(NSDateInterval *)self->_dateInterval startDate];
  v7 = [v6 stringFromDate];
  v8 = [(NSDateInterval *)self->_dateInterval endDate];
  v9 = [v8 stringFromDate];
  v10 = v9;
  if (self->_labelVisit)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_filterPairedVisitEntries)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [v3 stringWithFormat:@"ascending, %@, confidence, %@, startDate, %@, endDate, %@, labelVisit, %@, limit, %@, redact, %d, filterPairedVisitEntries, %@", v4, confidence, v7, v9, v11, self->_limit, self->_redact, v12];

  if ([(NSSet *)self->_sources count])
  {
    [v13 appendString:{@", sources, ["}];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = self->_sources;
    v15 = [(NSSet *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, ", *(*(&v22 + 1) + 8 * i)];
          [v13 appendString:v19];
        }

        v16 = [(NSSet *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    [v13 deleteCharactersInRange:{objc_msgSend(v13, "length") - 2, 2}];
    [v13 appendString:@"]"];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

@end