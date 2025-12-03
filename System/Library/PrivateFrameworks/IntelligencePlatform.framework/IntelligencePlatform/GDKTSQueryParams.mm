@interface GDKTSQueryParams
+ (int64_t)roadTypeForString:(id)string;
- (GDKTSQueryParams)initWithCoder:(id)coder;
- (GDKTSQueryParams)initWithStartTime:(id)time endTime:(id)endTime inclusionType:(int64_t)type distanceMinInMeters:(id)meters distanceMaxInMeters:(id)inMeters elevationGainMinInMeters:(id)minInMeters elevationGainMaxInMeters:(id)maxInMeters durationMinInSeconds:(id)self0 durationMaxInSeconds:(id)self1 roadType:(id)self2 roadName:(id)self3 originId:(id)self4 destinationId:(id)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDKTSQueryParams

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = *&self->_startTime;
  v5 = [v3 initWithFormat:@"GDKTSQueryParams<startTime: %@, endTime: %@, minDistance: %@, maxDistance: %@, minDuration: %@, maxDuration: %@, roadType: %@, roadName: %@, originId: %@, destinationId: %@>", self->_startTime, self->_endTime, self->_distanceMinInMeters, self->_distanceMaxInMeters, self->_durationMinInSeconds, self->_durationMaxInSeconds, self->_roadType, self->_roadName, self->_originId, self->_destinationId];

  return v5;
}

- (GDKTSQueryParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_startTime);
  v46 = [coderCopy decodeObjectOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_endTime);
  v45 = [coderCopy decodeObjectOfClass:v6 forKey:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_inclusionType);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
  intValue = [v10 intValue];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_distanceMinInMeters);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_distanceMaxInMeters);
  v44 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_elevationGainMinInMeters);
  v43 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_elevationGainMaxInMeters);
  v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];

  v21 = objc_opt_class();
  v22 = NSStringFromSelector(sel_durationMinInSeconds);
  v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];

  v24 = objc_opt_class();
  v25 = NSStringFromSelector(sel_durationMaxInSeconds);
  v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];

  v27 = objc_opt_class();
  v28 = NSStringFromSelector(sel_roadType);
  v39 = [coderCopy decodeObjectOfClass:v27 forKey:v28];

  v29 = objc_opt_class();
  v30 = NSStringFromSelector(sel_roadName);
  v31 = [coderCopy decodeObjectOfClass:v29 forKey:v30];

  v32 = objc_opt_class();
  v33 = NSStringFromSelector(sel_originId);
  v34 = [coderCopy decodeObjectOfClass:v32 forKey:v33];

  v35 = objc_opt_class();
  v36 = NSStringFromSelector(sel_destinationId);
  v37 = [coderCopy decodeObjectOfClass:v35 forKey:v36];

  v42 = [(GDKTSQueryParams *)self initWithStartTime:v46 endTime:v45 inclusionType:intValue distanceMinInMeters:v13 distanceMaxInMeters:v44 elevationGainMinInMeters:v43 elevationGainMaxInMeters:v20 durationMinInSeconds:v23 durationMaxInSeconds:v26 roadType:v39 roadName:v31 originId:v34 destinationId:v37];
  return v42;
}

