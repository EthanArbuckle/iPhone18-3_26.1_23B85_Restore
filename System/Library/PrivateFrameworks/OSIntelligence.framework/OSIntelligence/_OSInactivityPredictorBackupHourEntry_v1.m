@interface _OSInactivityPredictorBackupHourEntry_v1
- (BOOL)isEqual:(id)a3;
- (_OSInactivityPredictorBackupHourEntry_v1)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _OSInactivityPredictorBackupHourEntry_v1

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[_OSInactivityPredictorBackupHourEntry_v1 count](self forKey:{"count"), @"count"}];
  [(_OSInactivityPredictorBackupHourEntry *)self stdDev];
  [v4 encodeDouble:@"stdDev" forKey:?];
  [(_OSInactivityPredictorBackupHourEntry *)self averageDuration];
  [v4 encodeDouble:@"avg" forKey:?];
}

- (_OSInactivityPredictorBackupHourEntry_v1)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());

  -[_OSInactivityPredictorBackupHourEntry_v1 setCount:](v5, "setCount:", [v4 decodeIntForKey:@"count"]);
  [v4 decodeDoubleForKey:@"stdDev"];
  [(_OSInactivityPredictorBackupHourEntry *)v5 setStdDev:?];
  [v4 decodeDoubleForKey:@"avg"];
  v7 = v6;

  [(_OSInactivityPredictorBackupHourEntry *)v5 setAverageDuration:v7];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(_OSInactivityPredictorBackupHourEntry *)self averageDuration];
      v7 = v6;
      [(_OSInactivityPredictorBackupHourEntry *)v5 averageDuration];
      if (vabdd_f64(v7, v8) >= 0.01 || ([(_OSInactivityPredictorBackupHourEntry *)self stdDev], v10 = v9, [(_OSInactivityPredictorBackupHourEntry *)v5 stdDev], vabdd_f64(v10, v11) >= 0.01))
      {
        v13 = 0;
      }

      else
      {
        count = self->_count;
        v13 = count == [(_OSInactivityPredictorBackupHourEntry_v1 *)v5 count];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(_OSInactivityPredictorBackupHourEntry *)self averageDuration];
  return [v3 stringWithFormat:@"<Inactivity Entry v1: Duration: %.1lfh, %d Total>", v4, -[_OSInactivityPredictorBackupHourEntry_v1 count](self, "count")];
}

@end