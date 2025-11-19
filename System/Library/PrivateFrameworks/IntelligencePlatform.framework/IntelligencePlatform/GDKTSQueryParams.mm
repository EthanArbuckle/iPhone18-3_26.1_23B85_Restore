@interface GDKTSQueryParams
+ (int64_t)roadTypeForString:(id)a3;
- (GDKTSQueryParams)initWithCoder:(id)a3;
- (GDKTSQueryParams)initWithStartTime:(id)a3 endTime:(id)a4 inclusionType:(int64_t)a5 distanceMinInMeters:(id)a6 distanceMaxInMeters:(id)a7 elevationGainMinInMeters:(id)a8 elevationGainMaxInMeters:(id)a9 durationMinInSeconds:(id)a10 durationMaxInSeconds:(id)a11 roadType:(id)a12 roadName:(id)a13 originId:(id)a14 destinationId:(id)a15;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDKTSQueryParams

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = *&self->_startTime;
  v5 = [v3 initWithFormat:@"GDKTSQueryParams<startTime: %@, endTime: %@, minDistance: %@, maxDistance: %@, minDuration: %@, maxDuration: %@, roadType: %@, roadName: %@, originId: %@, destinationId: %@>", self->_startTime, self->_endTime, self->_distanceMinInMeters, self->_distanceMaxInMeters, self->_durationMinInSeconds, self->_durationMaxInSeconds, self->_roadType, self->_roadName, self->_originId, self->_destinationId];

  return v5;
}

- (GDKTSQueryParams)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_startTime);
  v46 = [v3 decodeObjectOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_endTime);
  v45 = [v3 decodeObjectOfClass:v6 forKey:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_inclusionType);
  v10 = [v3 decodeObjectOfClass:v8 forKey:v9];
  v40 = [v10 intValue];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_distanceMinInMeters);
  v13 = [v3 decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_distanceMaxInMeters);
  v44 = [v3 decodeObjectOfClass:v14 forKey:v15];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_elevationGainMinInMeters);
  v43 = [v3 decodeObjectOfClass:v16 forKey:v17];

  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_elevationGainMaxInMeters);
  v20 = [v3 decodeObjectOfClass:v18 forKey:v19];

  v21 = objc_opt_class();
  v22 = NSStringFromSelector(sel_durationMinInSeconds);
  v23 = [v3 decodeObjectOfClass:v21 forKey:v22];

  v24 = objc_opt_class();
  v25 = NSStringFromSelector(sel_durationMaxInSeconds);
  v26 = [v3 decodeObjectOfClass:v24 forKey:v25];

  v27 = objc_opt_class();
  v28 = NSStringFromSelector(sel_roadType);
  v39 = [v3 decodeObjectOfClass:v27 forKey:v28];

  v29 = objc_opt_class();
  v30 = NSStringFromSelector(sel_roadName);
  v31 = [v3 decodeObjectOfClass:v29 forKey:v30];

  v32 = objc_opt_class();
  v33 = NSStringFromSelector(sel_originId);
  v34 = [v3 decodeObjectOfClass:v32 forKey:v33];

  v35 = objc_opt_class();
  v36 = NSStringFromSelector(sel_destinationId);
  v37 = [v3 decodeObjectOfClass:v35 forKey:v36];

  v42 = [(GDKTSQueryParams *)self initWithStartTime:v46 endTime:v45 inclusionType:v40 distanceMinInMeters:v13 distanceMaxInMeters:v44 elevationGainMinInMeters:v43 elevationGainMaxInMeters:v20 durationMinInSeconds:v23 durationMaxInSeconds:v26 roadType:v39 roadName:v31 originId:v34 destinationId:v37];
  return v42;
}

