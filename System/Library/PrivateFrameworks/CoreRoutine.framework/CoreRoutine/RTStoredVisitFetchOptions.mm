@interface RTStoredVisitFetchOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFetchOptions:(id)options;
- (RTStoredVisitFetchOptions)initWithAscending:(BOOL)ascending confidence:(id)confidence dateInterval:(id)interval labelVisit:(BOOL)visit limit:(id)limit sources:(id)sources redact:(BOOL)redact filterPairedVisitEntries:(BOOL)self0;
- (RTStoredVisitFetchOptions)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTStoredVisitFetchOptions

- (RTStoredVisitFetchOptions)initWithAscending:(BOOL)ascending confidence:(id)confidence dateInterval:(id)interval labelVisit:(BOOL)visit limit:(id)limit sources:(id)sources redact:(BOOL)redact filterPairedVisitEntries:(BOOL)self0
{
  confidenceCopy = confidence;
  intervalCopy = interval;
  limitCopy = limit;
  sourcesCopy = sources;
  if (confidenceCopy)
  {
    [confidenceCopy doubleValue];
    if (v21 != 0.0)
    {
      [confidenceCopy doubleValue];
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

  if (limitCopy && ![limitCopy unsignedIntegerValue])
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v29 = "Invalid parameter not satisfying: !limit || (limit && limit.unsignedIntegerValue > 0)";
      goto LABEL_17;
    }

LABEL_18:

    selfCopy = 0;
    goto LABEL_19;
  }

  if (sourcesCopy && ![RTVisit validVisitSources:sourcesCopy])
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
    v23->_ascending = ascending;
    objc_storeStrong(&v23->_confidence, confidence);
    objc_storeStrong(&v24->_dateInterval, interval);
    v24->_labelVisit = visit;
    objc_storeStrong(&v24->_limit, limit);
    v25 = [sourcesCopy copy];
    sources = v24->_sources;
    v24->_sources = v25;

    v24->_redact = redact;
    v24->_filterPairedVisitEntries = entries;
  }

  self = v24;
  selfCopy = self;
LABEL_19:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  ascending = self->_ascending;
  coderCopy = coder;
  v7 = [v4 numberWithBool:ascending];
  [coderCopy encodeObject:v7 forKey:@"ascending"];

  [coderCopy encodeObject:self->_confidence forKey:@"confidence"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_labelVisit];
  [coderCopy encodeObject:v8 forKey:@"labelVisit"];

  [coderCopy encodeObject:self->_limit forKey:@"limit"];
  [coderCopy encodeObject:self->_sources forKey:@"sources"];
  [coderCopy encodeBool:self->_redact forKey:@"redact"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_filterPairedVisitEntries];
  [coderCopy encodeObject:v9 forKey:@"filterPairedVisitEntries"];
}

- (RTStoredVisitFetchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ascending"];
  bOOLValue = [v5 BOOLValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confidence"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"labelVisit"];
  bOOLValue2 = [v9 BOOLValue];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"sources"];

  LOBYTE(v14) = [coderCopy decodeBoolForKey:@"redact"];
  v16 = [coderCopy decodeBoolForKey:@"filterPairedVisitEntries"];

  BYTE1(v19) = v16;
  LOBYTE(v19) = v14;
  v17 = [(RTStoredVisitFetchOptions *)self initWithAscending:bOOLValue confidence:v7 dateInterval:v8 labelVisit:bOOLValue2 limit:v11 sources:v15 redact:v19 filterPairedVisitEntries:?];

  return v17;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTStoredVisitFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)options
{
  optionsCopy = options;
  ascending = self->_ascending;
  ascending = [optionsCopy ascending];
  confidence = self->_confidence;
  if (!confidence)
  {
    confidence = [optionsCopy confidence];
    if (confidence)
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
  confidence2 = [optionsCopy confidence];
  if (confidence2)
  {
    dateInterval = confidence2;
    v10 = self->_confidence;
    confidence3 = [optionsCopy confidence];
    HIDWORD(v39) = [(NSNumber *)v10 isEqualToNumber:confidence3];

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

  dateInterval = [optionsCopy dateInterval];
  if (!dateInterval)
  {
    LODWORD(v39) = 1;
    goto LABEL_22;
  }

  if (self->_dateInterval)
  {
LABEL_13:
    dateInterval2 = [optionsCopy dateInterval];
    if (dateInterval2)
    {
      v14 = dateInterval2;
      v15 = self->_dateInterval;
      dateInterval3 = [optionsCopy dateInterval];
      LODWORD(v39) = [(NSDateInterval *)v15 isEqualToDateInterval:dateInterval3];

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
  labelVisit = [optionsCopy labelVisit];
  limit = self->_limit;
  if (limit)
  {
    goto LABEL_24;
  }

  dateInterval3 = [optionsCopy limit];
  if (!dateInterval3)
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
  limit = [optionsCopy limit];
  if (limit)
  {
    v20 = limit;
    v21 = self->_limit;
    limit2 = [optionsCopy limit];
    v23 = [(NSNumber *)v21 isEqualToNumber:limit2];

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

  dateInterval3 = [optionsCopy sources];
  if (!dateInterval3)
  {
    v29 = 1;
    goto LABEL_44;
  }

  if (self->_sources)
  {
LABEL_35:
    sources = [optionsCopy sources];
    if (sources)
    {
      v26 = sources;
      v27 = self->_sources;
      sources2 = [optionsCopy sources];
      v29 = [(NSSet *)v27 isEqual:sources2];

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
  redact = [optionsCopy redact];
  filterPairedVisitEntries = self->_filterPairedVisitEntries;
  filterPairedVisitEntries = [optionsCopy filterPairedVisitEntries];
  v35 = 0;
  v36 = (ascending == ascending) & HIDWORD(v40) & v40;
  if (v30 != labelVisit)
  {
    v36 = 0;
  }

  if ((v36 & v23) == 1 && v29)
  {
    v35 = redact == redact && (filterPairedVisitEntries & 1) == filterPairedVisitEntries;
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
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  stringFromDate = [startDate stringFromDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  stringFromDate2 = [endDate stringFromDate];
  v10 = stringFromDate2;
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

  v13 = [v3 stringWithFormat:@"ascending, %@, confidence, %@, startDate, %@, endDate, %@, labelVisit, %@, limit, %@, redact, %d, filterPairedVisitEntries, %@", v4, confidence, stringFromDate, stringFromDate2, v11, self->_limit, self->_redact, v12];

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