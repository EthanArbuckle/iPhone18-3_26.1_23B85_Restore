@interface RTPeopleDensity
- (BOOL)isEqual:(id)a3;
- (RTPeopleDensity)initWithBundleUUID:(id)a3 startDate:(id)a4 endDate:(id)a5 densityScore:(double)a6 scanDuration:(double)a7 rssiHistogram:(id)a8;
- (RTPeopleDensity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPeopleDensity

- (RTPeopleDensity)initWithBundleUUID:(id)a3 startDate:(id)a4 endDate:(id)a5 densityScore:(double)a6 scanDuration:(double)a7 rssiHistogram:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  if (v16)
  {
    v24.receiver = self;
    v24.super_class = RTPeopleDensity;
    v19 = [(RTPeopleDensity *)&v24 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_uuid, a3);
      objc_storeStrong(&v20->_startDate, a4);
      objc_storeStrong(&v20->_endDate, a5);
      v20->_densityScore = a6;
      v20->_scanDuration = a7;
      objc_storeStrong(&v20->_rssiHistogram, a8);
    }

    self = v20;
    v21 = self;
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    v21 = 0;
  }

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTPeopleDensity *)self uuid];
      v7 = [(RTPeopleDensity *)v5 uuid];

      v8 = [v6 isEqual:v7];
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
    v5 = [(NSUUID *)uuid UUIDString];
    [v3 setObject:v5 forKey:@"UUID"];
  }

  else
  {
    [v3 setObject:&stru_1F3DD00E8 forKey:@"UUID"];
  }

  startDate = self->_startDate;
  if (startDate)
  {
    v7 = [(NSDate *)startDate getFormattedDateString];
    [v3 setObject:v7 forKey:@"StartDate"];
  }

  else
  {
    [v3 setObject:@"-" forKey:@"StartDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    v9 = [(NSDate *)endDate getFormattedDateString];
    [v3 setObject:v9 forKey:@"EndDate"];
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
    v13 = [(NSDictionary *)self->_rssiHistogram allKeys];
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = [(NSDictionary *)self->_rssiHistogram objectForKeyedSubscript:v18];
          v20 = [v18 stringValue];
          [v12 setObject:v19 forKey:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
  v2 = [(RTPeopleDensity *)self descriptionDictionary];
  v12 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:3 error:&v12];
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

    v6 = [MEMORY[0x1E696AEC0] string];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
  }

  v7 = v6;

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (RTPeopleDensity)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"EndDate"];
  [v5 decodeDoubleForKey:@"Score"];
  v12 = v11;
  [v5 decodeDoubleForKey:@"ScanDuration"];
  v14 = v13;
  v15 = [v5 decodeObjectOfClasses:v7 forKey:@"rssiHistogram"];

  v16 = [(RTPeopleDensity *)self initWithBundleUUID:v8 startDate:v9 endDate:v10 densityScore:v15 scanDuration:v12 rssiHistogram:v14];
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"UUID"];
  [v5 encodeObject:self->_startDate forKey:@"StartDate"];
  [v5 encodeObject:self->_endDate forKey:@"EndDate"];
  [v5 encodeDouble:@"Score" forKey:self->_densityScore];
  [v5 encodeDouble:@"ScanDuration" forKey:self->_scanDuration];
  [v5 encodeObject:self->_rssiHistogram forKey:@"rssiHistogram"];
}

@end