- (void)encodeWithCoder:(id)a3
{
  startTime = self->_startTime;
  v5 = a3;
  v6 = NSStringFromSelector(sel_startTime);
  [v5 encodeObject:startTime forKey:v6];

  endTime = self->_endTime;
  v8 = NSStringFromSelector(sel_endTime);
  [v5 encodeObject:endTime forKey:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_inclusionType];
  v10 = NSStringFromSelector(sel_inclusionType);
  [v5 encodeObject:v9 forKey:v10];

  distanceMinInMeters = self->_distanceMinInMeters;
  v12 = NSStringFromSelector(sel_distanceMinInMeters);
  [v5 encodeObject:distanceMinInMeters forKey:v12];

  distanceMaxInMeters = self->_distanceMaxInMeters;
  v14 = NSStringFromSelector(sel_distanceMaxInMeters);
  [v5 encodeObject:distanceMaxInMeters forKey:v14];

  elevationGainMinInMeters = self->_elevationGainMinInMeters;
  v16 = NSStringFromSelector(sel_elevationGainMinInMeters);
  [v5 encodeObject:elevationGainMinInMeters forKey:v16];

  elevationGainMaxInMeters = self->_elevationGainMaxInMeters;
  v18 = NSStringFromSelector(sel_elevationGainMaxInMeters);
  [v5 encodeObject:elevationGainMaxInMeters forKey:v18];

  durationMinInSeconds = self->_durationMinInSeconds;
  v20 = NSStringFromSelector(sel_durationMinInSeconds);
  [v5 encodeObject:durationMinInSeconds forKey:v20];

  durationMaxInSeconds = self->_durationMaxInSeconds;
  v22 = NSStringFromSelector(sel_durationMaxInSeconds);
  [v5 encodeObject:durationMaxInSeconds forKey:v22];

  roadType = self->_roadType;
  v24 = NSStringFromSelector(sel_roadType);
  [v5 encodeObject:roadType forKey:v24];

  roadName = self->_roadName;
  v26 = NSStringFromSelector(sel_roadName);
  [v5 encodeObject:roadName forKey:v26];

  originId = self->_originId;
  v28 = NSStringFromSelector(sel_originId);
  [v5 encodeObject:originId forKey:v28];

  destinationId = self->_destinationId;
  v30 = NSStringFromSelector(sel_destinationId);
  [v5 encodeObject:destinationId forKey:v30];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = *&self->_durationMaxInSeconds;
  return [v4 initWithStartTime:self->_startTime endTime:self->_endTime inclusionType:self->_inclusionType distanceMinInMeters:self->_distanceMinInMeters distanceMaxInMeters:self->_distanceMaxInMeters elevationGainMinInMeters:self->_elevationGainMinInMeters elevationGainMaxInMeters:self->_elevationGainMaxInMeters durationMinInSeconds:self->_durationMinInSeconds durationMaxInSeconds:self->_durationMaxInSeconds roadType:self->_roadType roadName:self->_roadName originId:self->_originId destinationId:self->_destinationId];
}

- (GDKTSQueryParams)initWithStartTime:(id)a3 endTime:(id)a4 inclusionType:(int64_t)a5 distanceMinInMeters:(id)a6 distanceMaxInMeters:(id)a7 elevationGainMinInMeters:(id)a8 elevationGainMaxInMeters:(id)a9 durationMinInSeconds:(id)a10 durationMaxInSeconds:(id)a11 roadType:(id)a12 roadName:(id)a13 originId:(id)a14 destinationId:(id)a15
{
  v19 = a3;
  v52 = a4;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v27 = a15;
  v53.receiver = self;
  v53.super_class = GDKTSQueryParams;
  v28 = [(GDKTSQueryParams *)&v53 init];
  if (v28)
  {
    v29 = [v19 copy];
    startTime = v28->_startTime;
    v28->_startTime = v29;

    v31 = [v52 copy];
    endTime = v28->_endTime;
    v28->_endTime = v31;

    v28->_inclusionType = a5;
    v33 = [v20 copy];
    distanceMinInMeters = v28->_distanceMinInMeters;
    v28->_distanceMinInMeters = v33;

    v35 = [v21 copy];
    distanceMaxInMeters = v28->_distanceMaxInMeters;
    v28->_distanceMaxInMeters = v35;

    v37 = [v22 copy];
    elevationGainMinInMeters = v28->_elevationGainMinInMeters;
    v28->_elevationGainMinInMeters = v37;

    v39 = [v23 copy];
    elevationGainMaxInMeters = v28->_elevationGainMaxInMeters;
    v28->_elevationGainMaxInMeters = v39;

    v41 = [v24 copy];
    roadType = v28->_roadType;
    v28->_roadType = v41;

    v43 = [v25 copy];
    roadName = v28->_roadName;
    v28->_roadName = v43;

    v45 = [v26 copy];
    originId = v28->_originId;
    v28->_originId = v45;

    v47 = [v27 copy];
    destinationId = v28->_destinationId;
    v28->_destinationId = v47;
  }

  return v28;
}

+ (int64_t)roadTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"freeway"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"arterial"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"collector"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"local"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end