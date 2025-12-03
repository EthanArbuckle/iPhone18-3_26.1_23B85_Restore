@interface RTPeopleDensity
- (BOOL)isEqual:(id)equal;
- (RTPeopleDensity)initWithBundleUUID:(id)d startDate:(id)date endDate:(id)endDate densityScore:(double)score scanDuration:(double)duration rssiHistogram:(id)histogram;
- (RTPeopleDensity)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPeopleDensity

- (RTPeopleDensity)initWithBundleUUID:(id)d startDate:(id)date endDate:(id)endDate densityScore:(double)score scanDuration:(double)duration rssiHistogram:(id)histogram
{
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  histogramCopy = histogram;
  if (dateCopy)
  {
    v24.receiver = self;
    v24.super_class = RTPeopleDensity;
    v19 = [(RTPeopleDensity *)&v24 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_uuid, d);
      objc_storeStrong(&v20->_startDate, date);
      objc_storeStrong(&v20->_endDate, endDate);
      v20->_densityScore = score;
      v20->_scanDuration = duration;
      objc_storeStrong(&v20->_rssiHistogram, histogram);
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uuid = [(RTPeopleDensity *)self uuid];
      uuid2 = [(RTPeopleDensity *)v5 uuid];

      v8 = [uuid isEqual:uuid2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)descriptionDictionary
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  uuid = self->_uuid;
  if (uuid)
  {
    uUIDString = [(NSUUID *)uuid UUIDString];
    [v3 setObject:uUIDString forKey:@"UUID"];
  }

  else
  {
    [v3 setObject:&stru_1F3DD00E8 forKey:@"UUID"];
  }

  startDate = self->_startDate;
  if (startDate)
  {
    getFormattedDateString = [(NSDate *)startDate getFormattedDateString];
    [v3 setObject:getFormattedDateString forKey:@"StartDate"];
  }

  else
  {
    [v3 setObject:@"-" forKey:@"StartDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    getFormattedDateString2 = [(NSDate *)endDate getFormattedDateString];
    [v3 setObject:getFormattedDateString2 forKey:@"EndDate"];
  }

  else
  {
    [v3 setObject:@"-" forKey:@"EndDate"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_densityScore];
  [v3 setObject:v10 forKey:@"Score"];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_scanDuration];
  [v3 setObject:v11 forKey:@"ScanDuration"];

  if (self->_rssiHistogram)
  {
    v12 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    allKeys = [(NSDictionary *)self->_rssiHistogram allKeys];
    v14 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(allKeys);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = [(NSDictionary *)self->_rssiHistogram objectForKeyedSubscript:v18];
          stringValue = [v18 stringValue];
          [v12 setObject:v19 forKey:stringValue];
        }

        v15 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"rssiHistogram"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  descriptionDictionary = [(RTPeopleDensity *)self descriptionDictionary];
  v12 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:descriptionDictionary options:3 error:&v12];
  v4 = v12;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v4;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", buf, 0x16u);
    }

    string = [MEMORY[0x1E696AEC0] string];
  }

  else
  {
    string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
  }

  v7 = string;

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  uuid = self->_uuid;
  startDate = self->_startDate;
  endDate = self->_endDate;
  densityScore = self->_densityScore;
  scanDuration = self->_scanDuration;
  rssiHistogram = self->_rssiHistogram;

  return [v4 initWithBundleUUID:uuid startDate:startDate endDate:endDate densityScore:rssiHistogram scanDuration:densityScore rssiHistogram:scanDuration];
}

- (RTPeopleDensity)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EndDate"];
  [coderCopy decodeDoubleForKey:@"Score"];
  v12 = v11;
  [coderCopy decodeDoubleForKey:@"ScanDuration"];
  v14 = v13;
  v15 = [coderCopy decodeObjectOfClasses:v7 forKey:@"rssiHistogram"];

  v16 = [(RTPeopleDensity *)self initWithBundleUUID:v8 startDate:v9 endDate:v10 densityScore:v15 scanDuration:v12 rssiHistogram:v14];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"UUID"];
  [coderCopy encodeObject:self->_startDate forKey:@"StartDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"EndDate"];
  [coderCopy encodeDouble:@"Score" forKey:self->_densityScore];
  [coderCopy encodeDouble:@"ScanDuration" forKey:self->_scanDuration];
  [coderCopy encodeObject:self->_rssiHistogram forKey:@"rssiHistogram"];
}

@end