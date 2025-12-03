@interface _OSInactivityPredictorBackupHourEntry_v2
- (BOOL)isEqual:(id)equal;
- (_OSInactivityPredictorBackupHourEntry_v2)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _OSInactivityPredictorBackupHourEntry_v2

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(_OSInactivityPredictorBackupHourEntry_v2 *)self pctLong];
  [coderCopy encodeDouble:@"pct" forKey:?];
  [(_OSInactivityPredictorBackupHourEntry *)self stdDev];
  [coderCopy encodeDouble:@"stdDev" forKey:?];
  [(_OSInactivityPredictorBackupHourEntry *)self averageDuration];
  [coderCopy encodeDouble:@"avg" forKey:?];
}

- (_OSInactivityPredictorBackupHourEntry_v2)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());

  [coderCopy decodeDoubleForKey:@"pct"];
  [(_OSInactivityPredictorBackupHourEntry_v2 *)v5 setPctLong:?];
  [coderCopy decodeDoubleForKey:@"stdDev"];
  [(_OSInactivityPredictorBackupHourEntry *)v5 setStdDev:?];
  [coderCopy decodeDoubleForKey:@"avg"];
  v7 = v6;

  [(_OSInactivityPredictorBackupHourEntry *)v5 setAverageDuration:v7];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(_OSInactivityPredictorBackupHourEntry *)self averageDuration];
      v7 = v6;
      [(_OSInactivityPredictorBackupHourEntry *)v5 averageDuration];
      if (vabdd_f64(v7, v8) >= 0.01 || ([(_OSInactivityPredictorBackupHourEntry *)self stdDev], v10 = v9, [(_OSInactivityPredictorBackupHourEntry *)v5 stdDev], vabdd_f64(v10, v11) >= 0.01))
      {
        v15 = 0;
      }

      else
      {
        [(_OSInactivityPredictorBackupHourEntry_v2 *)self pctLong];
        v13 = v12;
        [(_OSInactivityPredictorBackupHourEntry_v2 *)v5 pctLong];
        v15 = vabdd_f64(v13, v14) < 0.001;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(_OSInactivityPredictorBackupHourEntry *)self averageDuration];
  v5 = v4;
  [(_OSInactivityPredictorBackupHourEntry_v2 *)self pctLong];
  return [v3 stringWithFormat:@"<Inactivity Entry v2: Duration: %.1lfh, %.2f%% Long>", v5, v6];
}

@end