- (void)encodeWithCoder:(id)coder
{
  startTime = self->_startTime;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_startTime);
  [coderCopy encodeObject:startTime forKey:v6];

  endTime = self->_endTime;
  v8 = NSStringFromSelector(sel_endTime);
  [coderCopy encodeObject:endTime forKey:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_inclusionType];
  v10 = NSStringFromSelector(sel_inclusionType);
  [coderCopy encodeObject:v9 forKey:v10];

  distanceMinInMeters = self->_distanceMinInMeters;
  v12 = NSStringFromSelector(sel_distanceMinInMeters);
  [coderCopy encodeObject:distanceMinInMeters forKey:v12];

  distanceMaxInMeters = self->_distanceMaxInMeters;
  v14 = NSStringFromSelector(sel_distanceMaxInMeters);
  [coderCopy encodeObject:distanceMaxInMeters forKey:v14];

  elevationGainMinInMeters = self->_elevationGainMinInMeters;
  v16 = NSStringFromSelector(sel_elevationGainMinInMeters);
  [coderCopy encodeObject:elevationGainMinInMeters forKey:v16];

  elevationGainMaxInMeters = self->_elevationGainMaxInMeters;
  v18 = NSStringFromSelector(sel_elevationGainMaxInMeters);
  [coderCopy encodeObject:elevationGainMaxInMeters forKey:v18];

  durationMinInSeconds = self->_durationMinInSeconds;
  v20 = NSStringFromSelector(sel_durationMinInSeconds);
  [coderCopy encodeObject:durationMinInSeconds forKey:v20];

  durationMaxInSeconds = self->_durationMaxInSeconds;
  v22 = NSStringFromSelector(sel_durationMaxInSeconds);
  [coderCopy encodeObject:durationMaxInSeconds forKey:v22];

  roadType = self->_roadType;
  v24 = NSStringFromSelector(sel_roadType);
  [coderCopy encodeObject:roadType forKey:v24];

  roadName = self->_roadName;
  v26 = NSStringFromSelector(sel_roadName);
  [coderCopy encodeObject:roadName forKey:v26];

  originId = self->_originId;
  v28 = NSStringFromSelector(sel_originId);
  [coderCopy encodeObject:originId forKey:v28];

  destinationId = self->_destinationId;
  v30 = NSStringFromSelector(sel_destinationId);
  [coderCopy encodeObject:destinationId forKey:v30];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = *&self->_durationMaxInSeconds;
  return [v4 initWithStartTime:self->_startTime endTime:self->_endTime inclusionType:self->_inclusionType distanceMinInMeters:self->_distanceMinInMeters distanceMaxInMeters:self->_distanceMaxInMeters elevationGainMinInMeters:self->_elevationGainMinInMeters elevationGainMaxInMeters:self->_elevationGainMaxInMeters durationMinInSeconds:self->_durationMinInSeconds durationMaxInSeconds:self->_durationMaxInSeconds roadType:self->_roadType roadName:self->_roadName originId:self->_originId destinationId:self->_destinationId];
}

- (GDKTSQueryParams)initWithStartTime:(id)time endTime:(id)endTime inclusionType:(int64_t)type distanceMinInMeters:(id)meters distanceMaxInMeters:(id)inMeters elevationGainMinInMeters:(id)minInMeters elevationGainMaxInMeters:(id)maxInMeters durationMinInSeconds:(id)self0 durationMaxInSeconds:(id)self1 roadType:(id)self2 roadName:(id)self3 originId:(id)self4 destinationId:(id)self5
{
  timeCopy = time;
  endTimeCopy = endTime;
  metersCopy = meters;
  inMetersCopy = inMeters;
  minInMetersCopy = minInMeters;
  maxInMetersCopy = maxInMeters;
  roadTypeCopy = roadType;
  nameCopy = name;
  idCopy = id;
  destinationIdCopy = destinationId;
  v53.receiver = self;
  v53.super_class = GDKTSQueryParams;
  v28 = [(GDKTSQueryParams *)&v53 init];
  if (v28)
  {
    v29 = [timeCopy copy];
    startTime = v28->_startTime;
    v28->_startTime = v29;

    v31 = [endTimeCopy copy];
    endTime = v28->_endTime;
    v28->_endTime = v31;

    v28->_inclusionType = type;
    v33 = [metersCopy copy];
    distanceMinInMeters = v28->_distanceMinInMeters;
    v28->_distanceMinInMeters = v33;

    v35 = [inMetersCopy copy];
    distanceMaxInMeters = v28->_distanceMaxInMeters;
    v28->_distanceMaxInMeters = v35;

    v37 = [minInMetersCopy copy];
    elevationGainMinInMeters = v28->_elevationGainMinInMeters;
    v28->_elevationGainMinInMeters = v37;

    v39 = [maxInMetersCopy copy];
    elevationGainMaxInMeters = v28->_elevationGainMaxInMeters;
    v28->_elevationGainMaxInMeters = v39;

    v41 = [roadTypeCopy copy];
    roadType = v28->_roadType;
    v28->_roadType = v41;

    v43 = [nameCopy copy];
    roadName = v28->_roadName;
    v28->_roadName = v43;

    v45 = [idCopy copy];
    originId = v28->_originId;
    v28->_originId = v45;

    v47 = [destinationIdCopy copy];
    destinationId = v28->_destinationId;
    v28->_destinationId = v47;
  }

  return v28;
}

+ (int64_t)roadTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"freeway"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"arterial"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"collector"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"local"])
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