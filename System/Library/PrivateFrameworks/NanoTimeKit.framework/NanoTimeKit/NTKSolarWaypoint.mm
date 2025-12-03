@interface NTKSolarWaypoint
- (NSString)description;
- (NSString)localizedName;
- (NTKSolarWaypoint)initWithType:(int64_t)type solarTimeModel:(id)model;
- (id)ntkCacheableKey;
- (void)updateDependentValues;
- (void)updateDependentValuesWithPlaceholderData;
@end

@implementation NTKSolarWaypoint

- (NTKSolarWaypoint)initWithType:(int64_t)type solarTimeModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = NTKSolarWaypoint;
  v8 = [(NTKSolarWaypoint *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_solarTimeModel, model);
    v10 = v9;
  }

  return v9;
}

- (void)updateDependentValues
{
  type = self->_type;
  solarTimeModel = self->_solarTimeModel;
  if (type <= 2)
  {
    if (type == 1)
    {
      localDawnDate = [(NTKSolarTimeModel *)solarTimeModel localDawnDate];
      goto LABEL_13;
    }

    if (type == 2)
    {
      localDawnDate = [(NTKSolarTimeModel *)solarTimeModel localSunriseDate];
      goto LABEL_13;
    }
  }

  else
  {
    switch(type)
    {
      case 3:
        localDawnDate = [(NTKSolarTimeModel *)solarTimeModel localSolarNoonDate];
        goto LABEL_13;
      case 4:
        localDawnDate = [(NTKSolarTimeModel *)solarTimeModel localSunsetDate];
        goto LABEL_13;
      case 5:
        localDawnDate = [(NTKSolarTimeModel *)solarTimeModel localDuskDate];
        goto LABEL_13;
    }
  }

  localDawnDate = [(NTKSolarTimeModel *)solarTimeModel startDateForReferenceDate];
LABEL_13:
  obj = localDawnDate;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  if ([obj isEqualToDate:distantPast])
  {

LABEL_16:
    waypointDate = self->_waypointDate;
    self->_waypointDate = 0;

    self->_percentageThroughPeriodForWaypointDate = -1.0;
    goto LABEL_17;
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [obj isEqualToDate:distantFuture];

  if (v8)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&self->_waypointDate, obj);
  [(NTKSolarTimeModel *)self->_solarTimeModel percentageThroughPeriodForDate:obj];
  *&self->_percentageThroughPeriodForWaypointDate = v10.i64[0];
  if (*v10.i64 < 0.0 || (v11.i64[0] = 1.0, *v10.i64 > 1.0))
  {
    if (*v10.i64 >= 0.0 || (v11.i64[0] = -1.0, *v10.i64 < -1.0))
    {
      *v11.i32 = *v10.i64;
      if (*v10.i64 >= -1.0)
      {
        *v10.i32 = *v11.i32 - truncf(*v11.i32);
        v13.i64[0] = 0x8000000080000000;
        v13.i64[1] = 0x8000000080000000;
        *v10.i64 = *vbslq_s8(v13, v10, v11).i32;
      }

      else
      {
        *v10.i32 = -*v11.i32;
        *v11.i32 = -*v11.i32 - truncf(-*v11.i32);
        v12.i64[0] = 0x8000000080000000;
        v12.i64[1] = 0x8000000080000000;
        *v10.i64 = 1.0 - *vbslq_s8(v12, v11, v10).i32;
      }
    }

    else
    {
      *v10.i64 = *v10.i64 + 1.0;
    }

    *&self->_percentageThroughPeriodForWaypointDate = v10.i64[0];
    v14 = [(NTKSolarTimeModel *)self->_solarTimeModel dateForPercentageThroughPeriod:?];
    v15 = self->_waypointDate;
    self->_waypointDate = v14;
  }

LABEL_17:
}

- (void)updateDependentValuesWithPlaceholderData
{
  v3 = self->_type - 1;
  if (v3 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NTKSolarTimeModel *)self->_solarTimeModel dateForPercentageThroughPeriod:dbl_22DCE8770[v3]];
  }

  waypointDate = self->_waypointDate;
  self->_waypointDate = v4;
  v6 = v4;

  [(NTKSolarTimeModel *)self->_solarTimeModel percentageThroughPeriodForDate:v6];
  v8 = v7;

  self->_percentageThroughPeriodForWaypointDate = v8;
}

- (NSString)localizedName
{
  localizedName = self->_localizedName;
  if (!localizedName)
  {
    v4 = self->_type - 1;
    if (v4 > 4)
    {
      v5 = @"SOLAR_CUSTOM";
    }

    else
    {
      v5 = off_2787819F0[v4];
    }

    v6 = self->_type - 1;
    if (v6 > 4)
    {
      v7 = @"SOLAR_CUSTOM";
    }

    else
    {
      v7 = off_2787819F0[v6];
    }

    v8 = NTKClockFaceLocalizedString(v5, v7);
    v9 = self->_localizedName;
    self->_localizedName = v8;

    localizedName = self->_localizedName;
  }

  return localizedName;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = NTKSolarWaypoint;
  v4 = [(NTKSolarWaypoint *)&v10 description];
  waypointDate = self->_waypointDate;
  percentageThroughPeriodForWaypointDate = self->_percentageThroughPeriodForWaypointDate;
  localizedName = [(NTKSolarWaypoint *)self localizedName];
  v8 = [v3 stringWithFormat:@"%@ date = (%@) percent = %.2f localizedName =%@", v4, waypointDate, *&percentageThroughPeriodForWaypointDate, localizedName];

  return v8;
}

- (id)ntkCacheableKey
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"[%@:percent:%f-date:%@]", v5, *&self->_percentageThroughPeriodForWaypointDate, self->_waypointDate];

  return v6;
}

@end